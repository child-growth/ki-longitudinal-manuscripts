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

**Intervention Variable:** impsan

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid      country                        impsan    ever_stunted   n_cell      n
---------------------------  -----------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth st.)   COHORTS      GUATEMALA                      1                    0       16    635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      1                    1       49    635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      0                    0      104    635
0-24 months (no birth st.)   COHORTS      GUATEMALA                      0                    1      466    635
0-24 months (no birth st.)   COHORTS      INDIA                          1                    0     1423   4715
0-24 months (no birth st.)   COHORTS      INDIA                          1                    1      389   4715
0-24 months (no birth st.)   COHORTS      INDIA                          0                    0     1871   4715
0-24 months (no birth st.)   COHORTS      INDIA                          0                    1     1032   4715
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    1                    0      102   1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    1                    1       75   1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    0                    0      207   1115
0-24 months (no birth st.)   COHORTS      PHILIPPINES                    0                    1      731   1115
0-24 months (no birth st.)   CONTENT      PERU                           1                    0      154    195
0-24 months (no birth st.)   CONTENT      PERU                           1                    1       29    195
0-24 months (no birth st.)   CONTENT      PERU                           0                    0        8    195
0-24 months (no birth st.)   CONTENT      PERU                           0                    1        4    195
0-24 months (no birth st.)   LCNI-5       MALAWI                         1                    0        2    518
0-24 months (no birth st.)   LCNI-5       MALAWI                         1                    1        0    518
0-24 months (no birth st.)   LCNI-5       MALAWI                         0                    0      293    518
0-24 months (no birth st.)   LCNI-5       MALAWI                         0                    1      223    518
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     1                    0       82    203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     1                    1       88    203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0                    0       11    203
0-24 months (no birth st.)   MAL-ED       BANGLADESH                     0                    1       22    203
0-24 months (no birth st.)   MAL-ED       BRAZIL                         1                    0      151    185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         1                    1       30    185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0                    0        3    185
0-24 months (no birth st.)   MAL-ED       BRAZIL                         0                    1        1    185
0-24 months (no birth st.)   MAL-ED       INDIA                          1                    0       44    196
0-24 months (no birth st.)   MAL-ED       INDIA                          1                    1       44    196
0-24 months (no birth st.)   MAL-ED       INDIA                          0                    0       45    196
0-24 months (no birth st.)   MAL-ED       INDIA                          0                    1       63    196
0-24 months (no birth st.)   MAL-ED       NEPAL                          1                    0      153    208
0-24 months (no birth st.)   MAL-ED       NEPAL                          1                    1       54    208
0-24 months (no birth st.)   MAL-ED       NEPAL                          0                    0        1    208
0-24 months (no birth st.)   MAL-ED       NEPAL                          0                    1        0    208
0-24 months (no birth st.)   MAL-ED       PERU                           1                    0       26    231
0-24 months (no birth st.)   MAL-ED       PERU                           1                    1       31    231
0-24 months (no birth st.)   MAL-ED       PERU                           0                    0       63    231
0-24 months (no birth st.)   MAL-ED       PERU                           0                    1      111    231
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   1                    0        3    225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   1                    1        1    225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0                    0       93    225
0-24 months (no birth st.)   MAL-ED       SOUTH AFRICA                   0                    1      128    225
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       30    202
0-24 months (no birth st.)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      172    202
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     1                    0       92    530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     1                    1      111    530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0                    0      119    530
0-24 months (no birth st.)   NIH-Birth    BANGLADESH                     0                    1      208    530
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     1                    0      341    643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     1                    1      228    643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0                    0       50    643
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH                     0                    1       24    643
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     1                    0       48     58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     1                    1        8     58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0                    0        2     58
0-24 months (no birth st.)   PROVIDE      BANGLADESH                     0                    1        0     58
0-6 months (no birth st.)    COHORTS      GUATEMALA                      1                    0       48    565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      1                    1       12    565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      0                    0      379    565
0-6 months (no birth st.)    COHORTS      GUATEMALA                      0                    1      126    565
0-6 months (no birth st.)    COHORTS      INDIA                          1                    0     1641   4569
0-6 months (no birth st.)    COHORTS      INDIA                          1                    1       91   4569
0-6 months (no birth st.)    COHORTS      INDIA                          0                    0     2570   4569
0-6 months (no birth st.)    COHORTS      INDIA                          0                    1      267   4569
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    1                    0      162   1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    1                    1       15   1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    0                    0      738   1115
0-6 months (no birth st.)    COHORTS      PHILIPPINES                    0                    1      200   1115
0-6 months (no birth st.)    CONTENT      PERU                           1                    0      176    195
0-6 months (no birth st.)    CONTENT      PERU                           1                    1        7    195
0-6 months (no birth st.)    CONTENT      PERU                           0                    0       12    195
0-6 months (no birth st.)    CONTENT      PERU                           0                    1        0    195
0-6 months (no birth st.)    LCNI-5       MALAWI                         1                    0        0    174
0-6 months (no birth st.)    LCNI-5       MALAWI                         1                    1        0    174
0-6 months (no birth st.)    LCNI-5       MALAWI                         0                    0      174    174
0-6 months (no birth st.)    LCNI-5       MALAWI                         0                    1        0    174
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     1                    0      133    203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     1                    1       37    203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0                    0       27    203
0-6 months (no birth st.)    MAL-ED       BANGLADESH                     0                    1        6    203
0-6 months (no birth st.)    MAL-ED       BRAZIL                         1                    0      161    185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         1                    1       20    185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0                    0        4    185
0-6 months (no birth st.)    MAL-ED       BRAZIL                         0                    1        0    185
0-6 months (no birth st.)    MAL-ED       INDIA                          1                    0       76    196
0-6 months (no birth st.)    MAL-ED       INDIA                          1                    1       12    196
0-6 months (no birth st.)    MAL-ED       INDIA                          0                    0       78    196
0-6 months (no birth st.)    MAL-ED       INDIA                          0                    1       30    196
0-6 months (no birth st.)    MAL-ED       NEPAL                          1                    0      194    208
0-6 months (no birth st.)    MAL-ED       NEPAL                          1                    1       13    208
0-6 months (no birth st.)    MAL-ED       NEPAL                          0                    0        1    208
0-6 months (no birth st.)    MAL-ED       NEPAL                          0                    1        0    208
0-6 months (no birth st.)    MAL-ED       PERU                           1                    0       41    231
0-6 months (no birth st.)    MAL-ED       PERU                           1                    1       16    231
0-6 months (no birth st.)    MAL-ED       PERU                           0                    0      106    231
0-6 months (no birth st.)    MAL-ED       PERU                           0                    1       68    231
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   1                    0        3    225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   1                    1        1    225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0                    0      150    225
0-6 months (no birth st.)    MAL-ED       SOUTH AFRICA                   0                    1       71    225
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      139    202
0-6 months (no birth st.)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1       63    202
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     1                    0      161    530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     1                    1       42    530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0                    0      248    530
0-6 months (no birth st.)    NIH-Birth    BANGLADESH                     0                    1       79    530
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     1                    0      460    643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     1                    1      109    643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0                    0       63    643
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH                     0                    1       11    643
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     1                    0       51     58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     1                    1        5     58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0                    0        2     58
0-6 months (no birth st.)    PROVIDE      BANGLADESH                     0                    1        0     58
6-24 months                  COHORTS      GUATEMALA                      1                    0       16    626
6-24 months                  COHORTS      GUATEMALA                      1                    1       46    626
6-24 months                  COHORTS      GUATEMALA                      0                    0       99    626
6-24 months                  COHORTS      GUATEMALA                      0                    1      465    626
6-24 months                  COHORTS      INDIA                          1                    0     1329   4117
6-24 months                  COHORTS      INDIA                          1                    1      308   4117
6-24 months                  COHORTS      INDIA                          0                    0     1690   4117
6-24 months                  COHORTS      INDIA                          0                    1      790   4117
6-24 months                  COHORTS      PHILIPPINES                    1                    0       74    834
6-24 months                  COHORTS      PHILIPPINES                    1                    1       60    834
6-24 months                  COHORTS      PHILIPPINES                    0                    0      169    834
6-24 months                  COHORTS      PHILIPPINES                    0                    1      531    834
6-24 months                  CONTENT      PERU                           1                    0      154    188
6-24 months                  CONTENT      PERU                           1                    1       22    188
6-24 months                  CONTENT      PERU                           0                    0        8    188
6-24 months                  CONTENT      PERU                           0                    1        4    188
6-24 months                  LCNI-5       MALAWI                         1                    0        2    706
6-24 months                  LCNI-5       MALAWI                         1                    1        1    706
6-24 months                  LCNI-5       MALAWI                         0                    0      281    706
6-24 months                  LCNI-5       MALAWI                         0                    1      422    706
6-24 months                  MAL-ED       BANGLADESH                     1                    0       80    158
6-24 months                  MAL-ED       BANGLADESH                     1                    1       51    158
6-24 months                  MAL-ED       BANGLADESH                     0                    0       11    158
6-24 months                  MAL-ED       BANGLADESH                     0                    1       16    158
6-24 months                  MAL-ED       BRAZIL                         1                    0      149    163
6-24 months                  MAL-ED       BRAZIL                         1                    1       10    163
6-24 months                  MAL-ED       BRAZIL                         0                    0        3    163
6-24 months                  MAL-ED       BRAZIL                         0                    1        1    163
6-24 months                  MAL-ED       INDIA                          1                    0       44    154
6-24 months                  MAL-ED       INDIA                          1                    1       32    154
6-24 months                  MAL-ED       INDIA                          0                    0       45    154
6-24 months                  MAL-ED       INDIA                          0                    1       33    154
6-24 months                  MAL-ED       NEPAL                          1                    0      152    194
6-24 months                  MAL-ED       NEPAL                          1                    1       41    194
6-24 months                  MAL-ED       NEPAL                          0                    0        1    194
6-24 months                  MAL-ED       NEPAL                          0                    1        0    194
6-24 months                  MAL-ED       PERU                           1                    0       26    147
6-24 months                  MAL-ED       PERU                           1                    1       15    147
6-24 months                  MAL-ED       PERU                           0                    0       63    147
6-24 months                  MAL-ED       PERU                           0                    1       43    147
6-24 months                  MAL-ED       SOUTH AFRICA                   1                    0        3    153
6-24 months                  MAL-ED       SOUTH AFRICA                   1                    1        0    153
6-24 months                  MAL-ED       SOUTH AFRICA                   0                    0       93    153
6-24 months                  MAL-ED       SOUTH AFRICA                   0                    1       57    153
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0    137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0    137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0       28    137
6-24 months                  MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1      109    137
6-24 months                  NIH-Birth    BANGLADESH                     1                    0       67    345
6-24 months                  NIH-Birth    BANGLADESH                     1                    1       69    345
6-24 months                  NIH-Birth    BANGLADESH                     0                    0       80    345
6-24 months                  NIH-Birth    BANGLADESH                     0                    1      129    345
6-24 months                  NIH-Crypto   BANGLADESH                     1                    0      321    500
6-24 months                  NIH-Crypto   BANGLADESH                     1                    1      119    500
6-24 months                  NIH-Crypto   BANGLADESH                     0                    0       47    500
6-24 months                  NIH-Crypto   BANGLADESH                     0                    1       13    500
6-24 months                  PROVIDE      BANGLADESH                     1                    0        3      6
6-24 months                  PROVIDE      BANGLADESH                     1                    1        3      6
6-24 months                  PROVIDE      BANGLADESH                     0                    0        0      6
6-24 months                  PROVIDE      BANGLADESH                     0                    1        0      6


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/5675141d-c312-4d50-9cae-4741276458c7/d6f40982-4f6e-4851-9b93-48c1a522fac4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5675141d-c312-4d50-9cae-4741276458c7/d6f40982-4f6e-4851-9b93-48c1a522fac4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5675141d-c312-4d50-9cae-4741276458c7/d6f40982-4f6e-4851-9b93-48c1a522fac4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5675141d-c312-4d50-9cae-4741276458c7/d6f40982-4f6e-4851-9b93-48c1a522fac4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                0.7538462   0.6490420   0.8586503
0-24 months (no birth st.)   COHORTS      GUATEMALA     0                    NA                0.8175439   0.7858126   0.8492751
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                0.2146799   0.1957724   0.2335874
0-24 months (no birth st.)   COHORTS      INDIA         0                    NA                0.3554943   0.3380802   0.3729084
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                0.4237288   0.3508982   0.4965594
0-24 months (no birth st.)   COHORTS      PHILIPPINES   0                    NA                0.7793177   0.7527666   0.8058688
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                0.5176471   0.4423470   0.5929471
0-24 months (no birth st.)   MAL-ED       BANGLADESH    0                    NA                0.6666667   0.5054325   0.8279009
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                0.5000000   0.3952660   0.6047340
0-24 months (no birth st.)   MAL-ED       INDIA         0                    NA                0.5833333   0.4901153   0.6765513
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                0.5438596   0.4142774   0.6734419
0-24 months (no birth st.)   MAL-ED       PERU          0                    NA                0.6379310   0.5663665   0.7094956
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                0.5467980   0.4782540   0.6153420
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    0                    NA                0.6360856   0.5838891   0.6882822
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                0.4007030   0.3604070   0.4409990
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    0                    NA                0.3243243   0.2175839   0.4310648
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                0.2000000   0.0986982   0.3013018
0-6 months (no birth st.)    COHORTS      GUATEMALA     0                    NA                0.2495050   0.2117303   0.2872796
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                0.0525404   0.0420317   0.0630491
0-6 months (no birth st.)    COHORTS      INDIA         0                    NA                0.0941135   0.0833679   0.1048591
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                0.0847458   0.0436983   0.1257932
0-6 months (no birth st.)    COHORTS      PHILIPPINES   0                    NA                0.2132196   0.1869966   0.2394426
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                0.2176471   0.1554638   0.2798304
0-6 months (no birth st.)    MAL-ED       BANGLADESH    0                    NA                0.1818182   0.0498993   0.3137371
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                0.1363636   0.0644796   0.2082476
0-6 months (no birth st.)    MAL-ED       INDIA         0                    NA                0.2777778   0.1930880   0.3624676
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                0.2807018   0.1637976   0.3976059
0-6 months (no birth st.)    MAL-ED       PERU          0                    NA                0.3908046   0.3181482   0.4634610
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                0.2068966   0.1511200   0.2626731
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    0                    NA                0.2415902   0.1951520   0.2880285
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                0.1915641   0.1592040   0.2239242
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    0                    NA                0.1486486   0.0675329   0.2297644
6-24 months                  COHORTS      GUATEMALA     1                    NA                0.7419355   0.6329304   0.8509405
6-24 months                  COHORTS      GUATEMALA     0                    NA                0.8244681   0.7930470   0.8558891
6-24 months                  COHORTS      INDIA         1                    NA                0.1881491   0.1692140   0.2070841
6-24 months                  COHORTS      INDIA         0                    NA                0.3185484   0.3002092   0.3368876
6-24 months                  COHORTS      PHILIPPINES   1                    NA                0.4477612   0.3635164   0.5320060
6-24 months                  COHORTS      PHILIPPINES   0                    NA                0.7585714   0.7268500   0.7902928
6-24 months                  MAL-ED       BANGLADESH    1                    NA                0.3893130   0.3055504   0.4730755
6-24 months                  MAL-ED       BANGLADESH    0                    NA                0.5925926   0.4066677   0.7785175
6-24 months                  MAL-ED       INDIA         1                    NA                0.4210526   0.3096889   0.5324163
6-24 months                  MAL-ED       INDIA         0                    NA                0.4230769   0.3130791   0.5330747
6-24 months                  MAL-ED       PERU          1                    NA                0.3658537   0.2179132   0.5137941
6-24 months                  MAL-ED       PERU          0                    NA                0.4056604   0.3118662   0.4994546
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                0.5073529   0.4232072   0.5914987
6-24 months                  NIH-Birth    BANGLADESH    0                    NA                0.6172249   0.5512317   0.6832180
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                0.2704545   0.2289085   0.3120006
6-24 months                  NIH-Crypto   BANGLADESH    0                    NA                0.2166667   0.1123205   0.3210128


