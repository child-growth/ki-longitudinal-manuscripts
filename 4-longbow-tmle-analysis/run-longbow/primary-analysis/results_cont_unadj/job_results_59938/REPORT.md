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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid     country                        predfeed3    n_cell       n
-------------  ----------  -----------------------------  ----------  -------  ------
0-3 months     EE          PAKISTAN                       1                32      32
0-3 months     EE          PAKISTAN                       0                 0      32
0-3 months     GMS-Nepal   NEPAL                          1               378     455
0-3 months     GMS-Nepal   NEPAL                          0                77     455
0-3 months     JiVitA-3    BANGLADESH                     1             10915   12097
0-3 months     JiVitA-3    BANGLADESH                     0              1182   12097
0-3 months     JiVitA-4    BANGLADESH                     1               108     119
0-3 months     JiVitA-4    BANGLADESH                     0                11     119
0-3 months     MAL-ED      BANGLADESH                     1               195     239
0-3 months     MAL-ED      BANGLADESH                     0                44     239
0-3 months     MAL-ED      BRAZIL                         1                96     195
0-3 months     MAL-ED      BRAZIL                         0                99     195
0-3 months     MAL-ED      INDIA                          1               151     213
0-3 months     MAL-ED      INDIA                          0                62     213
0-3 months     MAL-ED      NEPAL                          1               111     224
0-3 months     MAL-ED      NEPAL                          0               113     224
0-3 months     MAL-ED      PERU                           1               181     279
0-3 months     MAL-ED      PERU                           0                98     279
0-3 months     MAL-ED      SOUTH AFRICA                   1                70     261
0-3 months     MAL-ED      SOUTH AFRICA                   0               191     261
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                59     205
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               146     205
3-6 months     EE          PAKISTAN                       1                30      30
3-6 months     EE          PAKISTAN                       0                 0      30
3-6 months     GMS-Nepal   NEPAL                          1               351     420
3-6 months     GMS-Nepal   NEPAL                          0                69     420
3-6 months     JiVitA-3    BANGLADESH                     1              6540    7170
3-6 months     JiVitA-3    BANGLADESH                     0               630    7170
3-6 months     JiVitA-4    BANGLADESH                     1                20      21
3-6 months     JiVitA-4    BANGLADESH                     0                 1      21
3-6 months     MAL-ED      BANGLADESH                     1               184     226
3-6 months     MAL-ED      BANGLADESH                     0                42     226
3-6 months     MAL-ED      BRAZIL                         1                93     186
3-6 months     MAL-ED      BRAZIL                         0                93     186
3-6 months     MAL-ED      INDIA                          1               146     206
3-6 months     MAL-ED      INDIA                          0                60     206
3-6 months     MAL-ED      NEPAL                          1               112     226
3-6 months     MAL-ED      NEPAL                          0               114     226
3-6 months     MAL-ED      PERU                           1               174     264
3-6 months     MAL-ED      PERU                           0                90     264
3-6 months     MAL-ED      SOUTH AFRICA                   1                63     234
3-6 months     MAL-ED      SOUTH AFRICA                   0               171     234
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                63     208
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               145     208
6-9 months     EE          PAKISTAN                       1                36      36
6-9 months     EE          PAKISTAN                       0                 0      36
6-9 months     GMS-Nepal   NEPAL                          1               312     374
6-9 months     GMS-Nepal   NEPAL                          0                62     374
6-9 months     JiVitA-4    BANGLADESH                     1                17      18
6-9 months     JiVitA-4    BANGLADESH                     0                 1      18
6-9 months     MAL-ED      BANGLADESH                     1               177     217
6-9 months     MAL-ED      BANGLADESH                     0                40     217
6-9 months     MAL-ED      BRAZIL                         1                90     177
6-9 months     MAL-ED      BRAZIL                         0                87     177
6-9 months     MAL-ED      INDIA                          1               143     205
6-9 months     MAL-ED      INDIA                          0                62     205
6-9 months     MAL-ED      NEPAL                          1               110     222
6-9 months     MAL-ED      NEPAL                          0               112     222
6-9 months     MAL-ED      PERU                           1               160     242
6-9 months     MAL-ED      PERU                           0                82     242
6-9 months     MAL-ED      SOUTH AFRICA                   1                62     222
6-9 months     MAL-ED      SOUTH AFRICA                   0               160     222
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                59     193
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               134     193
9-12 months    EE          PAKISTAN                       1                36      36
9-12 months    EE          PAKISTAN                       0                 0      36
9-12 months    GMS-Nepal   NEPAL                          1               294     350
9-12 months    GMS-Nepal   NEPAL                          0                56     350
9-12 months    JiVitA-4    BANGLADESH                     1                86      96
9-12 months    JiVitA-4    BANGLADESH                     0                10      96
9-12 months    MAL-ED      BANGLADESH                     1               179     218
9-12 months    MAL-ED      BANGLADESH                     0                39     218
9-12 months    MAL-ED      BRAZIL                         1                89     175
9-12 months    MAL-ED      BRAZIL                         0                86     175
9-12 months    MAL-ED      INDIA                          1               139     201
9-12 months    MAL-ED      INDIA                          0                62     201
9-12 months    MAL-ED      NEPAL                          1               109     221
9-12 months    MAL-ED      NEPAL                          0               112     221
9-12 months    MAL-ED      PERU                           1               155     233
9-12 months    MAL-ED      PERU                           0                78     233
9-12 months    MAL-ED      SOUTH AFRICA                   1                63     223
9-12 months    MAL-ED      SOUTH AFRICA                   0               160     223
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                57     192
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               135     192
12-15 months   EE          PAKISTAN                       1                29      29
12-15 months   EE          PAKISTAN                       0                 0      29
12-15 months   GMS-Nepal   NEPAL                          1               303     358
12-15 months   GMS-Nepal   NEPAL                          0                55     358
12-15 months   JiVitA-4    BANGLADESH                     1                98     108
12-15 months   JiVitA-4    BANGLADESH                     0                10     108
12-15 months   MAL-ED      BANGLADESH                     1               168     206
12-15 months   MAL-ED      BANGLADESH                     0                38     206
12-15 months   MAL-ED      BRAZIL                         1                86     165
12-15 months   MAL-ED      BRAZIL                         0                79     165
12-15 months   MAL-ED      INDIA                          1               138     200
12-15 months   MAL-ED      INDIA                          0                62     200
12-15 months   MAL-ED      NEPAL                          1               110     222
12-15 months   MAL-ED      NEPAL                          0               112     222
12-15 months   MAL-ED      PERU                           1               148     222
12-15 months   MAL-ED      PERU                           0                74     222
12-15 months   MAL-ED      SOUTH AFRICA                   1                60     219
12-15 months   MAL-ED      SOUTH AFRICA                   0               159     219
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                58     195
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               137     195
15-18 months   EE          PAKISTAN                       1                25      25
15-18 months   EE          PAKISTAN                       0                 0      25
15-18 months   GMS-Nepal   NEPAL                          1               316     377
15-18 months   GMS-Nepal   NEPAL                          0                61     377
15-18 months   JiVitA-4    BANGLADESH                     1                96     109
15-18 months   JiVitA-4    BANGLADESH                     0                13     109
15-18 months   MAL-ED      BANGLADESH                     1               168     206
15-18 months   MAL-ED      BANGLADESH                     0                38     206
15-18 months   MAL-ED      BRAZIL                         1                82     157
15-18 months   MAL-ED      BRAZIL                         0                75     157
15-18 months   MAL-ED      INDIA                          1               138     201
15-18 months   MAL-ED      INDIA                          0                63     201
15-18 months   MAL-ED      NEPAL                          1               108     219
15-18 months   MAL-ED      NEPAL                          0               111     219
15-18 months   MAL-ED      PERU                           1               142     211
15-18 months   MAL-ED      PERU                           0                69     211
15-18 months   MAL-ED      SOUTH AFRICA                   1                60     218
15-18 months   MAL-ED      SOUTH AFRICA                   0               158     218
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                56     190
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               134     190
18-21 months   EE          PAKISTAN                       1                27      27
18-21 months   EE          PAKISTAN                       0                 0      27
18-21 months   GMS-Nepal   NEPAL                          1               295     348
18-21 months   GMS-Nepal   NEPAL                          0                53     348
18-21 months   MAL-ED      BANGLADESH                     1               166     203
18-21 months   MAL-ED      BANGLADESH                     0                37     203
18-21 months   MAL-ED      BRAZIL                         1                79     150
18-21 months   MAL-ED      BRAZIL                         0                71     150
18-21 months   MAL-ED      INDIA                          1               138     201
18-21 months   MAL-ED      INDIA                          0                63     201
18-21 months   MAL-ED      NEPAL                          1               108     219
18-21 months   MAL-ED      NEPAL                          0               111     219
18-21 months   MAL-ED      PERU                           1               133     199
18-21 months   MAL-ED      PERU                           0                66     199
18-21 months   MAL-ED      SOUTH AFRICA                   1                60     225
18-21 months   MAL-ED      SOUTH AFRICA                   0               165     225
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53     179
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               126     179
21-24 months   EE          PAKISTAN                       1                16      16
21-24 months   EE          PAKISTAN                       0                 0      16
21-24 months   GMS-Nepal   NEPAL                          1               238     280
21-24 months   GMS-Nepal   NEPAL                          0                42     280
21-24 months   MAL-ED      BANGLADESH                     1               164     201
21-24 months   MAL-ED      BANGLADESH                     0                37     201
21-24 months   MAL-ED      BRAZIL                         1                77     149
21-24 months   MAL-ED      BRAZIL                         0                72     149
21-24 months   MAL-ED      INDIA                          1               138     201
21-24 months   MAL-ED      INDIA                          0                63     201
21-24 months   MAL-ED      NEPAL                          1               109     219
21-24 months   MAL-ED      NEPAL                          0               110     219
21-24 months   MAL-ED      PERU                           1               125     187
21-24 months   MAL-ED      PERU                           0                62     187
21-24 months   MAL-ED      SOUTH AFRICA                   1                59     226
21-24 months   MAL-ED      SOUTH AFRICA                   0               167     226
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                53     177
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0               124     177


