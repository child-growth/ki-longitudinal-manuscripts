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

**Outcome Variable:** sstunted

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

agecat      studyid      country                        impsan    sstunted   n_cell       n
----------  -----------  -----------------------------  -------  ---------  -------  ------
Birth       COHORTS      GUATEMALA                      1                0       45     491
Birth       COHORTS      GUATEMALA                      1                1        0     491
Birth       COHORTS      GUATEMALA                      0                0      440     491
Birth       COHORTS      GUATEMALA                      0                1        6     491
Birth       COHORTS      INDIA                          1                0     1723    4776
Birth       COHORTS      INDIA                          1                1       44    4776
Birth       COHORTS      INDIA                          0                0     2912    4776
Birth       COHORTS      INDIA                          0                1       97    4776
Birth       COHORTS      PHILIPPINES                    1                0      178    1191
Birth       COHORTS      PHILIPPINES                    1                1        0    1191
Birth       COHORTS      PHILIPPINES                    0                0      994    1191
Birth       COHORTS      PHILIPPINES                    0                1       19    1191
Birth       CONTENT      PERU                           1                0        1       2
Birth       CONTENT      PERU                           1                1        0       2
Birth       CONTENT      PERU                           0                0        1       2
Birth       CONTENT      PERU                           0                1        0       2
Birth       JiVitA-3     BANGLADESH                     1                0    13709   22431
Birth       JiVitA-3     BANGLADESH                     1                1     1511   22431
Birth       JiVitA-3     BANGLADESH                     0                0     6274   22431
Birth       JiVitA-3     BANGLADESH                     0                1      937   22431
Birth       JiVitA-4     BANGLADESH                     1                0     2012    2820
Birth       JiVitA-4     BANGLADESH                     1                1      169    2820
Birth       JiVitA-4     BANGLADESH                     0                0      575    2820
Birth       JiVitA-4     BANGLADESH                     0                1       64    2820
Birth       MAL-ED       BANGLADESH                     1                0      174     213
Birth       MAL-ED       BANGLADESH                     1                1        5     213
Birth       MAL-ED       BANGLADESH                     0                0       33     213
Birth       MAL-ED       BANGLADESH                     0                1        1     213
Birth       MAL-ED       BRAZIL                         1                0       56      60
Birth       MAL-ED       BRAZIL                         1                1        3      60
Birth       MAL-ED       BRAZIL                         0                0        1      60
Birth       MAL-ED       BRAZIL                         0                1        0      60
Birth       MAL-ED       INDIA                          1                0       14      40
Birth       MAL-ED       INDIA                          1                1        1      40
Birth       MAL-ED       INDIA                          0                0       25      40
Birth       MAL-ED       INDIA                          0                1        0      40
Birth       MAL-ED       NEPAL                          1                0       24      26
Birth       MAL-ED       NEPAL                          1                1        1      26
Birth       MAL-ED       NEPAL                          0                0        1      26
Birth       MAL-ED       NEPAL                          0                1        0      26
Birth       MAL-ED       PERU                           1                0       50     208
Birth       MAL-ED       PERU                           1                1        2     208
Birth       MAL-ED       PERU                           0                0      154     208
Birth       MAL-ED       PERU                           0                1        2     208
Birth       MAL-ED       SOUTH AFRICA                   1                0        0      95
Birth       MAL-ED       SOUTH AFRICA                   1                1        0      95
Birth       MAL-ED       SOUTH AFRICA                   0                0       94      95
Birth       MAL-ED       SOUTH AFRICA                   0                1        1      95
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      110     118
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1        8     118
Birth       NIH-Birth    BANGLADESH                     1                0      226     608
Birth       NIH-Birth    BANGLADESH                     1                1        5     608
Birth       NIH-Birth    BANGLADESH                     0                0      363     608
Birth       NIH-Birth    BANGLADESH                     0                1       14     608
Birth       NIH-Crypto   BANGLADESH                     1                0      625     721
Birth       NIH-Crypto   BANGLADESH                     1                1        7     721
Birth       NIH-Crypto   BANGLADESH                     0                0       86     721
Birth       NIH-Crypto   BANGLADESH                     0                1        3     721
Birth       PROVIDE      BANGLADESH                     1                0       43      45
Birth       PROVIDE      BANGLADESH                     1                1        0      45
Birth       PROVIDE      BANGLADESH                     0                0        2      45
Birth       PROVIDE      BANGLADESH                     0                1        0      45
6 months    COHORTS      GUATEMALA                      1                0       63     658
6 months    COHORTS      GUATEMALA                      1                1        4     658
6 months    COHORTS      GUATEMALA                      0                0      503     658
6 months    COHORTS      GUATEMALA                      0                1       88     658
6 months    COHORTS      INDIA                          1                0     1829    4971
6 months    COHORTS      INDIA                          1                1       52    4971
6 months    COHORTS      INDIA                          0                0     2900    4971
6 months    COHORTS      INDIA                          0                1      190    4971
6 months    COHORTS      PHILIPPINES                    1                0      141    1083
6 months    COHORTS      PHILIPPINES                    1                1        2    1083
6 months    COHORTS      PHILIPPINES                    0                0      882    1083
6 months    COHORTS      PHILIPPINES                    0                1       58    1083
6 months    CONTENT      PERU                           1                0      201     215
6 months    CONTENT      PERU                           1                1        0     215
6 months    CONTENT      PERU                           0                0       13     215
6 months    CONTENT      PERU                           0                1        1     215
6 months    JiVitA-3     BANGLADESH                     1                0    11398   16800
6 months    JiVitA-3     BANGLADESH                     1                1      640   16800
6 months    JiVitA-3     BANGLADESH                     0                0     4383   16800
6 months    JiVitA-3     BANGLADESH                     0                1      379   16800
6 months    JiVitA-4     BANGLADESH                     1                0     3536    4825
6 months    JiVitA-4     BANGLADESH                     1                1      198    4825
6 months    JiVitA-4     BANGLADESH                     0                0     1018    4825
6 months    JiVitA-4     BANGLADESH                     0                1       73    4825
6 months    LCNI-5       MALAWI                         1                0        2     812
6 months    LCNI-5       MALAWI                         1                1        1     812
6 months    LCNI-5       MALAWI                         0                0      745     812
6 months    LCNI-5       MALAWI                         0                1       64     812
6 months    MAL-ED       BANGLADESH                     1                0      195     240
6 months    MAL-ED       BANGLADESH                     1                1        7     240
6 months    MAL-ED       BANGLADESH                     0                0       37     240
6 months    MAL-ED       BANGLADESH                     0                1        1     240
6 months    MAL-ED       BRAZIL                         1                0      205     209
6 months    MAL-ED       BRAZIL                         1                1        0     209
6 months    MAL-ED       BRAZIL                         0                0        4     209
6 months    MAL-ED       BRAZIL                         0                1        0     209
6 months    MAL-ED       INDIA                          1                0      102     233
6 months    MAL-ED       INDIA                          1                1        6     233
6 months    MAL-ED       INDIA                          0                0      122     233
6 months    MAL-ED       INDIA                          0                1        3     233
6 months    MAL-ED       NEPAL                          1                0      234     236
6 months    MAL-ED       NEPAL                          1                1        1     236
6 months    MAL-ED       NEPAL                          0                0        1     236
6 months    MAL-ED       NEPAL                          0                1        0     236
6 months    MAL-ED       PERU                           1                0       62     263
6 months    MAL-ED       PERU                           1                1        3     263
6 months    MAL-ED       PERU                           0                0      191     263
6 months    MAL-ED       PERU                           0                1        7     263
6 months    MAL-ED       SOUTH AFRICA                   1                0        4     244
6 months    MAL-ED       SOUTH AFRICA                   1                1        0     244
6 months    MAL-ED       SOUTH AFRICA                   0                0      234     244
6 months    MAL-ED       SOUTH AFRICA                   0                1        6     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      224     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       14     238
6 months    NIH-Birth    BANGLADESH                     1                0      194     537
6 months    NIH-Birth    BANGLADESH                     1                1       11     537
6 months    NIH-Birth    BANGLADESH                     0                0      308     537
6 months    NIH-Birth    BANGLADESH                     0                1       24     537
6 months    NIH-Crypto   BANGLADESH                     1                0      597     704
6 months    NIH-Crypto   BANGLADESH                     1                1       18     704
6 months    NIH-Crypto   BANGLADESH                     0                0       84     704
6 months    NIH-Crypto   BANGLADESH                     0                1        5     704
6 months    PROVIDE      BANGLADESH                     1                0       11      11
6 months    PROVIDE      BANGLADESH                     1                1        0      11
6 months    PROVIDE      BANGLADESH                     0                0        0      11
6 months    PROVIDE      BANGLADESH                     0                1        0      11
24 months   COHORTS      GUATEMALA                      1                0       44     893
24 months   COHORTS      GUATEMALA                      1                1       33     893
24 months   COHORTS      GUATEMALA                      0                0      407     893
24 months   COHORTS      GUATEMALA                      0                1      409     893
24 months   COHORTS      INDIA                          1                0     1247    3751
24 months   COHORTS      INDIA                          1                1      224    3751
24 months   COHORTS      INDIA                          0                0     1542    3751
24 months   COHORTS      INDIA                          0                1      738    3751
24 months   COHORTS      PHILIPPINES                    1                0      116     990
24 months   COHORTS      PHILIPPINES                    1                1       10     990
24 months   COHORTS      PHILIPPINES                    0                0      533     990
24 months   COHORTS      PHILIPPINES                    0                1      331     990
24 months   CONTENT      PERU                           1                0      150     164
24 months   CONTENT      PERU                           1                1        1     164
24 months   CONTENT      PERU                           0                0       13     164
24 months   CONTENT      PERU                           0                1        0     164
24 months   JiVitA-3     BANGLADESH                     1                0     5298    8622
24 months   JiVitA-3     BANGLADESH                     1                1      813    8622
24 months   JiVitA-3     BANGLADESH                     0                0     1979    8622
24 months   JiVitA-3     BANGLADESH                     0                1      532    8622
24 months   JiVitA-4     BANGLADESH                     1                0     3373    4747
24 months   JiVitA-4     BANGLADESH                     1                1      310    4747
24 months   JiVitA-4     BANGLADESH                     0                0      922    4747
24 months   JiVitA-4     BANGLADESH                     0                1      142    4747
24 months   LCNI-5       MALAWI                         1                0        1     572
24 months   LCNI-5       MALAWI                         1                1        1     572
24 months   LCNI-5       MALAWI                         0                0      502     572
24 months   LCNI-5       MALAWI                         0                1       68     572
24 months   MAL-ED       BANGLADESH                     1                0      156     212
24 months   MAL-ED       BANGLADESH                     1                1       25     212
24 months   MAL-ED       BANGLADESH                     0                0       28     212
24 months   MAL-ED       BANGLADESH                     0                1        3     212
24 months   MAL-ED       BRAZIL                         1                0      165     169
24 months   MAL-ED       BRAZIL                         1                1        1     169
24 months   MAL-ED       BRAZIL                         0                0        3     169
24 months   MAL-ED       BRAZIL                         0                1        0     169
24 months   MAL-ED       INDIA                          1                0       96     225
24 months   MAL-ED       INDIA                          1                1        8     225
24 months   MAL-ED       INDIA                          0                0      100     225
24 months   MAL-ED       INDIA                          0                1       21     225
24 months   MAL-ED       NEPAL                          1                0      220     228
24 months   MAL-ED       NEPAL                          1                1        7     228
24 months   MAL-ED       NEPAL                          0                0        1     228
24 months   MAL-ED       NEPAL                          0                1        0     228
24 months   MAL-ED       PERU                           1                0       43     196
24 months   MAL-ED       PERU                           1                1        4     196
24 months   MAL-ED       PERU                           0                0      138     196
24 months   MAL-ED       PERU                           0                1       11     196
24 months   MAL-ED       SOUTH AFRICA                   1                0        4     235
24 months   MAL-ED       SOUTH AFRICA                   1                1        0     235
24 months   MAL-ED       SOUTH AFRICA                   0                0      204     235
24 months   MAL-ED       SOUTH AFRICA                   0                1       27     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                0        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                1        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                0      139     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                1       68     207
24 months   NIH-Birth    BANGLADESH                     1                0      141     429
24 months   NIH-Birth    BANGLADESH                     1                1       29     429
24 months   NIH-Birth    BANGLADESH                     0                0      193     429
24 months   NIH-Birth    BANGLADESH                     0                1       66     429
24 months   NIH-Crypto   BANGLADESH                     1                0      403     503
24 months   NIH-Crypto   BANGLADESH                     1                1       30     503
24 months   NIH-Crypto   BANGLADESH                     0                0       65     503
24 months   NIH-Crypto   BANGLADESH                     0                1        5     503
24 months   PROVIDE      BANGLADESH                     1                0        8       9
24 months   PROVIDE      BANGLADESH                     1                1        1       9
24 months   PROVIDE      BANGLADESH                     0                0        0       9
24 months   PROVIDE      BANGLADESH                     0                1        0       9


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/b8013c57-8a09-45f5-813f-215e25805d89/ed611076-4651-4358-962e-cfeb06afef06/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8013c57-8a09-45f5-813f-215e25805d89/ed611076-4651-4358-962e-cfeb06afef06/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8013c57-8a09-45f5-813f-215e25805d89/ed611076-4651-4358-962e-cfeb06afef06/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8013c57-8a09-45f5-813f-215e25805d89/ed611076-4651-4358-962e-cfeb06afef06/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         1                    NA                0.0249010   0.0176348   0.0321672
Birth       COHORTS      INDIA         0                    NA                0.0322366   0.0259250   0.0385483
Birth       JiVitA-3     BANGLADESH    1                    NA                0.0992773   0.0938915   0.1046631
Birth       JiVitA-3     BANGLADESH    0                    NA                0.1299404   0.1219679   0.1379129
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0774874   0.0636609   0.0913139
Birth       JiVitA-4     BANGLADESH    0                    NA                0.1001565   0.0778601   0.1224529
Birth       NIH-Birth    BANGLADESH    1                    NA                0.0216450   0.0028637   0.0404264
Birth       NIH-Birth    BANGLADESH    0                    NA                0.0371353   0.0180319   0.0562387
6 months    COHORTS      INDIA         1                    NA                0.0276449   0.0202349   0.0350549
6 months    COHORTS      INDIA         0                    NA                0.0614887   0.0530178   0.0699596
6 months    JiVitA-3     BANGLADESH    1                    NA                0.0531650   0.0489392   0.0573907
6 months    JiVitA-3     BANGLADESH    0                    NA                0.0795884   0.0715562   0.0876206
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0530262   0.0453665   0.0606860
6 months    JiVitA-4     BANGLADESH    0                    NA                0.0669111   0.0530206   0.0808016
6 months    NIH-Birth    BANGLADESH    1                    NA                0.0536585   0.0227827   0.0845344
6 months    NIH-Birth    BANGLADESH    0                    NA                0.0722892   0.0444070   0.1001713
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
24 months   COHORTS      GUATEMALA     1                    NA                0.4285714   0.3179756   0.5391672
24 months   COHORTS      GUATEMALA     0                    NA                0.5012255   0.4669001   0.5355508
24 months   COHORTS      INDIA         1                    NA                0.1522774   0.1339143   0.1706404
24 months   COHORTS      INDIA         0                    NA                0.3236842   0.3044766   0.3428919
24 months   COHORTS      PHILIPPINES   1                    NA                0.0793651   0.0321435   0.1265867
24 months   COHORTS      PHILIPPINES   0                    NA                0.3831019   0.3506698   0.4155339
24 months   JiVitA-3     BANGLADESH    1                    NA                0.1330388   0.1234810   0.1425965
24 months   JiVitA-3     BANGLADESH    0                    NA                0.2118678   0.1947977   0.2289378
24 months   JiVitA-4     BANGLADESH    1                    NA                0.0841705   0.0737720   0.0945690
24 months   JiVitA-4     BANGLADESH    0                    NA                0.1334586   0.1118081   0.1551092
24 months   MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   MAL-ED       INDIA         0                    NA                0.1735537   0.1059225   0.2411849
24 months   NIH-Birth    BANGLADESH    1                    NA                0.1705882   0.1139786   0.2271978
24 months   NIH-Birth    BANGLADESH    0                    NA                0.2548263   0.2016943   0.3079582
24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0692841   0.0453420   0.0932261
24 months   NIH-Crypto   BANGLADESH    0                    NA                0.0714286   0.0110372   0.1318199


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         NA                   NA                0.0295226   0.0247216   0.0343236
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.1091347   0.1045758   0.1136935
Birth       JiVitA-4     BANGLADESH    NA                   NA                0.0826241   0.0709364   0.0943118
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0312500   0.0174085   0.0450915
6 months    COHORTS      INDIA         NA                   NA                0.0486824   0.0426994   0.0546654
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0606548   0.0567999   0.0645096
6 months    JiVitA-4     BANGLADESH    NA                   NA                0.0561658   0.0493946   0.0629370
6 months    NIH-Birth    BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto   BANGLADESH    NA                   NA                0.0326705   0.0195292   0.0458117
24 months   COHORTS      GUATEMALA     NA                   NA                0.4949608   0.4621502   0.5277714
24 months   COHORTS      INDIA         NA                   NA                0.2564649   0.2424885   0.2704414
24 months   COHORTS      PHILIPPINES   NA                   NA                0.3444444   0.3148293   0.3740596
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.1559963   0.1472522   0.1647404
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.0952180   0.0856733   0.1047628
24 months   MAL-ED       INDIA         NA                   NA                0.1288889   0.0850087   0.1727691
24 months   NIH-Birth    BANGLADESH    NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto   BANGLADESH    NA                   NA                0.0695825   0.0473246   0.0918405


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ---------  ----------  ---------
Birth       COHORTS      INDIA         1                    1                 1.000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 1.294593   0.9110060   1.839694
Birth       JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH    0                    1                 1.308863   1.2080025   1.418145
Birth       JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH    0                    1                 1.292552   0.9679642   1.725984
Birth       NIH-Birth    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 1.715650   0.6256664   4.704511
6 months    COHORTS      INDIA         1                    1                 1.000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 2.224235   1.6454938   3.006525
6 months    JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH    0                    1                 1.497008   1.3183605   1.699864
6 months    JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH    0                    1                 1.261848   0.9826800   1.620326
6 months    NIH-Birth    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH    0                    1                 1.347207   0.6738877   2.693278
6 months    NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 1.919476   0.7303803   5.044477
24 months   COHORTS      GUATEMALA     1                    1                 1.000000   1.0000000   1.000000
24 months   COHORTS      GUATEMALA     0                    1                 1.169526   0.8954843   1.527432
24 months   COHORTS      INDIA         1                    1                 1.000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 2.125623   1.8583068   2.431392
24 months   COHORTS      PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
24 months   COHORTS      PHILIPPINES   0                    1                 4.827083   2.6465526   8.804183
24 months   JiVitA-3     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH    0                    1                 1.592526   1.4333234   1.769413
24 months   JiVitA-4     BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH    0                    1                 1.585575   1.2948802   1.941529
24 months   MAL-ED       INDIA         1                    1                 1.000000   1.0000000   1.000000
24 months   MAL-ED       INDIA         0                    1                 2.256198   1.0418240   4.886076
24 months   NIH-Birth    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH    0                    1                 1.493809   1.0094588   2.210556
24 months   NIH-Crypto   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
24 months   NIH-Crypto   BANGLADESH    0                    1                 1.030952   0.4135862   2.569870


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                0.0046217   -0.0014430   0.0106863
Birth       JiVitA-3     BANGLADESH    1                    NA                0.0098574    0.0068183   0.0128966
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0051367   -0.0008632   0.0111367
Birth       NIH-Birth    BANGLADESH    1                    NA                0.0096050   -0.0070171   0.0262270
6 months    COHORTS      INDIA         1                    NA                0.0210375    0.0140268   0.0280482
6 months    JiVitA-3     BANGLADESH    1                    NA                0.0074898    0.0049266   0.0100530
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0031396   -0.0004004   0.0066795
6 months    NIH-Birth    BANGLADESH    1                    NA                0.0115184   -0.0142135   0.0372503
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.0034022   -0.0029150   0.0097193
24 months   COHORTS      GUATEMALA     1                    NA                0.0663894   -0.0394342   0.1722129
24 months   COHORTS      INDIA         1                    NA                0.1041876    0.0878148   0.1205603
24 months   COHORTS      PHILIPPINES   1                    NA                0.2650794    0.2146876   0.3154712
24 months   JiVitA-3     BANGLADESH    1                    NA                0.0229575    0.0172813   0.0286337
24 months   JiVitA-4     BANGLADESH    1                    NA                0.0110475    0.0056539   0.0164412
24 months   MAL-ED       INDIA         1                    NA                0.0519658    0.0058733   0.0980583
24 months   NIH-Birth    BANGLADESH    1                    NA                0.0508570    0.0038224   0.0978916
24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0002984   -0.0087425   0.0093394


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                0.1565461   -0.0741384   0.3376883
Birth       JiVitA-3     BANGLADESH    1                    NA                0.0903234    0.0619239   0.1178631
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0621698   -0.0151474   0.1335982
Birth       NIH-Birth    BANGLADESH    1                    NA                0.3073593   -0.4568509   0.6706930
6 months    COHORTS      INDIA         1                    NA                0.4321378    0.2804119   0.5518722
6 months    JiVitA-3     BANGLADESH    1                    NA                0.1234822    0.0809178   0.1640754
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0558980   -0.0097078   0.1172411
6 months    NIH-Birth    BANGLADESH    1                    NA                0.1767247   -0.3240464   0.4880979
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.1041357   -0.1063416   0.2745705
24 months   COHORTS      GUATEMALA     1                    NA                0.1341306   -0.1085460   0.3236818
24 months   COHORTS      INDIA         1                    NA                0.4062449    0.3414115   0.4646960
24 months   COHORTS      PHILIPPINES   1                    NA                0.7695853    0.5869665   0.8714609
24 months   JiVitA-3     BANGLADESH    1                    NA                0.1471670    0.1105233   0.1823011
24 months   JiVitA-4     BANGLADESH    1                    NA                0.1160234    0.0577040   0.1707333
24 months   MAL-ED       INDIA         1                    NA                0.4031830   -0.0465924   0.6596664
24 months   NIH-Birth    BANGLADESH    1                    NA                0.2296594   -0.0119966   0.4136101
24 months   NIH-Crypto   BANGLADESH    1                    NA                0.0042890   -0.1344942   0.1260948
