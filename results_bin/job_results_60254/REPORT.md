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

**Intervention Variable:** predfeed36

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

agecat                       studyid         country                        predfeed36    ever_stunted   n_cell      n
---------------------------  --------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth st.)   EE              PAKISTAN                       1                        0        0      6
0-24 months (no birth st.)   EE              PAKISTAN                       1                        1        2      6
0-24 months (no birth st.)   EE              PAKISTAN                       0                        0        2      6
0-24 months (no birth st.)   EE              PAKISTAN                       0                        1        2      6
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          1                        0      132    443
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          1                        1      225    443
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          0                        0       22    443
0-24 months (no birth st.)   GMS-Nepal       NEPAL                          0                        1       64    443
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                        0     4980   8764
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     1                        1     1855   8764
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                        0     1431   8764
0-24 months (no birth st.)   JiVitA-3        BANGLADESH                     0                        1      498   8764
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                        0     1502   3285
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     1                        1     1086   3285
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                        0      389   3285
0-24 months (no birth st.)   JiVitA-4        BANGLADESH                     0                        1      308   3285
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                        0       18    175
0-24 months (no birth st.)   LCNI-5          MALAWI                         1                        1       12    175
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                        0       83    175
0-24 months (no birth st.)   LCNI-5          MALAWI                         0                        1       62    175
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                        0       29    209
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     1                        1       45    209
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                        0       68    209
0-24 months (no birth st.)   MAL-ED          BANGLADESH                     0                        1       67    209
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                        0       18    195
0-24 months (no birth st.)   MAL-ED          BRAZIL                         1                        1        3    195
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                        0      146    195
0-24 months (no birth st.)   MAL-ED          BRAZIL                         0                        1       28    195
0-24 months (no birth st.)   MAL-ED          INDIA                          1                        0        5    201
0-24 months (no birth st.)   MAL-ED          INDIA                          1                        1       10    201
0-24 months (no birth st.)   MAL-ED          INDIA                          0                        0       87    201
0-24 months (no birth st.)   MAL-ED          INDIA                          0                        1       99    201
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                        0        6    208
0-24 months (no birth st.)   MAL-ED          NEPAL                          1                        1        2    208
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                        0      148    208
0-24 months (no birth st.)   MAL-ED          NEPAL                          0                        1       52    208
0-24 months (no birth st.)   MAL-ED          PERU                           1                        0       25    251
0-24 months (no birth st.)   MAL-ED          PERU                           1                        1       45    251
0-24 months (no birth st.)   MAL-ED          PERU                           0                        0       76    251
0-24 months (no birth st.)   MAL-ED          PERU                           0                        1      105    251
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   1                        1        1    244
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                        0      108    244
0-24 months (no birth st.)   MAL-ED          SOUTH AFRICA                   0                        1      132    244
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        2    210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       32    210
0-24 months (no birth st.)   MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      174    210
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                        0        0     95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          1                        1        0     95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                        0       25     95
0-24 months (no birth st.)   SAS-FoodSuppl   INDIA                          0                        1       70     95
0-6 months (no birth st.)    EE              PAKISTAN                       1                        0        0      6
0-6 months (no birth st.)    EE              PAKISTAN                       1                        1        2      6
0-6 months (no birth st.)    EE              PAKISTAN                       0                        0        3      6
0-6 months (no birth st.)    EE              PAKISTAN                       0                        1        1      6
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          1                        0      294    443
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          1                        1       63    443
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          0                        0       60    443
0-6 months (no birth st.)    GMS-Nepal       NEPAL                          0                        1       26    443
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                        0     5885   8761
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     1                        1      948   8761
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                        0     1682   8761
0-6 months (no birth st.)    JiVitA-3        BANGLADESH                     0                        1      246   8761
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                        0     2348   3257
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     1                        1      229   3257
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                        0      608   3257
0-6 months (no birth st.)    JiVitA-4        BANGLADESH                     0                        1       72   3257
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                        0       30    175
0-6 months (no birth st.)    LCNI-5          MALAWI                         1                        1        0    175
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                        0      145    175
0-6 months (no birth st.)    LCNI-5          MALAWI                         0                        1        0    175
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                        0       56    209
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     1                        1       18    209
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                        0      108    209
0-6 months (no birth st.)    MAL-ED          BANGLADESH                     0                        1       27    209
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                        0       20    195
0-6 months (no birth st.)    MAL-ED          BRAZIL                         1                        1        1    195
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                        0      155    195
0-6 months (no birth st.)    MAL-ED          BRAZIL                         0                        1       19    195
0-6 months (no birth st.)    MAL-ED          INDIA                          1                        0       14    201
0-6 months (no birth st.)    MAL-ED          INDIA                          1                        1        1    201
0-6 months (no birth st.)    MAL-ED          INDIA                          0                        0      142    201
0-6 months (no birth st.)    MAL-ED          INDIA                          0                        1       44    201
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                        0        8    208
0-6 months (no birth st.)    MAL-ED          NEPAL                          1                        1        0    208
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                        0      187    208
0-6 months (no birth st.)    MAL-ED          NEPAL                          0                        1       13    208
0-6 months (no birth st.)    MAL-ED          PERU                           1                        0       43    251
0-6 months (no birth st.)    MAL-ED          PERU                           1                        1       27    251
0-6 months (no birth st.)    MAL-ED          PERU                           0                        0      117    251
0-6 months (no birth st.)    MAL-ED          PERU                           0                        1       64    251
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                        0        3    244
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   1                        1        1    244
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                        0      167    244
0-6 months (no birth st.)    MAL-ED          SOUTH AFRICA                   0                        1       73    244
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        3    210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      143    210
0-6 months (no birth st.)    MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1       63    210
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                        0        0     95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          1                        1        0     95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                        0       95     95
0-6 months (no birth st.)    SAS-FoodSuppl   INDIA                          0                        1        0     95
6-24 months                  EE              PAKISTAN                       1                        0        0      3
6-24 months                  EE              PAKISTAN                       1                        1        0      3
6-24 months                  EE              PAKISTAN                       0                        0        2      3
6-24 months                  EE              PAKISTAN                       0                        1        1      3
6-24 months                  GMS-Nepal       NEPAL                          1                        0      131    353
6-24 months                  GMS-Nepal       NEPAL                          1                        1      162    353
6-24 months                  GMS-Nepal       NEPAL                          0                        0       22    353
6-24 months                  GMS-Nepal       NEPAL                          0                        1       38    353
6-24 months                  JiVitA-3        BANGLADESH                     1                        0     3223   5370
6-24 months                  JiVitA-3        BANGLADESH                     1                        1      915   5370
6-24 months                  JiVitA-3        BANGLADESH                     0                        0      979   5370
6-24 months                  JiVitA-3        BANGLADESH                     0                        1      253   5370
6-24 months                  JiVitA-4        BANGLADESH                     1                        0     1496   2982
6-24 months                  JiVitA-4        BANGLADESH                     1                        1      859   2982
6-24 months                  JiVitA-4        BANGLADESH                     0                        0      387   2982
6-24 months                  JiVitA-4        BANGLADESH                     0                        1      240   2982
6-24 months                  LCNI-5          MALAWI                         1                        0       16    162
6-24 months                  LCNI-5          MALAWI                         1                        1       12    162
6-24 months                  LCNI-5          MALAWI                         0                        0       72    162
6-24 months                  LCNI-5          MALAWI                         0                        1       62    162
6-24 months                  MAL-ED          BANGLADESH                     1                        0       27    158
6-24 months                  MAL-ED          BANGLADESH                     1                        1       27    158
6-24 months                  MAL-ED          BANGLADESH                     0                        0       64    158
6-24 months                  MAL-ED          BANGLADESH                     0                        1       40    158
6-24 months                  MAL-ED          BRAZIL                         1                        0       15    163
6-24 months                  MAL-ED          BRAZIL                         1                        1        2    163
6-24 months                  MAL-ED          BRAZIL                         0                        0      137    163
6-24 months                  MAL-ED          BRAZIL                         0                        1        9    163
6-24 months                  MAL-ED          INDIA                          1                        0        4    153
6-24 months                  MAL-ED          INDIA                          1                        1        9    153
6-24 months                  MAL-ED          INDIA                          0                        0       85    153
6-24 months                  MAL-ED          INDIA                          0                        1       55    153
6-24 months                  MAL-ED          NEPAL                          1                        0        5    193
6-24 months                  MAL-ED          NEPAL                          1                        1        2    193
6-24 months                  MAL-ED          NEPAL                          0                        0      147    193
6-24 months                  MAL-ED          NEPAL                          0                        1       39    193
6-24 months                  MAL-ED          PERU                           1                        0       19    149
6-24 months                  MAL-ED          PERU                           1                        1       18    149
6-24 months                  MAL-ED          PERU                           0                        0       71    149
6-24 months                  MAL-ED          PERU                           0                        1       41    149
6-24 months                  MAL-ED          SOUTH AFRICA                   1                        0        1    157
6-24 months                  MAL-ED          SOUTH AFRICA                   1                        1        0    157
6-24 months                  MAL-ED          SOUTH AFRICA                   0                        0       97    157
6-24 months                  MAL-ED          SOUTH AFRICA                   0                        1       59    157
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0        2    143
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1    143
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0       29    143
6-24 months                  MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1      111    143
6-24 months                  SAS-FoodSuppl   INDIA                          1                        0        0     91
6-24 months                  SAS-FoodSuppl   INDIA                          1                        1        0     91
6-24 months                  SAS-FoodSuppl   INDIA                          0                        0       20     91
6-24 months                  SAS-FoodSuppl   INDIA                          0                        1       71     91


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
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
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
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/428eed9b-28b4-4c15-9c0a-d63bed3af64d/0082c6f3-1993-414b-a0d6-c638388aee59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/428eed9b-28b4-4c15-9c0a-d63bed3af64d/0082c6f3-1993-414b-a0d6-c638388aee59/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/428eed9b-28b4-4c15-9c0a-d63bed3af64d/0082c6f3-1993-414b-a0d6-c638388aee59/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/428eed9b-28b4-4c15-9c0a-d63bed3af64d/0082c6f3-1993-414b-a0d6-c638388aee59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                0.6296873   0.5794856   0.6798889
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    NA                0.7469228   0.6538737   0.8399719
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                0.2713890   0.2590905   0.2836874
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    NA                0.2583671   0.2385820   0.2781521
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                0.4183530   0.3959542   0.4407517
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    NA                0.4504633   0.4089841   0.4919424
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                0.3840268   0.2026451   0.5654086
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    NA                0.4287634   0.3478364   0.5096903
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                0.5955144   0.4838568   0.7071721
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    NA                0.5059217   0.4223399   0.5895036
0-24 months (no birth st.)   MAL-ED      INDIA        1                    NA                0.6666667   0.4275118   0.9058215
0-24 months (no birth st.)   MAL-ED      INDIA        0                    NA                0.5322581   0.4603730   0.6041432
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                0.6469200   0.5317326   0.7621073
0-24 months (no birth st.)   MAL-ED      PERU         0                    NA                0.5800143   0.5076806   0.6523479
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                0.1758638   0.1361297   0.2155979
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    NA                0.3137966   0.2139202   0.4136729
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                0.1375203   0.1283581   0.1466824
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    NA                0.1313633   0.1170792   0.1456474
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                0.0869186   0.0732291   0.1006081
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    NA                0.1136151   0.0889713   0.1382588
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                0.2416081   0.1407029   0.3425133
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    NA                0.1988754   0.1311630   0.2665878
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                0.3850852   0.2691300   0.5010403
0-6 months (no birth st.)    MAL-ED      PERU         0                    NA                0.3529193   0.2830718   0.4227668
6-24 months                  GMS-Nepal   NEPAL        1                    NA                0.5545596   0.4977014   0.6114178
6-24 months                  GMS-Nepal   NEPAL        0                    NA                0.6236352   0.5045222   0.7427482
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                0.2203685   0.2060358   0.2347013
6-24 months                  JiVitA-3    BANGLADESH   0                    NA                0.2069407   0.1789264   0.2349550
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                0.3648773   0.3424536   0.3873010
6-24 months                  JiVitA-4    BANGLADESH   0                    NA                0.3862340   0.3402548   0.4322132
6-24 months                  LCNI-5      MALAWI       1                    NA                0.4606015   0.2762102   0.6449928
6-24 months                  LCNI-5      MALAWI       0                    NA                0.4645172   0.3799259   0.5491086
6-24 months                  MAL-ED      BANGLADESH   1                    NA                0.4873802   0.3513068   0.6234537
6-24 months                  MAL-ED      BANGLADESH   0                    NA                0.3841863   0.2900993   0.4782733
6-24 months                  MAL-ED      PERU         1                    NA                0.4695614   0.3019885   0.6371343
6-24 months                  MAL-ED      PERU         0                    NA                0.3635853   0.2735173   0.4536534


