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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        vagbrth    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     0       20     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     1        5     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     0      293     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     1       50     368
0-24 months (no birth wast)   IRC              INDIA                          0                     0       55     409
0-24 months (no birth wast)   IRC              INDIA                          0                     1       15     409
0-24 months (no birth wast)   IRC              INDIA                          1                     0      277     409
0-24 months (no birth wast)   IRC              INDIA                          1                     1       62     409
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     0      198     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     1        4     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     0      284     496
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     1       10     496
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     0     1926   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     1       26   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     0    14749   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     1      178   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     0      158     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     1        1     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     0      510     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     1       18     687
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      195    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       17    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2039    2355
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      104    2355
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     0     1110   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     1       32   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     0    11940   13522
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     1      440   13522
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     0       20     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     1        3     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     0      300     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     1       27     350
0-6 months (no birth wast)    IRC              INDIA                          0                     0       55     390
0-6 months (no birth wast)    IRC              INDIA                          0                     1       12     390
0-6 months (no birth wast)    IRC              INDIA                          1                     0      278     390
0-6 months (no birth wast)    IRC              INDIA                          1                     1       45     390
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     0      202     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     1        0     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     0      291     493
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     1        0     493
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     0     1914   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     1       22   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     0    14587   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     1      170   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     0      157     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     1        1     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     0      520     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     1        5     683
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      205    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2100    2347
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    2347
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     0     1125   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     1        4   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     0    12008   13264
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     1      127   13264
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     0       23     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     1        2     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     0      320     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     1       28     373
6-24 months                   IRC              INDIA                          0                     0       66     410
6-24 months                   IRC              INDIA                          0                     1        4     410
6-24 months                   IRC              INDIA                          1                     0      318     410
6-24 months                   IRC              INDIA                          1                     1       22     410
6-24 months                   NIH-Crypto       BANGLADESH                     0                     0      190     472
6-24 months                   NIH-Crypto       BANGLADESH                     0                     1        4     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                     0      267     472
6-24 months                   NIH-Crypto       BANGLADESH                     1                     1       11     472
6-24 months                   PROBIT           BELARUS                        0                     0     1915   16598
6-24 months                   PROBIT           BELARUS                        0                     1        4   16598
6-24 months                   PROBIT           BELARUS                        1                     0    14671   16598
6-24 months                   PROBIT           BELARUS                        1                     1        8   16598
6-24 months                   PROVIDE          BANGLADESH                     0                     0      143     615
6-24 months                   PROVIDE          BANGLADESH                     0                     1        0     615
6-24 months                   PROVIDE          BANGLADESH                     1                     0      459     615
6-24 months                   PROVIDE          BANGLADESH                     1                     1       13     615
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      175    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       11    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1738    1996
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       72    1996
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     0      882   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     1       28   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     0     9490   10723
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     1      323   10723


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/ddd859af-03e3-4278-a844-1c4ece7c130d/5b7af11c-581b-4171-b4c6-ad8bad4462d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ddd859af-03e3-4278-a844-1c4ece7c130d/5b7af11c-581b-4171-b4c6-ad8bad4462d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ddd859af-03e3-4278-a844-1c4ece7c130d/5b7af11c-581b-4171-b4c6-ad8bad4462d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ddd859af-03e3-4278-a844-1c4ece7c130d/5b7af11c-581b-4171-b4c6-ad8bad4462d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429894   0.3570106
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726   0.1083773   0.1831679
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.2142857   0.1180448   0.3105266
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.1828909   0.1416891   0.2240926
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0133197   0.0069674   0.0196720
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0119247   0.0079866   0.0158628
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0801887   0.0436226   0.1167547
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0485301   0.0394303   0.0576299
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0280210   0.0184490   0.0375930
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.0355412   0.0322797   0.0388027
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.1791045   0.0871728   0.2710362
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.1393189   0.1015068   0.1771310
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0113636   0.0057775   0.0169498
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0115200   0.0075096   0.0155304
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360   0.0060039   0.0508681
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539   0.0113938   0.0223140
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0591398   0.0252317   0.0930478
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397790   0.0307730   0.0487850
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0307692   0.0195485   0.0419899
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.0329155   0.0293853   0.0364457


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0120860   0.0083142   0.0158578
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0513800   0.0424616   0.0602985
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0349061   0.0318124   0.0379998
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.1461538   0.1110489   0.1812588
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0115018   0.0077384   0.0152653
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0178952   0.0125307   0.0232597
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0415832   0.0328230   0.0503433
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0327334   0.0293653   0.0361014


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.6646817
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 0.8534907   0.5163975   1.4106310
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 0.8952698   0.5491424   1.4595631
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6051989   0.3696326   0.9908911
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.2683764   0.8904991   1.8066033
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.7778638   0.4352533   1.3901609
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 1.0137562   0.5997470   1.7135584
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.3905792
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6726268   0.3631281   1.2459153
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.0697544   0.7314784   1.5644678


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                -0.0260217   -0.1128012   0.0607579
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.0012336   -0.0068499   0.0043826
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0288086   -0.0630998   0.0054825
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0068851   -0.0023733   0.0161434
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0329506   -0.1152912   0.0493899
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0001382   -0.0051557   0.0054321
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0175566   -0.0493719   0.0142587
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019641   -0.0088005   0.0127288


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235    0.3684433
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                -0.1382189   -0.7058900    0.2405476
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                -0.1020723   -0.6879339    0.2804438
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5606970   -1.3844507   -0.0215247
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.1972454   -0.1163068    0.4227259
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.2254517   -0.9382973    0.2252314
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0120147   -0.5725456    0.3792771
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805    0.2349995
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4222049   -1.4277873    0.1668681
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0600044   -0.3336426    0.3374599
