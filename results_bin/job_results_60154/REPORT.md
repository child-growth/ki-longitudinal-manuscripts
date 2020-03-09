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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* brthmon
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
* month
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
* delta_month
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

agecat      studyid          country                        exclfeed3    stunted   n_cell       n
----------  ---------------  -----------------------------  ----------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          1                  0        4       4
Birth       CMC-V-BCS-2002   INDIA                          1                  1        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                  0        0       4
Birth       CMC-V-BCS-2002   INDIA                          0                  1        0       4
Birth       EE               PAKISTAN                       1                  0       20      35
Birth       EE               PAKISTAN                       1                  1       15      35
Birth       EE               PAKISTAN                       0                  0        0      35
Birth       EE               PAKISTAN                       0                  1        0      35
Birth       GMS-Nepal        NEPAL                          1                  0      317     458
Birth       GMS-Nepal        NEPAL                          1                  1       63     458
Birth       GMS-Nepal        NEPAL                          0                  0       63     458
Birth       GMS-Nepal        NEPAL                          0                  1       15     458
Birth       IRC              INDIA                          1                  0        0      10
Birth       IRC              INDIA                          1                  1        0      10
Birth       IRC              INDIA                          0                  0       10      10
Birth       IRC              INDIA                          0                  1        0      10
Birth       JiVitA-3         BANGLADESH                     1                  0     8076   13276
Birth       JiVitA-3         BANGLADESH                     1                  1     3938   13276
Birth       JiVitA-3         BANGLADESH                     0                  0      818   13276
Birth       JiVitA-3         BANGLADESH                     0                  1      444   13276
Birth       JiVitA-4         BANGLADESH                     1                  0       71     116
Birth       JiVitA-4         BANGLADESH                     1                  1       34     116
Birth       JiVitA-4         BANGLADESH                     0                  0        7     116
Birth       JiVitA-4         BANGLADESH                     0                  1        4     116
Birth       Keneba           GAMBIA                         1                  0     1130    1356
Birth       Keneba           GAMBIA                         1                  1       68    1356
Birth       Keneba           GAMBIA                         0                  0      149    1356
Birth       Keneba           GAMBIA                         0                  1        9    1356
Birth       MAL-ED           BANGLADESH                     1                  0      112     215
Birth       MAL-ED           BANGLADESH                     1                  1       26     215
Birth       MAL-ED           BANGLADESH                     0                  0       63     215
Birth       MAL-ED           BANGLADESH                     0                  1       14     215
Birth       MAL-ED           BRAZIL                         1                  0       10      57
Birth       MAL-ED           BRAZIL                         1                  1        2      57
Birth       MAL-ED           BRAZIL                         0                  0       39      57
Birth       MAL-ED           BRAZIL                         0                  1        6      57
Birth       MAL-ED           INDIA                          1                  0       16      41
Birth       MAL-ED           INDIA                          1                  1        8      41
Birth       MAL-ED           INDIA                          0                  0       17      41
Birth       MAL-ED           INDIA                          0                  1        0      41
Birth       MAL-ED           NEPAL                          1                  0        8      26
Birth       MAL-ED           NEPAL                          1                  1        0      26
Birth       MAL-ED           NEPAL                          0                  0       16      26
Birth       MAL-ED           NEPAL                          0                  1        2      26
Birth       MAL-ED           PERU                           1                  0       41     223
Birth       MAL-ED           PERU                           1                  1        8     223
Birth       MAL-ED           PERU                           0                  0      158     223
Birth       MAL-ED           PERU                           0                  1       16     223
Birth       MAL-ED           SOUTH AFRICA                   1                  0       12     100
Birth       MAL-ED           SOUTH AFRICA                   1                  1        0     100
Birth       MAL-ED           SOUTH AFRICA                   0                  0       79     100
Birth       MAL-ED           SOUTH AFRICA                   0                  1        9     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       14     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        3     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       69     102
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       16     102
Birth       PROVIDE          BANGLADESH                     1                  0      353     539
Birth       PROVIDE          BANGLADESH                     1                  1       34     539
Birth       PROVIDE          BANGLADESH                     0                  0      138     539
Birth       PROVIDE          BANGLADESH                     0                  1       14     539
Birth       SAS-CompFeed     INDIA                          1                  0      257     364
Birth       SAS-CompFeed     INDIA                          1                  1       89     364
Birth       SAS-CompFeed     INDIA                          0                  0       12     364
Birth       SAS-CompFeed     INDIA                          0                  1        6     364
6 months    CMC-V-BCS-2002   INDIA                          1                  0        7      10
6 months    CMC-V-BCS-2002   INDIA                          1                  1        3      10
6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      10
6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      10
6 months    EE               PAKISTAN                       1                  0       17      39
6 months    EE               PAKISTAN                       1                  1       22      39
6 months    EE               PAKISTAN                       0                  0        0      39
6 months    EE               PAKISTAN                       0                  1        0      39
6 months    GMS-Nepal        NEPAL                          1                  0      292     441
6 months    GMS-Nepal        NEPAL                          1                  1       75     441
6 months    GMS-Nepal        NEPAL                          0                  0       56     441
6 months    GMS-Nepal        NEPAL                          0                  1       18     441
6 months    IRC              INDIA                          1                  0        0      10
6 months    IRC              INDIA                          1                  1        0      10
6 months    IRC              INDIA                          0                  0        8      10
6 months    IRC              INDIA                          0                  1        2      10
6 months    JiVitA-3         BANGLADESH                     1                  0     6391    9328
6 months    JiVitA-3         BANGLADESH                     1                  1     2123    9328
6 months    JiVitA-3         BANGLADESH                     0                  0      597    9328
6 months    JiVitA-3         BANGLADESH                     0                  1      217    9328
6 months    JiVitA-4         BANGLADESH                     1                  0       64      88
6 months    JiVitA-4         BANGLADESH                     1                  1       12      88
6 months    JiVitA-4         BANGLADESH                     0                  0        8      88
6 months    JiVitA-4         BANGLADESH                     0                  1        4      88
6 months    Keneba           GAMBIA                         1                  0     1317    1742
6 months    Keneba           GAMBIA                         1                  1      224    1742
6 months    Keneba           GAMBIA                         0                  0      166    1742
6 months    Keneba           GAMBIA                         0                  1       35    1742
6 months    MAL-ED           BANGLADESH                     1                  0      128     233
6 months    MAL-ED           BANGLADESH                     1                  1       24     233
6 months    MAL-ED           BANGLADESH                     0                  0       61     233
6 months    MAL-ED           BANGLADESH                     0                  1       20     233
6 months    MAL-ED           BRAZIL                         1                  0       59     187
6 months    MAL-ED           BRAZIL                         1                  1        1     187
6 months    MAL-ED           BRAZIL                         0                  0      123     187
6 months    MAL-ED           BRAZIL                         0                  1        4     187
6 months    MAL-ED           INDIA                          1                  0       90     210
6 months    MAL-ED           INDIA                          1                  1       20     210
6 months    MAL-ED           INDIA                          0                  0       81     210
6 months    MAL-ED           INDIA                          0                  1       19     210
6 months    MAL-ED           NEPAL                          1                  0       66     227
6 months    MAL-ED           NEPAL                          1                  1        4     227
6 months    MAL-ED           NEPAL                          0                  0      150     227
6 months    MAL-ED           NEPAL                          0                  1        7     227
6 months    MAL-ED           PERU                           1                  0       49     270
6 months    MAL-ED           PERU                           1                  1       12     270
6 months    MAL-ED           PERU                           0                  0      163     270
6 months    MAL-ED           PERU                           0                  1       46     270
6 months    MAL-ED           SOUTH AFRICA                   1                  0       20     244
6 months    MAL-ED           SOUTH AFRICA                   1                  1        2     244
6 months    MAL-ED           SOUTH AFRICA                   0                  0      177     244
6 months    MAL-ED           SOUTH AFRICA                   0                  1       45     244
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       34     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1       12     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      125     212
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       41     212
6 months    PROVIDE          BANGLADESH                     1                  0      364     604
6 months    PROVIDE          BANGLADESH                     1                  1       64     604
6 months    PROVIDE          BANGLADESH                     0                  0      144     604
6 months    PROVIDE          BANGLADESH                     0                  1       32     604
6 months    SAS-CompFeed     INDIA                          1                  0      260     398
6 months    SAS-CompFeed     INDIA                          1                  1      119     398
6 months    SAS-CompFeed     INDIA                          0                  0       13     398
6 months    SAS-CompFeed     INDIA                          0                  1        6     398
24 months   CMC-V-BCS-2002   INDIA                          1                  0        3      10
24 months   CMC-V-BCS-2002   INDIA                          1                  1        7      10
24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      10
24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      10
24 months   EE               PAKISTAN                       1                  0        5      20
24 months   EE               PAKISTAN                       1                  1       15      20
24 months   EE               PAKISTAN                       0                  0        0      20
24 months   EE               PAKISTAN                       0                  1        0      20
24 months   GMS-Nepal        NEPAL                          1                  0      181     384
24 months   GMS-Nepal        NEPAL                          1                  1      141     384
24 months   GMS-Nepal        NEPAL                          0                  0       33     384
24 months   GMS-Nepal        NEPAL                          0                  1       29     384
24 months   IRC              INDIA                          1                  0        0      10
24 months   IRC              INDIA                          1                  1        0      10
24 months   IRC              INDIA                          0                  0        4      10
24 months   IRC              INDIA                          0                  1        6      10
24 months   JiVitA-3         BANGLADESH                     1                  0     2275    4852
24 months   JiVitA-3         BANGLADESH                     1                  1     2158    4852
24 months   JiVitA-3         BANGLADESH                     0                  0      181    4852
24 months   JiVitA-3         BANGLADESH                     0                  1      238    4852
24 months   JiVitA-4         BANGLADESH                     1                  0       84     151
24 months   JiVitA-4         BANGLADESH                     1                  1       52     151
24 months   JiVitA-4         BANGLADESH                     0                  0        6     151
24 months   JiVitA-4         BANGLADESH                     0                  1        9     151
24 months   Keneba           GAMBIA                         1                  0      855    1420
24 months   Keneba           GAMBIA                         1                  1      419    1420
24 months   Keneba           GAMBIA                         0                  0       81    1420
24 months   Keneba           GAMBIA                         0                  1       65    1420
24 months   MAL-ED           BANGLADESH                     1                  0       71     205
24 months   MAL-ED           BANGLADESH                     1                  1       64     205
24 months   MAL-ED           BANGLADESH                     0                  0       35     205
24 months   MAL-ED           BANGLADESH                     0                  1       35     205
24 months   MAL-ED           BRAZIL                         1                  0       49     152
24 months   MAL-ED           BRAZIL                         1                  1        3     152
24 months   MAL-ED           BRAZIL                         0                  0       96     152
24 months   MAL-ED           BRAZIL                         0                  1        4     152
24 months   MAL-ED           INDIA                          1                  0       49     202
24 months   MAL-ED           INDIA                          1                  1       53     202
24 months   MAL-ED           INDIA                          0                  0       66     202
24 months   MAL-ED           INDIA                          0                  1       34     202
24 months   MAL-ED           NEPAL                          1                  0       53     220
24 months   MAL-ED           NEPAL                          1                  1       14     220
24 months   MAL-ED           NEPAL                          0                  0      119     220
24 months   MAL-ED           NEPAL                          0                  1       34     220
24 months   MAL-ED           PERU                           1                  0       25     198
24 months   MAL-ED           PERU                           1                  1       18     198
24 months   MAL-ED           PERU                           0                  0      101     198
24 months   MAL-ED           PERU                           0                  1       54     198
24 months   MAL-ED           SOUTH AFRICA                   1                  0       14     228
24 months   MAL-ED           SOUTH AFRICA                   1                  1        5     228
24 months   MAL-ED           SOUTH AFRICA                   0                  0      134     228
24 months   MAL-ED           SOUTH AFRICA                   0                  1       75     228
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       10     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1       28     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0       39     184
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1      107     184
24 months   PROVIDE          BANGLADESH                     1                  0      266     578
24 months   PROVIDE          BANGLADESH                     1                  1      142     578
24 months   PROVIDE          BANGLADESH                     0                  0      122     578
24 months   PROVIDE          BANGLADESH                     0                  1       48     578


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL

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