### Parameter: E(Y)


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     NA                   NA                0.8110236   0.7805500   0.8414972
0-24 months (no birth st.)   COHORTS      INDIA         NA                   NA                0.3013786   0.2882798   0.3144773
0-24 months (no birth st.)   COHORTS      PHILIPPINES   NA                   NA                0.7228700   0.6965868   0.7491531
0-24 months (no birth st.)   MAL-ED       BANGLADESH    NA                   NA                0.5418719   0.4731628   0.6105810
0-24 months (no birth st.)   MAL-ED       INDIA         NA                   NA                0.5459184   0.4760370   0.6157998
0-24 months (no birth st.)   MAL-ED       PERU          NA                   NA                0.6147186   0.5518243   0.6776129
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    NA                   NA                0.3919129   0.3541506   0.4296752
0-6 months (no birth st.)    COHORTS      GUATEMALA     NA                   NA                0.2442478   0.2087898   0.2797057
0-6 months (no birth st.)    COHORTS      INDIA         NA                   NA                0.0783541   0.0705612   0.0861470
0-6 months (no birth st.)    COHORTS      PHILIPPINES   NA                   NA                0.1928251   0.1696580   0.2159922
0-6 months (no birth st.)    MAL-ED       BANGLADESH    NA                   NA                0.2118227   0.1554757   0.2681696
0-6 months (no birth st.)    MAL-ED       INDIA         NA                   NA                0.2142857   0.1566940   0.2718774
0-6 months (no birth st.)    MAL-ED       PERU          NA                   NA                0.3636364   0.3014678   0.4258049
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    NA                   NA                0.1866252   0.1564874   0.2167630
6-24 months                  COHORTS      GUATEMALA     NA                   NA                0.8162939   0.7859345   0.8466533
6-24 months                  COHORTS      INDIA         NA                   NA                0.2666991   0.2531888   0.2802093
6-24 months                  COHORTS      PHILIPPINES   NA                   NA                0.7086331   0.6777759   0.7394903
6-24 months                  MAL-ED       BANGLADESH    NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED       INDIA         NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED       PERU          NA                   NA                0.3945578   0.3152779   0.4738378
6-24 months                  NIH-Birth    BANGLADESH    NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  NIH-Crypto   BANGLADESH    NA                   NA                0.2640000   0.2253243   0.3026757


