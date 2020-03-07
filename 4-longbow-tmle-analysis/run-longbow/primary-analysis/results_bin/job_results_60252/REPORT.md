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

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* month
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

agecat                       studyid         country                        predfeed6    ever_stunted   n_cell       n
---------------------------  --------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   EE              PAKISTAN                       1                       0        4      27
0-24 months (no birth st.)   EE              PAKISTAN                       1                       1       19      27
0-24 months (no birth st.)   EE              PAKISTAN                       0                       0        2      27
0-24 months (no birth st.)   EE              PAKISTAN                       0                       1        2      27
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          1                       0      130     471
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          1                       1      222     471
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          0                       0       34     471
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          0                       1       85     471
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                       0     6247   10809
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                       1     2191   10809
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                       0     1776   10809
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                       1      595   10809
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                       0     1565    3397
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                       1     1125    3397
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                       0      393    3397
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                       1      314    3397
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                       0       18     175
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                       1       12     175
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                       0       83     175
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                       1       62     175
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                       0       32     195
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                       1       40     195
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                       0       58     195
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                       1       65     195
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                       0       20     185
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                       1        4     185
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                       0      134     185
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                       1       27     185
0-24 months (no birth st.)   MAL-ED          INDIA                          1                       0        1     185
0-24 months (no birth st.)   MAL-ED          INDIA                          1                       1        7     185
0-24 months (no birth st.)   MAL-ED          INDIA                          0                       0       82     185
0-24 months (no birth st.)   MAL-ED          INDIA                          0                       1       95     185
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                       0        6     199
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                       1        5     199
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                       0      140     199
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                       1       48     199
0-24 months (no birth st.)   MAL-ED          PERU                           1                       0       29     237
0-24 months (no birth st.)   MAL-ED          PERU                           1                       1       53     237
0-24 months (no birth st.)   MAL-ED          PERU                           0                       0       61     237
0-24 months (no birth st.)   MAL-ED          PERU                           0                       1       94     237
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                       1      120     212
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     197
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      168     197
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                       0        0      95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                       1        0      95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                       0       25      95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                       1       70      95
0-6 months (no birth st.)    EE              PAKISTAN                       1                       0        8      27
0-6 months (no birth st.)    EE              PAKISTAN                       1                       1       15      27
0-6 months (no birth st.)    EE              PAKISTAN                       0                       0        3      27
0-6 months (no birth st.)    EE              PAKISTAN                       0                       1        1      27
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          1                       0      286     471
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          1                       1       66     471
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          0                       0       88     471
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          0                       1       31     471
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                       0     7290   10806
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                       1     1146   10806
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                       0     2061   10806
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                       1      309   10806
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                       0     2442    3369
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                       0      615    3369
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                       1       75    3369
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                       0       30     175
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                       1        0     175
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                       0      145     175
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                       1        0     175
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                       0       60     195
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                       1       12     195
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                       0       95     195
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                       1       28     195
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                       0       22     185
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                       1        2     185
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                       0      143     185
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                       1       18     185
0-6 months (no birth st.)    MAL-ED          INDIA                          1                       0        7     185
0-6 months (no birth st.)    MAL-ED          INDIA                          1                       1        1     185
0-6 months (no birth st.)    MAL-ED          INDIA                          0                       0      134     185
0-6 months (no birth st.)    MAL-ED          INDIA                          0                       1       43     185
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                       0       11     199
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                       1        0     199
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                       0      176     199
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                       1       12     199
0-6 months (no birth st.)    MAL-ED          PERU                           1                       0       54     237
0-6 months (no birth st.)    MAL-ED          PERU                           1                       1       28     237
0-6 months (no birth st.)    MAL-ED          PERU                           0                       0       95     237
0-6 months (no birth st.)    MAL-ED          PERU                           0                       1       60     237
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                       1        1     212
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                       1       65     212
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        1     197
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      136     197
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       60     197
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                       0        0      95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                       1        0      95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                       0       95      95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                       1        0      95
6-24 months                  EE              PAKISTAN                       1                       0        4      11
6-24 months                  EE              PAKISTAN                       1                       1        4      11
6-24 months                  EE              PAKISTAN                       0                       0        2      11
6-24 months                  EE              PAKISTAN                       0                       1        1      11
6-24 months                  GMS-Nepal       NEPAL                          1                       0      126     369
6-24 months                  GMS-Nepal       NEPAL                          1                       1      156     369
6-24 months                  GMS-Nepal       NEPAL                          0                       0       33     369
6-24 months                  GMS-Nepal       NEPAL                          0                       1       54     369
6-24 months                  JiVitA-3        BANGLADESH                     1                       0     3715    6170
6-24 months                  JiVitA-3        BANGLADESH                     1                       1     1053    6170
6-24 months                  JiVitA-3        BANGLADESH                     0                       0     1115    6170
6-24 months                  JiVitA-3        BANGLADESH                     0                       1      287    6170
6-24 months                  JiVitA-4        BANGLADESH                     1                       0     1559    3084
6-24 months                  JiVitA-4        BANGLADESH                     1                       1      890    3084
6-24 months                  JiVitA-4        BANGLADESH                     0                       0      391    3084
6-24 months                  JiVitA-4        BANGLADESH                     0                       1      244    3084
6-24 months                  LCNI-5          MALAWI                         1                       0       16     162
6-24 months                  LCNI-5          MALAWI                         1                       1       12     162
6-24 months                  LCNI-5          MALAWI                         0                       0       72     162
6-24 months                  LCNI-5          MALAWI                         0                       1       62     162
6-24 months                  MAL-ED          BANGLADESH                     1                       0       31     153
6-24 months                  MAL-ED          BANGLADESH                     1                       1       28     153
6-24 months                  MAL-ED          BANGLADESH                     0                       0       57     153
6-24 months                  MAL-ED          BANGLADESH                     0                       1       37     153
6-24 months                  MAL-ED          BRAZIL                         1                       0       20     163
6-24 months                  MAL-ED          BRAZIL                         1                       1        2     163
6-24 months                  MAL-ED          BRAZIL                         0                       0      132     163
6-24 months                  MAL-ED          BRAZIL                         0                       1        9     163
6-24 months                  MAL-ED          INDIA                          1                       0        1     141
6-24 months                  MAL-ED          INDIA                          1                       1        6     141
6-24 months                  MAL-ED          INDIA                          0                       0       82     141
6-24 months                  MAL-ED          INDIA                          0                       1       52     141
6-24 months                  MAL-ED          NEPAL                          1                       0        6     186
6-24 months                  MAL-ED          NEPAL                          1                       1        5     186
6-24 months                  MAL-ED          NEPAL                          0                       0      139     186
6-24 months                  MAL-ED          NEPAL                          0                       1       36     186
6-24 months                  MAL-ED          PERU                           1                       0       29     148
6-24 months                  MAL-ED          PERU                           1                       1       25     148
6-24 months                  MAL-ED          PERU                           0                       0       60     148
6-24 months                  MAL-ED          PERU                           0                       1       34     148
6-24 months                  MAL-ED          SOUTH AFRICA                   1                       0        0     145
6-24 months                  MAL-ED          SOUTH AFRICA                   1                       1        0     145
6-24 months                  MAL-ED          SOUTH AFRICA                   0                       0       90     145
6-24 months                  MAL-ED          SOUTH AFRICA                   0                       1       55     145
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        1     135
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      108     135
6-24 months                  SAS-FoodSuppl   INDIA                          1                       0        0      91
6-24 months                  SAS-FoodSuppl   INDIA                          1                       1        0      91
6-24 months                  SAS-FoodSuppl   INDIA                          0                       0       20      91
6-24 months                  SAS-FoodSuppl   INDIA                          0                       1       71      91


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/226d9a92-8c09-4032-b4ae-bcb3aa30c609/3d7ba620-830e-4673-b161-917da7e7bda7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/226d9a92-8c09-4032-b4ae-bcb3aa30c609/3d7ba620-830e-4673-b161-917da7e7bda7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/226d9a92-8c09-4032-b4ae-bcb3aa30c609/3d7ba620-830e-4673-b161-917da7e7bda7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/226d9a92-8c09-4032-b4ae-bcb3aa30c609/3d7ba620-830e-4673-b161-917da7e7bda7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                0.6320713   0.5817139   0.6824288
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    NA                0.7363569   0.6601287   0.8125852
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                0.2590927   0.2480473   0.2701381
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    NA                0.2530798   0.2358535   0.2703062
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                0.4173381   0.3955088   0.4391675
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    NA                0.4510270   0.4096251   0.4924290
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                0.4142887   0.2317616   0.5968159
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    NA                0.4288006   0.3478825   0.5097186
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                0.5404673   0.4235986   0.6573360
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    NA                0.5300451   0.4423319   0.6177584
0-24 months (no birth st.)   MAL-ED      NEPAL        1                    NA                0.4545455   0.1595511   0.7495398
0-24 months (no birth st.)   MAL-ED      NEPAL        0                    NA                0.2553191   0.1928321   0.3178062
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                0.6596265   0.5542839   0.7649692
0-24 months (no birth st.)   MAL-ED      PERU         0                    NA                0.5985930   0.5204604   0.6767256
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                0.1868998   0.1460531   0.2277464
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    NA                0.2608909   0.1813994   0.3403824
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                0.1346259   0.1263490   0.1429029
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    NA                0.1343040   0.1211829   0.1474250
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                0.0865558   0.0729777   0.1001340
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    NA                0.1163658   0.0909143   0.1418172
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                0.1665666   0.0790751   0.2540582
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    NA                0.2300413   0.1558463   0.3042363
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                0.3543611   0.2460475   0.4626747
0-6 months (no birth st.)    MAL-ED      PERU         0                    NA                0.3800407   0.3032073   0.4568740
6-24 months                  GMS-Nepal   NEPAL        1                    NA                0.5560984   0.4981313   0.6140656
6-24 months                  GMS-Nepal   NEPAL        0                    NA                0.6147563   0.5177898   0.7117228
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                0.2203176   0.2069404   0.2336948
6-24 months                  JiVitA-3    BANGLADESH   0                    NA                0.2066516   0.1820209   0.2312824
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                0.3629431   0.3412039   0.3846822
6-24 months                  JiVitA-4    BANGLADESH   0                    NA                0.3870357   0.3403307   0.4337407
6-24 months                  LCNI-5      MALAWI       1                    NA                0.4952746   0.3101118   0.6804374
6-24 months                  LCNI-5      MALAWI       0                    NA                0.4678235   0.3830853   0.5525617
6-24 months                  MAL-ED      BANGLADESH   1                    NA                0.4809015   0.3515637   0.6102393
6-24 months                  MAL-ED      BANGLADESH   0                    NA                0.3968694   0.2973524   0.4963863
6-24 months                  MAL-ED      NEPAL        1                    NA                0.4545455   0.1594991   0.7495918
6-24 months                  MAL-ED      NEPAL        0                    NA                0.2057143   0.1456633   0.2657653
6-24 months                  MAL-ED      PERU         1                    NA                0.4695011   0.3294454   0.6095568
6-24 months                  MAL-ED      PERU         0                    NA                0.3652922   0.2673634   0.4632211


