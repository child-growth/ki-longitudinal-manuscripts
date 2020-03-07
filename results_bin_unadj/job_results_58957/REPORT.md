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

**Outcome Variable:** ever_stunted

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

agecat        studyid          country                        nchldlt5    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
0-24 months   IRC              INDIA                          1                      0       35     410
0-24 months   IRC              INDIA                          1                      1       54     410
0-24 months   IRC              INDIA                          2+                     0      112     410
0-24 months   IRC              INDIA                          2+                     1      209     410
0-24 months   JiVitA-3         BANGLADESH                     1                      0     8536   27200
0-24 months   JiVitA-3         BANGLADESH                     1                      1     8874   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                     0     5189   27200
0-24 months   JiVitA-3         BANGLADESH                     2+                     1     4601   27200
0-24 months   LCNI-5           MALAWI                         1                      0      145     812
0-24 months   LCNI-5           MALAWI                         1                      1      246     812
0-24 months   LCNI-5           MALAWI                         2+                     0      150     812
0-24 months   LCNI-5           MALAWI                         2+                     1      271     812
0-24 months   NIH-Crypto       BANGLADESH                     1                      0      298     758
0-24 months   NIH-Crypto       BANGLADESH                     1                      1      243     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     0       98     758
0-24 months   NIH-Crypto       BANGLADESH                     2+                     1      119     758
0-24 months   PROVIDE          BANGLADESH                     1                      0      295     700
0-24 months   PROVIDE          BANGLADESH                     1                      1      217     700
0-24 months   PROVIDE          BANGLADESH                     2+                     0      100     700
0-24 months   PROVIDE          BANGLADESH                     2+                     1       88     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      481    2385
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      267    2385
0-6 months    IRC              INDIA                          1                      0       49     410
0-6 months    IRC              INDIA                          1                      1       40     410
0-6 months    IRC              INDIA                          2+                     0      187     410
0-6 months    IRC              INDIA                          2+                     1      134     410
0-6 months    JiVitA-3         BANGLADESH                     1                      0     9780   27134
0-6 months    JiVitA-3         BANGLADESH                     1                      1     7579   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                     0     6146   27134
0-6 months    JiVitA-3         BANGLADESH                     2+                     1     3629   27134
0-6 months    LCNI-5           MALAWI                         1                      0       81     267
0-6 months    LCNI-5           MALAWI                         1                      1       41     267
0-6 months    LCNI-5           MALAWI                         2+                     0       91     267
0-6 months    LCNI-5           MALAWI                         2+                     1       54     267
0-6 months    NIH-Crypto       BANGLADESH                     1                      0      386     758
0-6 months    NIH-Crypto       BANGLADESH                     1                      1      155     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     0      143     758
0-6 months    NIH-Crypto       BANGLADESH                     2+                     1       74     758
0-6 months    PROVIDE          BANGLADESH                     1                      0      383     700
0-6 months    PROVIDE          BANGLADESH                     1                      1      129     700
0-6 months    PROVIDE          BANGLADESH                     2+                     0      149     700
0-6 months    PROVIDE          BANGLADESH                     2+                     1       39     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      609    2385
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      139    2385
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      0      711    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                      1      362    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     0     1339    3188
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                     1      776    3188
6-24 months   IRC              INDIA                          1                      0       35     236
6-24 months   IRC              INDIA                          1                      1       14     236
6-24 months   IRC              INDIA                          2+                     0      112     236
6-24 months   IRC              INDIA                          2+                     1       75     236
6-24 months   JiVitA-3         BANGLADESH                     1                      0     5238   10487
6-24 months   JiVitA-3         BANGLADESH                     1                      1     1295   10487
6-24 months   JiVitA-3         BANGLADESH                     2+                     0     2982   10487
6-24 months   JiVitA-3         BANGLADESH                     2+                     1      972   10487
6-24 months   LCNI-5           MALAWI                         1                      0      138     705
6-24 months   LCNI-5           MALAWI                         1                      1      205     705
6-24 months   LCNI-5           MALAWI                         2+                     0      145     705
6-24 months   LCNI-5           MALAWI                         2+                     1      217     705
6-24 months   NIH-Crypto       BANGLADESH                     1                      0      280     506
6-24 months   NIH-Crypto       BANGLADESH                     1                      1       88     506
6-24 months   NIH-Crypto       BANGLADESH                     2+                     0       93     506
6-24 months   NIH-Crypto       BANGLADESH                     2+                     1       45     506
6-24 months   PROVIDE          BANGLADESH                     1                      0      238     456
6-24 months   PROVIDE          BANGLADESH                     1                      1       88     456
6-24 months   PROVIDE          BANGLADESH                     2+                     0       81     456
6-24 months   PROVIDE          BANGLADESH                     2+                     1       49     456
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0      376    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1      128    1596


