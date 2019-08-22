---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  ------
Birth       ki1000108-IRC              INDIA                          1               72     245
Birth       ki1000108-IRC              INDIA                          2+             173     245
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               15      16
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+               1      16
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1             9384    9772
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+             388    9772
6 months    ki1000108-IRC              INDIA                          1               88     289
6 months    ki1000108-IRC              INDIA                          2+             201     289
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              426     435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+               9     435
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              507     512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+               5     512
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1390    1452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+              62    1452
6 months    ki1148112-LCNI-5           MALAWI                         1              390     453
6 months    ki1148112-LCNI-5           MALAWI                         2+              63     453
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            10872   11234
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+             362   11234
24 months   ki1000108-IRC              INDIA                          1               89     290
24 months   ki1000108-IRC              INDIA                          2+             201     290
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              423     431
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+               8     431
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              357     361
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+               4     361
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               0       5
24 months   ki1148112-LCNI-5           MALAWI                         1              277     321
24 months   ki1148112-LCNI-5           MALAWI                         2+              44     321
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1             5434    5654
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+             220    5654


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a9ca4e6a-9a29-4034-9118-840e6d3ce8ae/947d99b6-9dc7-4200-abf4-e914884277cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a9ca4e6a-9a29-4034-9118-840e6d3ce8ae/947d99b6-9dc7-4200-abf4-e914884277cc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a9ca4e6a-9a29-4034-9118-840e6d3ce8ae/947d99b6-9dc7-4200-abf4-e914884277cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -1.0877778   -1.5275530   -0.6480025
Birth       ki1000108-IRC              INDIA                          2+                   NA                -0.9768208   -1.2318218   -0.7218198
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7549457   -0.7794830   -0.7304083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.5993041   -0.6895172   -0.5090910
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.5432576   -0.8445277   -0.2419875
6 months    ki1000108-IRC              INDIA                          2+                   NA                -0.6598176   -0.8464234   -0.4732117
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1362715   -0.2362441   -0.0362990
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -0.6544444   -1.3959478    0.0870589
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0648718   -0.0302953    0.1600388
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                -0.7160000   -0.9380762   -0.4939238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0807812    0.0172854    0.1442769
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                 0.1037903   -0.2175254    0.4251060
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.5333590    0.4313461    0.6353718
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                 0.2909524    0.0482133    0.5336914
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.5726577   -0.5959127   -0.5494028
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -0.6579282   -0.7709164   -0.5449400
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.7578277   -0.9742154   -0.5414401
24 months   ki1000108-IRC              INDIA                          2+                   NA                -0.7957711   -0.9231861   -0.6683562
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.8634043   -0.9623023   -0.7645062
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                -1.0612500   -1.5690182   -0.5534818
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0136282   -0.1318519    0.1045956
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                -0.1150000   -0.4015429    0.1715429
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3085756   -1.3385951   -1.2785562
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                -1.3237727   -1.4566889   -1.1908566


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0094286   -1.2311616   -0.7876956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7487659   -0.7726563   -0.7248754
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.6243253   -0.7833786   -0.4652719
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1469923   -0.2464550   -0.0475297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0572461   -0.0359459    0.1504381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0817637    0.0194495    0.1440778
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4996468    0.4052394    0.5940542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5754055   -0.5983356   -0.5524753
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7841264   -0.8946395   -0.6736134
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8670766   -0.9643669   -0.7697862
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0275234   -0.1369083    0.0818616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3091670   -1.3388782   -1.2794557


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                  0.1109570   -0.3974010    0.6193149
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                  0.1556415    0.0622796    0.2490034
6 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 -0.1165600   -0.4709403    0.2378203
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.5181729   -1.2663853    0.2300394
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 -0.7808718   -1.0224801   -0.5392634
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                  0.0230091   -0.3045202    0.3505385
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.2424066   -0.5057103    0.0208971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0852704   -0.1996866    0.0291458
24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 -0.0379434   -0.2890573    0.2131704
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 -0.1978457   -0.7151555    0.3194640
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 -0.1013718   -0.4113455    0.2086019
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 -0.0151971   -0.1491439    0.1187497


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.0783492   -0.2806698   0.4373682
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0061798    0.0023861   0.0099735
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0810677   -0.3276177   0.1654823
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0107208   -0.0306718   0.0092302
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0076257   -0.0166152   0.0013638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0009825   -0.0130050   0.0149699
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0337122   -0.0711381   0.0037138
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0027477   -0.0064547   0.0009592
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0262987   -0.2003583   0.1477609
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0036723   -0.0168490   0.0095044
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0138952   -0.0565552   0.0287648
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0005913   -0.0058036   0.0046209
