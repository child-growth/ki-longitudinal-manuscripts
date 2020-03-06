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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        impfloor    ever_swasted   n_cell     n
----------------------------  ---------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      0      224   258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      1       34   258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      0        0   258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      1        0   258
0-24 months (no birth wast)   CONTENT          PERU                           1                      0      200   215
0-24 months (no birth wast)   CONTENT          PERU                           1                      1        1   215
0-24 months (no birth wast)   CONTENT          PERU                           0                      0       14   215
0-24 months (no birth wast)   CONTENT          PERU                           0                      1        0   215
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      0       77   518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      1       16   518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      0      333   518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      1       92   518
0-24 months (no birth wast)   IRC              INDIA                          1                      0      246   305
0-24 months (no birth wast)   IRC              INDIA                          1                      1       59   305
0-24 months (no birth wast)   IRC              INDIA                          0                      0        0   305
0-24 months (no birth wast)   IRC              INDIA                          0                      1        0   305
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      0      212   242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      1       11   242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      0       18   242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      1        1   242
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      0      204   210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      1        4   210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      0        2   210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      1        0   210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      0      204   231
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      1       12   231
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      0       15   231
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      1        0   231
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      0      100   229
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      1        3   229
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      0      126   229
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      1        0   229
0-24 months (no birth wast)   MAL-ED           PERU                           1                      0       59   272
0-24 months (no birth wast)   MAL-ED           PERU                           1                      1        0   272
0-24 months (no birth wast)   MAL-ED           PERU                           0                      0      209   272
0-24 months (no birth wast)   MAL-ED           PERU                           0                      1        4   272
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      0      224   257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      1       12   257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      0       21   257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      1        0   257
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       13   248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1   248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      227   248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        7   248
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                      0      487   599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                      1       45   599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                      0       58   599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                      1        9   599
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                      0      559   754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                      1       17   754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                      0      175   754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                      1        3   754
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      0      612   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      1       14   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      0       56   687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      1        5   687
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      0      224   246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      1       22   246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      0        0   246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      1        0   246
0-6 months (no birth wast)    CONTENT          PERU                           1                      0      200   215
0-6 months (no birth wast)    CONTENT          PERU                           1                      1        1   215
0-6 months (no birth wast)    CONTENT          PERU                           0                      0       14   215
0-6 months (no birth wast)    CONTENT          PERU                           0                      1        0   215
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      0       85   504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      1        5   504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      0      394   504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      1       20   504
0-6 months (no birth wast)    IRC              INDIA                          1                      0      244   291
0-6 months (no birth wast)    IRC              INDIA                          1                      1       47   291
0-6 months (no birth wast)    IRC              INDIA                          0                      0        0   291
0-6 months (no birth wast)    IRC              INDIA                          0                      1        0   291
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      0      215   241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      1        7   241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      0       19   241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      1        0   241
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      0      205   210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      1        3   210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      0        2   210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      1        0   210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      0      208   229
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      1        6   229
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      0       15   229
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      1        0   229
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      0      101   227
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      1        1   227
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      0      125   227
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      1        0   227
0-6 months (no birth wast)    MAL-ED           PERU                           1                      0       59   272
0-6 months (no birth wast)    MAL-ED           PERU                           1                      1        0   272
0-6 months (no birth wast)    MAL-ED           PERU                           0                      0      212   272
0-6 months (no birth wast)    MAL-ED           PERU                           0                      1        1   272
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      0      232   256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      1        3   256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      0       21   256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      1        0   256
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       14   248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0   248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      231   248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        3   248
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                      0      512   581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                      1        7   581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                      0       60   581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                      1        2   581
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                      0      571   749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                      1        1   749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                      0      177   749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                      1        0   749
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      0      619   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      1        3   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      0       58   683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      1        3   683
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      0      245   261
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      1       16   261
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      0        0   261
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      1        0   261
6-24 months                   CONTENT          PERU                           1                      0      201   215
6-24 months                   CONTENT          PERU                           1                      1        0   215
6-24 months                   CONTENT          PERU                           0                      0       14   215
6-24 months                   CONTENT          PERU                           0                      1        0   215
6-24 months                   GMS-Nepal        NEPAL                          1                      0       70   463
6-24 months                   GMS-Nepal        NEPAL                          1                      1       13   463
6-24 months                   GMS-Nepal        NEPAL                          0                      0      302   463
6-24 months                   GMS-Nepal        NEPAL                          0                      1       78   463
6-24 months                   IRC              INDIA                          1                      0      289   306
6-24 months                   IRC              INDIA                          1                      1       17   306
6-24 months                   IRC              INDIA                          0                      0        0   306
6-24 months                   IRC              INDIA                          0                      1        0   306
6-24 months                   MAL-ED           BANGLADESH                     1                      0      217   240
6-24 months                   MAL-ED           BANGLADESH                     1                      1        4   240
6-24 months                   MAL-ED           BANGLADESH                     0                      0       18   240
6-24 months                   MAL-ED           BANGLADESH                     0                      1        1   240
6-24 months                   MAL-ED           BRAZIL                         1                      0      204   207
6-24 months                   MAL-ED           BRAZIL                         1                      1        1   207
6-24 months                   MAL-ED           BRAZIL                         0                      0        2   207
6-24 months                   MAL-ED           BRAZIL                         0                      1        0   207
6-24 months                   MAL-ED           INDIA                          1                      0      214   235
6-24 months                   MAL-ED           INDIA                          1                      1        6   235
6-24 months                   MAL-ED           INDIA                          0                      0       15   235
6-24 months                   MAL-ED           INDIA                          0                      1        0   235
6-24 months                   MAL-ED           NEPAL                          1                      0      100   228
6-24 months                   MAL-ED           NEPAL                          1                      1        2   228
6-24 months                   MAL-ED           NEPAL                          0                      0      126   228
6-24 months                   MAL-ED           NEPAL                          0                      1        0   228
6-24 months                   MAL-ED           PERU                           1                      0       58   270
6-24 months                   MAL-ED           PERU                           1                      1        0   270
6-24 months                   MAL-ED           PERU                           0                      0      209   270
6-24 months                   MAL-ED           PERU                           0                      1        3   270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      0      224   255
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      1       10   255
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      0       21   255
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      1        0   255
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       11   243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1   243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      227   243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        4   243
6-24 months                   NIH-Birth        BANGLADESH                     1                      0      439   539
6-24 months                   NIH-Birth        BANGLADESH                     1                      1       40   539
6-24 months                   NIH-Birth        BANGLADESH                     0                      0       52   539
6-24 months                   NIH-Birth        BANGLADESH                     0                      1        8   539
6-24 months                   NIH-Crypto       BANGLADESH                     1                      0      535   730
6-24 months                   NIH-Crypto       BANGLADESH                     1                      1       17   730
6-24 months                   NIH-Crypto       BANGLADESH                     0                      0      175   730
6-24 months                   NIH-Crypto       BANGLADESH                     0                      1        3   730
6-24 months                   PROVIDE          BANGLADESH                     1                      0      554   615
6-24 months                   PROVIDE          BANGLADESH                     1                      1       11   615
6-24 months                   PROVIDE          BANGLADESH                     0                      0       48   615
6-24 months                   PROVIDE          BANGLADESH                     0                      1        2   615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/5da59d77-fca0-4a91-816a-6908a7b769c9/ceaacc60-8760-4856-a1af-52ab1ddd8d2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5da59d77-fca0-4a91-816a-6908a7b769c9/ceaacc60-8760-4856-a1af-52ab1ddd8d2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5da59d77-fca0-4a91-816a-6908a7b769c9/ceaacc60-8760-4856-a1af-52ab1ddd8d2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5da59d77-fca0-4a91-816a-6908a7b769c9/ceaacc60-8760-4856-a1af-52ab1ddd8d2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.1720430   0.0952629   0.2488231
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.2164706   0.1772783   0.2556629
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   1                    NA                0.0845865   0.0609210   0.1082519
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   0                    NA                0.1343284   0.0526073   0.2160494
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                0.0223642   0.0107726   0.0339558
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    NA                0.0819672   0.0130784   0.1508560
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0555556   0.0081848   0.1029263
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0483092   0.0276343   0.0689840
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.1566265   0.0783519   0.2349012
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.2052632   0.1646101   0.2459162
6-24 months                   NIH-Birth   BANGLADESH   1                    NA                0.0835073   0.0587097   0.1083049
6-24 months                   NIH-Birth   BANGLADESH   0                    NA                0.1333333   0.0472397   0.2194270


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2084942   0.1734774   0.2435110
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   PROVIDE     BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0496032   0.0306286   0.0685777
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.1965443   0.1603084   0.2327801
6-24 months                   NIH-Birth   BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 1.2582353   0.7773218   2.036680
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   0                    1                 1.5880597   0.8129350   3.102257
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    1                 3.6651054   1.3653919   9.838199
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 0.8695652   0.3349377   2.257565
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 1.3105263   0.7655670   2.243408
6-24 months                   NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth   BANGLADESH   0                    1                 1.5966667   0.7844330   3.249920


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0364512   -0.0342917   0.1071941
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   1                    NA                 0.0055638   -0.0040351   0.0151627
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.0052923   -0.0010389   0.0116234
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                -0.0059524   -0.0484094   0.0365046
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0399178   -0.0324926   0.1123282
6-24 months                   NIH-Birth   BANGLADESH   1                    NA                 0.0055465   -0.0045144   0.0156074


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.1748307   -0.2437799   0.4525524
0-24 months (no birth wast)   NIH-Birth   BANGLADESH   1                    NA                 0.0617168   -0.0499751   0.1615274
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.1913570   -0.0528139   0.3788993
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                -0.1200000   -1.4026764   0.4779156
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.2030981   -0.2634292   0.4973580
6-24 months                   NIH-Birth   BANGLADESH   1                    NA                 0.0622825   -0.0566201   0.1678049