### Parameter: RR


agecat                       studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      GUATEMALA     0                    1                 1.0844970   0.9387315   1.252897
0-24 months (no birth st.)   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      INDIA         0                    1                 1.6559273   1.4971780   1.831509
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   COHORTS      PHILIPPINES   0                    1                 1.8391898   1.5435746   2.191419
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       BANGLADESH    0                    1                 1.2878788   0.9711920   1.707831
0-24 months (no birth st.)   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       INDIA         0                    1                 1.1666667   0.8964490   1.518336
0-24 months (no birth st.)   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED       PERU          0                    1                 1.1729700   0.9013932   1.526369
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    0                    1                 1.1632917   1.0014294   1.351316
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    0                    1                 0.8093883   0.5737199   1.141863
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      GUATEMALA     0                    1                 1.2475248   0.7352899   2.116605
0-6 months (no birth st.)    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      INDIA         0                    1                 1.7912591   1.4227799   2.255169
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    COHORTS      PHILIPPINES   0                    1                 2.5159915   1.5264382   4.147049
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       BANGLADESH    0                    1                 0.8353808   0.3830278   1.821959
0-6 months (no birth st.)    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       INDIA         0                    1                 2.0370370   1.1079703   3.745154
0-6 months (no birth st.)    MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED       PERU          0                    1                 1.3922414   0.8823480   2.196793
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    0                    1                 1.1676860   0.8385569   1.625997
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    0                    1                 0.7759732   0.4382904   1.373825
6-24 months                  COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      GUATEMALA     0                    1                 1.1112396   0.9547496   1.293379
6-24 months                  COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      INDIA         0                    1                 1.6930640   1.5077192   1.901193
6-24 months                  COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  COHORTS      PHILIPPINES   0                    1                 1.6941429   1.3971566   2.054258
6-24 months                  MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       BANGLADESH    0                    1                 1.5221496   1.0404884   2.226781
6-24 months                  MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       INDIA         0                    1                 1.0048077   0.6934450   1.455975
6-24 months                  MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED       PERU          0                    1                 1.1088050   0.6959182   1.766657
6-24 months                  NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Birth    BANGLADESH    0                    1                 1.2165592   0.9986984   1.481945
6-24 months                  NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  NIH-Crypto   BANGLADESH    0                    1                 0.8011204   0.4832371   1.328114


