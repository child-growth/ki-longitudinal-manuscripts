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

agecat      studyid      country                        impsan    swasted   n_cell       n
----------  -----------  -----------------------------  -------  --------  -------  ------
Birth       COHORTS      GUATEMALA                      1               0       37     449
Birth       COHORTS      GUATEMALA                      1               1        6     449
Birth       COHORTS      GUATEMALA                      0               0      378     449
Birth       COHORTS      GUATEMALA                      0               1       28     449
Birth       COHORTS      INDIA                          1               0     1603    4461
Birth       COHORTS      INDIA                          1               1       82    4461
Birth       COHORTS      INDIA                          0               0     2644    4461
Birth       COHORTS      INDIA                          0               1      132    4461
Birth       COHORTS      PHILIPPINES                    1               0      170    1126
Birth       COHORTS      PHILIPPINES                    1               1        7    1126
Birth       COHORTS      PHILIPPINES                    0               0      914    1126
Birth       COHORTS      PHILIPPINES                    0               1       35    1126
Birth       CONTENT      PERU                           1               0        1       2
Birth       CONTENT      PERU                           1               1        0       2
Birth       CONTENT      PERU                           0               0        1       2
Birth       CONTENT      PERU                           0               1        0       2
Birth       JiVitA-3     BANGLADESH                     1               0    12185   17991
Birth       JiVitA-3     BANGLADESH                     1               1      228   17991
Birth       JiVitA-3     BANGLADESH                     0               0     5457   17991
Birth       JiVitA-3     BANGLADESH                     0               1      121   17991
Birth       JiVitA-4     BANGLADESH                     1               0     1836    2394
Birth       JiVitA-4     BANGLADESH                     1               1       23    2394
Birth       JiVitA-4     BANGLADESH                     0               0      527    2394
Birth       JiVitA-4     BANGLADESH                     0               1        8    2394
Birth       MAL-ED       BANGLADESH                     1               0      161     201
Birth       MAL-ED       BANGLADESH                     1               1        7     201
Birth       MAL-ED       BANGLADESH                     0               0       32     201
Birth       MAL-ED       BANGLADESH                     0               1        1     201
Birth       MAL-ED       BRAZIL                         1               0       56      57
Birth       MAL-ED       BRAZIL                         1               1        0      57
Birth       MAL-ED       BRAZIL                         0               0        1      57
Birth       MAL-ED       BRAZIL                         0               1        0      57
Birth       MAL-ED       INDIA                          1               0       14      39
Birth       MAL-ED       INDIA                          1               1        0      39
Birth       MAL-ED       INDIA                          0               0       25      39
Birth       MAL-ED       INDIA                          0               1        0      39
Birth       MAL-ED       NEPAL                          1               0       23      25
Birth       MAL-ED       NEPAL                          1               1        1      25
Birth       MAL-ED       NEPAL                          0               0        1      25
Birth       MAL-ED       NEPAL                          0               1        0      25
Birth       MAL-ED       PERU                           1               0       50     203
Birth       MAL-ED       PERU                           1               1        0     203
Birth       MAL-ED       PERU                           0               0      153     203
Birth       MAL-ED       PERU                           0               1        0     203
Birth       MAL-ED       SOUTH AFRICA                   1               0        0      94
Birth       MAL-ED       SOUTH AFRICA                   1               1        0      94
Birth       MAL-ED       SOUTH AFRICA                   0               0       94      94
Birth       MAL-ED       SOUTH AFRICA                   0               1        0      94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      110     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     110
Birth       NIH-Birth    BANGLADESH                     1               0      202     575
Birth       NIH-Birth    BANGLADESH                     1               1       20     575
Birth       NIH-Birth    BANGLADESH                     0               0      335     575
Birth       NIH-Birth    BANGLADESH                     0               1       18     575
Birth       NIH-Crypto   BANGLADESH                     1               0      570     696
Birth       NIH-Crypto   BANGLADESH                     1               1       40     696
Birth       NIH-Crypto   BANGLADESH                     0               0       80     696
Birth       NIH-Crypto   BANGLADESH                     0               1        6     696
Birth       PROVIDE      BANGLADESH                     1               0       41      45
Birth       PROVIDE      BANGLADESH                     1               1        2      45
Birth       PROVIDE      BANGLADESH                     0               0        2      45
Birth       PROVIDE      BANGLADESH                     0               1        0      45
6 months    COHORTS      GUATEMALA                      1               0       67     658
6 months    COHORTS      GUATEMALA                      1               1        0     658
6 months    COHORTS      GUATEMALA                      0               0      586     658
6 months    COHORTS      GUATEMALA                      0               1        5     658
6 months    COHORTS      INDIA                          1               0     1845    4964
6 months    COHORTS      INDIA                          1               1       34    4964
6 months    COHORTS      INDIA                          0               0     2966    4964
6 months    COHORTS      INDIA                          0               1      119    4964
6 months    COHORTS      PHILIPPINES                    1               0      143    1083
6 months    COHORTS      PHILIPPINES                    1               1        0    1083
6 months    COHORTS      PHILIPPINES                    0               0      930    1083
6 months    COHORTS      PHILIPPINES                    0               1       10    1083
6 months    CONTENT      PERU                           1               0      201     215
6 months    CONTENT      PERU                           1               1        0     215
6 months    CONTENT      PERU                           0               0       14     215
6 months    CONTENT      PERU                           0               1        0     215
6 months    JiVitA-3     BANGLADESH                     1               0    11862   16773
6 months    JiVitA-3     BANGLADESH                     1               1      153   16773
6 months    JiVitA-3     BANGLADESH                     0               0     4682   16773
6 months    JiVitA-3     BANGLADESH                     0               1       76   16773
6 months    JiVitA-4     BANGLADESH                     1               0     3714    4827
6 months    JiVitA-4     BANGLADESH                     1               1       20    4827
6 months    JiVitA-4     BANGLADESH                     0               0     1080    4827
6 months    JiVitA-4     BANGLADESH                     0               1       13    4827
6 months    LCNI-5       MALAWI                         1               0        3     812
6 months    LCNI-5       MALAWI                         1               1        0     812
6 months    LCNI-5       MALAWI                         0               0      809     812
6 months    LCNI-5       MALAWI                         0               1        0     812
6 months    MAL-ED       BANGLADESH                     1               0      200     240
6 months    MAL-ED       BANGLADESH                     1               1        2     240
6 months    MAL-ED       BANGLADESH                     0               0       38     240
6 months    MAL-ED       BANGLADESH                     0               1        0     240
6 months    MAL-ED       BRAZIL                         1               0      205     209
6 months    MAL-ED       BRAZIL                         1               1        0     209
6 months    MAL-ED       BRAZIL                         0               0        4     209
6 months    MAL-ED       BRAZIL                         0               1        0     209
6 months    MAL-ED       INDIA                          1               0      105     233
6 months    MAL-ED       INDIA                          1               1        3     233
6 months    MAL-ED       INDIA                          0               0      122     233
6 months    MAL-ED       INDIA                          0               1        3     233
6 months    MAL-ED       NEPAL                          1               0      235     236
6 months    MAL-ED       NEPAL                          1               1        0     236
6 months    MAL-ED       NEPAL                          0               0        1     236
6 months    MAL-ED       NEPAL                          0               1        0     236
6 months    MAL-ED       PERU                           1               0       65     263
6 months    MAL-ED       PERU                           1               1        0     263
6 months    MAL-ED       PERU                           0               0      198     263
6 months    MAL-ED       PERU                           0               1        0     263
6 months    MAL-ED       SOUTH AFRICA                   1               0        4     244
6 months    MAL-ED       SOUTH AFRICA                   1               1        0     244
6 months    MAL-ED       SOUTH AFRICA                   0               0      237     244
6 months    MAL-ED       SOUTH AFRICA                   0               1        3     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      238     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     238
6 months    NIH-Birth    BANGLADESH                     1               0      203     537
6 months    NIH-Birth    BANGLADESH                     1               1        2     537
6 months    NIH-Birth    BANGLADESH                     0               0      328     537
6 months    NIH-Birth    BANGLADESH                     0               1        4     537
6 months    NIH-Crypto   BANGLADESH                     1               0      615     704
6 months    NIH-Crypto   BANGLADESH                     1               1        0     704
6 months    NIH-Crypto   BANGLADESH                     0               0       89     704
6 months    NIH-Crypto   BANGLADESH                     0               1        0     704
6 months    PROVIDE      BANGLADESH                     1               0       11      11
6 months    PROVIDE      BANGLADESH                     1               1        0      11
6 months    PROVIDE      BANGLADESH                     0               0        0      11
6 months    PROVIDE      BANGLADESH                     0               1        0      11
24 months   COHORTS      GUATEMALA                      1               0       77     903
24 months   COHORTS      GUATEMALA                      1               1        0     903
24 months   COHORTS      GUATEMALA                      0               0      822     903
24 months   COHORTS      GUATEMALA                      0               1        4     903
24 months   COHORTS      INDIA                          1               0     1446    3724
24 months   COHORTS      INDIA                          1               1       11    3724
24 months   COHORTS      INDIA                          0               0     2237    3724
24 months   COHORTS      INDIA                          0               1       30    3724
24 months   COHORTS      PHILIPPINES                    1               0      124     993
24 months   COHORTS      PHILIPPINES                    1               1        0     993
24 months   COHORTS      PHILIPPINES                    0               0      852     993
24 months   COHORTS      PHILIPPINES                    0               1       17     993
24 months   CONTENT      PERU                           1               0      151     164
24 months   CONTENT      PERU                           1               1        0     164
24 months   CONTENT      PERU                           0               0       13     164
24 months   CONTENT      PERU                           0               1        0     164
24 months   JiVitA-3     BANGLADESH                     1               0     5864    8593
24 months   JiVitA-3     BANGLADESH                     1               1      221    8593
24 months   JiVitA-3     BANGLADESH                     0               0     2397    8593
24 months   JiVitA-3     BANGLADESH                     0               1      111    8593
24 months   JiVitA-4     BANGLADESH                     1               0     3577    4730
24 months   JiVitA-4     BANGLADESH                     1               1       94    4730
24 months   JiVitA-4     BANGLADESH                     0               0     1024    4730
24 months   JiVitA-4     BANGLADESH                     0               1       35    4730
24 months   LCNI-5       MALAWI                         1               0        2     556
24 months   LCNI-5       MALAWI                         1               1        0     556
24 months   LCNI-5       MALAWI                         0               0      553     556
24 months   LCNI-5       MALAWI                         0               1        1     556
24 months   MAL-ED       BANGLADESH                     1               0      181     212
24 months   MAL-ED       BANGLADESH                     1               1        0     212
24 months   MAL-ED       BANGLADESH                     0               0       31     212
24 months   MAL-ED       BANGLADESH                     0               1        0     212
24 months   MAL-ED       BRAZIL                         1               0      165     169
24 months   MAL-ED       BRAZIL                         1               1        1     169
24 months   MAL-ED       BRAZIL                         0               0        3     169
24 months   MAL-ED       BRAZIL                         0               1        0     169
24 months   MAL-ED       INDIA                          1               0      103     225
24 months   MAL-ED       INDIA                          1               1        1     225
24 months   MAL-ED       INDIA                          0               0      120     225
24 months   MAL-ED       INDIA                          0               1        1     225
24 months   MAL-ED       NEPAL                          1               0      227     228
24 months   MAL-ED       NEPAL                          1               1        0     228
24 months   MAL-ED       NEPAL                          0               0        1     228
24 months   MAL-ED       NEPAL                          0               1        0     228
24 months   MAL-ED       PERU                           1               0       47     196
24 months   MAL-ED       PERU                           1               1        0     196
24 months   MAL-ED       PERU                           0               0      147     196
24 months   MAL-ED       PERU                           0               1        2     196
24 months   MAL-ED       SOUTH AFRICA                   1               0        4     235
24 months   MAL-ED       SOUTH AFRICA                   1               1        0     235
24 months   MAL-ED       SOUTH AFRICA                   0               0      231     235
24 months   MAL-ED       SOUTH AFRICA                   0               1        0     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               0        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1               1        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               0      207     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0               1        0     207
24 months   NIH-Birth    BANGLADESH                     1               0      168     428
24 months   NIH-Birth    BANGLADESH                     1               1        2     428
24 months   NIH-Birth    BANGLADESH                     0               0      250     428
24 months   NIH-Birth    BANGLADESH                     0               1        8     428
24 months   NIH-Crypto   BANGLADESH                     1               0      429     503
24 months   NIH-Crypto   BANGLADESH                     1               1        4     503
24 months   NIH-Crypto   BANGLADESH                     0               0       70     503
24 months   NIH-Crypto   BANGLADESH                     0               1        0     503
24 months   PROVIDE      BANGLADESH                     1               0        9       9
24 months   PROVIDE      BANGLADESH                     1               1        0       9
24 months   PROVIDE      BANGLADESH                     0               0        0       9
24 months   PROVIDE      BANGLADESH                     0               1        0       9


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

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
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
![](/tmp/c8618580-95cf-4e4c-925c-c5cc861d1a40/96d91ecf-9245-4084-9bbd-17249489ca2e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8618580-95cf-4e4c-925c-c5cc861d1a40/96d91ecf-9245-4084-9bbd-17249489ca2e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8618580-95cf-4e4c-925c-c5cc861d1a40/96d91ecf-9245-4084-9bbd-17249489ca2e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8618580-95cf-4e4c-925c-c5cc861d1a40/96d91ecf-9245-4084-9bbd-17249489ca2e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                0.1395349   0.0358522   0.2432175
Birth       COHORTS      GUATEMALA     0                    NA                0.0689655   0.0442899   0.0936411
Birth       COHORTS      INDIA         1                    NA                0.0526295   0.0406031   0.0646559
Birth       COHORTS      INDIA         0                    NA                0.0470166   0.0388757   0.0551575
Birth       COHORTS      PHILIPPINES   1                    NA                0.0395480   0.0108234   0.0682727
Birth       COHORTS      PHILIPPINES   0                    NA                0.0368809   0.0248846   0.0488773
Birth       JiVitA-3     BANGLADESH    1                    NA                0.0184255   0.0154636   0.0213875
Birth       JiVitA-3     BANGLADESH    0                    NA                0.0248649   0.0158584   0.0338715
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0123722   0.0061302   0.0186143
Birth       JiVitA-4     BANGLADESH    0                    NA                0.0149533   0.0037914   0.0261151
Birth       NIH-Birth    BANGLADESH    1                    NA                0.0901413   0.0522532   0.1280294
Birth       NIH-Birth    BANGLADESH    0                    NA                0.0510467   0.0280194   0.0740740
Birth       NIH-Crypto   BANGLADESH    1                    NA                0.0655738   0.0459161   0.0852315
Birth       NIH-Crypto   BANGLADESH    0                    NA                0.0697674   0.0158867   0.1236481
6 months    COHORTS      INDIA         1                    NA                0.0200476   0.0132116   0.0268835
6 months    COHORTS      INDIA         0                    NA                0.0355597   0.0291263   0.0419931
6 months    JiVitA-3     BANGLADESH    1                    NA                0.0130994   0.0105654   0.0156334
6 months    JiVitA-3     BANGLADESH    0                    NA                0.0170320   0.0126848   0.0213791
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0057825   0.0024389   0.0091262
6 months    JiVitA-4     BANGLADESH    0                    NA                0.0090735   0.0033094   0.0148376
24 months   COHORTS      INDIA         1                    NA                0.0099086   0.0038707   0.0159464
24 months   COHORTS      INDIA         0                    NA                0.0122433   0.0076576   0.0168291
24 months   JiVitA-3     BANGLADESH    1                    NA                0.0380932   0.0323194   0.0438671
24 months   JiVitA-3     BANGLADESH    0                    NA                0.0435755   0.0337558   0.0533951
24 months   JiVitA-4     BANGLADESH    1                    NA                0.0254734   0.0195882   0.0313587
24 months   JiVitA-4     BANGLADESH    0                    NA                0.0269315   0.0182722   0.0355909


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.0757238   0.0512261   0.1002216
Birth       COHORTS      INDIA         NA                   NA                0.0479713   0.0416994   0.0542432
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0373002   0.0262270   0.0483734
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.0193986   0.0169876   0.0218095
Birth       JiVitA-4     BANGLADESH    NA                   NA                0.0129490   0.0075258   0.0183723
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0660920   0.0476213   0.0845626
6 months    COHORTS      INDIA         NA                   NA                0.0308219   0.0260134   0.0356304
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0136529   0.0115802   0.0157256
6 months    JiVitA-4     BANGLADESH    NA                   NA                0.0068365   0.0038719   0.0098012
24 months   COHORTS      INDIA         NA                   NA                0.0110097   0.0076578   0.0143615
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0386361   0.0343091   0.0429631
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.0272727   0.0220640   0.0324815


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      GUATEMALA     0                    1                 0.4942529   0.2166606   1.127505
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 0.8933502   0.6708081   1.189721
Birth       COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      PHILIPPINES   0                    1                 0.9325606   0.4207770   2.066817
Birth       JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH    0                    1                 1.3494824   0.9047907   2.012734
Birth       JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH    0                    1                 1.2086144   0.4883313   2.991307
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 0.5662963   0.3057073   1.049015
Birth       NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 1.0639535   0.4646640   2.436162
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 1.7737659   1.2058582   2.609134
6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH    0                    1                 1.3002110   0.9513480   1.777003
6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH    0                    1                 1.5691210   0.6608728   3.725590
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 1.2356287   0.6045253   2.525582
24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH    0                    1                 1.1439161   0.8704358   1.503321
24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH    0                    1                 1.0572401   0.7085919   1.577433


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.0638111   -0.1602019   0.0325798
Birth       COHORTS      INDIA         1                    NA                -0.0046582   -0.0145220   0.0052056
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0022478   -0.0284837   0.0239880
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0009731   -0.0009705   0.0029166
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0005768   -0.0022961   0.0034497
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0240543   -0.0513524   0.0032437
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0005182   -0.0065695   0.0076059
6 months    COHORTS      INDIA         1                    NA                 0.0107743    0.0044682   0.0170805
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0005535   -0.0007607   0.0018677
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0010540   -0.0007668   0.0028748
24 months   COHORTS      INDIA         1                    NA                 0.0011011   -0.0041222   0.0063244
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0005429   -0.0030329   0.0041186
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0017993   -0.0010943   0.0046929


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.8426813   -2.6359609    0.0661412
Birth       COHORTS      INDIA         1                    NA                -0.0971043   -0.3227364    0.0900395
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0602637   -1.0579534    0.4537490
Birth       JiVitA-3     BANGLADESH    1                    NA                 0.0501610   -0.0551133    0.1449315
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0445435   -0.2071576    0.2437632
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.3639799   -0.8288827   -0.0172557
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0078403   -0.1053879    0.1094703
6 months    COHORTS      INDIA         1                    NA                 0.3495674    0.1192043    0.5196815
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0405410   -0.0614212    0.1327085
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.1541729   -0.1624986    0.3845811
24 months   COHORTS      INDIA         1                    NA                 0.1000112   -0.5232797    0.4682658
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0140506   -0.0830991    0.1024864
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0659737   -0.0468165    0.1666112
