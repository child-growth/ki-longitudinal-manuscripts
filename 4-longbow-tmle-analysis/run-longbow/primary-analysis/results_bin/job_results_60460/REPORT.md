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

**Intervention Variable:** predfeed36

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

agecat                        studyid         country                        predfeed36    ever_wasted   n_cell       n
----------------------------  --------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   EE              PAKISTAN                       1                       0        3       9
0-24 months (no birth wast)   EE              PAKISTAN                       1                       1        1       9
0-24 months (no birth wast)   EE              PAKISTAN                       0                       0        3       9
0-24 months (no birth wast)   EE              PAKISTAN                       0                       1        2       9
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                       0      180     524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          1                       1      240     524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                       0       47     524
0-24 months (no birth wast)   GMS-Nepal       NEPAL                          0                       1       57     524
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     1                       0     8064   12568
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     1                       1     1729   12568
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     0                       0     2248   12568
0-24 months (no birth wast)   JiVitA-3        BANGLADESH                     0                       1      527   12568
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     1                       0     2645    4559
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     1                       1      889    4559
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0                       0      723    4559
0-24 months (no birth wast)   JiVitA-4        BANGLADESH                     0                       1      302    4559
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                       0       42     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         1                       1        5     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                       0      204     271
0-24 months (no birth wast)   LCNI-5          MALAWI                         0                       1       20     271
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                       0       64     251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     1                       1       21     251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                       0      130     251
0-24 months (no birth wast)   MAL-ED          BANGLADESH                     0                       1       36     251
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                       0       29     224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                       0      182     224
0-24 months (no birth wast)   MAL-ED          BRAZIL                         0                       1       13     224
0-24 months (no birth wast)   MAL-ED          INDIA                          1                       0       13     234
0-24 months (no birth wast)   MAL-ED          INDIA                          1                       1        5     234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                       0      132     234
0-24 months (no birth wast)   MAL-ED          INDIA                          0                       1       84     234
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                       0        8     235
0-24 months (no birth wast)   MAL-ED          NEPAL                          1                       1        0     235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                       0      181     235
0-24 months (no birth wast)   MAL-ED          NEPAL                          0                       1       46     235
0-24 months (no birth wast)   MAL-ED          PERU                           1                       0       78     286
0-24 months (no birth wast)   MAL-ED          PERU                           1                       1        3     286
0-24 months (no birth wast)   MAL-ED          PERU                           0                       0      187     286
0-24 months (no birth wast)   MAL-ED          PERU                           0                       1       18     286
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                       0        6     276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   1                       1        0     276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                       0      225     276
0-24 months (no birth wast)   MAL-ED          SOUTH AFRICA                   0                       1       45     276
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6     250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211     250
0-24 months (no birth wast)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       33     250
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                       0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          1                       1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                       0      117     173
0-24 months (no birth wast)   SAS-FoodSuppl   INDIA                          0                       1       56     173
0-6 months (no birth wast)    EE              PAKISTAN                       1                       0        3       9
0-6 months (no birth wast)    EE              PAKISTAN                       1                       1        1       9
0-6 months (no birth wast)    EE              PAKISTAN                       0                       0        4       9
0-6 months (no birth wast)    EE              PAKISTAN                       0                       1        1       9
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                       0      318     510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          1                       1       92     510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                       0       75     510
0-6 months (no birth wast)    GMS-Nepal       NEPAL                          0                       1       25     510
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     1                       0     9026   12458
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     1                       1      685   12458
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     0                       0     2536   12458
0-6 months (no birth wast)    JiVitA-3        BANGLADESH                     0                       1      211   12458
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     1                       0     3388    4433
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     1                       1       89    4433
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0                       0      923    4433
0-6 months (no birth wast)    JiVitA-4        BANGLADESH                     0                       1       33    4433
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                       0       47     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         1                       1        0     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                       0      221     268
0-6 months (no birth wast)    LCNI-5          MALAWI                         0                       1        0     268
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                       0       80     250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     1                       1        5     250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                       0      152     250
0-6 months (no birth wast)    MAL-ED          BANGLADESH                     0                       1       13     250
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                       0       29     224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                       0      187     224
0-6 months (no birth wast)    MAL-ED          BRAZIL                         0                       1        8     224
0-6 months (no birth wast)    MAL-ED          INDIA                          1                       0       15     232
0-6 months (no birth wast)    MAL-ED          INDIA                          1                       1        3     232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                       0      180     232
0-6 months (no birth wast)    MAL-ED          INDIA                          0                       1       34     232
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                       0        8     233
0-6 months (no birth wast)    MAL-ED          NEPAL                          1                       1        0     233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                       0      209     233
0-6 months (no birth wast)    MAL-ED          NEPAL                          0                       1       16     233
0-6 months (no birth wast)    MAL-ED          PERU                           1                       0       79     286
0-6 months (no birth wast)    MAL-ED          PERU                           1                       1        2     286
0-6 months (no birth wast)    MAL-ED          PERU                           0                       0      202     286
0-6 months (no birth wast)    MAL-ED          PERU                           0                       1        3     286
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                       0        6     275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   1                       1        0     275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                       0      255     275
0-6 months (no birth wast)    MAL-ED          SOUTH AFRICA                   0                       1       14     275
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        6     250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      234     250
0-6 months (no birth wast)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       10     250
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                       0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          1                       1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                       0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl   INDIA                          0                       1        0     137
6-24 months                   EE              PAKISTAN                       1                       0        4       9
6-24 months                   EE              PAKISTAN                       1                       1        0       9
6-24 months                   EE              PAKISTAN                       0                       0        4       9
6-24 months                   EE              PAKISTAN                       0                       1        1       9
6-24 months                   GMS-Nepal       NEPAL                          1                       0      220     526
6-24 months                   GMS-Nepal       NEPAL                          1                       1      202     526
6-24 months                   GMS-Nepal       NEPAL                          0                       0       57     526
6-24 months                   GMS-Nepal       NEPAL                          0                       1       47     526
6-24 months                   JiVitA-3        BANGLADESH                     1                       0     5673    8820
6-24 months                   JiVitA-3        BANGLADESH                     1                       1     1134    8820
6-24 months                   JiVitA-3        BANGLADESH                     0                       0     1669    8820
6-24 months                   JiVitA-3        BANGLADESH                     0                       1      344    8820
6-24 months                   JiVitA-4        BANGLADESH                     1                       0     2707    4578
6-24 months                   JiVitA-4        BANGLADESH                     1                       1      841    4578
6-24 months                   JiVitA-4        BANGLADESH                     0                       0      741    4578
6-24 months                   JiVitA-4        BANGLADESH                     0                       1      289    4578
6-24 months                   LCNI-5          MALAWI                         1                       0       40     258
6-24 months                   LCNI-5          MALAWI                         1                       1        5     258
6-24 months                   LCNI-5          MALAWI                         0                       0      193     258
6-24 months                   LCNI-5          MALAWI                         0                       1       20     258
6-24 months                   MAL-ED          BANGLADESH                     1                       0       63     240
6-24 months                   MAL-ED          BANGLADESH                     1                       1       18     240
6-24 months                   MAL-ED          BANGLADESH                     0                       0      134     240
6-24 months                   MAL-ED          BANGLADESH                     0                       1       25     240
6-24 months                   MAL-ED          BRAZIL                         1                       0       25     207
6-24 months                   MAL-ED          BRAZIL                         1                       1        0     207
6-24 months                   MAL-ED          BRAZIL                         0                       0      176     207
6-24 months                   MAL-ED          BRAZIL                         0                       1        6     207
6-24 months                   MAL-ED          INDIA                          1                       0       15     232
6-24 months                   MAL-ED          INDIA                          1                       1        2     232
6-24 months                   MAL-ED          INDIA                          0                       0      153     232
6-24 months                   MAL-ED          INDIA                          0                       1       62     232
6-24 months                   MAL-ED          NEPAL                          1                       0        8     234
6-24 months                   MAL-ED          NEPAL                          1                       1        0     234
6-24 months                   MAL-ED          NEPAL                          0                       0      190     234
6-24 months                   MAL-ED          NEPAL                          0                       1       36     234
6-24 months                   MAL-ED          PERU                           1                       0       69     270
6-24 months                   MAL-ED          PERU                           1                       1        2     270
6-24 months                   MAL-ED          PERU                           0                       0      183     270
6-24 months                   MAL-ED          PERU                           0                       1       16     270
6-24 months                   MAL-ED          SOUTH AFRICA                   1                       0        4     256
6-24 months                   MAL-ED          SOUTH AFRICA                   1                       1        0     256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                       0      215     256
6-24 months                   MAL-ED          SOUTH AFRICA                   0                       1       37     256
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        5     243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      211     243
6-24 months                   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       27     243
6-24 months                   SAS-FoodSuppl   INDIA                          1                       0        0     177
6-24 months                   SAS-FoodSuppl   INDIA                          1                       1        0     177
6-24 months                   SAS-FoodSuppl   INDIA                          0                       0      121     177
6-24 months                   SAS-FoodSuppl   INDIA                          0                       1       56     177


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
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
![](/tmp/32251838-0880-4eef-81fd-559b021335c5/159f00e6-ddda-4d94-a5c2-67f64924ab4f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/32251838-0880-4eef-81fd-559b021335c5/159f00e6-ddda-4d94-a5c2-67f64924ab4f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/32251838-0880-4eef-81fd-559b021335c5/159f00e6-ddda-4d94-a5c2-67f64924ab4f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/32251838-0880-4eef-81fd-559b021335c5/159f00e6-ddda-4d94-a5c2-67f64924ab4f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5718191   0.5243875   0.6192508
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5309994   0.4332932   0.6287056
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.1771905   0.1687853   0.1855957
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.1875518   0.1704922   0.2046114
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.2543700   0.2371801   0.2715598
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.2806169   0.2494555   0.3117783
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.2569541   0.1619479   0.3519604
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2094973   0.1474631   0.2715315
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.2777778   0.0704173   0.4851383
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.3888889   0.3237374   0.4540403
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2254651   0.1848380   0.2660921
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2462717   0.1605707   0.3319726
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0704020   0.0646937   0.0761104
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0773335   0.0649087   0.0897582
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0252486   0.0189674   0.0315299
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0357901   0.0222491   0.0493311
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                0.0588235   0.0087025   0.1089446
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    NA                0.0787879   0.0375984   0.1199773
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4803429   0.4326527   0.5280330
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4441952   0.3478252   0.5405652
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.1663363   0.1567082   0.1759645
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.1712547   0.1531248   0.1893846
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.2403634   0.2234465   0.2572802
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.2678610   0.2367194   0.2990025
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2232157   0.1293052   0.3171261
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1564886   0.1000417   0.2129355


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.5667939   0.5243264   0.6092614
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.1795035   0.1720409   0.1869661
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.2612415   0.2461119   0.2763711
0-24 months (no birth wast)   LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   MAL-ED      INDIA        NA                   NA                0.3803419   0.3180067   0.4426771
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.2294118   0.1928853   0.2659383
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0719217   0.0666549   0.0771884
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   NA                   NA                0.0275209   0.0219532   0.0330885
0-6 months (no birth wast)    MAL-ED      BANGLADESH   NA                   NA                0.0720000   0.0398938   0.1041062
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.1675737   0.1590914   0.1760560
6-24 months                   JiVitA-4    BANGLADESH   NA                   NA                0.2468327   0.2318250   0.2618404
6-24 months                   LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED      BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9286143   0.7588571   1.136346
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.0584755   0.9542215   1.174120
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.1031842   0.9702982   1.254269
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.8153102   0.5113010   1.300077
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 1.4000000   0.6514245   3.008790
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.0922830   0.7383172   1.615948
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.0984550   0.9187857   1.313259
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.4175063   0.8907855   2.255677
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED      BANGLADESH   0                    1                 1.3393939   0.4929054   3.639595
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9247460   0.7285742   1.173738
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.0295688   0.9123386   1.161862
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1144000   0.9750391   1.273680
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.7010647   0.4050374   1.213448


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0050252   -0.0263047   0.0162542
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0023130   -0.0019325   0.0065585
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0068715   -0.0012756   0.0150187
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0298625   -0.1062117   0.0464868
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.1025641   -0.0981070   0.3032352
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0039467   -0.0146127   0.0225061
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0015196   -0.0014654   0.0045046
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0022722   -0.0009560   0.0055004
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.0131765   -0.0296567   0.0560097
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0069588   -0.0281238   0.0142062
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0012374   -0.0034566   0.0059313
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0064693   -0.0015400   0.0144786
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0440490   -0.1178574   0.0297594


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0088661   -0.0471255   0.0279955
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0128856   -0.0110310   0.0362364
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0263034   -0.0054272   0.0570327
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.1314997   -0.5222484   0.1589470
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.2696629   -0.5036640   0.6452716
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0172035   -0.0671082   0.0948537
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0211289   -0.0210883   0.0616006
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0825641   -0.0428782   0.1929176
0-6 months (no birth wast)    MAL-ED      BANGLADESH   1                    NA                 0.1830065   -0.6820838   0.6031837
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0147002   -0.0604286   0.0290563
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0073841   -0.0210226   0.0350004
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0262092   -0.0068043   0.0581402
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.2458549   -0.7285511   0.1020489
