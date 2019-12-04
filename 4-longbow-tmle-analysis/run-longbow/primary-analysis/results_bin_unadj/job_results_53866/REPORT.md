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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki1000108-IRC              INDIA                          1                 0       72     388
Birth       ki1000108-IRC              INDIA                          1                 1       12     388
Birth       ki1000108-IRC              INDIA                          2+                0      271     388
Birth       ki1000108-IRC              INDIA                          2+                1       33     388
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 0      354     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                 1       37     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                0      137     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                1       11     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      449     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       73     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      182     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       28     732
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     9011   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4975   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                0     6039   22431
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                1     2406   22431
6 months    ki1000108-IRC              INDIA                          1                 0       67     407
6 months    ki1000108-IRC              INDIA                          1                 1       22     407
6 months    ki1000108-IRC              INDIA                          2+                0      240     407
6 months    ki1000108-IRC              INDIA                          2+                1       78     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      368     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       70     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0      140     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1       26     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      165     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       43     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0      558    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1       71    2020
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                0      253     811
6 months    ki1148112-LCNI-5           MALAWI                         2+                1      168     811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0     4484   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1429   16800
24 months   ki1000108-IRC              INDIA                          1                 0       58     409
24 months   ki1000108-IRC              INDIA                          1                 1       31     409
24 months   ki1000108-IRC              INDIA                          2+                0      179     409
24 months   ki1000108-IRC              INDIA                          2+                1      141     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      299     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0       89     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1       65     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0      106     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1       51     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0       6
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      161     571
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      122     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                0      158     571
24 months   ki1148112-LCNI-5           MALAWI                         2+                1      130     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2889    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2565    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0     1499    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1     1669    8622


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
![](/tmp/353196f6-49e7-4d2f-8811-12d8f452f150/0083c2e9-b900-4036-8794-d11f539ece8a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/353196f6-49e7-4d2f-8811-12d8f452f150/0083c2e9-b900-4036-8794-d11f539ece8a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/353196f6-49e7-4d2f-8811-12d8f452f150/0083c2e9-b900-4036-8794-d11f539ece8a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/353196f6-49e7-4d2f-8811-12d8f452f150/0083c2e9-b900-4036-8794-d11f539ece8a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1428571   0.0679288   0.2177855
Birth       ki1000108-IRC              INDIA                          2+                   NA                0.1085526   0.0735388   0.1435665
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0946292   0.0655897   0.1236686
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.0743243   0.0320268   0.1166219
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1398467   0.1100737   0.1696198
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.1333333   0.0873256   0.1793411
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3557129   0.3463568   0.3650689
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2849023   0.2748921   0.2949125
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2471910   0.1574593   0.3369227
6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2452830   0.1979358   0.2926302
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1598174   0.1254719   0.1941628
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.1566265   0.1012919   0.2119611
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2110454   0.1755017   0.2465890
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.2067308   0.1516585   0.2618031
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741661   0.1041229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1128776   0.0881418   0.1376134
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3256410   0.2791040   0.3721781
6 months    ki1148112-LCNI-5           MALAWI                         2+                   NA                0.3990499   0.3522432   0.4458566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2566364   0.2466681   0.2666046
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2416709   0.2295775   0.2537643
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3483146   0.2492110   0.4474182
24 months   ki1000108-IRC              INDIA                          2+                   NA                0.4406250   0.3861634   0.4950866
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2948113   0.2513737   0.3382489
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.4220779   0.3440060   0.5001498
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2268908   0.1834031   0.2703784
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   NA                0.3248408   0.2515145   0.3981670
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4310954   0.3733467   0.4888441
24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.4513889   0.3938661   0.5089117
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4702970   0.4543221   0.4862720
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.5268308   0.5078037   0.5458580


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3290535   0.3216788   0.3364283
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4413310   0.4005676   0.4820944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4910694   0.4779621   0.5041766


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2+                   1                 0.7598684   0.4105111   1.4065393
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.7854273   0.4114413   1.4993538
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9534247   0.6356254   1.4301168
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8009334   0.7687254   0.8344909
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9922813   0.6577791   1.4968888
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 0.9800344   0.6481155   1.4819387
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 0.9795561   0.7147486   1.3424722
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.2662316   0.9606982   1.6689346
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2254288   1.0185798   1.4742838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9416861   0.8871167   0.9996123
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2+                   1                 1.2650202   0.9276297   1.7251237
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.4316883   1.1301761   1.8136389
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                   1                 1.4317056   1.0647507   1.9251275
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.0470742   0.8703233   1.2597209
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1202087   1.0696631   1.1731427


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0268778   -0.0916934    0.0379379
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0055754   -0.0196841    0.0085334
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0018686   -0.0175916    0.0138544
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0266593   -0.0314730   -0.0218456
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0014908   -0.0807619    0.0777804
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0008770   -0.0187765    0.0170225
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0012552   -0.0203237    0.0178134
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0073902   -0.0016270    0.0164074
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0381074    0.0037508    0.0724640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0052673   -0.0104675   -0.0000671
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0722233   -0.0163290    0.1607756
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0339084    0.0096658    0.0581511
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0299186    0.0035875    0.0562496
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0102356   -0.0308844    0.0513556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0207723    0.0122766    0.0292681


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2317460   -0.9350634    0.2159439
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0626066   -0.2326232    0.0839595
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0135427   -0.1341288    0.0942220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0810182   -0.0956015   -0.0666289
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0060674   -0.3864361    0.2699471
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0055175   -0.1246808    0.1010201
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0059829   -0.1011070    0.0809234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0765544   -0.0212450    0.1649881
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1047631    0.0051365    0.1944131
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0209545   -0.0418128   -0.0005138
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1717403   -0.0682523    0.3578163
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1031529    0.0264168    0.1738409
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.1165011    0.0084119    0.2128080
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0231926   -0.0745832    0.1120718
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0423002    0.0247473    0.0595372
