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

**Outcome Variable:** haz

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

agecat      studyid          country                        nchldlt5    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       IRC              INDIA                          1               84     388
Birth       IRC              INDIA                          2+             304     388
Birth       JiVitA-3         BANGLADESH                     1            13986   22431
Birth       JiVitA-3         BANGLADESH                     2+            8445   22431
Birth       NIH-Crypto       BANGLADESH                     1              522     732
Birth       NIH-Crypto       BANGLADESH                     2+             210     732
Birth       PROVIDE          BANGLADESH                     1              391     539
Birth       PROVIDE          BANGLADESH                     2+             148     539
6 months    IRC              INDIA                          1               89     407
6 months    IRC              INDIA                          2+             318     407
6 months    JiVitA-3         BANGLADESH                     1            10887   16800
6 months    JiVitA-3         BANGLADESH                     2+            5913   16800
6 months    LCNI-5           MALAWI                         1              390     811
6 months    LCNI-5           MALAWI                         2+             421     811
6 months    NIH-Crypto       BANGLADESH                     1              507     715
6 months    NIH-Crypto       BANGLADESH                     2+             208     715
6 months    PROVIDE          BANGLADESH                     1              438     604
6 months    PROVIDE          BANGLADESH                     2+             166     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             1391    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+             629    2020
24 months   IRC              INDIA                          1               89     409
24 months   IRC              INDIA                          2+             320     409
24 months   JiVitA-3         BANGLADESH                     1             5454    8622
24 months   JiVitA-3         BANGLADESH                     2+            3168    8622
24 months   LCNI-5           MALAWI                         1              283     571
24 months   LCNI-5           MALAWI                         2+             288     571
24 months   NIH-Crypto       BANGLADESH                     1              357     514
24 months   NIH-Crypto       BANGLADESH                     2+             157     514
24 months   PROVIDE          BANGLADESH                     1              424     578
24 months   PROVIDE          BANGLADESH                     2+             154     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+               1       6


The following strata were considered:

* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/aae9ed11-e18b-440f-951a-069bac0823f3/0c59f000-65df-4c1e-b774-df2f39dcc561/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aae9ed11-e18b-440f-951a-069bac0823f3/0c59f000-65df-4c1e-b774-df2f39dcc561/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aae9ed11-e18b-440f-951a-069bac0823f3/0c59f000-65df-4c1e-b774-df2f39dcc561/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.2657143   -0.6588889    0.1274604
Birth       IRC              INDIA                          2+                   NA                -0.3197368   -0.4937600   -0.1457137
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.6731539   -1.6975455   -1.6487623
Birth       JiVitA-3         BANGLADESH                     2+                   NA                -1.4514979   -1.4777489   -1.4252470
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.9267050   -1.0128035   -0.8406065
Birth       NIH-Crypto       BANGLADESH                     2+                   NA                -0.8667143   -0.9938559   -0.7395727
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9168286   -1.0055126   -0.8281447
Birth       PROVIDE          BANGLADESH                     2+                   NA                -0.8012838   -0.9410093   -0.6615583
6 months    IRC              INDIA                          1                    NA                -1.2733708   -1.5919940   -0.9547475
6 months    IRC              INDIA                          2+                   NA                -1.2235010   -1.3661342   -1.0808679
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.3257371   -1.3531201   -1.2983542
6 months    JiVitA-3         BANGLADESH                     2+                   NA                -1.2899391   -1.3211854   -1.2586928
6 months    LCNI-5           MALAWI                         1                    NA                -1.6177692   -1.7171795   -1.5183589
6 months    LCNI-5           MALAWI                         2+                   NA                -1.6666746   -1.7642591   -1.5690901
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1526824   -1.2376257   -1.0677392
6 months    NIH-Crypto       BANGLADESH                     2+                   NA                -1.3107933   -1.4414389   -1.1801476
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.0652321   -1.1532155   -0.9772487
6 months    PROVIDE          BANGLADESH                     2+                   NA                -1.1615060   -1.3003786   -1.0226335
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5212527   -0.5791074   -0.4633980
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                -0.5950212   -0.6865883   -0.5034541
24 months   IRC              INDIA                          1                    NA                -1.6158989   -1.8282244   -1.4035733
24 months   IRC              INDIA                          2+                   NA                -1.8496406   -1.9530130   -1.7462683
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.9654620   -1.9986073   -1.9323168
24 months   JiVitA-3         BANGLADESH                     2+                   NA                -2.0960069   -2.1356405   -2.0563734
24 months   LCNI-5           MALAWI                         1                    NA                -1.8390989   -1.9570993   -1.7210985
24 months   LCNI-5           MALAWI                         2+                   NA                -1.9215451   -2.0348805   -1.8082098
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.3824090   -1.4818437   -1.2829742
24 months   NIH-Crypto       BANGLADESH                     2+                   NA                -1.5750955   -1.7275640   -1.4226271
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.5240094   -1.6219120   -1.4261069
24 months   PROVIDE          BANGLADESH                     2+                   NA                -1.8183117   -1.9717687   -1.6648547


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5897031   -1.6089786   -1.5704276
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3131375   -1.3362767   -1.2899983
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6431566   -1.7128296   -1.5734836
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5442232   -0.5932373   -0.4952090
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0134284   -2.0411019   -1.9857549
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8806830   -1.9625334   -1.7988326
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          2+                   1                 -0.0540226   -0.4839881    0.3759430
Birth       JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     2+                   1                  0.2216559    0.1882776    0.2550343
Birth       NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     2+                   1                  0.0599907   -0.0935604    0.2135418
Birth       PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     2+                   1                  0.1155449   -0.0499485    0.2810382
6 months    IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          2+                   1                  0.0498697   -0.2992219    0.3989614
6 months    JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     2+                   1                  0.0357980    0.0000304    0.0715656
6 months    LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         2+                   1                 -0.0489054   -0.1882077    0.0903970
6 months    NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     2+                   1                 -0.1581108   -0.3139429   -0.0022788
6 months    PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     2+                   1                 -0.0962739   -0.2606718    0.0681240
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 -0.0737685   -0.1820815    0.0345445
24 months   IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          2+                   1                 -0.2337417   -0.4698942    0.0024107
24 months   JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     2+                   1                 -0.1305449   -0.1776864   -0.0834034
24 months   LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         2+                   1                 -0.0824462   -0.2460585    0.0811662
24 months   NIH-Crypto       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     2+                   1                 -0.1926866   -0.3747138   -0.0106594
24 months   PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     2+                   1                 -0.2943023   -0.4763296   -0.1122749


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       IRC              INDIA                          1                    NA                -0.0423270   -0.3792145    0.2945606
Birth       JiVitA-3         BANGLADESH                     1                    NA                 0.0834508    0.0708382    0.0960633
Birth       NIH-Crypto       BANGLADESH                     1                    NA                 0.0172104   -0.0268850    0.0613059
Birth       PROVIDE          BANGLADESH                     1                    NA                 0.0317266   -0.0139234    0.0773766
6 months    IRC              INDIA                          1                    NA                 0.0389646   -0.2337975    0.3117266
6 months    JiVitA-3         BANGLADESH                     1                    NA                 0.0125996   -0.0000234    0.0252226
6 months    LCNI-5           MALAWI                         1                    NA                -0.0253874   -0.0977205    0.0469458
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0459959   -0.0916338   -0.0003579
6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0264594   -0.0717716    0.0188529
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0229705   -0.0567305    0.0107896
24 months   IRC              INDIA                          1                    NA                -0.1828786   -0.3678802    0.0021230
24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0479664   -0.0652124   -0.0307203
24 months   LCNI-5           MALAWI                         1                    NA                -0.0415841   -0.1241759    0.0410078
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0588556   -0.1149833   -0.0027280
24 months   PROVIDE          BANGLADESH                     1                    NA                -0.0784127   -0.1280597   -0.0287657