### Parameter: E(Y)


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        NA                   NA                0.6523702   0.6079743   0.6967661
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   NA                   NA                0.2684847   0.2575491   0.2794203
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   NA                   NA                0.4243531   0.4041458   0.4445604
0-24 months (no birth st.)   LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   MAL-ED      BANGLADESH   NA                   NA                0.5358852   0.4681109   0.6036595
0-24 months (no birth st.)   MAL-ED      INDIA        NA                   NA                0.5422886   0.4732417   0.6113355
0-24 months (no birth st.)   MAL-ED      PERU         NA                   NA                0.5976096   0.5368226   0.6583966
0-6 months (no birth st.)    GMS-Nepal   NEPAL        NA                   NA                0.2009029   0.1635496   0.2382563
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   NA                   NA                0.1362858   0.1283472   0.1442245
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   NA                   NA                0.0924163   0.0803439   0.1044888
0-6 months (no birth st.)    MAL-ED      BANGLADESH   NA                   NA                0.2153110   0.1594513   0.2711707
0-6 months (no birth st.)    MAL-ED      PERU         NA                   NA                0.3625498   0.3029582   0.4221414
6-24 months                  GMS-Nepal   NEPAL        NA                   NA                0.5665722   0.5148041   0.6183404
6-24 months                  JiVitA-3    BANGLADESH   NA                   NA                0.2175047   0.2040809   0.2309284
6-24 months                  JiVitA-4    BANGLADESH   NA                   NA                0.3685446   0.3480535   0.3890357
6-24 months                  LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  MAL-ED      BANGLADESH   NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED      PERU         NA                   NA                0.3959732   0.3171819   0.4747644


