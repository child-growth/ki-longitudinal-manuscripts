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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

* arm
* sex
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

agecat                        studyid         country                        predfeed6    ever_wasted   n_cell       n
----------------------------  --------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   EE              PAKISTAN                       1                      0       21      48
0-24 months (no birth wast)   EE              PAKISTAN                       1                      1       22      48
0-24 months (no birth wast)   EE              PAKISTAN                       0                      0        3      48
0-24 months (no birth wast)   EE              PAKISTAN                       0                      1        2      48
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                      0      176     560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                      1      241     560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                      0       66     560
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                      1       77     560
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     1                      0    10160   15666
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     1                      1     2046   15666
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     0                      0     2829   15666
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     0                      1      631   15666
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     1                      0     2753    4722
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     1                      1      927    4722
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0                      0      736    4722
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0                      1      306    4722
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                      0       42     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                      1        5     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                      0      204     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                      1       20     271
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                      0       62     233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                      1       23     233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                      0      116     233
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                      1       32     233
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                      0       29     210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                      1        1     210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                      0      168     210
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                      1       12     210
0-24 months (no birth wast)   MAL-ED          INDIA                          1                      0       10     216
0-24 months (no birth wast)   MAL-ED          INDIA                          1                      1        1     216
0-24 months (no birth wast)   MAL-ED          INDIA                          0                      0      126     216
0-24 months (no birth wast)   MAL-ED          INDIA                          0                      1       79     216
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                      0       10     225
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                      1        2     225
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                      0      169     225
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                      1       44     225
0-24 months (no birth wast)   MAL-ED          PERU                           1                      0       87     271
0-24 months (no birth wast)   MAL-ED          PERU                           1                      1        5     271
0-24 months (no birth wast)   MAL-ED          PERU                           0                      0      163     271
0-24 months (no birth wast)   MAL-ED          PERU                           0                      1       16     271
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                      0        3     237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                      0      193     237
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      201     235
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       33     235
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                      0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                      1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                      0      117     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                      1       56     173
0-6 months (no birth wast)    EE              PAKISTAN                       1                      0       36      47
0-6 months (no birth wast)    EE              PAKISTAN                       1                      1        6      47
0-6 months (no birth wast)    EE              PAKISTAN                       0                      0        4      47
0-6 months (no birth wast)    EE              PAKISTAN                       0                      1        1      47
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                      0      320     544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                      1       86     544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                      0      105     544
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                      1       33     544
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     1                      0    11256   15533
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     1                      1      849   15533
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     0                      0     3160   15533
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     0                      1      268   15533
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     1                      0     3530    4593
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0                      0      937    4593
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0                      1       34    4593
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                      0       47     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                      1        0     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                      0      221     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                      1        0     268
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                      0       79     232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                      1        6     232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                      0      135     232
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                      1       12     232
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                      0       29     210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                      1        1     210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                      0      173     210
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                      1        7     210
0-6 months (no birth wast)    MAL-ED          INDIA                          1                      0       11     215
0-6 months (no birth wast)    MAL-ED          INDIA                          1                      1        0     215
0-6 months (no birth wast)    MAL-ED          INDIA                          0                      0      172     215
0-6 months (no birth wast)    MAL-ED          INDIA                          0                      1       32     215
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                      0       12     223
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                      1        0     223
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                      0      195     223
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                      1       16     223
0-6 months (no birth wast)    MAL-ED          PERU                           1                      0       90     271
0-6 months (no birth wast)    MAL-ED          PERU                           1                      1        2     271
0-6 months (no birth wast)    MAL-ED          PERU                           0                      0      176     271
0-6 months (no birth wast)    MAL-ED          PERU                           0                      1        3     271
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                      0        3     236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                      0      220     236
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      224     235
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       10     235
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                      0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                      1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                      0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                      1        0     137
6-24 months                   EE              PAKISTAN                       1                      0       25      47
6-24 months                   EE              PAKISTAN                       1                      1       17      47
6-24 months                   EE              PAKISTAN                       0                      0        4      47
6-24 months                   EE              PAKISTAN                       0                      1        1      47
6-24 months                   GMS-Nepal       NEPAL                          1                      0      211     557
6-24 months                   GMS-Nepal       NEPAL                          1                      1      204     557
6-24 months                   GMS-Nepal       NEPAL                          0                      0       77     557
6-24 months                   GMS-Nepal       NEPAL                          0                      1       65     557
6-24 months                   JiVitA-3        BANGLADESH                     1                      0     6581   10202
6-24 months                   JiVitA-3        BANGLADESH                     1                      1     1302   10202
6-24 months                   JiVitA-3        BANGLADESH                     0                      0     1927   10202
6-24 months                   JiVitA-3        BANGLADESH                     0                      1      392   10202
6-24 months                   JiVitA-4        BANGLADESH                     1                      0     2819    4742
6-24 months                   JiVitA-4        BANGLADESH                     1                      1      876    4742
6-24 months                   JiVitA-4        BANGLADESH                     0                      0      755    4742
6-24 months                   JiVitA-4        BANGLADESH                     0                      1      292    4742
6-24 months                   LCNI-5          MALAWI                         1                      0       40     258
6-24 months                   LCNI-5          MALAWI                         1                      1        5     258
6-24 months                   LCNI-5          MALAWI                         0                      0      193     258
6-24 months                   LCNI-5          MALAWI                         0                      1       20     258
6-24 months                   MAL-ED          BANGLADESH                     1                      0       65     230
6-24 months                   MAL-ED          BANGLADESH                     1                      1       19     230
6-24 months                   MAL-ED          BANGLADESH                     0                      0      124     230
6-24 months                   MAL-ED          BANGLADESH                     0                      1       22     230
6-24 months                   MAL-ED          BRAZIL                         1                      0       30     207
6-24 months                   MAL-ED          BRAZIL                         1                      1        0     207
6-24 months                   MAL-ED          BRAZIL                         0                      0      171     207
6-24 months                   MAL-ED          BRAZIL                         0                      1        6     207
6-24 months                   MAL-ED          INDIA                          1                      0       10     217
6-24 months                   MAL-ED          INDIA                          1                      1        1     217
6-24 months                   MAL-ED          INDIA                          0                      0      148     217
6-24 months                   MAL-ED          INDIA                          0                      1       58     217
6-24 months                   MAL-ED          NEPAL                          1                      0       10     224
6-24 months                   MAL-ED          NEPAL                          1                      1        2     224
6-24 months                   MAL-ED          NEPAL                          0                      0      178     224
6-24 months                   MAL-ED          NEPAL                          0                      1       34     224
6-24 months                   MAL-ED          PERU                           1                      0       87     269
6-24 months                   MAL-ED          PERU                           1                      1        4     269
6-24 months                   MAL-ED          PERU                           0                      0      164     269
6-24 months                   MAL-ED          PERU                           0                      1       14     269
6-24 months                   MAL-ED          SOUTH AFRICA                   1                      0        3     235
6-24 months                   MAL-ED          SOUTH AFRICA                   1                      1        0     235
6-24 months                   MAL-ED          SOUTH AFRICA                   0                      0      198     235
6-24 months                   MAL-ED          SOUTH AFRICA                   0                      1       34     235
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      203     231
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       27     231
6-24 months                   SAS-FoodSuppl   INDIA                          1                      0        0     177
6-24 months                   SAS-FoodSuppl   INDIA                          1                      1        0     177
6-24 months                   SAS-FoodSuppl   INDIA                          0                      0      121     177
6-24 months                   SAS-FoodSuppl   INDIA                          0                      1       56     177


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/dedef60b-ff60-4eef-bdfe-d96850defaab/ba01139e-3334-4532-9c15-11e260a590df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dedef60b-ff60-4eef-bdfe-d96850defaab/ba01139e-3334-4532-9c15-11e260a590df/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dedef60b-ff60-4eef-bdfe-d96850defaab/ba01139e-3334-4532-9c15-11e260a590df/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dedef60b-ff60-4eef-bdfe-d96850defaab/ba01139e-3334-4532-9c15-11e260a590df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5807431   0.5336018   0.6278844
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5343673   0.4525803   0.6161543
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.1683336   0.1611760   0.1754913
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.1800714   0.1658139   0.1943290
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.2556677   0.2387660   0.2725694
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.2809554   0.2493558   0.3125550
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.2667914   0.1714214   0.3621614
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2210923   0.1536858   0.2884988
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   MAL-ED      PERU         0                    NA                0.0893855   0.0475133   0.1312576
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2120063   0.1721967   0.2518159
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2392114   0.1673264   0.3110963
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0700416   0.0649233   0.0751598
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0785754   0.0687036   0.0884472
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0249747   0.0188996   0.0310497
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0368341   0.0234373   0.0502309
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4917300   0.4438314   0.5396285
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4509057   0.3690980   0.5327134
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.1652819   0.1564215   0.1741422
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.1695313   0.1529109   0.1861517
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.2405023   0.2239050   0.2570995
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.2660674   0.2346110   0.2975238
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2143766   0.1242396   0.3045137
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1562441   0.0968667   0.2156215


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.1708796   0.1645476   0.1772116
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.2611182   0.2462845   0.2759518
0-24 months (no birth wast)   LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   MAL-ED      PERU         NA                   NA                0.0774908   0.0455992   0.1093824
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0719114   0.0672720   0.0765508
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   NA                   NA                0.0274331   0.0219967   0.0328694
0-6 months (no birth wast)    MAL-ED      BANGLADESH   NA                   NA                0.0775862   0.0430879   0.1120845
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.1660459   0.1583106   0.1737812
6-24 months                   JiVitA-4    BANGLADESH   NA                   NA                0.2463096   0.2316309   0.2609882
6-24 months                   LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED      BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9201440   0.7746747   1.092930
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.0697294   0.9769957   1.171265
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.0989086   0.9652896   1.251024
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.8287086   0.5208035   1.318651
0-24 months (no birth wast)   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      PERU         0                    1                 1.6446927   0.6209888   4.355979
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.1283220   0.7914850   1.608509
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.1218391   0.9730653   1.293359
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.4748582   0.9409819   2.311635
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9169783   0.7472462   1.125264
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.0257102   0.9161681   1.148350
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1062990   0.9663089   1.266569
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.7288299   0.4154908   1.278471


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0128860   -0.0367818   0.0110099
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0025460   -0.0010044   0.0060963
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0054505   -0.0024491   0.0133502
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0307399   -0.1052517   0.0437720
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0067437   -0.0140250   0.0275124
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0018698   -0.0005389   0.0042786
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0024584   -0.0006267   0.0055435
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0087856   -0.0327542   0.0151830
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0007640   -0.0035623   0.0050903
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0058073   -0.0020042   0.0136188
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0361158   -0.1044076   0.0321761


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0226923   -0.0657146   0.0185933
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0148992   -0.0060874   0.0354481
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0208737   -0.0098925   0.0507027
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.1302253   -0.4935454   0.1447135
0-24 months (no birth wast)   MAL-ED      PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0308284   -0.0688520   0.1212126
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0260018   -0.0080325   0.0588870
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0896143   -0.0303757   0.1956311
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0181918   -0.0690817   0.0302758
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0046011   -0.0217984   0.0303185
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0235773   -0.0086833   0.0548061
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.2026006   -0.6479420   0.1223913
