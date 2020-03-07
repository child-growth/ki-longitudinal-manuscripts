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

**Outcome Variable:** wasted

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

agecat      studyid      country                        impsan    wasted   n_cell       n
----------  -----------  -----------------------------  -------  -------  -------  ------
Birth       COHORTS      GUATEMALA                      1              0       28     449
Birth       COHORTS      GUATEMALA                      1              1       15     449
Birth       COHORTS      GUATEMALA                      0              0      312     449
Birth       COHORTS      GUATEMALA                      0              1       94     449
Birth       COHORTS      INDIA                          1              0     1409    4461
Birth       COHORTS      INDIA                          1              1      276    4461
Birth       COHORTS      INDIA                          0              0     2276    4461
Birth       COHORTS      INDIA                          0              1      500    4461
Birth       COHORTS      PHILIPPINES                    1              0      145    1126
Birth       COHORTS      PHILIPPINES                    1              1       32    1126
Birth       COHORTS      PHILIPPINES                    0              0      814    1126
Birth       COHORTS      PHILIPPINES                    0              1      135    1126
Birth       CONTENT      PERU                           1              0        1       2
Birth       CONTENT      PERU                           1              1        0       2
Birth       CONTENT      PERU                           0              0        1       2
Birth       CONTENT      PERU                           0              1        0       2
Birth       JiVitA-3     BANGLADESH                     1              0    11058   17991
Birth       JiVitA-3     BANGLADESH                     1              1     1355   17991
Birth       JiVitA-3     BANGLADESH                     0              0     4961   17991
Birth       JiVitA-3     BANGLADESH                     0              1      617   17991
Birth       JiVitA-4     BANGLADESH                     1              0     1681    2394
Birth       JiVitA-4     BANGLADESH                     1              1      178    2394
Birth       JiVitA-4     BANGLADESH                     0              0      475    2394
Birth       JiVitA-4     BANGLADESH                     0              1       60    2394
Birth       MAL-ED       BANGLADESH                     1              0      138     201
Birth       MAL-ED       BANGLADESH                     1              1       30     201
Birth       MAL-ED       BANGLADESH                     0              0       28     201
Birth       MAL-ED       BANGLADESH                     0              1        5     201
Birth       MAL-ED       BRAZIL                         1              0       54      57
Birth       MAL-ED       BRAZIL                         1              1        2      57
Birth       MAL-ED       BRAZIL                         0              0        1      57
Birth       MAL-ED       BRAZIL                         0              1        0      57
Birth       MAL-ED       INDIA                          1              0       11      39
Birth       MAL-ED       INDIA                          1              1        3      39
Birth       MAL-ED       INDIA                          0              0       23      39
Birth       MAL-ED       INDIA                          0              1        2      39
Birth       MAL-ED       NEPAL                          1              0       22      25
Birth       MAL-ED       NEPAL                          1              1        2      25
Birth       MAL-ED       NEPAL                          0              0        1      25
Birth       MAL-ED       NEPAL                          0              1        0      25
Birth       MAL-ED       PERU                           1              0       50     203
Birth       MAL-ED       PERU                           1              1        0     203
Birth       MAL-ED       PERU                           0              0      149     203
Birth       MAL-ED       PERU                           0              1        4     203
Birth       MAL-ED       SOUTH AFRICA                   1              0        0      94
Birth       MAL-ED       SOUTH AFRICA                   1              1        0      94
Birth       MAL-ED       SOUTH AFRICA                   0              0       84      94
Birth       MAL-ED       SOUTH AFRICA                   0              1       10      94
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      109     110
Birth       MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1     110
Birth       NIH-Birth    BANGLADESH                     1              0      157     575
Birth       NIH-Birth    BANGLADESH                     1              1       65     575
Birth       NIH-Birth    BANGLADESH                     0              0      250     575
Birth       NIH-Birth    BANGLADESH                     0              1      103     575
Birth       NIH-Crypto   BANGLADESH                     1              0      462     696
Birth       NIH-Crypto   BANGLADESH                     1              1      148     696
Birth       NIH-Crypto   BANGLADESH                     0              0       64     696
Birth       NIH-Crypto   BANGLADESH                     0              1       22     696
Birth       PROVIDE      BANGLADESH                     1              0       33      45
Birth       PROVIDE      BANGLADESH                     1              1       10      45
Birth       PROVIDE      BANGLADESH                     0              0        2      45
Birth       PROVIDE      BANGLADESH                     0              1        0      45
6 months    COHORTS      GUATEMALA                      1              0       66     658
6 months    COHORTS      GUATEMALA                      1              1        1     658
6 months    COHORTS      GUATEMALA                      0              0      571     658
6 months    COHORTS      GUATEMALA                      0              1       20     658
6 months    COHORTS      INDIA                          1              0     1697    4964
6 months    COHORTS      INDIA                          1              1      182    4964
6 months    COHORTS      INDIA                          0              0     2614    4964
6 months    COHORTS      INDIA                          0              1      471    4964
6 months    COHORTS      PHILIPPINES                    1              0      140    1083
6 months    COHORTS      PHILIPPINES                    1              1        3    1083
6 months    COHORTS      PHILIPPINES                    0              0      884    1083
6 months    COHORTS      PHILIPPINES                    0              1       56    1083
6 months    CONTENT      PERU                           1              0      201     215
6 months    CONTENT      PERU                           1              1        0     215
6 months    CONTENT      PERU                           0              0       14     215
6 months    CONTENT      PERU                           0              1        0     215
6 months    JiVitA-3     BANGLADESH                     1              0    11077   16773
6 months    JiVitA-3     BANGLADESH                     1              1      938   16773
6 months    JiVitA-3     BANGLADESH                     0              0     4278   16773
6 months    JiVitA-3     BANGLADESH                     0              1      480   16773
6 months    JiVitA-4     BANGLADESH                     1              0     3550    4827
6 months    JiVitA-4     BANGLADESH                     1              1      184    4827
6 months    JiVitA-4     BANGLADESH                     0              0     1002    4827
6 months    JiVitA-4     BANGLADESH                     0              1       91    4827
6 months    LCNI-5       MALAWI                         1              0        3     812
6 months    LCNI-5       MALAWI                         1              1        0     812
6 months    LCNI-5       MALAWI                         0              0      795     812
6 months    LCNI-5       MALAWI                         0              1       14     812
6 months    MAL-ED       BANGLADESH                     1              0      194     240
6 months    MAL-ED       BANGLADESH                     1              1        8     240
6 months    MAL-ED       BANGLADESH                     0              0       38     240
6 months    MAL-ED       BANGLADESH                     0              1        0     240
6 months    MAL-ED       BRAZIL                         1              0      204     209
6 months    MAL-ED       BRAZIL                         1              1        1     209
6 months    MAL-ED       BRAZIL                         0              0        4     209
6 months    MAL-ED       BRAZIL                         0              1        0     209
6 months    MAL-ED       INDIA                          1              0       98     233
6 months    MAL-ED       INDIA                          1              1       10     233
6 months    MAL-ED       INDIA                          0              0      117     233
6 months    MAL-ED       INDIA                          0              1        8     233
6 months    MAL-ED       NEPAL                          1              0      231     236
6 months    MAL-ED       NEPAL                          1              1        4     236
6 months    MAL-ED       NEPAL                          0              0        1     236
6 months    MAL-ED       NEPAL                          0              1        0     236
6 months    MAL-ED       PERU                           1              0       65     263
6 months    MAL-ED       PERU                           1              1        0     263
6 months    MAL-ED       PERU                           0              0      198     263
6 months    MAL-ED       PERU                           0              1        0     263
6 months    MAL-ED       SOUTH AFRICA                   1              0        4     244
6 months    MAL-ED       SOUTH AFRICA                   1              1        0     244
6 months    MAL-ED       SOUTH AFRICA                   0              0      233     244
6 months    MAL-ED       SOUTH AFRICA                   0              1        7     244
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      237     238
6 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        1     238
6 months    NIH-Birth    BANGLADESH                     1              0      194     537
6 months    NIH-Birth    BANGLADESH                     1              1       11     537
6 months    NIH-Birth    BANGLADESH                     0              0      308     537
6 months    NIH-Birth    BANGLADESH                     0              1       24     537
6 months    NIH-Crypto   BANGLADESH                     1              0      599     704
6 months    NIH-Crypto   BANGLADESH                     1              1       16     704
6 months    NIH-Crypto   BANGLADESH                     0              0       84     704
6 months    NIH-Crypto   BANGLADESH                     0              1        5     704
6 months    PROVIDE      BANGLADESH                     1              0       11      11
6 months    PROVIDE      BANGLADESH                     1              1        0      11
6 months    PROVIDE      BANGLADESH                     0              0        0      11
6 months    PROVIDE      BANGLADESH                     0              1        0      11
24 months   COHORTS      GUATEMALA                      1              0       75     903
24 months   COHORTS      GUATEMALA                      1              1        2     903
24 months   COHORTS      GUATEMALA                      0              0      783     903
24 months   COHORTS      GUATEMALA                      0              1       43     903
24 months   COHORTS      INDIA                          1              0     1366    3724
24 months   COHORTS      INDIA                          1              1       91    3724
24 months   COHORTS      INDIA                          0              0     2002    3724
24 months   COHORTS      INDIA                          0              1      265    3724
24 months   COHORTS      PHILIPPINES                    1              0      118     993
24 months   COHORTS      PHILIPPINES                    1              1        6     993
24 months   COHORTS      PHILIPPINES                    0              0      798     993
24 months   COHORTS      PHILIPPINES                    0              1       71     993
24 months   CONTENT      PERU                           1              0      150     164
24 months   CONTENT      PERU                           1              1        1     164
24 months   CONTENT      PERU                           0              0       13     164
24 months   CONTENT      PERU                           0              1        0     164
24 months   JiVitA-3     BANGLADESH                     1              0     4801    8593
24 months   JiVitA-3     BANGLADESH                     1              1     1284    8593
24 months   JiVitA-3     BANGLADESH                     0              0     1919    8593
24 months   JiVitA-3     BANGLADESH                     0              1      589    8593
24 months   JiVitA-4     BANGLADESH                     1              0     2988    4730
24 months   JiVitA-4     BANGLADESH                     1              1      683    4730
24 months   JiVitA-4     BANGLADESH                     0              0      822    4730
24 months   JiVitA-4     BANGLADESH                     0              1      237    4730
24 months   LCNI-5       MALAWI                         1              0        2     556
24 months   LCNI-5       MALAWI                         1              1        0     556
24 months   LCNI-5       MALAWI                         0              0      544     556
24 months   LCNI-5       MALAWI                         0              1       10     556
24 months   MAL-ED       BANGLADESH                     1              0      165     212
24 months   MAL-ED       BANGLADESH                     1              1       16     212
24 months   MAL-ED       BANGLADESH                     0              0       26     212
24 months   MAL-ED       BANGLADESH                     0              1        5     212
24 months   MAL-ED       BRAZIL                         1              0      163     169
24 months   MAL-ED       BRAZIL                         1              1        3     169
24 months   MAL-ED       BRAZIL                         0              0        3     169
24 months   MAL-ED       BRAZIL                         0              1        0     169
24 months   MAL-ED       INDIA                          1              0       93     225
24 months   MAL-ED       INDIA                          1              1       11     225
24 months   MAL-ED       INDIA                          0              0      105     225
24 months   MAL-ED       INDIA                          0              1       16     225
24 months   MAL-ED       NEPAL                          1              0      222     228
24 months   MAL-ED       NEPAL                          1              1        5     228
24 months   MAL-ED       NEPAL                          0              0        1     228
24 months   MAL-ED       NEPAL                          0              1        0     228
24 months   MAL-ED       PERU                           1              0       46     196
24 months   MAL-ED       PERU                           1              1        1     196
24 months   MAL-ED       PERU                           0              0      146     196
24 months   MAL-ED       PERU                           0              1        3     196
24 months   MAL-ED       SOUTH AFRICA                   1              0        4     235
24 months   MAL-ED       SOUTH AFRICA                   1              1        0     235
24 months   MAL-ED       SOUTH AFRICA                   0              0      230     235
24 months   MAL-ED       SOUTH AFRICA                   0              1        1     235
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              0        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1              1        0     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              0      203     207
24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0              1        4     207
24 months   NIH-Birth    BANGLADESH                     1              0      155     428
24 months   NIH-Birth    BANGLADESH                     1              1       15     428
24 months   NIH-Birth    BANGLADESH                     0              0      220     428
24 months   NIH-Birth    BANGLADESH                     0              1       38     428
24 months   NIH-Crypto   BANGLADESH                     1              0      392     503
24 months   NIH-Crypto   BANGLADESH                     1              1       41     503
24 months   NIH-Crypto   BANGLADESH                     0              0       66     503
24 months   NIH-Crypto   BANGLADESH                     0              1        4     503
24 months   PROVIDE      BANGLADESH                     1              0        7       9
24 months   PROVIDE      BANGLADESH                     1              1        2       9
24 months   PROVIDE      BANGLADESH                     0              0        0       9
24 months   PROVIDE      BANGLADESH                     0              1        0       9


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
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/09fa4245-e1f3-43f6-a7de-01ca4e36b745/10f21a1a-bc67-4786-8158-95209086e124/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/09fa4245-e1f3-43f6-a7de-01ca4e36b745/10f21a1a-bc67-4786-8158-95209086e124/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/09fa4245-e1f3-43f6-a7de-01ca4e36b745/10f21a1a-bc67-4786-8158-95209086e124/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/09fa4245-e1f3-43f6-a7de-01ca4e36b745/10f21a1a-bc67-4786-8158-95209086e124/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                0.3462501   0.1920885   0.5004117
Birth       COHORTS      GUATEMALA     0                    NA                0.2317924   0.1906290   0.2729558
Birth       COHORTS      INDIA         1                    NA                0.1759316   0.1557006   0.1961627
Birth       COHORTS      INDIA         0                    NA                0.1748889   0.1603868   0.1893911
Birth       COHORTS      PHILIPPINES   1                    NA                0.1978384   0.1165336   0.2791431
Birth       COHORTS      PHILIPPINES   0                    NA                0.1403607   0.1179047   0.1628167
Birth       JiVitA-3     BANGLADESH    1                    NA                0.1106721   0.1040841   0.1172600
Birth       JiVitA-3     BANGLADESH    0                    NA                0.1089846   0.0964136   0.1215555
Birth       JiVitA-4     BANGLADESH    1                    NA                0.0976023   0.0802662   0.1149384
Birth       JiVitA-4     BANGLADESH    0                    NA                0.1184420   0.0785262   0.1583578
Birth       MAL-ED       BANGLADESH    1                    NA                0.1785714   0.1205127   0.2366301
Birth       MAL-ED       BANGLADESH    0                    NA                0.1515152   0.0288774   0.2741529
Birth       NIH-Birth    BANGLADESH    1                    NA                0.3093840   0.2471699   0.3715981
Birth       NIH-Birth    BANGLADESH    0                    NA                0.2842680   0.2369944   0.3315416
Birth       NIH-Crypto   BANGLADESH    1                    NA                0.2431232   0.2090824   0.2771639
Birth       NIH-Crypto   BANGLADESH    0                    NA                0.2584666   0.1651102   0.3518231
6 months    COHORTS      INDIA         1                    NA                0.1067222   0.0908719   0.1225726
6 months    COHORTS      INDIA         0                    NA                0.1417252   0.1293518   0.1540987
6 months    JiVitA-3     BANGLADESH    1                    NA                0.0812777   0.0749027   0.0876528
6 months    JiVitA-3     BANGLADESH    0                    NA                0.1015706   0.0875412   0.1156000
6 months    JiVitA-4     BANGLADESH    1                    NA                0.0525716   0.0424774   0.0626658
6 months    JiVitA-4     BANGLADESH    0                    NA                0.0769683   0.0542389   0.0996976
6 months    MAL-ED       INDIA         1                    NA                0.0925926   0.0378079   0.1473773
6 months    MAL-ED       INDIA         0                    NA                0.0640000   0.0210013   0.1069987
6 months    NIH-Birth    BANGLADESH    1                    NA                0.0597597   0.0251266   0.0943927
6 months    NIH-Birth    BANGLADESH    0                    NA                0.0720517   0.0433716   0.1007319
6 months    NIH-Crypto   BANGLADESH    1                    NA                0.0260163   0.0134265   0.0386060
6 months    NIH-Crypto   BANGLADESH    0                    NA                0.0561798   0.0083061   0.1040534
24 months   COHORTS      INDIA         1                    NA                0.0782220   0.0626745   0.0937695
24 months   COHORTS      INDIA         0                    NA                0.1069499   0.0940981   0.1198018
24 months   COHORTS      PHILIPPINES   1                    NA                0.0483871   0.0105994   0.0861748
24 months   COHORTS      PHILIPPINES   0                    NA                0.0817031   0.0634823   0.0999239
24 months   JiVitA-3     BANGLADESH    1                    NA                0.2140515   0.2015737   0.2265294
24 months   JiVitA-3     BANGLADESH    0                    NA                0.2435892   0.2167495   0.2704289
24 months   JiVitA-4     BANGLADESH    1                    NA                0.1877072   0.1719170   0.2034974
24 months   JiVitA-4     BANGLADESH    0                    NA                0.2320429   0.1964037   0.2676820
24 months   MAL-ED       BANGLADESH    1                    NA                0.0883978   0.0469445   0.1298511
24 months   MAL-ED       BANGLADESH    0                    NA                0.1612903   0.0315115   0.2910692
24 months   MAL-ED       INDIA         1                    NA                0.0959746   0.0359858   0.1559634
24 months   MAL-ED       INDIA         0                    NA                0.1282294   0.0673058   0.1891530
24 months   NIH-Birth    BANGLADESH    1                    NA                0.0915893   0.0474873   0.1356913
24 months   NIH-Birth    BANGLADESH    0                    NA                0.1466835   0.1030680   0.1902989


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.2427617   0.2030594   0.2824640
Birth       COHORTS      INDIA         NA                   NA                0.1739520   0.1628271   0.1850770
Birth       COHORTS      PHILIPPINES   NA                   NA                0.1483126   0.1275443   0.1690809
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.1096104   0.1044820   0.1147387
Birth       JiVitA-4     BANGLADESH    NA                   NA                0.0994152   0.0840401   0.1147903
Birth       MAL-ED       BANGLADESH    NA                   NA                0.1741294   0.1215730   0.2266857
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.2442529   0.2123108   0.2761950
6 months    COHORTS      INDIA         NA                   NA                0.1315471   0.1221436   0.1409506
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0845406   0.0797300   0.0893513
6 months    JiVitA-4     BANGLADESH    NA                   NA                0.0569712   0.0481278   0.0658146
6 months    MAL-ED       INDIA         NA                   NA                0.0772532   0.0428971   0.1116093
6 months    NIH-Birth    BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto   BANGLADESH    NA                   NA                0.0298295   0.0172543   0.0424048
24 months   COHORTS      INDIA         NA                   NA                0.0955961   0.0861511   0.1050412
24 months   COHORTS      PHILIPPINES   NA                   NA                0.0775428   0.0608996   0.0941860
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.2179681   0.2080916   0.2278446
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.1945032   0.1812962   0.2077102
24 months   MAL-ED       BANGLADESH    NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED       INDIA         NA                   NA                0.1200000   0.0774445   0.1625555
24 months   NIH-Birth    BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      GUATEMALA     0                    1                 0.6694363   0.4144748   1.081236
Birth       COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         0                    1                 0.9940732   0.8627918   1.145330
Birth       COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
Birth       COHORTS      PHILIPPINES   0                    1                 0.7094716   0.4564046   1.102859
Birth       JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH    0                    1                 0.9847523   0.8637240   1.122740
Birth       JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH    0                    1                 1.2135168   0.8304931   1.773191
Birth       MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       MAL-ED       BANGLADESH    0                    1                 0.8484848   0.3546686   2.029857
Birth       NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    0                    1                 0.9188195   0.7084061   1.191731
Birth       NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    0                    1                 1.0631099   0.7219815   1.565418
6 months    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         0                    1                 1.3279823   1.1179194   1.577517
6 months    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH    0                    1                 1.2496737   1.0678525   1.462453
6 months    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4     BANGLADESH    0                    1                 1.4640654   1.0364530   2.068099
6 months    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6 months    MAL-ED       INDIA         0                    1                 0.6912000   0.2823598   1.692017
6 months    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Birth    BANGLADESH    0                    1                 1.2056914   0.5965109   2.436991
6 months    NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto   BANGLADESH    0                    1                 2.1594101   0.8104761   5.753473
24 months   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      INDIA         0                    1                 1.3672612   1.0849752   1.722992
24 months   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
24 months   COHORTS      PHILIPPINES   0                    1                 1.6885309   0.7495319   3.803889
24 months   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH    0                    1                 1.1379933   1.0104957   1.281578
24 months   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH    0                    1                 1.2361960   1.0346261   1.477037
24 months   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       BANGLADESH    0                    1                 1.8245968   0.7189612   4.630505
24 months   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
24 months   MAL-ED       INDIA         0                    1                 1.3360766   0.6087605   2.932353
24 months   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
24 months   NIH-Birth    BANGLADESH    0                    1                 1.6015355   0.9085174   2.823189


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.1034884   -0.2497101   0.0427334
Birth       COHORTS      INDIA         1                    NA                -0.0019796   -0.0187890   0.0148297
Birth       COHORTS      PHILIPPINES   1                    NA                -0.0495258   -0.1267988   0.0277473
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.0010617   -0.0048719   0.0027485
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0018129   -0.0068501   0.0104759
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0044421   -0.0267622   0.0178781
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0172101   -0.0662498   0.0318296
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0011297   -0.0109634   0.0132228
6 months    COHORTS      INDIA         1                    NA                 0.0248249    0.0109520   0.0386978
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0032629   -0.0005718   0.0070976
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0043996   -0.0009165   0.0097157
6 months    MAL-ED       INDIA         1                    NA                -0.0153394   -0.0527469   0.0220682
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0054172   -0.0233812   0.0342156
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.0038133   -0.0024884   0.0101150
24 months   COHORTS      INDIA         1                    NA                 0.0173741    0.0036923   0.0310559
24 months   COHORTS      PHILIPPINES   1                    NA                 0.0291557   -0.0075634   0.0658748
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0039166   -0.0034530   0.0112862
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0067960   -0.0013730   0.0149650
24 months   MAL-ED       BANGLADESH    1                    NA                 0.0106588   -0.0095637   0.0308813
24 months   MAL-ED       INDIA         1                    NA                 0.0240254   -0.0225032   0.0705540
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.0322425   -0.0056250   0.0701100


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     1                    NA                -0.4262962   -1.1745155   0.0644716
Birth       COHORTS      INDIA         1                    NA                -0.0113803   -0.1127760   0.0807763
Birth       COHORTS      PHILIPPINES   1                    NA                -0.3339282   -0.9699646   0.0967532
Birth       JiVitA-3     BANGLADESH    1                    NA                -0.0096861   -0.0450251   0.0244579
Birth       JiVitA-4     BANGLADESH    1                    NA                 0.0182358   -0.0728120   0.1015564
Birth       MAL-ED       BANGLADESH    1                    NA                -0.0255102   -0.1618982   0.0948681
Birth       NIH-Birth    BANGLADESH    1                    NA                -0.0589035   -0.2407813   0.0963141
Birth       NIH-Crypto   BANGLADESH    1                    NA                 0.0046252   -0.0461349   0.0529223
6 months    COHORTS      INDIA         1                    NA                 0.1887149    0.0768595   0.2870169
6 months    JiVitA-3     BANGLADESH    1                    NA                 0.0385956   -0.0080804   0.0831104
6 months    JiVitA-4     BANGLADESH    1                    NA                 0.0772251   -0.0211739   0.1661424
6 months    MAL-ED       INDIA         1                    NA                -0.1985597   -0.7855318   0.1954524
6 months    NIH-Birth    BANGLADESH    1                    NA                 0.0831156   -0.4834900   0.4333114
6 months    NIH-Crypto   BANGLADESH    1                    NA                 0.1278358   -0.1028159   0.3102472
24 months   COHORTS      INDIA         1                    NA                 0.1817449    0.0268779   0.3119657
24 months   COHORTS      PHILIPPINES   1                    NA                 0.3759950   -0.3196083   0.7049259
24 months   JiVitA-3     BANGLADESH    1                    NA                 0.0179686   -0.0164630   0.0512339
24 months   JiVitA-4     BANGLADESH    1                    NA                 0.0349402   -0.0081499   0.0761886
24 months   MAL-ED       BANGLADESH    1                    NA                 0.1076033   -0.1170077   0.2870488
24 months   MAL-ED       INDIA         1                    NA                 0.2002117   -0.2983115   0.5073129
24 months   NIH-Birth    BANGLADESH    1                    NA                 0.2603734   -0.1094293   0.5069109
