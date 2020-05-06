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

**Intervention Variable:** earlybf

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
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid        country                        earlybf    sstunted   n_cell       n  outcome_variable 
----------  -------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       EE             PAKISTAN                       1                 0       38     229  sstunted         
Birth       EE             PAKISTAN                       1                 1        6     229  sstunted         
Birth       EE             PAKISTAN                       0                 0      145     229  sstunted         
Birth       EE             PAKISTAN                       0                 1       40     229  sstunted         
Birth       GMS-Nepal      NEPAL                          1                 0      176     632  sstunted         
Birth       GMS-Nepal      NEPAL                          1                 1        4     632  sstunted         
Birth       GMS-Nepal      NEPAL                          0                 0      431     632  sstunted         
Birth       GMS-Nepal      NEPAL                          0                 1       21     632  sstunted         
Birth       JiVitA-3       BANGLADESH                     1                 0      142   22370  sstunted         
Birth       JiVitA-3       BANGLADESH                     1                 1       94   22370  sstunted         
Birth       JiVitA-3       BANGLADESH                     0                 0    19786   22370  sstunted         
Birth       JiVitA-3       BANGLADESH                     0                 1     2348   22370  sstunted         
Birth       JiVitA-4       BANGLADESH                     1                 0     1764    2823  sstunted         
Birth       JiVitA-4       BANGLADESH                     1                 1      148    2823  sstunted         
Birth       JiVitA-4       BANGLADESH                     0                 0      826    2823  sstunted         
Birth       JiVitA-4       BANGLADESH                     0                 1       85    2823  sstunted         
Birth       MAL-ED         BANGLADESH                     1                 0      145     230  sstunted         
Birth       MAL-ED         BANGLADESH                     1                 1        2     230  sstunted         
Birth       MAL-ED         BANGLADESH                     0                 0       76     230  sstunted         
Birth       MAL-ED         BANGLADESH                     0                 1        7     230  sstunted         
Birth       MAL-ED         BRAZIL                         1                 0       26      65  sstunted         
Birth       MAL-ED         BRAZIL                         1                 1        2      65  sstunted         
Birth       MAL-ED         BRAZIL                         0                 0       36      65  sstunted         
Birth       MAL-ED         BRAZIL                         0                 1        1      65  sstunted         
Birth       MAL-ED         INDIA                          1                 0       31      46  sstunted         
Birth       MAL-ED         INDIA                          1                 1        1      46  sstunted         
Birth       MAL-ED         INDIA                          0                 0       13      46  sstunted         
Birth       MAL-ED         INDIA                          0                 1        1      46  sstunted         
Birth       MAL-ED         NEPAL                          1                 0       14      27  sstunted         
Birth       MAL-ED         NEPAL                          1                 1        0      27  sstunted         
Birth       MAL-ED         NEPAL                          0                 0       12      27  sstunted         
Birth       MAL-ED         NEPAL                          0                 1        1      27  sstunted         
Birth       MAL-ED         PERU                           1                 0      173     233  sstunted         
Birth       MAL-ED         PERU                           1                 1        2     233  sstunted         
Birth       MAL-ED         PERU                           0                 0       56     233  sstunted         
Birth       MAL-ED         PERU                           0                 1        2     233  sstunted         
Birth       MAL-ED         SOUTH AFRICA                   1                 0       69     111  sstunted         
Birth       MAL-ED         SOUTH AFRICA                   1                 1        0     111  sstunted         
Birth       MAL-ED         SOUTH AFRICA                   0                 0       41     111  sstunted         
Birth       MAL-ED         SOUTH AFRICA                   0                 1        1     111  sstunted         
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      103     125  sstunted         
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     125  sstunted         
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       12     125  sstunted         
Birth       MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        2     125  sstunted         
Birth       NIH-Crypto     BANGLADESH                     1                 0      628     732  sstunted         
Birth       NIH-Crypto     BANGLADESH                     1                 1        6     732  sstunted         
Birth       NIH-Crypto     BANGLADESH                     0                 0       94     732  sstunted         
Birth       NIH-Crypto     BANGLADESH                     0                 1        4     732  sstunted         
Birth       SAS-CompFeed   INDIA                          1                 0       81    1207  sstunted         
Birth       SAS-CompFeed   INDIA                          1                 1        5    1207  sstunted         
Birth       SAS-CompFeed   INDIA                          0                 0     1046    1207  sstunted         
Birth       SAS-CompFeed   INDIA                          0                 1       75    1207  sstunted         
Birth       ZVITAMBO       ZIMBABWE                       1                 0     6387   12354  sstunted         
Birth       ZVITAMBO       ZIMBABWE                       1                 1      169   12354  sstunted         
Birth       ZVITAMBO       ZIMBABWE                       0                 0     5581   12354  sstunted         
Birth       ZVITAMBO       ZIMBABWE                       0                 1      217   12354  sstunted         
6 months    EE             PAKISTAN                       1                 0       54     362  sstunted         
6 months    EE             PAKISTAN                       1                 1       14     362  sstunted         
6 months    EE             PAKISTAN                       0                 0      229     362  sstunted         
6 months    EE             PAKISTAN                       0                 1       65     362  sstunted         
6 months    GMS-Nepal      NEPAL                          1                 0      147     511  sstunted         
6 months    GMS-Nepal      NEPAL                          1                 1        4     511  sstunted         
6 months    GMS-Nepal      NEPAL                          0                 0      347     511  sstunted         
6 months    GMS-Nepal      NEPAL                          0                 1       13     511  sstunted         
6 months    JiVitA-3       BANGLADESH                     1                 0       21   16811  sstunted         
6 months    JiVitA-3       BANGLADESH                     1                 1       14   16811  sstunted         
6 months    JiVitA-3       BANGLADESH                     0                 0    15770   16811  sstunted         
6 months    JiVitA-3       BANGLADESH                     0                 1     1006   16811  sstunted         
6 months    JiVitA-4       BANGLADESH                     1                 0     2929    4831  sstunted         
6 months    JiVitA-4       BANGLADESH                     1                 1      165    4831  sstunted         
6 months    JiVitA-4       BANGLADESH                     0                 0     1631    4831  sstunted         
6 months    JiVitA-4       BANGLADESH                     0                 1      106    4831  sstunted         
6 months    MAL-ED         BANGLADESH                     1                 0      142     240  sstunted         
6 months    MAL-ED         BANGLADESH                     1                 1        5     240  sstunted         
6 months    MAL-ED         BANGLADESH                     0                 0       90     240  sstunted         
6 months    MAL-ED         BANGLADESH                     0                 1        3     240  sstunted         
6 months    MAL-ED         BRAZIL                         1                 0       95     209  sstunted         
6 months    MAL-ED         BRAZIL                         1                 1        0     209  sstunted         
6 months    MAL-ED         BRAZIL                         0                 0      114     209  sstunted         
6 months    MAL-ED         BRAZIL                         0                 1        0     209  sstunted         
6 months    MAL-ED         INDIA                          1                 0      135     236  sstunted         
6 months    MAL-ED         INDIA                          1                 1        5     236  sstunted         
6 months    MAL-ED         INDIA                          0                 0       92     236  sstunted         
6 months    MAL-ED         INDIA                          0                 1        4     236  sstunted         
6 months    MAL-ED         NEPAL                          1                 0       96     236  sstunted         
6 months    MAL-ED         NEPAL                          1                 1        0     236  sstunted         
6 months    MAL-ED         NEPAL                          0                 0      139     236  sstunted         
6 months    MAL-ED         NEPAL                          0                 1        1     236  sstunted         
6 months    MAL-ED         PERU                           1                 0      193     273  sstunted         
6 months    MAL-ED         PERU                           1                 1        9     273  sstunted         
6 months    MAL-ED         PERU                           0                 0       70     273  sstunted         
6 months    MAL-ED         PERU                           0                 1        1     273  sstunted         
6 months    MAL-ED         SOUTH AFRICA                   1                 0      155     250  sstunted         
6 months    MAL-ED         SOUTH AFRICA                   1                 1        1     250  sstunted         
6 months    MAL-ED         SOUTH AFRICA                   0                 0       89     250  sstunted         
6 months    MAL-ED         SOUTH AFRICA                   0                 1        5     250  sstunted         
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      197     247  sstunted         
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1        8     247  sstunted         
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       36     247  sstunted         
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1        6     247  sstunted         
6 months    NIH-Crypto     BANGLADESH                     1                 0      599     715  sstunted         
6 months    NIH-Crypto     BANGLADESH                     1                 1       20     715  sstunted         
6 months    NIH-Crypto     BANGLADESH                     0                 0       93     715  sstunted         
6 months    NIH-Crypto     BANGLADESH                     0                 1        3     715  sstunted         
6 months    SAS-CompFeed   INDIA                          1                 0       92    1336  sstunted         
6 months    SAS-CompFeed   INDIA                          1                 1        6    1336  sstunted         
6 months    SAS-CompFeed   INDIA                          0                 0     1116    1336  sstunted         
6 months    SAS-CompFeed   INDIA                          0                 1      122    1336  sstunted         
6 months    ZVITAMBO       ZIMBABWE                       1                 0     3994    7698  sstunted         
6 months    ZVITAMBO       ZIMBABWE                       1                 1      152    7698  sstunted         
6 months    ZVITAMBO       ZIMBABWE                       0                 0     3395    7698  sstunted         
6 months    ZVITAMBO       ZIMBABWE                       0                 1      157    7698  sstunted         
24 months   EE             PAKISTAN                       1                 0       20     164  sstunted         
24 months   EE             PAKISTAN                       1                 1       12     164  sstunted         
24 months   EE             PAKISTAN                       0                 0       87     164  sstunted         
24 months   EE             PAKISTAN                       0                 1       45     164  sstunted         
24 months   GMS-Nepal      NEPAL                          1                 0      126     445  sstunted         
24 months   GMS-Nepal      NEPAL                          1                 1        5     445  sstunted         
24 months   GMS-Nepal      NEPAL                          0                 0      271     445  sstunted         
24 months   GMS-Nepal      NEPAL                          0                 1       43     445  sstunted         
24 months   JiVitA-3       BANGLADESH                     1                 0        1    8632  sstunted         
24 months   JiVitA-3       BANGLADESH                     1                 1        0    8632  sstunted         
24 months   JiVitA-3       BANGLADESH                     0                 0     7284    8632  sstunted         
24 months   JiVitA-3       BANGLADESH                     0                 1     1347    8632  sstunted         
24 months   JiVitA-4       BANGLADESH                     1                 0     2754    4752  sstunted         
24 months   JiVitA-4       BANGLADESH                     1                 1      288    4752  sstunted         
24 months   JiVitA-4       BANGLADESH                     0                 0     1545    4752  sstunted         
24 months   JiVitA-4       BANGLADESH                     0                 1      165    4752  sstunted         
24 months   MAL-ED         BANGLADESH                     1                 0      112     211  sstunted         
24 months   MAL-ED         BANGLADESH                     1                 1       16     211  sstunted         
24 months   MAL-ED         BANGLADESH                     0                 0       71     211  sstunted         
24 months   MAL-ED         BANGLADESH                     0                 1       12     211  sstunted         
24 months   MAL-ED         BRAZIL                         1                 0       79     169  sstunted         
24 months   MAL-ED         BRAZIL                         1                 1        1     169  sstunted         
24 months   MAL-ED         BRAZIL                         0                 0       89     169  sstunted         
24 months   MAL-ED         BRAZIL                         0                 1        0     169  sstunted         
24 months   MAL-ED         INDIA                          1                 0      114     227  sstunted         
24 months   MAL-ED         INDIA                          1                 1       20     227  sstunted         
24 months   MAL-ED         INDIA                          0                 0       83     227  sstunted         
24 months   MAL-ED         INDIA                          0                 1       10     227  sstunted         
24 months   MAL-ED         NEPAL                          1                 0       94     228  sstunted         
24 months   MAL-ED         NEPAL                          1                 1        1     228  sstunted         
24 months   MAL-ED         NEPAL                          0                 0      127     228  sstunted         
24 months   MAL-ED         NEPAL                          0                 1        6     228  sstunted         
24 months   MAL-ED         PERU                           1                 0      136     201  sstunted         
24 months   MAL-ED         PERU                           1                 1       13     201  sstunted         
24 months   MAL-ED         PERU                           0                 0       50     201  sstunted         
24 months   MAL-ED         PERU                           0                 1        2     201  sstunted         
24 months   MAL-ED         SOUTH AFRICA                   1                 0      125     235  sstunted         
24 months   MAL-ED         SOUTH AFRICA                   1                 1       19     235  sstunted         
24 months   MAL-ED         SOUTH AFRICA                   0                 0       84     235  sstunted         
24 months   MAL-ED         SOUTH AFRICA                   0                 1        7     235  sstunted         
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 0      126     214  sstunted         
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                 1       54     214  sstunted         
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 0       18     214  sstunted         
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                 1       16     214  sstunted         
24 months   NIH-Crypto     BANGLADESH                     1                 0      409     514  sstunted         
24 months   NIH-Crypto     BANGLADESH                     1                 1       34     514  sstunted         
24 months   NIH-Crypto     BANGLADESH                     0                 0       69     514  sstunted         
24 months   NIH-Crypto     BANGLADESH                     0                 1        2     514  sstunted         
24 months   ZVITAMBO       ZIMBABWE                       1                 0      637    1406  sstunted         
24 months   ZVITAMBO       ZIMBABWE                       1                 1       80    1406  sstunted         
24 months   ZVITAMBO       ZIMBABWE                       0                 0      617    1406  sstunted         
24 months   ZVITAMBO       ZIMBABWE                       0                 1       72    1406  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
