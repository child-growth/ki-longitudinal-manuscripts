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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        nchldlt5    swasted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       ki1000108-IRC              INDIA                          1                 0       59     343  swasted          
Birth       ki1000108-IRC              INDIA                          1                 1       13     343  swasted          
Birth       ki1000108-IRC              INDIA                          2+                0      230     343  swasted          
Birth       ki1000108-IRC              INDIA                          2+                1       41     343  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      373     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                0      146     532  swasted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     532  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      468     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       36     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      192     707  swasted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       11     707  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10649   17991  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1      229   17991  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     6993   17991  swasted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1      120   17991  swasted          
6 months    ki1000108-IRC              INDIA                          1                 0       83     408  swasted          
6 months    ki1000108-IRC              INDIA                          1                 1        5     408  swasted          
6 months    ki1000108-IRC              INDIA                          2+                0      303     408  swasted          
6 months    ki1000108-IRC              INDIA                          2+                1       17     408  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      434     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      164     603  swasted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     603  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      507     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        0     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      208     715  swasted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     715  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1382    2019  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2019  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      625    2019  swasted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        4    2019  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      390     811  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     811  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         2+                0      421     811  swasted          
6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     811  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10728   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      144   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     5816   16773  swasted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       85   16773  swasted          
24 months   ki1000108-IRC              INDIA                          1                 0       86     409  swasted          
24 months   ki1000108-IRC              INDIA                          1                 1        3     409  swasted          
24 months   ki1000108-IRC              INDIA                          2+                0      318     409  swasted          
24 months   ki1000108-IRC              INDIA                          2+                1        2     409  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      419     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0      151     579  swasted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        4     579  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      353     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      157     514  swasted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     514  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        5       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6  swasted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      276     555  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     555  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         2+                0      278     555  swasted          
24 months   ki1148112-LCNI-5           MALAWI                         2+                1        0     555  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5202    8593  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      232    8593  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     3058    8593  swasted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1      101    8593  swasted          


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/c0b96418-ea41-4f40-995f-d9e6df43109a/3bf6a609-db6c-4444-be82-b4117559f6da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c0b96418-ea41-4f40-995f-d9e6df43109a/3bf6a609-db6c-4444-be82-b4117559f6da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c0b96418-ea41-4f40-995f-d9e6df43109a/3bf6a609-db6c-4444-be82-b4117559f6da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c0b96418-ea41-4f40-995f-d9e6df43109a/3bf6a609-db6c-4444-be82-b4117559f6da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        1                    NA                0.1805556   0.0915779   0.2695332
Birth       ki1000108-IRC           INDIA        2+                   NA                0.1512915   0.1085663   0.1940167
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0714286   0.0489285   0.0939286
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2+                   NA                0.0541872   0.0230228   0.0853516
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0210517   0.0177675   0.0243359
Birth       kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0168705   0.0135038   0.0202372
6 months    ki1000108-IRC           INDIA        1                    NA                0.0568182   0.0083919   0.1052445
6 months    ki1000108-IRC           INDIA        2+                   NA                0.0531250   0.0285212   0.0777288
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0132450   0.0105992   0.0158909
6 months    kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0144043   0.0111380   0.0176707
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0426941   0.0370498   0.0483385
24 months   kiGH5241-JiVitA-3       BANGLADESH   2+                   NA                0.0319721   0.0250219   0.0389224


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0664781   0.0481022   0.0848539
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0193986   0.0169868   0.0218104
6 months    ki1000108-IRC           INDIA        NA                   NA                0.0539216   0.0319786   0.0758646
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0136529   0.0115796   0.0157262
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0387525   0.0344262   0.0430787


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC           INDIA        1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC           INDIA        2+                   1                 0.8379222   0.4748239   1.4786822
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto   BANGLADESH   2+                   1                 0.7586207   0.3937684   1.4615325
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 0.8013865   0.6233682   1.0302424
6 months    ki1000108-IRC           INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC           INDIA        2+                   1                 0.9350000   0.3544411   2.4664890
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 1.0875275   0.8050039   1.4692055
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   2+                   1                 0.7488648   0.5787671   0.9689536


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        1                    NA                -0.0231212   -0.1011161    0.0548738
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0049505   -0.0160021    0.0061011
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0016531   -0.0034946    0.0001884
6 months    ki1000108-IRC           INDIA        1                    NA                -0.0028966   -0.0454993    0.0397060
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0004079   -0.0010645    0.0018802
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0039417   -0.0072798   -0.0006036


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC           INDIA        1                    NA                -0.1468621   -0.7653506    0.2549396
Birth       ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0744681   -0.2529997    0.0786257
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0852163   -0.1830039    0.0044882
6 months    ki1000108-IRC           INDIA        1                    NA                -0.0537190   -1.2297282    0.5020363
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0298736   -0.0847384    0.1323759
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.1017142   -0.1912699   -0.0188909
