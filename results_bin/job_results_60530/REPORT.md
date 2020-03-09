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

**Outcome Variable:** pers_wast

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
* W_birthwt
* W_birthlen
* W_nrooms
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
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

agecat        studyid        country                        earlybf    pers_wast   n_cell       n
------------  -------------  -----------------------------  --------  ----------  -------  ------
0-24 months   EE             PAKISTAN                       1                  0       63     366
0-24 months   EE             PAKISTAN                       1                  1        6     366
0-24 months   EE             PAKISTAN                       0                  0      271     366
0-24 months   EE             PAKISTAN                       0                  1       26     366
0-24 months   GMS-Nepal      NEPAL                          1                  0      143     543
0-24 months   GMS-Nepal      NEPAL                          1                  1       18     543
0-24 months   GMS-Nepal      NEPAL                          0                  0      327     543
0-24 months   GMS-Nepal      NEPAL                          0                  1       55     543
0-24 months   JiVitA-3       BANGLADESH                     1                  0       20   15803
0-24 months   JiVitA-3       BANGLADESH                     1                  1        4   15803
0-24 months   JiVitA-3       BANGLADESH                     0                  0    14885   15803
0-24 months   JiVitA-3       BANGLADESH                     0                  1      894   15803
0-24 months   JiVitA-4       BANGLADESH                     1                  0     3096    5281
0-24 months   JiVitA-4       BANGLADESH                     1                  1      266    5281
0-24 months   JiVitA-4       BANGLADESH                     0                  0     1759    5281
0-24 months   JiVitA-4       BANGLADESH                     0                  1      160    5281
0-24 months   MAL-ED         BANGLADESH                     1                  0      144     247
0-24 months   MAL-ED         BANGLADESH                     1                  1        8     247
0-24 months   MAL-ED         BANGLADESH                     0                  0       90     247
0-24 months   MAL-ED         BANGLADESH                     0                  1        5     247
0-24 months   MAL-ED         BRAZIL                         1                  0       99     218
0-24 months   MAL-ED         BRAZIL                         1                  1        1     218
0-24 months   MAL-ED         BRAZIL                         0                  0      117     218
0-24 months   MAL-ED         BRAZIL                         0                  1        1     218
0-24 months   MAL-ED         INDIA                          1                  0      127     241
0-24 months   MAL-ED         INDIA                          1                  1       16     241
0-24 months   MAL-ED         INDIA                          0                  0       93     241
0-24 months   MAL-ED         INDIA                          0                  1        5     241
0-24 months   MAL-ED         NEPAL                          1                  0       94     238
0-24 months   MAL-ED         NEPAL                          1                  1        3     238
0-24 months   MAL-ED         NEPAL                          0                  0      140     238
0-24 months   MAL-ED         NEPAL                          0                  1        1     238
0-24 months   MAL-ED         PERU                           1                  0      211     284
0-24 months   MAL-ED         PERU                           1                  1        1     284
0-24 months   MAL-ED         PERU                           0                  0       72     284
0-24 months   MAL-ED         PERU                           0                  1        0     284
0-24 months   MAL-ED         SOUTH AFRICA                   1                  0      166     270
0-24 months   MAL-ED         SOUTH AFRICA                   1                  1        1     270
0-24 months   MAL-ED         SOUTH AFRICA                   0                  0      102     270
0-24 months   MAL-ED         SOUTH AFRICA                   0                  1        1     270
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   NIH-Crypto     BANGLADESH                     1                  0      607     730
0-24 months   NIH-Crypto     BANGLADESH                     1                  1       25     730
0-24 months   NIH-Crypto     BANGLADESH                     0                  0       97     730
0-24 months   NIH-Crypto     BANGLADESH                     0                  1        1     730
0-24 months   SAS-CompFeed   INDIA                          1                  0       92    1366
0-24 months   SAS-CompFeed   INDIA                          1                  1        9    1366
0-24 months   SAS-CompFeed   INDIA                          0                  0     1160    1366
0-24 months   SAS-CompFeed   INDIA                          0                  1      105    1366
0-24 months   ZVITAMBO       ZIMBABWE                       1                  0     4499    8450
0-24 months   ZVITAMBO       ZIMBABWE                       1                  1       74    8450
0-24 months   ZVITAMBO       ZIMBABWE                       0                  0     3796    8450
0-24 months   ZVITAMBO       ZIMBABWE                       0                  1       81    8450
0-6 months    EE             PAKISTAN                       1                  0       65     360
0-6 months    EE             PAKISTAN                       1                  1        3     360
0-6 months    EE             PAKISTAN                       0                  0      271     360
0-6 months    EE             PAKISTAN                       0                  1       21     360
0-6 months    GMS-Nepal      NEPAL                          1                  0      139     514
0-6 months    GMS-Nepal      NEPAL                          1                  1       16     514
0-6 months    GMS-Nepal      NEPAL                          0                  0      317     514
0-6 months    GMS-Nepal      NEPAL                          0                  1       42     514
0-6 months    JiVitA-3       BANGLADESH                     1                  0        0      50
0-6 months    JiVitA-3       BANGLADESH                     1                  1        0      50
0-6 months    JiVitA-3       BANGLADESH                     0                  0       48      50
0-6 months    JiVitA-3       BANGLADESH                     0                  1        2      50
0-6 months    MAL-ED         BANGLADESH                     1                  0      149     247
0-6 months    MAL-ED         BANGLADESH                     1                  1        3     247
0-6 months    MAL-ED         BANGLADESH                     0                  0       91     247
0-6 months    MAL-ED         BANGLADESH                     0                  1        4     247
0-6 months    MAL-ED         BRAZIL                         1                  0       99     218
0-6 months    MAL-ED         BRAZIL                         1                  1        1     218
0-6 months    MAL-ED         BRAZIL                         0                  0      118     218
0-6 months    MAL-ED         BRAZIL                         0                  1        0     218
0-6 months    MAL-ED         INDIA                          1                  0      131     240
0-6 months    MAL-ED         INDIA                          1                  1       12     240
0-6 months    MAL-ED         INDIA                          0                  0       90     240
0-6 months    MAL-ED         INDIA                          0                  1        7     240
0-6 months    MAL-ED         NEPAL                          1                  0       94     238
0-6 months    MAL-ED         NEPAL                          1                  1        3     238
0-6 months    MAL-ED         NEPAL                          0                  0      137     238
0-6 months    MAL-ED         NEPAL                          0                  1        4     238
0-6 months    MAL-ED         PERU                           1                  0      212     284
0-6 months    MAL-ED         PERU                           1                  1        0     284
0-6 months    MAL-ED         PERU                           0                  0       72     284
0-6 months    MAL-ED         PERU                           0                  1        0     284
0-6 months    MAL-ED         SOUTH AFRICA                   1                  0      166     269
0-6 months    MAL-ED         SOUTH AFRICA                   1                  1        1     269
0-6 months    MAL-ED         SOUTH AFRICA                   0                  0      101     269
0-6 months    MAL-ED         SOUTH AFRICA                   0                  1        1     269
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
0-6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    NIH-Crypto     BANGLADESH                     1                  0      222     250
0-6 months    NIH-Crypto     BANGLADESH                     1                  1        3     250
0-6 months    NIH-Crypto     BANGLADESH                     0                  0       23     250
0-6 months    NIH-Crypto     BANGLADESH                     0                  1        2     250
0-6 months    ZVITAMBO       ZIMBABWE                       1                  0      295     560
0-6 months    ZVITAMBO       ZIMBABWE                       1                  1        6     560
0-6 months    ZVITAMBO       ZIMBABWE                       0                  0      251     560
0-6 months    ZVITAMBO       ZIMBABWE                       0                  1        8     560
6-24 months   EE             PAKISTAN                       1                  0       63     366
6-24 months   EE             PAKISTAN                       1                  1        6     366
6-24 months   EE             PAKISTAN                       0                  0      271     366
6-24 months   EE             PAKISTAN                       0                  1       26     366
6-24 months   GMS-Nepal      NEPAL                          1                  0      143     543
6-24 months   GMS-Nepal      NEPAL                          1                  1       18     543
6-24 months   GMS-Nepal      NEPAL                          0                  0      327     543
6-24 months   GMS-Nepal      NEPAL                          0                  1       55     543
6-24 months   JiVitA-3       BANGLADESH                     1                  0       20   15803
6-24 months   JiVitA-3       BANGLADESH                     1                  1        4   15803
6-24 months   JiVitA-3       BANGLADESH                     0                  0    14885   15803
6-24 months   JiVitA-3       BANGLADESH                     0                  1      894   15803
6-24 months   JiVitA-4       BANGLADESH                     1                  0     3096    5281
6-24 months   JiVitA-4       BANGLADESH                     1                  1      266    5281
6-24 months   JiVitA-4       BANGLADESH                     0                  0     1759    5281
6-24 months   JiVitA-4       BANGLADESH                     0                  1      160    5281
6-24 months   MAL-ED         BANGLADESH                     1                  0      144     247
6-24 months   MAL-ED         BANGLADESH                     1                  1        8     247
6-24 months   MAL-ED         BANGLADESH                     0                  0       90     247
6-24 months   MAL-ED         BANGLADESH                     0                  1        5     247
6-24 months   MAL-ED         BRAZIL                         1                  0       99     218
6-24 months   MAL-ED         BRAZIL                         1                  1        1     218
6-24 months   MAL-ED         BRAZIL                         0                  0      117     218
6-24 months   MAL-ED         BRAZIL                         0                  1        1     218
6-24 months   MAL-ED         INDIA                          1                  0      127     241
6-24 months   MAL-ED         INDIA                          1                  1       16     241
6-24 months   MAL-ED         INDIA                          0                  0       93     241
6-24 months   MAL-ED         INDIA                          0                  1        5     241
6-24 months   MAL-ED         NEPAL                          1                  0       94     238
6-24 months   MAL-ED         NEPAL                          1                  1        3     238
6-24 months   MAL-ED         NEPAL                          0                  0      140     238
6-24 months   MAL-ED         NEPAL                          0                  1        1     238
6-24 months   MAL-ED         PERU                           1                  0      211     284
6-24 months   MAL-ED         PERU                           1                  1        1     284
6-24 months   MAL-ED         PERU                           0                  0       72     284
6-24 months   MAL-ED         PERU                           0                  1        0     284
6-24 months   MAL-ED         SOUTH AFRICA                   1                  0      166     270
6-24 months   MAL-ED         SOUTH AFRICA                   1                  1        1     270
6-24 months   MAL-ED         SOUTH AFRICA                   0                  0      102     270
6-24 months   MAL-ED         SOUTH AFRICA                   0                  1        1     270
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210     253
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43     253
6-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   NIH-Crypto     BANGLADESH                     1                  0      607     730
6-24 months   NIH-Crypto     BANGLADESH                     1                  1       25     730
6-24 months   NIH-Crypto     BANGLADESH                     0                  0       97     730
6-24 months   NIH-Crypto     BANGLADESH                     0                  1        1     730
6-24 months   SAS-CompFeed   INDIA                          1                  0       92    1366
6-24 months   SAS-CompFeed   INDIA                          1                  1        9    1366
6-24 months   SAS-CompFeed   INDIA                          0                  0     1160    1366
6-24 months   SAS-CompFeed   INDIA                          0                  1      105    1366
6-24 months   ZVITAMBO       ZIMBABWE                       1                  0     4499    8450
6-24 months   ZVITAMBO       ZIMBABWE                       1                  1       74    8450
6-24 months   ZVITAMBO       ZIMBABWE                       0                  0     3796    8450
6-24 months   ZVITAMBO       ZIMBABWE                       0                  1       81    8450