### Parameter: PAR


agecat                       studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                 0.0571775   -0.0411275   0.1554825
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                 0.0866987    0.0707519   0.1026454
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                 0.2991411    0.2334826   0.3647997
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                 0.0242249   -0.0056803   0.0541301
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                 0.0459184   -0.0315588   0.1233956
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                 0.0708590   -0.0407677   0.1824856
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                 0.0550888    0.0018039   0.1083736
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                -0.0087901   -0.0220553   0.0044751
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                 0.0442478   -0.0523947   0.1408903
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                 0.0258137    0.0164629   0.0351645
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                 0.1080793    0.0670102   0.1491485
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                -0.0058244   -0.0296024   0.0179536
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                 0.0779221    0.0159215   0.1399227
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                 0.0829346   -0.0209257   0.1867949
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                 0.0214053   -0.0233969   0.0662075
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                -0.0049390   -0.0150453   0.0051674
6-24 months                  COHORTS      GUATEMALA     1                    NA                 0.0743584   -0.0278675   0.1765844
6-24 months                  COHORTS      INDIA         1                    NA                 0.0785500    0.0625519   0.0945481
6-24 months                  COHORTS      PHILIPPINES   1                    NA                 0.2608719    0.1849198   0.3368240
6-24 months                  MAL-ED       BANGLADESH    1                    NA                 0.0347377   -0.0021079   0.0715833
6-24 months                  MAL-ED       INDIA         1                    NA                 0.0010253   -0.0782559   0.0803065
6-24 months                  MAL-ED       PERU          1                    NA                 0.0287042   -0.0976404   0.1550488
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                 0.0665601    0.0015298   0.1315904
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                -0.0064545   -0.0200191   0.0071100


