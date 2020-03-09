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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_safeh20

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




# Results Detail

## Results Plots
![](/tmp/6849acb5-c38e-40ca-89ff-03abc7b633a0/99c82c4c-21b2-4c31-bdf3-879c5d590ffd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6849acb5-c38e-40ca-89ff-03abc7b633a0/99c82c4c-21b2-4c31-bdf3-879c5d590ffd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6849acb5-c38e-40ca-89ff-03abc7b633a0/99c82c4c-21b2-4c31-bdf3-879c5d590ffd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6849acb5-c38e-40ca-89ff-03abc7b633a0/99c82c4c-21b2-4c31-bdf3-879c5d590ffd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         1                    NA                0.0296616   0.0208842   0.0384391
Birth       COHORTS      INDIA         0                    NA                0.0296721   0.0236933   0.0356509
Birth       JiVitA-3     BANGLADESH    1                    NA                0.1041234   0.0984162   0.1098307
Birth       JiVitA-3     BANGLADESH    0                    NA                0.1120795   0.1028863   0.1212727
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0779516   0.0635306   0.0923725
Birth       JiVitA-4     BANGLADESH    0                    NA                0.0953356   0.0631058   0.1275653
Birth       NIH-Birth    BANGLADESH    1                    NA                0.0216450   0.0028637   0.0404264
Birth       NIH-Birth    BANGLADESH    0                    NA                0.0371353   0.0180319   0.0562387
6 months    COHORTS      INDIA         1                    NA                0.0356427   0.0256856   0.0455999
6 months    COHORTS      INDIA         0                    NA                0.0545293   0.0467226   0.0623361
6 months    JiVitA-3     BANGLADESH    1                    NA                0.0563972   0.0516689   0.0611254
6 months    JiVitA-3     BANGLADESH    0                    NA                0.0650303   0.0566468   0.0734139
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0578299   0.0497940   0.0658657
6 months    JiVitA-4     BANGLADESH    0                    NA                0.0530735   0.0390382   0.0671089
6 months    NIH-Birth    BANGLADESH    1                    NA                0.0577988   0.0238947   0.0917028
6 months    NIH-Birth    BANGLADESH    0                    NA                0.0645974   0.0394085   0.0897863
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.0292683   0.0159371   0.0425994
6 months    NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
24 months   COHORTS      GUATEMALA     1                    NA                0.4674572   0.3452796   0.5896348
24 months   COHORTS      GUATEMALA     0                    NA                0.4966224   0.4623365   0.5309082
24 months   COHORTS      INDIA         1                    NA                0.2032159   0.1806084   0.2258234
24 months   COHORTS      INDIA         0                    NA                0.2849691   0.2667949   0.3031434
24 months   COHORTS      PHILIPPINES   1                    NA                0.0721042   0.0169505   0.1272579
24 months   COHORTS      PHILIPPINES   0                    NA                0.3743384   0.3417825   0.4068942
24 months   JiVitA-3     BANGLADESH    1                    NA                0.1462301   0.1354219   0.1570382
24 months   JiVitA-3     BANGLADESH    0                    NA                0.1862103   0.1638393   0.2085814
24 months   JiVitA-4     BANGLADESH    1                    NA                0.0898708   0.0791066   0.1006349
24 months   JiVitA-4     BANGLADESH    0                    NA                0.1026983   0.0789250   0.1264717
24 months   MAL-ED       INDIA         1                    NA                0.0769231   0.0255961   0.1282501
24 months   MAL-ED       INDIA         0                    NA                0.1735537   0.1059225   0.2411849
24 months   NIH-Birth    BANGLADESH    1                    NA                0.1954085   0.1299547   0.2608623
24 months   NIH-Birth    BANGLADESH    0                    NA                0.2385006   0.1865798   0.2904214
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


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000    1.000000
Birth       COHORTS      INDIA         0                    1                 1.0003530   0.6994013    1.430804
Birth       JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-3     BANGLADESH    0                    1                 1.0764099   0.9805781    1.181607
Birth       JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
Birth       JiVitA-4     BANGLADESH    0                    1                 1.2230098   0.8285729    1.805216
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 1.7156499   0.6256664    4.704511
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000    1.000000
6 months    COHORTS      INDIA         0                    1                 1.5298856   1.1185961    2.092400
6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3     BANGLADESH    0                    1                 1.1530780   0.9916209    1.340824
6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4     BANGLADESH    0                    1                 0.9177533   0.6805318    1.237666
6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
6 months    NIH-Birth    BANGLADESH    0                    1                 1.1176252   0.5534126    2.257061
6 months    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 1.9194757   0.7303803    5.044477
24 months   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000    1.000000
24 months   COHORTS      GUATEMALA     0                    1                 1.0623911   0.8113802    1.391055
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000    1.000000
24 months   COHORTS      INDIA         0                    1                 1.4022977   1.2374064    1.589162
24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000    1.000000
24 months   COHORTS      PHILIPPINES   0                    1                 5.1916308   2.4034384   11.214363
24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3     BANGLADESH    0                    1                 1.2734064   1.1077395    1.463849
24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4     BANGLADESH    0                    1                 1.1427334   0.8835407    1.477962
24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000    1.000000
24 months   MAL-ED       INDIA         0                    1                 2.2561983   1.0418240    4.886076
24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
24 months   NIH-Birth    BANGLADESH    0                    1                 1.2205229   0.8218411    1.812608
24 months   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000    1.000000
24 months   NIH-Crypto   BANGLADESH    0                    1                 1.0309524   0.4135862    2.569870


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                -0.0001390   -0.0075634   0.0072853
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0050112    0.0014195   0.0086030
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0046725   -0.0023341   0.0116791
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.0096050   -0.0070171   0.0262270
6 months    COHORTS      INDIA         1                    NA                 0.0130396    0.0039289   0.0221504
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0042576    0.0012653   0.0072499
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0016641   -0.0058076   0.0024795
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0073781   -0.0210480   0.0358043
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0034022   -0.0029150   0.0097193
24 months   COHORTS      GUATEMALA     1                    NA                 0.0275036   -0.0897213   0.1447284
24 months   COHORTS      INDIA         1                    NA                 0.0532491    0.0337430   0.0727551
24 months   COHORTS      PHILIPPINES   1                    NA                 0.2723403    0.2139266   0.3307539
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0097662    0.0029927   0.0165397
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0053473   -0.0004633   0.0111578
24 months   MAL-ED       INDIA         1                    NA                 0.0519658    0.0058733   0.0980583
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0260367   -0.0287791   0.0808525
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0002984   -0.0087425   0.0093394


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      INDIA         1                    NA                -0.0047089   -0.2904784   0.2177785
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0459180    0.0124421   0.0782590
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0565516   -0.0337676   0.1389796
Birth       NIH-Birth    BANGLADESH    1                    NA                 0.3073593   -0.4568509   0.6706930
6 months    COHORTS      INDIA         1                    NA                 0.2678510    0.0585609   0.4306141
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0701938    0.0196129   0.1181652
6 months    JiVitA-4     BANGLADESH    1                    NA                -0.0296276   -0.1060953   0.0415537
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.1132015   -0.4478715   0.4568498
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.1041357   -0.1063416   0.2745705
24 months   COHORTS      GUATEMALA     1                    NA                 0.0555672   -0.2137153   0.2651050
24 months   COHORTS      INDIA         1                    NA                 0.2076271    0.1283536   0.2796909
24 months   COHORTS      PHILIPPINES   1                    NA                 0.7906652    0.5540103   0.9017443
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0626054    0.0181862   0.1050150
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0561580   -0.0066715   0.1150661
24 months   MAL-ED       INDIA         1                    NA                 0.4031830   -0.0465924   0.6596664
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.1175763   -0.1676154   0.3331095
24 months   NIH-Crypto   BANGLADESH    1                    NA                 0.0042890   -0.1344942   0.1260948