### Parameter: RR


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    1                 1.1861806   1.0229459   1.375463
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    1                 0.9520177   0.8744421   1.036475
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    1                 1.0767541   0.9710329   1.193986
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    1                 1.1164934   0.6711908   1.857233
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    1                 0.8495541   0.6638095   1.087273
0-24 months (no birth st.)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED      INDIA        0                    1                 0.7983871   0.5441800   1.171344
0-24 months (no birth st.)   MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED      PERU         0                    1                 0.8965781   0.7211546   1.114674
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    1                 1.7843156   1.2082965   2.634934
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    1                 0.9552288   0.8430671   1.082313
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    1                 1.3071429   1.0012283   1.706527
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    1                 0.8231322   0.4789892   1.414534
0-6 months (no birth st.)    MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED      PERU         0                    1                 0.9164708   0.6390469   1.314330
6-24 months                  GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal   NEPAL        0                    1                 1.1245593   0.9078001   1.393075
6-24 months                  JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3    BANGLADESH   0                    1                 0.9390663   0.8141552   1.083142
6-24 months                  JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4    BANGLADESH   0                    1                 1.0585312   0.9289494   1.206189
6-24 months                  LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  LCNI-5      MALAWI       0                    1                 1.0085013   0.6496243   1.565636
6-24 months                  MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED      BANGLADESH   0                    1                 0.7882681   0.5461758   1.137668
6-24 months                  MAL-ED      PERU         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED      PERU         0                    1                 0.7743084   0.5002755   1.198446