The following strata were considered:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: EE, country: PAKISTAN

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
![](/tmp/7b34837b-6103-48e7-a6be-995e7f547f88/b33365b1-33d2-432b-ac8b-91dc027aaa0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7b34837b-6103-48e7-a6be-995e7f547f88/b33365b1-33d2-432b-ac8b-91dc027aaa0c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7b34837b-6103-48e7-a6be-995e7f547f88/b33365b1-33d2-432b-ac8b-91dc027aaa0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                0.8311437   0.8118244   0.8504630
0-3 months     GMS-Nepal   NEPAL                          0                    NA                0.7945524   0.7468540   0.8422509
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                0.8701340   0.8662378   0.8740303
0-3 months     JiVitA-3    BANGLADESH                     0                    NA                0.8695064   0.8581487   0.8808640
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                0.9086134   0.8758597   0.9413670
0-3 months     JiVitA-4    BANGLADESH                     0                    NA                0.8253396   0.7468047   0.9038746
0-3 months     MAL-ED      BANGLADESH                     1                    NA                0.8840196   0.8581322   0.9099071
0-3 months     MAL-ED      BANGLADESH                     0                    NA                0.8525623   0.7956962   0.9094285
0-3 months     MAL-ED      BRAZIL                         1                    NA                1.0745798   1.0180807   1.1310790
0-3 months     MAL-ED      BRAZIL                         0                    NA                1.0550294   1.0080962   1.1019626
0-3 months     MAL-ED      INDIA                          1                    NA                0.7690455   0.7414062   0.7966848
0-3 months     MAL-ED      INDIA                          0                    NA                0.7292398   0.6863220   0.7721576
0-3 months     MAL-ED      NEPAL                          1                    NA                0.9524516   0.9136713   0.9912319
0-3 months     MAL-ED      NEPAL                          0                    NA                0.9642883   0.9255422   1.0030344
0-3 months     MAL-ED      PERU                           1                    NA                0.9791041   0.9505516   1.0076566
0-3 months     MAL-ED      PERU                           0                    NA                0.9520022   0.9033654   1.0006391
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.9523500   0.9011160   1.0035840
0-3 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.9405047   0.9083267   0.9726826
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9447034   0.8831285   1.0062783
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8571731   0.8195852   0.8947610
3-6 months     GMS-Nepal   NEPAL                          1                    NA                0.4870994   0.4718529   0.5023458
3-6 months     GMS-Nepal   NEPAL                          0                    NA                0.5335994   0.4908352   0.5763637
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                0.4393441   0.4352899   0.4433983
3-6 months     JiVitA-3    BANGLADESH                     0                    NA                0.4377056   0.4256646   0.4497466
3-6 months     MAL-ED      BANGLADESH                     1                    NA                0.4774349   0.4588557   0.4960141
3-6 months     MAL-ED      BANGLADESH                     0                    NA                0.4692117   0.4269442   0.5114793
3-6 months     MAL-ED      BRAZIL                         1                    NA                0.5602164   0.5135808   0.6068521
3-6 months     MAL-ED      BRAZIL                         0                    NA                0.6013094   0.5517604   0.6508585
3-6 months     MAL-ED      INDIA                          1                    NA                0.4306587   0.4093370   0.4519804
3-6 months     MAL-ED      INDIA                          0                    NA                0.4724653   0.4371343   0.5077963
3-6 months     MAL-ED      NEPAL                          1                    NA                0.4968866   0.4664603   0.5273128
3-6 months     MAL-ED      NEPAL                          0                    NA                0.5451997   0.5184068   0.5719927
3-6 months     MAL-ED      PERU                           1                    NA                0.4838189   0.4609798   0.5066580
3-6 months     MAL-ED      PERU                           0                    NA                0.5275024   0.4935078   0.5614971
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.4529893   0.4085543   0.4974243
3-6 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.4696932   0.4377872   0.5015992
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4566576   0.4166568   0.4966583
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4397985   0.4074843   0.4721127
6-9 months     GMS-Nepal   NEPAL                          1                    NA                0.1817596   0.1660637   0.1974555
6-9 months     GMS-Nepal   NEPAL                          0                    NA                0.1914897   0.1612448   0.2217345
6-9 months     MAL-ED      BANGLADESH                     1                    NA                0.2420113   0.2253801   0.2586425
6-9 months     MAL-ED      BANGLADESH                     0                    NA                0.2505058   0.2166914   0.2843201
6-9 months     MAL-ED      BRAZIL                         1                    NA                0.3612469   0.3234206   0.3990733
6-9 months     MAL-ED      BRAZIL                         0                    NA                0.4100529   0.3704137   0.4496920
6-9 months     MAL-ED      INDIA                          1                    NA                0.2122021   0.1957609   0.2286432
6-9 months     MAL-ED      INDIA                          0                    NA                0.2570664   0.2242776   0.2898552
6-9 months     MAL-ED      NEPAL                          1                    NA                0.2572541   0.2363269   0.2781813
6-9 months     MAL-ED      NEPAL                          0                    NA                0.2840271   0.2630567   0.3049975
6-9 months     MAL-ED      PERU                           1                    NA                0.2570199   0.2376590   0.2763807
6-9 months     MAL-ED      PERU                           0                    NA                0.2705200   0.2442097   0.2968304
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                0.3011599   0.2617210   0.3405988
6-9 months     MAL-ED      SOUTH AFRICA                   0                    NA                0.2416892   0.2163192   0.2670591
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2267039   0.1877754   0.2656323
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2534361   0.2186038   0.2882684
9-12 months    GMS-Nepal   NEPAL                          1                    NA                0.1444496   0.1281832   0.1607159
9-12 months    GMS-Nepal   NEPAL                          0                    NA                0.1750732   0.1480845   0.2020619
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                0.1899236   0.1729565   0.2068906
9-12 months    JiVitA-4    BANGLADESH                     0                    NA                0.2174091   0.1426580   0.2921602
9-12 months    MAL-ED      BANGLADESH                     1                    NA                0.1664044   0.1509469   0.1818619
9-12 months    MAL-ED      BANGLADESH                     0                    NA                0.2102600   0.1809204   0.2395996
9-12 months    MAL-ED      BRAZIL                         1                    NA                0.2566108   0.2142227   0.2989988
9-12 months    MAL-ED      BRAZIL                         0                    NA                0.3184803   0.2645230   0.3724376
9-12 months    MAL-ED      INDIA                          1                    NA                0.1720186   0.1548344   0.1892028
9-12 months    MAL-ED      INDIA                          0                    NA                0.1818406   0.1520525   0.2116286
9-12 months    MAL-ED      NEPAL                          1                    NA                0.1674859   0.1438695   0.1911022
9-12 months    MAL-ED      NEPAL                          0                    NA                0.2012330   0.1837054   0.2187607
9-12 months    MAL-ED      PERU                           1                    NA                0.1919057   0.1719464   0.2118650
9-12 months    MAL-ED      PERU                           0                    NA                0.1740776   0.1516987   0.1964564
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                0.1937854   0.1569828   0.2305880
9-12 months    MAL-ED      SOUTH AFRICA                   0                    NA                0.2211458   0.1932874   0.2490042
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1397600   0.1035961   0.1759238
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1656328   0.1385565   0.1927091
12-15 months   GMS-Nepal   NEPAL                          1                    NA                0.1738820   0.1584978   0.1892661
12-15 months   GMS-Nepal   NEPAL                          0                    NA                0.1583998   0.1241273   0.1926722
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                0.1090800   0.0861185   0.1320416
12-15 months   JiVitA-4    BANGLADESH                     0                    NA                0.1069309   0.0490264   0.1648355
12-15 months   MAL-ED      BANGLADESH                     1                    NA                0.1287400   0.1105995   0.1468805
12-15 months   MAL-ED      BANGLADESH                     0                    NA                0.1624269   0.1294492   0.1954047
12-15 months   MAL-ED      BRAZIL                         1                    NA                0.1901444   0.1521706   0.2281182
12-15 months   MAL-ED      BRAZIL                         0                    NA                0.2313415   0.1939897   0.2686933
12-15 months   MAL-ED      INDIA                          1                    NA                0.1694019   0.1488373   0.1899664
12-15 months   MAL-ED      INDIA                          0                    NA                0.1861945   0.1565786   0.2158104
12-15 months   MAL-ED      NEPAL                          1                    NA                0.1502981   0.1215220   0.1790741
12-15 months   MAL-ED      NEPAL                          0                    NA                0.1557114   0.1370959   0.1743268
12-15 months   MAL-ED      PERU                           1                    NA                0.1311380   0.1113106   0.1509654
12-15 months   MAL-ED      PERU                           0                    NA                0.1667227   0.1369363   0.1965091
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1609831   0.0965657   0.2254006
12-15 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1993570   0.1735502   0.2251638
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1385313   0.0953798   0.1816829
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1791136   0.1469650   0.2112622
15-18 months   GMS-Nepal   NEPAL                          1                    NA                0.2211354   0.2033652   0.2389056
15-18 months   GMS-Nepal   NEPAL                          0                    NA                0.2842639   0.2351594   0.3333684
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                0.1513714   0.1255461   0.1771968
15-18 months   JiVitA-4    BANGLADESH                     0                    NA                0.1718246   0.1478527   0.1957965
15-18 months   MAL-ED      BANGLADESH                     1                    NA                0.1508336   0.1331086   0.1685585
15-18 months   MAL-ED      BANGLADESH                     0                    NA                0.1027765   0.0700746   0.1354784
15-18 months   MAL-ED      BRAZIL                         1                    NA                0.1808209   0.1408419   0.2207999
15-18 months   MAL-ED      BRAZIL                         0                    NA                0.2379299   0.1964270   0.2794328
15-18 months   MAL-ED      INDIA                          1                    NA                0.1666388   0.1473414   0.1859363
15-18 months   MAL-ED      INDIA                          0                    NA                0.1680261   0.1408065   0.1952457
15-18 months   MAL-ED      NEPAL                          1                    NA                0.1839772   0.1609359   0.2070186
15-18 months   MAL-ED      NEPAL                          0                    NA                0.1607221   0.1381174   0.1833268
15-18 months   MAL-ED      PERU                           1                    NA                0.1391512   0.1164957   0.1618067
15-18 months   MAL-ED      PERU                           0                    NA                0.1554365   0.1217024   0.1891706
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.2329038   0.1735839   0.2922238
15-18 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.2180435   0.1850579   0.2510291
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1317384   0.0882216   0.1752553
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1386853   0.1087668   0.1686038
18-21 months   GMS-Nepal   NEPAL                          1                    NA                0.1549664   0.1361929   0.1737399
18-21 months   GMS-Nepal   NEPAL                          0                    NA                0.1083094   0.0706717   0.1459472
18-21 months   MAL-ED      BANGLADESH                     1                    NA                0.1418798   0.1221029   0.1616568
18-21 months   MAL-ED      BANGLADESH                     0                    NA                0.1543697   0.1246225   0.1841168
18-21 months   MAL-ED      BRAZIL                         1                    NA                0.1443883   0.1146173   0.1741593
18-21 months   MAL-ED      BRAZIL                         0                    NA                0.1812813   0.1379007   0.2246619
18-21 months   MAL-ED      INDIA                          1                    NA                0.1755842   0.1576273   0.1935411
18-21 months   MAL-ED      INDIA                          0                    NA                0.1640756   0.1343014   0.1938497
18-21 months   MAL-ED      NEPAL                          1                    NA                0.1460517   0.1168169   0.1752865
18-21 months   MAL-ED      NEPAL                          0                    NA                0.1561619   0.1359351   0.1763887
18-21 months   MAL-ED      PERU                           1                    NA                0.1729505   0.1493869   0.1965142
18-21 months   MAL-ED      PERU                           0                    NA                0.1401713   0.1085942   0.1717485
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1668049   0.1229307   0.2106791
18-21 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1846397   0.1513424   0.2179371
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1701069   0.1164970   0.2237168
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1526346   0.1218211   0.1834481
21-24 months   GMS-Nepal   NEPAL                          1                    NA                0.1625593   0.1356007   0.1895180
21-24 months   GMS-Nepal   NEPAL                          0                    NA                0.1512580   0.0930407   0.2094753
21-24 months   MAL-ED      BANGLADESH                     1                    NA                0.1436463   0.1267017   0.1605909
21-24 months   MAL-ED      BANGLADESH                     0                    NA                0.1705520   0.1424154   0.1986886
21-24 months   MAL-ED      BRAZIL                         1                    NA                0.1355780   0.1015011   0.1696550
21-24 months   MAL-ED      BRAZIL                         0                    NA                0.1383178   0.1055817   0.1710538
21-24 months   MAL-ED      INDIA                          1                    NA                0.1518721   0.1350120   0.1687323
21-24 months   MAL-ED      INDIA                          0                    NA                0.1747152   0.1513893   0.1980411
21-24 months   MAL-ED      NEPAL                          1                    NA                0.1763098   0.1508531   0.2017666
21-24 months   MAL-ED      NEPAL                          0                    NA                0.1562526   0.1257452   0.1867600
21-24 months   MAL-ED      PERU                           1                    NA                0.1728128   0.1488934   0.1967321
21-24 months   MAL-ED      PERU                           0                    NA                0.1988500   0.1637204   0.2339797
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                0.1939426   0.1505646   0.2373206
21-24 months   MAL-ED      SOUTH AFRICA                   0                    NA                0.1859316   0.1571925   0.2146708
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1157034   0.0661840   0.1652227
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1476382   0.1108641   0.1844124


### Parameter: E(Y)


agecat         studyid     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal   NEPAL                          NA                   NA                0.8249513   0.8069417   0.8429610
0-3 months     JiVitA-3    BANGLADESH                     NA                   NA                0.8700727   0.8663508   0.8737946
0-3 months     JiVitA-4    BANGLADESH                     NA                   NA                0.9009158   0.8704585   0.9313731
0-3 months     MAL-ED      BANGLADESH                     NA                   NA                0.8782283   0.8546037   0.9018529
0-3 months     MAL-ED      BRAZIL                         NA                   NA                1.0646542   1.0280029   1.1013055
0-3 months     MAL-ED      INDIA                          NA                   NA                0.7574589   0.7340940   0.7808237
0-3 months     MAL-ED      NEPAL                          NA                   NA                0.9584228   0.9310012   0.9858444
0-3 months     MAL-ED      PERU                           NA                   NA                0.9695845   0.9443399   0.9948290
0-3 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.9436816   0.9164103   0.9709528
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8823647   0.8498032   0.9149263
3-6 months     GMS-Nepal   NEPAL                          NA                   NA                0.4947387   0.4800952   0.5093821
3-6 months     JiVitA-3    BANGLADESH                     NA                   NA                0.4392001   0.4352946   0.4431056
3-6 months     MAL-ED      BANGLADESH                     NA                   NA                0.4759067   0.4588572   0.4929562
3-6 months     MAL-ED      BRAZIL                         NA                   NA                0.5807629   0.5466123   0.6149135
3-6 months     MAL-ED      INDIA                          NA                   NA                0.4428354   0.4243688   0.4613020
3-6 months     MAL-ED      NEPAL                          NA                   NA                0.5212569   0.5007636   0.5417503
3-6 months     MAL-ED      PERU                           NA                   NA                0.4987110   0.4795495   0.5178726
3-6 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.4651960   0.4389728   0.4914192
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4449049   0.4193050   0.4705047
6-9 months     GMS-Nepal   NEPAL                          NA                   NA                0.1833726   0.1693467   0.1973984
6-9 months     MAL-ED      BANGLADESH                     NA                   NA                0.2435771   0.2286416   0.2585125
6-9 months     MAL-ED      BRAZIL                         NA                   NA                0.3852363   0.3576221   0.4128505
6-9 months     MAL-ED      INDIA                          NA                   NA                0.2257708   0.2103479   0.2411937
6-9 months     MAL-ED      NEPAL                          NA                   NA                0.2707612   0.2558425   0.2856799
6-9 months     MAL-ED      PERU                           NA                   NA                0.2615943   0.2459743   0.2772143
6-9 months     MAL-ED      SOUTH AFRICA                   NA                   NA                0.2582981   0.2366643   0.2799319
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2452641   0.2182544   0.2722738
9-12 months    GMS-Nepal   NEPAL                          NA                   NA                0.1493494   0.1349712   0.1637275
9-12 months    JiVitA-4    BANGLADESH                     NA                   NA                0.1927867   0.1760286   0.2095447
9-12 months    MAL-ED      BANGLADESH                     NA                   NA                0.1742501   0.1603345   0.1881656
9-12 months    MAL-ED      BRAZIL                         NA                   NA                0.2870152   0.2525341   0.3214963
9-12 months    MAL-ED      INDIA                          NA                   NA                0.1750483   0.1600136   0.1900829
9-12 months    MAL-ED      NEPAL                          NA                   NA                0.1845885   0.1697713   0.1994057
9-12 months    MAL-ED      PERU                           NA                   NA                0.1859375   0.1706537   0.2012212
9-12 months    MAL-ED      SOUTH AFRICA                   NA                   NA                0.2134162   0.1908275   0.2360049
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1579518   0.1360310   0.1798726
12-15 months   GMS-Nepal   NEPAL                          NA                   NA                0.1715034   0.1574465   0.1855603
12-15 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1088810   0.0873587   0.1304034
12-15 months   MAL-ED      BANGLADESH                     NA                   NA                0.1349541   0.1188584   0.1510499
12-15 months   MAL-ED      BRAZIL                         NA                   NA                0.2098691   0.1830086   0.2367295
12-15 months   MAL-ED      INDIA                          NA                   NA                0.1746076   0.1576725   0.1915427
12-15 months   MAL-ED      NEPAL                          NA                   NA                0.1530291   0.1359519   0.1701063
12-15 months   MAL-ED      PERU                           NA                   NA                0.1429995   0.1263204   0.1596787
12-15 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1888436   0.1630039   0.2146833
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670430   0.1409337   0.1931523
15-18 months   GMS-Nepal   NEPAL                          NA                   NA                0.2313498   0.2143055   0.2483941
15-18 months   JiVitA-4    BANGLADESH                     NA                   NA                0.1538108   0.1308637   0.1767579
15-18 months   MAL-ED      BANGLADESH                     NA                   NA                0.1419687   0.1260987   0.1578386
15-18 months   MAL-ED      BRAZIL                         NA                   NA                0.2081023   0.1789625   0.2372420
15-18 months   MAL-ED      INDIA                          NA                   NA                0.1670737   0.1513151   0.1828322
15-18 months   MAL-ED      NEPAL                          NA                   NA                0.1721904   0.1559804   0.1884004
15-18 months   MAL-ED      PERU                           NA                   NA                0.1444767   0.1256292   0.1633242
15-18 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.2221335   0.1931701   0.2510970
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1366378   0.1119409   0.1613347
18-21 months   GMS-Nepal   NEPAL                          NA                   NA                0.1478606   0.1308537   0.1648675
18-21 months   MAL-ED      BANGLADESH                     NA                   NA                0.1441563   0.1270864   0.1612262
18-21 months   MAL-ED      BRAZIL                         NA                   NA                0.1618510   0.1358468   0.1878551
18-21 months   MAL-ED      INDIA                          NA                   NA                0.1719770   0.1564970   0.1874571
18-21 months   MAL-ED      NEPAL                          NA                   NA                0.1511761   0.1334727   0.1688794
18-21 months   MAL-ED      PERU                           NA                   NA                0.1620790   0.1430444   0.1811137
18-21 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1798838   0.1527878   0.2069798
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1578080   0.1309046   0.1847113
21-24 months   GMS-Nepal   NEPAL                          NA                   NA                0.1608641   0.1363372   0.1853911
21-24 months   MAL-ED      BANGLADESH                     NA                   NA                0.1485991   0.1337648   0.1634334
21-24 months   MAL-ED      BRAZIL                         NA                   NA                0.1369019   0.1132291   0.1605747
21-24 months   MAL-ED      INDIA                          NA                   NA                0.1590319   0.1452622   0.1728016
21-24 months   MAL-ED      NEPAL                          NA                   NA                0.1662354   0.1463078   0.1861631
21-24 months   MAL-ED      PERU                           NA                   NA                0.1814454   0.1615858   0.2013051
21-24 months   MAL-ED      SOUTH AFRICA                   NA                   NA                0.1880230   0.1639514   0.2120945
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1380758   0.1082723   0.1678793


### Parameter: ATE


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal   NEPAL                          0                    1                 -0.0365913   -0.0880536    0.0148711
0-3 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0006277   -0.0125102    0.0112549
0-3 months     JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4    BANGLADESH                     0                    1                 -0.0832738   -0.1690659    0.0025184
0-3 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BANGLADESH                     0                    1                 -0.0314573   -0.0939386    0.0310241
0-3 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      BRAZIL                         0                    1                 -0.0195504   -0.0930003    0.0538994
0-3 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      INDIA                          0                    1                 -0.0398057   -0.0908534    0.0112420
0-3 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      NEPAL                          0                    1                  0.0118367   -0.0429827    0.0666562
0-3 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      PERU                           0                    1                 -0.0271018   -0.0835003    0.0292966
0-3 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      SOUTH AFRICA                   0                    1                 -0.0118453   -0.0723461    0.0486555
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0875303   -0.1596712   -0.0153893
3-6 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal   NEPAL                          0                    1                  0.0465001    0.0010993    0.0919009
3-6 months     JiVitA-3    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3    BANGLADESH                     0                    1                 -0.0016385   -0.0141147    0.0108377
3-6 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BANGLADESH                     0                    1                 -0.0082232   -0.0543939    0.0379475
3-6 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      BRAZIL                         0                    1                  0.0410930   -0.0269510    0.1091370
3-6 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      INDIA                          0                    1                  0.0418066    0.0005405    0.0830727
3-6 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      NEPAL                          0                    1                  0.0483132    0.0077716    0.0888547
3-6 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      PERU                           0                    1                  0.0436835    0.0027292    0.0846379
3-6 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      SOUTH AFRICA                   0                    1                  0.0167039   -0.0379995    0.0714073
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0168590   -0.0682815    0.0345634
6-9 months     GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal   NEPAL                          0                    1                  0.0097301   -0.0243451    0.0438052
6-9 months     MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BANGLADESH                     0                    1                  0.0084945   -0.0291885    0.0461775
6-9 months     MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      BRAZIL                         0                    1                  0.0488059   -0.0059855    0.1035974
6-9 months     MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      INDIA                          0                    1                  0.0448644    0.0081845    0.0815443
6-9 months     MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      NEPAL                          0                    1                  0.0267730   -0.0028531    0.0563991
6-9 months     MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      PERU                           0                    1                  0.0135002   -0.0191660    0.0461663
6-9 months     MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      SOUTH AFRICA                   0                    1                 -0.0594707   -0.1063649   -0.0125766
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0267323   -0.0255048    0.0789693
9-12 months    GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal   NEPAL                          0                    1                  0.0306237   -0.0008880    0.0621353
9-12 months    JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4    BANGLADESH                     0                    1                  0.0274855   -0.0494907    0.1044616
9-12 months    MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BANGLADESH                     0                    1                  0.0438556    0.0106932    0.0770180
9-12 months    MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      BRAZIL                         0                    1                  0.0618695   -0.0067463    0.1304854
9-12 months    MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      INDIA                          0                    1                  0.0098220   -0.0245673    0.0442113
9-12 months    MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      NEPAL                          0                    1                  0.0337472    0.0043371    0.0631573
9-12 months    MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      PERU                           0                    1                 -0.0178281   -0.0478146    0.0121583
9-12 months    MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      SOUTH AFRICA                   0                    1                  0.0273604   -0.0187972    0.0735180
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0258728   -0.0193040    0.0710497
12-15 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal   NEPAL                          0                    1                 -0.0154822   -0.0530491    0.0220847
12-15 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4    BANGLADESH                     0                    1                 -0.0021491   -0.0643960    0.0600977
12-15 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BANGLADESH                     0                    1                  0.0336869   -0.0039510    0.0713247
12-15 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      BRAZIL                         0                    1                  0.0411971   -0.0120680    0.0944621
12-15 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      INDIA                          0                    1                  0.0167926   -0.0192629    0.0528481
12-15 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      NEPAL                          0                    1                  0.0054133   -0.0288591    0.0396857
12-15 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      PERU                           0                    1                  0.0355847   -0.0001973    0.0713668
12-15 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0383738   -0.0310207    0.1077683
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0405823   -0.0132284    0.0943930
15-18 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal   NEPAL                          0                    1                  0.0631285    0.0109076    0.1153495
15-18 months   JiVitA-4    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4    BANGLADESH                     0                    1                  0.0204532   -0.0147366    0.0556429
15-18 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BANGLADESH                     0                    1                 -0.0480571   -0.0852537   -0.0108604
15-18 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      BRAZIL                         0                    1                  0.0571089   -0.0005175    0.1147354
15-18 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      INDIA                          0                    1                  0.0013873   -0.0319788    0.0347534
15-18 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      NEPAL                          0                    1                 -0.0232552   -0.0555333    0.0090230
15-18 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      PERU                           0                    1                  0.0162853   -0.0243504    0.0569210
15-18 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0148603   -0.0827345    0.0530139
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0069469   -0.0458625    0.0597563
18-21 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal   NEPAL                          0                    1                 -0.0466569   -0.0887169   -0.0045970
18-21 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BANGLADESH                     0                    1                  0.0124899   -0.0232316    0.0482113
18-21 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      BRAZIL                         0                    1                  0.0368930   -0.0157206    0.0895066
18-21 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      INDIA                          0                    1                 -0.0115087   -0.0462786    0.0232613
18-21 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      NEPAL                          0                    1                  0.0101102   -0.0254398    0.0456601
18-21 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      PERU                           0                    1                 -0.0327792   -0.0721793    0.0066208
18-21 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      SOUTH AFRICA                   0                    1                  0.0178348   -0.0372438    0.0729135
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0174723   -0.0793067    0.0443621
21-24 months   GMS-Nepal   NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal   NEPAL                          0                    1                 -0.0113013   -0.0754576    0.0528549
21-24 months   MAL-ED      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BANGLADESH                     0                    1                  0.0269057   -0.0059392    0.0597506
21-24 months   MAL-ED      BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      BRAZIL                         0                    1                  0.0027397   -0.0445137    0.0499932
21-24 months   MAL-ED      INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      INDIA                          0                    1                  0.0228431   -0.0059382    0.0516244
21-24 months   MAL-ED      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      NEPAL                          0                    1                 -0.0200572   -0.0597907    0.0196762
21-24 months   MAL-ED      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      PERU                           0                    1                  0.0260373   -0.0164625    0.0685370
21-24 months   MAL-ED      SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      SOUTH AFRICA                   0                    1                 -0.0080110   -0.0600455    0.0440236
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0319349   -0.0297458    0.0936155


### Parameter: PAR


agecat         studyid     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal   NEPAL                          1                    NA                -0.0061924   -0.0149923    0.0026076
0-3 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0000613   -0.0012226    0.0011000
0-3 months     JiVitA-4    BANGLADESH                     1                    NA                -0.0076976   -0.0157727    0.0003775
0-3 months     MAL-ED      BANGLADESH                     1                    NA                -0.0057913   -0.0173980    0.0058154
0-3 months     MAL-ED      BRAZIL                         1                    NA                -0.0099256   -0.0472409    0.0273897
0-3 months     MAL-ED      INDIA                          1                    NA                -0.0115866   -0.0266436    0.0034704
0-3 months     MAL-ED      NEPAL                          1                    NA                 0.0059712   -0.0216942    0.0336366
0-3 months     MAL-ED      PERU                           1                    NA                -0.0095196   -0.0293882    0.0103489
0-3 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0086684   -0.0529475    0.0356107
0-3 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0623386   -0.1140040   -0.0106732
3-6 months     GMS-Nepal   NEPAL                          1                    NA                 0.0076393    0.0000003    0.0152783
3-6 months     JiVitA-3    BANGLADESH                     1                    NA                -0.0001440   -0.0012400    0.0009520
3-6 months     MAL-ED      BANGLADESH                     1                    NA                -0.0015282   -0.0101188    0.0070624
3-6 months     MAL-ED      BRAZIL                         1                    NA                 0.0205465   -0.0136041    0.0546971
3-6 months     MAL-ED      INDIA                          1                    NA                 0.0121767   -0.0001206    0.0244740
3-6 months     MAL-ED      NEPAL                          1                    NA                 0.0243704    0.0036781    0.0450627
3-6 months     MAL-ED      PERU                           1                    NA                 0.0148921    0.0007079    0.0290763
3-6 months     MAL-ED      SOUTH AFRICA                   1                    NA                 0.0122067   -0.0277802    0.0521936
3-6 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0117527   -0.0476156    0.0241102
6-9 months     GMS-Nepal   NEPAL                          1                    NA                 0.0016130   -0.0040477    0.0072737
6-9 months     MAL-ED      BANGLADESH                     1                    NA                 0.0015658   -0.0053942    0.0085259
6-9 months     MAL-ED      BRAZIL                         1                    NA                 0.0239894   -0.0031822    0.0511609
6-9 months     MAL-ED      INDIA                          1                    NA                 0.0135687    0.0021206    0.0250169
6-9 months     MAL-ED      NEPAL                          1                    NA                 0.0135071   -0.0015432    0.0285574
6-9 months     MAL-ED      PERU                           1                    NA                 0.0045744   -0.0065236    0.0156725
6-9 months     MAL-ED      SOUTH AFRICA                   1                    NA                -0.0428618   -0.0768419   -0.0088816
6-9 months     MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0185602   -0.0177498    0.0548703
9-12 months    GMS-Nepal   NEPAL                          1                    NA                 0.0048998   -0.0002778    0.0100774
9-12 months    JiVitA-4    BANGLADESH                     1                    NA                 0.0028631   -0.0048082    0.0105344
9-12 months    MAL-ED      BANGLADESH                     1                    NA                 0.0078457    0.0015055    0.0141860
9-12 months    MAL-ED      BRAZIL                         1                    NA                 0.0304045   -0.0036271    0.0644360
9-12 months    MAL-ED      INDIA                          1                    NA                 0.0030297   -0.0075966    0.0136559
9-12 months    MAL-ED      NEPAL                          1                    NA                 0.0171027    0.0020322    0.0321731
9-12 months    MAL-ED      PERU                           1                    NA                -0.0059682   -0.0160648    0.0041284
9-12 months    MAL-ED      SOUTH AFRICA                   1                    NA                 0.0196308   -0.0135264    0.0527880
9-12 months    MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0181918   -0.0136173    0.0500010
12-15 months   GMS-Nepal   NEPAL                          1                    NA                -0.0023786   -0.0081790    0.0034219
12-15 months   JiVitA-4    BANGLADESH                     1                    NA                -0.0001990   -0.0059588    0.0055608
12-15 months   MAL-ED      BANGLADESH                     1                    NA                 0.0062141   -0.0009555    0.0133837
12-15 months   MAL-ED      BRAZIL                         1                    NA                 0.0197247   -0.0059718    0.0454211
12-15 months   MAL-ED      INDIA                          1                    NA                 0.0052057   -0.0060235    0.0164349
12-15 months   MAL-ED      NEPAL                          1                    NA                 0.0027310   -0.0145632    0.0200253
12-15 months   MAL-ED      PERU                           1                    NA                 0.0118616   -0.0002691    0.0239922
12-15 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0278604   -0.0225730    0.0782939
12-15 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0285116   -0.0093838    0.0664071
15-18 months   GMS-Nepal   NEPAL                          1                    NA                 0.0102144    0.0014442    0.0189847
15-18 months   JiVitA-4    BANGLADESH                     1                    NA                 0.0024394   -0.0019371    0.0068158
15-18 months   MAL-ED      BANGLADESH                     1                    NA                -0.0088649   -0.0161855   -0.0015443
15-18 months   MAL-ED      BRAZIL                         1                    NA                 0.0272813   -0.0006088    0.0551715
15-18 months   MAL-ED      INDIA                          1                    NA                 0.0004348   -0.0100236    0.0108932
15-18 months   MAL-ED      NEPAL                          1                    NA                -0.0117869   -0.0282196    0.0046459
15-18 months   MAL-ED      PERU                           1                    NA                 0.0053255   -0.0080031    0.0186541
15-18 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0107703   -0.0599714    0.0384309
15-18 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0048994   -0.0323479    0.0421467
18-21 months   GMS-Nepal   NEPAL                          1                    NA                -0.0071058   -0.0137499   -0.0004617
18-21 months   MAL-ED      BANGLADESH                     1                    NA                 0.0022765   -0.0042682    0.0088211
18-21 months   MAL-ED      BRAZIL                         1                    NA                 0.0174627   -0.0076161    0.0425415
18-21 months   MAL-ED      INDIA                          1                    NA                -0.0036072   -0.0145303    0.0073159
18-21 months   MAL-ED      NEPAL                          1                    NA                 0.0051243   -0.0129066    0.0231553
18-21 months   MAL-ED      PERU                           1                    NA                -0.0108715   -0.0241145    0.0023715
18-21 months   MAL-ED      SOUTH AFRICA                   1                    NA                 0.0130789   -0.0273253    0.0534831
18-21 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0122989   -0.0558406    0.0312427
21-24 months   GMS-Nepal   NEPAL                          1                    NA                -0.0016952   -0.0113303    0.0079399
21-24 months   MAL-ED      BANGLADESH                     1                    NA                 0.0049528   -0.0012636    0.0111692
21-24 months   MAL-ED      BRAZIL                         1                    NA                 0.0013239   -0.0215110    0.0241588
21-24 months   MAL-ED      INDIA                          1                    NA                 0.0071598   -0.0019800    0.0162995
21-24 months   MAL-ED      NEPAL                          1                    NA                -0.0100744   -0.0300762    0.0099274
21-24 months   MAL-ED      PERU                           1                    NA                 0.0086327   -0.0055678    0.0228332
21-24 months   MAL-ED      SOUTH AFRICA                   1                    NA                -0.0059196   -0.0443726    0.0325334
21-24 months   MAL-ED      TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0223724   -0.0208929    0.0656377