# Results Detail

## Results Plots
![](/tmp/91d51c04-2b33-408c-9a3e-a434ee710fbc/41623d9b-e3e9-4c2d-be7e-40d464b02835/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91d51c04-2b33-408c-9a3e-a434ee710fbc/41623d9b-e3e9-4c2d-be7e-40d464b02835/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91d51c04-2b33-408c-9a3e-a434ee710fbc/41623d9b-e3e9-4c2d-be7e-40d464b02835/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91d51c04-2b33-408c-9a3e-a434ee710fbc/41623d9b-e3e9-4c2d-be7e-40d464b02835/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL                          1                    NA                0.1670163   0.1295943   0.2044384
Birth       GMS-Nepal      NEPAL                          0                    NA                0.2279334   0.1418046   0.3140621
Birth       JiVitA-3       BANGLADESH                     1                    NA                0.3294936   0.3203440   0.3386431
Birth       JiVitA-3       BANGLADESH                     0                    NA                0.3353245   0.3243525   0.3462966
Birth       Keneba         GAMBIA                         1                    NA                0.0567613   0.0436539   0.0698687
Birth       Keneba         GAMBIA                         0                    NA                0.0569620   0.0208096   0.0931144
Birth       MAL-ED         BANGLADESH                     1                    NA                0.1894005   0.1234302   0.2553708
Birth       MAL-ED         BANGLADESH                     0                    NA                0.1799165   0.0927320   0.2671010
Birth       MAL-ED         PERU                           1                    NA                0.1632653   0.0595443   0.2669863
Birth       MAL-ED         PERU                           0                    NA                0.0919540   0.0489223   0.1349857
Birth       PROVIDE        BANGLADESH                     1                    NA                0.0878380   0.0595128   0.1161632
Birth       PROVIDE        BANGLADESH                     0                    NA                0.0918560   0.0451030   0.1386089
Birth       SAS-CompFeed   INDIA                          1                    NA                0.2572254   0.2236819   0.2907690
Birth       SAS-CompFeed   INDIA                          0                    NA                0.3333333   0.0564891   0.6101775
6 months    GMS-Nepal      NEPAL                          1                    NA                0.2035122   0.1623112   0.2447132
6 months    GMS-Nepal      NEPAL                          0                    NA                0.2404568   0.1423267   0.3385869
6 months    JiVitA-3       BANGLADESH                     1                    NA                0.2500487   0.2392595   0.2608378
6 months    JiVitA-3       BANGLADESH                     0                    NA                0.2595965   0.2307918   0.2884012
6 months    Keneba         GAMBIA                         1                    NA                0.1447434   0.1271674   0.1623194
6 months    Keneba         GAMBIA                         0                    NA                0.1799427   0.1285731   0.2313122
6 months    MAL-ED         BANGLADESH                     1                    NA                0.1585662   0.1002325   0.2168999
6 months    MAL-ED         BANGLADESH                     0                    NA                0.2538853   0.1591210   0.3486495
6 months    MAL-ED         INDIA                          1                    NA                0.1749654   0.1023789   0.2475518
6 months    MAL-ED         INDIA                          0                    NA                0.2098564   0.1283232   0.2913896
6 months    MAL-ED         PERU                           1                    NA                0.1942920   0.0883390   0.3002449
6 months    MAL-ED         PERU                           0                    NA                0.2223740   0.1653699   0.2793781
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2571429   0.1265938   0.3876921
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2477388   0.1818949   0.3135827
6 months    PROVIDE        BANGLADESH                     1                    NA                0.1508297   0.1170378   0.1846217
6 months    PROVIDE        BANGLADESH                     0                    NA                0.1799678   0.1229902   0.2369455
6 months    SAS-CompFeed   INDIA                          1                    NA                0.3139842   0.2679102   0.3600581
6 months    SAS-CompFeed   INDIA                          0                    NA                0.3157895   0.1014523   0.5301266
24 months   GMS-Nepal      NEPAL                          1                    NA                0.4413439   0.3872703   0.4954176
24 months   GMS-Nepal      NEPAL                          0                    NA                0.5069697   0.3923922   0.6215472
24 months   JiVitA-3       BANGLADESH                     1                    NA                0.4880227   0.4704353   0.5056100
24 months   JiVitA-3       BANGLADESH                     0                    NA                0.5565073   0.5001659   0.6128487
24 months   JiVitA-4       BANGLADESH                     1                    NA                0.3823529   0.2957347   0.4689712
24 months   JiVitA-4       BANGLADESH                     0                    NA                0.6000000   0.3670443   0.8329557
24 months   Keneba         GAMBIA                         1                    NA                0.3275654   0.3018151   0.3533157
24 months   Keneba         GAMBIA                         0                    NA                0.4468498   0.3672963   0.5264034
24 months   MAL-ED         BANGLADESH                     1                    NA                0.4567250   0.3734435   0.5400064
24 months   MAL-ED         BANGLADESH                     0                    NA                0.5334610   0.4278493   0.6390727
24 months   MAL-ED         INDIA                          1                    NA                0.5077645   0.4097256   0.6058035
24 months   MAL-ED         INDIA                          0                    NA                0.3462230   0.2525391   0.4399068
24 months   MAL-ED         NEPAL                          1                    NA                0.2156750   0.1159813   0.3153688
24 months   MAL-ED         NEPAL                          0                    NA                0.2219807   0.1555432   0.2884183
24 months   MAL-ED         PERU                           1                    NA                0.4214391   0.2713491   0.5715291
24 months   MAL-ED         PERU                           0                    NA                0.3478745   0.2725641   0.4231849
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.2631579   0.0647216   0.4615942
24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.3588517   0.2936789   0.4240244
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7150734   0.5810489   0.8490979
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7290857   0.6570106   0.8011607
24 months   PROVIDE        BANGLADESH                     1                    NA                0.3407972   0.2949809   0.3866135
24 months   PROVIDE        BANGLADESH                     0                    NA                0.2952460   0.2292313   0.3612607


### Parameter: E(Y)


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL                          NA                   NA                0.1703057   0.1358418   0.2047695
Birth       JiVitA-3       BANGLADESH                     NA                   NA                0.3300693   0.3209240   0.3392146
Birth       Keneba         GAMBIA                         NA                   NA                0.0567847   0.0444621   0.0691072
Birth       MAL-ED         BANGLADESH                     NA                   NA                0.1860465   0.1339088   0.2381842
Birth       MAL-ED         PERU                           NA                   NA                0.1076233   0.0668572   0.1483894
Birth       PROVIDE        BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed   INDIA                          NA                   NA                0.2609890   0.2179233   0.3040547
6 months    GMS-Nepal      NEPAL                          NA                   NA                0.2108844   0.1727677   0.2490010
6 months    JiVitA-3       BANGLADESH                     NA                   NA                0.2508576   0.2404565   0.2612588
6 months    Keneba         GAMBIA                         NA                   NA                0.1486797   0.1319680   0.1653914
6 months    MAL-ED         BANGLADESH                     NA                   NA                0.1888412   0.1384789   0.2392035
6 months    MAL-ED         INDIA                          NA                   NA                0.1857143   0.1329930   0.2384356
6 months    MAL-ED         PERU                           NA                   NA                0.2148148   0.1657364   0.2638932
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2500000   0.1915738   0.3084262
6 months    PROVIDE        BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed   INDIA                          NA                   NA                0.3140704   0.2712850   0.3568557
24 months   GMS-Nepal      NEPAL                          NA                   NA                0.4427083   0.3929634   0.4924533
24 months   JiVitA-3       BANGLADESH                     NA                   NA                0.4938170   0.4765272   0.5111067
24 months   JiVitA-4       BANGLADESH                     NA                   NA                0.4039735   0.3218653   0.4860818
24 months   Keneba         GAMBIA                         NA                   NA                0.3408451   0.3161830   0.3655071
24 months   MAL-ED         BANGLADESH                     NA                   NA                0.4829268   0.4143544   0.5514993
24 months   MAL-ED         INDIA                          NA                   NA                0.4306931   0.3622377   0.4991484
24 months   MAL-ED         NEPAL                          NA                   NA                0.2181818   0.1634817   0.2728819
24 months   MAL-ED         PERU                           NA                   NA                0.3636364   0.2964623   0.4308104
24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.3508772   0.2887937   0.4129607
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7336957   0.6696529   0.7977384
24 months   PROVIDE        BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal      NEPAL                          0                    1                 1.3647370   0.8798151   2.1169300
Birth       JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3       BANGLADESH                     0                    1                 1.0176968   0.9984513   1.0373132
Birth       Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       Keneba         GAMBIA                         0                    1                 1.0035369   0.5107633   1.9717278
Birth       MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         BANGLADESH                     0                    1                 0.9499264   0.5228723   1.7257755
Birth       MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
Birth       MAL-ED         PERU                           0                    1                 0.5632184   0.2558581   1.2398080
Birth       PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE        BANGLADESH                     0                    1                 1.0457423   0.5726771   1.9095875
Birth       SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed   INDIA                          0                    1                 1.2958801   0.6113712   2.7467853
6 months    GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal      NEPAL                          0                    1                 1.1815351   0.7494676   1.8626892
6 months    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3       BANGLADESH                     0                    1                 1.0381839   0.9254910   1.1645989
6 months    Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    Keneba         GAMBIA                         0                    1                 1.2431838   0.9133566   1.6921166
6 months    MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         BANGLADESH                     0                    1                 1.6011313   0.9484118   2.7030678
6 months    MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         INDIA                          0                    1                 1.1994169   0.6797149   2.1164766
6 months    MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         PERU                           0                    1                 1.1445353   0.6258012   2.0932543
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9634284   0.5435056   1.7077914
6 months    PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE        BANGLADESH                     0                    1                 1.1931855   0.8096621   1.7583777
6 months    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed   INDIA                          0                    1                 1.0057497   0.4866253   2.0786680
24 months   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal      NEPAL                          0                    1                 1.1486953   0.8921911   1.4789444
24 months   JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3       BANGLADESH                     0                    1                 1.1403309   1.0276703   1.2653421
24 months   JiVitA-4       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4       BANGLADESH                     0                    1                 1.5692308   1.0057767   2.4483420
24 months   Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   Keneba         GAMBIA                         0                    1                 1.3641546   1.1241737   1.6553651
24 months   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         BANGLADESH                     0                    1                 1.1680137   0.9075070   1.5033007
24 months   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         INDIA                          0                    1                 0.6818573   0.4896179   0.9495759
24 months   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         NEPAL                          0                    1                 1.0292370   0.5929264   1.7866107
24 months   MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         PERU                           0                    1                 0.8254442   0.5440546   1.2523708
24 months   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         SOUTH AFRICA                   0                    1                 1.3636364   0.6278426   2.9617362
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0195956   0.8251267   1.2598976
24 months   PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE        BANGLADESH                     0                    1                 0.8663393   0.6704658   1.1194362


### Parameter: PAR


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0032893   -0.0130238    0.0196025
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0005757   -0.0000302    0.0011816
Birth       Keneba         GAMBIA                         1                    NA                 0.0000234   -0.0044574    0.0045042
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0033540   -0.0425540    0.0358460
Birth       MAL-ED         PERU                           1                    NA                -0.0556420   -0.1433470    0.0320630
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0012158   -0.0140489    0.0164804
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0037636   -0.0100156    0.0175428
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0073722   -0.0105146    0.0252589
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0008090   -0.0017846    0.0034025
6 months    Keneba         GAMBIA                         1                    NA                 0.0039363   -0.0022571    0.0101297
6 months    MAL-ED         BANGLADESH                     1                    NA                 0.0302750   -0.0085236    0.0690736
6 months    MAL-ED         INDIA                          1                    NA                 0.0107489   -0.0407525    0.0622504
6 months    MAL-ED         PERU                           1                    NA                 0.0205229   -0.0744603    0.1155060
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071429   -0.1223231    0.1080373
6 months    PROVIDE        BANGLADESH                     1                    NA                 0.0081107   -0.0112438    0.0274652
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0000862   -0.0108674    0.0110398
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0013644   -0.0192613    0.0219901
24 months   JiVitA-3       BANGLADESH                     1                    NA                 0.0057943    0.0008359    0.0107528
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0216206   -0.0032699    0.0465111
24 months   Keneba         GAMBIA                         1                    NA                 0.0132797    0.0045414    0.0220179
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0262019   -0.0171885    0.0695923
24 months   MAL-ED         INDIA                          1                    NA                -0.0770715   -0.1451731   -0.0089698
24 months   MAL-ED         NEPAL                          1                    NA                 0.0025068   -0.0814993    0.0865129
24 months   MAL-ED         PERU                           1                    NA                -0.0578028   -0.1898339    0.0742284
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0877193   -0.1037709    0.2792095
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0186223   -0.1036768    0.1409214
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.0120775   -0.0352427    0.0110878


### Parameter: PAF


agecat      studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       GMS-Nepal      NEPAL                          1                    NA                 0.0193143   -0.0811902    0.1104762
Birth       JiVitA-3       BANGLADESH                     1                    NA                 0.0017443   -0.0000924    0.0035776
Birth       Keneba         GAMBIA                         1                    NA                 0.0004119   -0.0816941    0.0762858
Birth       MAL-ED         BANGLADESH                     1                    NA                -0.0180275   -0.2520440    0.1722495
Birth       MAL-ED         PERU                           1                    NA                -0.5170068   -1.5702556    0.1046378
Birth       PROVIDE        BANGLADESH                     1                    NA                 0.0136520   -0.1735408    0.1709855
Birth       SAS-CompFeed   INDIA                          1                    NA                 0.0144204   -0.0378960    0.0640998
6 months    GMS-Nepal      NEPAL                          1                    NA                 0.0349584   -0.0535744    0.1160517
6 months    JiVitA-3       BANGLADESH                     1                    NA                 0.0032248   -0.0071724    0.0135146
6 months    Keneba         GAMBIA                         1                    NA                 0.0264748   -0.0160653    0.0672339
6 months    MAL-ED         BANGLADESH                     1                    NA                 0.1603200   -0.0691936    0.3405661
6 months    MAL-ED         INDIA                          1                    NA                 0.0578788   -0.2645593    0.2981015
6 months    MAL-ED         PERU                           1                    NA                 0.0955374   -0.4747969    0.4453117
6 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0285716   -0.6095681    0.3427059
6 months    PROVIDE        BANGLADESH                     1                    NA                 0.0510297   -0.0785148    0.1650141
6 months    SAS-CompFeed   INDIA                          1                    NA                 0.0002744   -0.0352245    0.0345560
24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0030820   -0.0446193    0.0486050
24 months   JiVitA-3       BANGLADESH                     1                    NA                 0.0117338    0.0016675    0.0216986
24 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0535198   -0.0115565    0.1144095
24 months   Keneba         GAMBIA                         1                    NA                 0.0389611    0.0129642    0.0642732
24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0542564   -0.0408582    0.1406793
24 months   MAL-ED         INDIA                          1                    NA                -0.1789476   -0.3500757   -0.0295107
24 months   MAL-ED         NEPAL                          1                    NA                 0.0114894   -0.4592509    0.3303734
24 months   MAL-ED         PERU                           1                    NA                -0.1589576   -0.5856588    0.1529182
24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.2500000   -0.5519753    0.6375587
24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0253815   -0.1562442    0.1784770
24 months   PROVIDE        BANGLADESH                     1                    NA                -0.0367410   -0.1095605    0.0312995