### Parameter: E(Y)


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-24 months (no birth st.)   LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   MAL-ED      BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   MAL-ED      NEPAL        NA                   NA                0.2663317   0.2047606   0.3279027
0-24 months (no birth st.)   MAL-ED      PERU         NA                   NA                0.6202532   0.5583342   0.6821721
0-6 months (no birth st.)    GMS-Nepal   NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
0-6 months (no birth st.)    MAL-ED      BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    MAL-ED      PERU         NA                   NA                0.3713080   0.3096658   0.4329502
6-24 months                  GMS-Nepal   NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  JiVitA-3    BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  JiVitA-4    BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041
6-24 months                  LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  MAL-ED      BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  MAL-ED      NEPAL        NA                   NA                0.2204301   0.1606956   0.2801646
6-24 months                  MAL-ED      PERU         NA                   NA                0.3986486   0.3194990   0.4777982


### Parameter: RR


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    1                 1.1649902   1.0251351   1.3239253
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    1                 0.9767926   0.9061352   1.0529597
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    1                 1.0807233   0.9753224   1.1975147
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    1                 1.0350283   0.6412441   1.6706331
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    1                 0.9807163   0.7481186   1.2856310
0-24 months (no birth st.)   MAL-ED      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      NEPAL        0                    1                 0.5617021   0.2807235   1.1239146
0-24 months (no birth st.)   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED      PERU         0                    1                 0.9074725   0.7385058   1.1150981
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    1                 1.3958866   0.9591310   2.0315258
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    1                 0.9976084   0.8919695   1.1157583
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    1                 1.3444012   1.0296006   1.7554522
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    1                 1.3810765   0.7467178   2.5543417
0-6 months (no birth st.)    MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED      PERU         0                    1                 1.0724672   0.7427529   1.5485445
6-24 months                  GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal   NEPAL        0                    1                 1.1054811   0.9183358   1.3307641
6-24 months                  JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-3    BANGLADESH   0                    1                 0.9379717   0.8265396   1.0644267
6-24 months                  JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-4    BANGLADESH   0                    1                 1.0663814   0.9349691   1.2162640
6-24 months                  LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  LCNI-5      MALAWI       0                    1                 0.9445739   0.6237593   1.4303914
6-24 months                  MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      BANGLADESH   0                    1                 0.8252613   0.5710403   1.1926588
6-24 months                  MAL-ED      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      NEPAL        0                    1                 0.4525714   0.2221214   0.9221125
6-24 months                  MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED      PERU         0                    1                 0.7780434   0.5208140   1.1623181