### Parameter: PAF


agecat                       studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   COHORTS      GUATEMALA     1                    NA                 0.0705004   -0.0591989   0.1843179
0-24 months (no birth st.)   COHORTS      INDIA         1                    NA                 0.2876736    0.2333626   0.3381371
0-24 months (no birth st.)   COHORTS      PHILIPPINES   1                    NA                 0.4138243    0.3126188   0.5001290
0-24 months (no birth st.)   MAL-ED       BANGLADESH    1                    NA                 0.0447059   -0.0124955   0.0986756
0-24 months (no birth st.)   MAL-ED       INDIA         1                    NA                 0.0841121   -0.0699675   0.2160037
0-24 months (no birth st.)   MAL-ED       PERU          1                    NA                 0.1152706   -0.0871540   0.2800043
0-24 months (no birth st.)   NIH-Birth    BANGLADESH    1                    NA                 0.0915268   -0.0018967   0.1762389
0-24 months (no birth st.)   NIH-Crypto   BANGLADESH    1                    NA                -0.0224287   -0.0568651   0.0108857
0-6 months (no birth st.)    COHORTS      GUATEMALA     1                    NA                 0.1811594   -0.3268979   0.4946861
0-6 months (no birth st.)    COHORTS      INDIA         1                    NA                 0.3294493    0.2036601   0.4353689
0-6 months (no birth st.)    COHORTS      PHILIPPINES   1                    NA                 0.5605045    0.3002576   0.7239609
0-6 months (no birth st.)    MAL-ED       BANGLADESH    1                    NA                -0.0274966   -0.1459932   0.0787474
0-6 months (no birth st.)    MAL-ED       INDIA         1                    NA                 0.3636364    0.0144703   0.5890954
0-6 months (no birth st.)    MAL-ED       PERU          1                    NA                 0.2280702   -0.1170979   0.4665860
0-6 months (no birth st.)    NIH-Birth    BANGLADESH    1                    NA                 0.0937589   -0.1250331   0.2700011
0-6 months (no birth st.)    NIH-Crypto   BANGLADESH    1                    NA                -0.0264646   -0.0819777   0.0262003
6-24 months                  COHORTS      GUATEMALA     1                    NA                 0.0910927   -0.0435486   0.2083623
6-24 months                  COHORTS      INDIA         1                    NA                 0.2945267    0.2329073   0.3511963
6-24 months                  COHORTS      PHILIPPINES   1                    NA                 0.3681339    0.2484085   0.4687876
6-24 months                  MAL-ED       BANGLADESH    1                    NA                 0.0819187   -0.0097108   0.1652329
6-24 months                  MAL-ED       INDIA         1                    NA                 0.0024291   -0.2042548   0.1736403
6-24 months                  MAL-ED       PERU          1                    NA                 0.0727502   -0.3098133   0.3435766
6-24 months                  NIH-Birth    BANGLADESH    1                    NA                 0.1159759   -0.0056875   0.2229211
6-24 months                  NIH-Crypto   BANGLADESH    1                    NA                -0.0244490   -0.0771053   0.0256331