The following strata were considered:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/3fb2bb57-cea8-4a21-800c-9e69027d5b88/c2848b09-1bab-4edc-9508-8edea5eb823a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fb2bb57-cea8-4a21-800c-9e69027d5b88/c2848b09-1bab-4edc-9508-8edea5eb823a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fb2bb57-cea8-4a21-800c-9e69027d5b88/c2848b09-1bab-4edc-9508-8edea5eb823a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fb2bb57-cea8-4a21-800c-9e69027d5b88/c2848b09-1bab-4edc-9508-8edea5eb823a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
0-24 months   EE             PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.1125413   0.0635259   0.1615567
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.1436725   0.1085263   0.1788187
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.0804920   0.0695890   0.0913950
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.0802357   0.0674567   0.0930147
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
0-24 months   MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
0-24 months   MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
0-24 months   ZVITAMBO       ZIMBABWE     1                    NA                0.0161745   0.0124934   0.0198555
0-24 months   ZVITAMBO       ZIMBABWE     0                    NA                0.0213133   0.0167049   0.0259217
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.0998956   0.0515984   0.1481929
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.1163371   0.0829902   0.1496841
0-6 months    MAL-ED         INDIA        1                    NA                0.0839161   0.0383778   0.1294544
0-6 months    MAL-ED         INDIA        0                    NA                0.0721649   0.0205628   0.1237671
0-6 months    ZVITAMBO       ZIMBABWE     1                    NA                0.0199336   0.0041293   0.0357378
0-6 months    ZVITAMBO       ZIMBABWE     0                    NA                0.0308880   0.0097984   0.0519776
6-24 months   EE             PAKISTAN     1                    NA                0.0869565   0.0203810   0.1535320
6-24 months   EE             PAKISTAN     0                    NA                0.0875421   0.0553552   0.1197290
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.1096753   0.0605741   0.1587765
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.1431822   0.1078811   0.1784832
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.0807460   0.0698311   0.0916609
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.0808500   0.0678937   0.0938062
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
6-24 months   MAL-ED         INDIA        1                    NA                0.1118881   0.0601145   0.1636618
6-24 months   MAL-ED         INDIA        0                    NA                0.0510204   0.0073650   0.0946758
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.0891089   0.0534033   0.1248146
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.0830040   0.0588611   0.1071469
6-24 months   ZVITAMBO       ZIMBABWE     1                    NA                0.0164537   0.0127073   0.0202001
6-24 months   ZVITAMBO       ZIMBABWE     0                    NA                0.0208621   0.0163274   0.0253967


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   EE             PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
0-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.1128405   0.0854611   0.1402198
0-6 months    MAL-ED         INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ZVITAMBO       ZIMBABWE     NA                   NA                0.0250000   0.0120576   0.0379424
6-24 months   EE             PAKISTAN     NA                   NA                0.0874317   0.0584537   0.1164097
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.1344383   0.1057200   0.1631566
6-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.0806665   0.0720540   0.0892791
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   MAL-ED         INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ZVITAMBO       ZIMBABWE     NA                   NA                0.0183432   0.0154819   0.0212045


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   EE             PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   EE             PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 1.2766205   0.7738692   2.105989
0-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH   0                    1                 0.9968158   0.8157978   1.218000
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
0-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
0-24 months   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO       ZIMBABWE     0                    1                 1.3177155   0.9627842   1.803492
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 1.1645867   0.6634969   2.044112
0-6 months    MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED         INDIA        0                    1                 0.8599656   0.3504552   2.110230
0-6 months    ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO       ZIMBABWE     0                    1                 1.5495495   0.5442448   4.411808
6-24 months   EE             PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   EE             PAKISTAN     0                    1                 1.0067340   0.4305832   2.353815
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.3055097   0.7830495   2.176562
6-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH   0                    1                 1.0012877   0.8187838   1.224471
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
6-24 months   MAL-ED         INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         INDIA        0                    1                 0.4559949   0.1723848   1.206205
6-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA        0                    1                 0.9314888   0.6140480   1.413035
6-24 months   ZVITAMBO       ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO       ZIMBABWE     0                    1                 1.2679268   0.9255884   1.736883


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   EE             PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0218970   -0.0207972   0.0645913
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0001745   -0.0057643   0.0061133
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
0-24 months   MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
0-24 months   SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
0-24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0021687   -0.0005237   0.0048612
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.0129448   -0.0281795   0.0540691
0-6 months    MAL-ED         INDIA        1                    NA                -0.0047494   -0.0325747   0.0230759
0-6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.0050664   -0.0071308   0.0172637
6-24 months   EE             PAKISTAN     1                    NA                 0.0004752   -0.0595317   0.0604821
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0247630   -0.0178665   0.0673925
6-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0000794   -0.0060252   0.0058663
6-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
6-24 months   MAL-ED         INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
6-24 months   SAS-CompFeed   INDIA        1                    NA                -0.0056536   -0.0393651   0.0280580
6-24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.0018895   -0.0008533   0.0046323


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   EE             PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.1628780   -0.2210347    0.4260824
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0021635   -0.0742653    0.0731548
0-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
0-24 months   MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
0-24 months   SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
0-24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.1182313   -0.0401713    0.2525115
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.1147179   -0.3357772    0.4132821
0-6 months    MAL-ED         INDIA        1                    NA                -0.0599926   -0.4756633    0.2385903
0-6 months    ZVITAMBO       ZIMBABWE     1                    NA                 0.2026578   -0.4501982    0.5616085
6-24 months   EE             PAKISTAN     1                    NA                 0.0054348   -0.9830339    0.5011886
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.1841960   -0.2014684    0.4460644
6-24 months   JiVitA-4       BANGLADESH   1                    NA                -0.0009849   -0.0774639    0.0700656
6-24 months   MAL-ED         BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
6-24 months   MAL-ED         INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
6-24 months   SAS-CompFeed   INDIA        1                    NA                -0.0677436   -0.5664076    0.2721713
6-24 months   ZVITAMBO       ZIMBABWE     1                    NA                 0.1030082   -0.0586976    0.2400151