### Parameter: PAR


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0197333   -0.0036089   0.0430755
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0013445   -0.0055323   0.0028432
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0062709   -0.0031877   0.0157296
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.0085684   -0.1578591   0.1749959
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.0020058   -0.0939009   0.0898893
0-24 months (no birth st.)   MAL-ED      NEPAL        1                    NA                -0.1882138   -0.4731562   0.0967286
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                -0.0393734   -0.1260448   0.0472980
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.0190450   -0.0036467   0.0417368
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                 0.0000215   -0.0032784   0.0033214
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0060532    0.0003072   0.0117993
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                 0.0385616   -0.0340277   0.1111508
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                 0.0169469   -0.0723973   0.1062911
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0130073   -0.0132205   0.0392351
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0031377   -0.0091097   0.0028344
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0047612   -0.0055409   0.0150634
6-24 months                  LCNI-5      MALAWI       1                    NA                -0.0384845   -0.2074491   0.1304800
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.0560649   -0.1570929   0.0449632
6-24 months                  MAL-ED      NEPAL        1                    NA                -0.2341153   -0.5175303   0.0492997
6-24 months                  MAL-ED      PERU         1                    NA                -0.0708524   -0.1808852   0.0391803


### Parameter: PAF


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0302749   -0.0064041    0.0656172
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0052164   -0.0215808    0.0108857
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0148036   -0.0077854    0.0368863
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.0202631   -0.4641827    0.3444231
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.0037250   -0.1897423    0.1532083
0-24 months (no birth st.)   MAL-ED      NEPAL        1                    NA                -0.7066895   -2.2000739    0.0897744
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                -0.0634795   -0.2131420    0.0677195
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.0924765   -0.0240091    0.1957113
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                 0.0001595   -0.0246522    0.0243704
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0653633    0.0001105    0.1263578
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                 0.1879876   -0.2532221    0.4738649
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                 0.0456411   -0.2281399    0.2583900
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0228556   -0.0244715    0.0679964
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0144473   -0.0423899    0.0127462
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0129485   -0.0154205    0.0405250
6-24 months                  LCNI-5      MALAWI       1                    NA                -0.0842499   -0.5255962    0.2294174
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.1319681   -0.3974848    0.0831015
6-24 months                  MAL-ED      NEPAL        1                    NA                -1.0620843   -2.8567327   -0.1025372
6-24 months                  MAL-ED      PERU         1                    NA                -0.1777315   -0.4884376    0.0681158