The following strata were considered:

* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF



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
![](/tmp/1fbe1f2b-0765-4191-a503-957ed2c7afd2/68258161-6783-4cc7-81a1-68457c8b7e9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1fbe1f2b-0765-4191-a503-957ed2c7afd2/68258161-6783-4cc7-81a1-68457c8b7e9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1fbe1f2b-0765-4191-a503-957ed2c7afd2/68258161-6783-4cc7-81a1-68457c8b7e9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1fbe1f2b-0765-4191-a503-957ed2c7afd2/68258161-6783-4cc7-81a1-68457c8b7e9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3373719   0.2153826   0.4593611
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3669031   0.3330207   0.4007854
0-24 months   IRC              INDIA                          1                    NA                0.6067416   0.5051344   0.7083487
0-24 months   IRC              INDIA                          2+                   NA                0.6510903   0.5988864   0.7032942
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.5097071   0.5002375   0.5191766
0-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.4699694   0.4590563   0.4808824
0-24 months   LCNI-5           MALAWI                         1                    NA                0.6291560   0.5812487   0.6770634
0-24 months   LCNI-5           MALAWI                         2+                   NA                0.6437055   0.5979310   0.6894799
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.4491682   0.4072261   0.4911103
0-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.5483871   0.4821301   0.6146441
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4238281   0.3809936   0.4666627
0-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.4680851   0.3967073   0.5394629
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3420892   0.3191029   0.3650754
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.3569519   0.3226107   0.3912930
0-6 months    IRC              INDIA                          1                    NA                0.4494382   0.3459665   0.5529099
0-6 months    IRC              INDIA                          2+                   NA                0.4174455   0.3634330   0.4714580
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.4366035   0.4273238   0.4458832
0-6 months    JiVitA-3         BANGLADESH                     2+                   NA                0.3712532   0.3606481   0.3818583
0-6 months    LCNI-5           MALAWI                         1                    NA                0.3360656   0.2520891   0.4200420
0-6 months    LCNI-5           MALAWI                         2+                   NA                0.3724138   0.2935771   0.4512505
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2865065   0.2483825   0.3246305
0-6 months    NIH-Crypto       BANGLADESH                     2+                   NA                0.3410138   0.2778993   0.4041283
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2519531   0.2143219   0.2895843
0-6 months    PROVIDE          BANGLADESH                     2+                   NA                0.2074468   0.1494442   0.2654494
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1991448   0.1797950   0.2184946
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1858289   0.1579482   0.2137095
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3373719   0.2153826   0.4593611
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.3669031   0.3330207   0.4007854
6-24 months   IRC              INDIA                          1                    NA                0.2857143   0.1589567   0.4124719
6-24 months   IRC              INDIA                          2+                   NA                0.4010695   0.3306736   0.4714654
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1982244   0.1870495   0.2093993
6-24 months   JiVitA-3         BANGLADESH                     2+                   NA                0.2458270   0.2308085   0.2608455
6-24 months   LCNI-5           MALAWI                         1                    NA                0.5976676   0.5457360   0.6495992
6-24 months   LCNI-5           MALAWI                         2+                   NA                0.5994475   0.5489340   0.6499610
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2391304   0.1955064   0.2827545
6-24 months   NIH-Crypto       BANGLADESH                     2+                   NA                0.3260870   0.2477969   0.4043770
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2699387   0.2216963   0.3181810
6-24 months   PROVIDE          BANGLADESH                     2+                   NA                0.3769231   0.2935261   0.4603201
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2142857   0.1899412   0.2386303
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2539683   0.2159548   0.2919817


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4954044   0.4875673   0.5032416
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6366995   0.6035988   0.6698003
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3467505   0.3276457   0.3658553
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130611   0.4056124   0.4205098
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1949686   0.1790654   0.2108717
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3569636   0.3068991   0.4070281
6-24 months   IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2161724   0.2067972   0.2255476
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.5985816   0.5623721   0.6347910
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0875331   0.7634806   1.5491268
0-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          2+                   1                 1.0730933   0.8912565   1.2920291
0-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     2+                   1                 0.9220381   0.8978135   0.9469165
0-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         2+                   1                 1.0231254   0.9218943   1.1354723
0-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.2208947   1.0480008   1.4223118
0-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.1044220   0.9197823   1.3261268
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0434468   0.9279112   1.1733679
0-6 months    IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          2+                   1                 0.9288162   0.7132407   1.2095490
0-6 months    JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     2+                   1                 0.8503212   0.8224478   0.8791393
0-6 months    LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         2+                   1                 1.1081581   0.7986784   1.5375580
0-6 months    NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     2+                   1                 1.1902483   0.9476343   1.4949764
0-6 months    PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     2+                   1                 0.8233548   0.5996783   1.1304613
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9331346   0.7803954   1.1157680
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.0875331   0.7634806   1.5491268
6-24 months   IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          2+                   1                 1.4037433   0.8711267   2.2620077
6-24 months   JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     2+                   1                 1.2401451   1.1450857   1.3430958
6-24 months   LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         2+                   1                 1.0029780   0.8886365   1.1320320
6-24 months   NIH-Crypto       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     2+                   1                 1.3636364   1.0086578   1.8435431
6-24 months   PROVIDE          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     2+                   1                 1.3963287   1.0506693   1.8557063
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.1851852   0.9821500   1.4301928


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0195918   -0.0607421    0.0999256
0-24 months   IRC              INDIA                          1                    NA                 0.0347218   -0.0547321    0.1241758
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0143027   -0.0189607   -0.0096446
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0075435   -0.0268143    0.0419012
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0284044    0.0057291    0.0510796
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0118862   -0.0105181    0.0342904
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0046613   -0.0083020    0.0176246
0-6 months    IRC              INDIA                          1                    NA                -0.0250480   -0.1164407    0.0663448
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0235424   -0.0283063   -0.0187785
0-6 months    LCNI-5           MALAWI                         1                    NA                 0.0197397   -0.0428511    0.0823304
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0156043   -0.0055774    0.0367861
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0119531   -0.0305798    0.0066735
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0041762   -0.0148228    0.0064703
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0195918   -0.0607421    0.0999256
6-24 months   IRC              INDIA                          1                    NA                 0.0914044   -0.0236401    0.2064488
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0179480    0.0111546    0.0247414
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0009139   -0.0362856    0.0381135
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0237154   -0.0009597    0.0483905
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0304999    0.0026769    0.0583230
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0125313   -0.0017523    0.0268150


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0548845   -0.2065034    0.2596429
0-24 months   IRC              INDIA                          1                    NA                 0.0541291   -0.0962805    0.1839025
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                -0.0288707   -0.0382861   -0.0195406
0-24 months   LCNI-5           MALAWI                         1                    NA                 0.0118478   -0.0436242    0.0643713
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0594765    0.0106212    0.1059194
0-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0272797   -0.0255504    0.0773884
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0134429   -0.0246599    0.0501289
0-6 months    IRC              INDIA                          1                    NA                -0.0590211   -0.2979011    0.1358929
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                -0.0569949   -0.0685211   -0.0455931
0-6 months    LCNI-5           MALAWI                         1                    NA                 0.0554789   -0.1378937    0.2159899
0-6 months    NIH-Crypto       BANGLADESH                     1                    NA                 0.0516511   -0.0210752    0.1191974
0-6 months    PROVIDE          BANGLADESH                     1                    NA                -0.0498047   -0.1302556    0.0249198
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0214200   -0.0774977    0.0317392
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0548845   -0.2065034    0.2596429
6-24 months   IRC              INDIA                          1                    NA                 0.2423756   -0.1329270    0.4933524
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                 0.0830263    0.0511105    0.1138687
6-24 months   LCNI-5           MALAWI                         1                    NA                 0.0015268   -0.0625943    0.0617786
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0902256   -0.0083047    0.1791276
6-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.1015181    0.0042463    0.1892877
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0552486   -0.0097772    0.1160870