### Parameter: PAR


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0226829    0.0016748   0.0436911
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0029042   -0.0077949   0.0019864
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0060001   -0.0036940   0.0156943
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.0388303   -0.1269655   0.2046262
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.0596293   -0.1489961   0.0297376
0-24 months (no birth st.)   MAL-ED      INDIA        1                    NA                -0.1243781   -0.3555187   0.1067624
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                -0.0493104   -0.1481213   0.0495005
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.0250391    0.0041200   0.0459582
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                -0.0012344   -0.0048889   0.0024200
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0054977   -0.0001840   0.0111794
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                -0.0262971   -0.1066236   0.0540294
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                -0.0225353   -0.1206682   0.0755975
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0120126   -0.0100524   0.0340776
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0028639   -0.0096697   0.0039419
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0036673   -0.0067393   0.0140740
6-24 months                  LCNI-5      MALAWI       1                    NA                -0.0038114   -0.1726071   0.1649842
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.0633296   -0.1718604   0.0452013
6-24 months                  MAL-ED      PERU         1                    NA                -0.0735883   -0.2188885   0.0717119


### Parameter: PAF


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0347700    0.0017934   0.0666572
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0108172   -0.0291710   0.0072094
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0141395   -0.0089809   0.0367301
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.0918285   -0.3990329   0.4104674
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.1112725   -0.2920404   0.0442045
0-24 months (no birth st.)   MAL-ED      INDIA        1                    NA                -0.2293578   -0.7415161   0.1321811
0-24 months (no birth st.)   MAL-ED      PERU         1                    NA                -0.0825127   -0.2615548   0.0711194
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.1246328    0.0154077   0.2217412
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                -0.0090578   -0.0361663   0.0173415
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0594885   -0.0051278   0.1199508
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                -0.1221354   -0.5635848   0.1946789
0-6 months (no birth st.)    MAL-ED      PERU         1                    NA                -0.0621579   -0.3703977   0.1767503
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0212023   -0.0186359   0.0594824
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0131670   -0.0450530   0.0177462
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0099508   -0.0186645   0.0377623
6-24 months                  LCNI-5      MALAWI       1                    NA                -0.0083439   -0.4547032   0.3010551
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.1493444   -0.4362836   0.0802704
6-24 months                  MAL-ED      PERU         1                    NA                -0.1858416   -0.6167630   0.1302249
