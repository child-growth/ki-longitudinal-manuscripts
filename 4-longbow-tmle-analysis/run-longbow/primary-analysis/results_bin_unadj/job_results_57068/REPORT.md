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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        exclfeed3    ever_swasted   n_cell      n
----------------------------  ---------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       0        6     10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       1        4     10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       0        0     10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       1        0     10
0-24 months (no birth wast)   EE               PAKISTAN                       1                       0       34     39
0-24 months (no birth wast)   EE               PAKISTAN                       1                       1        5     39
0-24 months (no birth wast)   EE               PAKISTAN                       0                       0        0     39
0-24 months (no birth wast)   EE               PAKISTAN                       0                       1        0     39
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       0      283    453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       1       93    453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       0       62    453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       1       15    453
0-24 months (no birth wast)   IRC              INDIA                          1                       0        0     10
0-24 months (no birth wast)   IRC              INDIA                          1                       1        0     10
0-24 months (no birth wast)   IRC              INDIA                          0                       0        6     10
0-24 months (no birth wast)   IRC              INDIA                          0                       1        4     10
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       0     1519   2015
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       1      276   2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       0      178   2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       1       42   2015
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       0      153    244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       1        6    244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       0       79    244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       1        6    244
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       0       61    202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       1        3    202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       0      137    202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       1        1    202
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       0      106    212
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       1        6    212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       0       94    212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       1        6    212
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       0       68    227
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       1        2    227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       0      156    227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       1        1    227
0-24 months (no birth wast)   MAL-ED           PERU                           1                       0       63    287
0-24 months (no birth wast)   MAL-ED           PERU                           1                       1        1    287
0-24 months (no birth wast)   MAL-ED           PERU                           0                       0      220    287
0-24 months (no birth wast)   MAL-ED           PERU                           0                       1        3    287
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       0       25    269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       1        0    269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       0      233    269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       1       11    269
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46    219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1    219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      166    219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        6    219
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       0      481    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       1       12    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       0      187    687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       1        7    687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       0      368    443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       1       53    443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       0       20    443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       1        2    443
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       0        6      9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       1        3      9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       0        0      9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       1        0      9
0-6 months (no birth wast)    EE               PAKISTAN                       1                       0       38     38
0-6 months (no birth wast)    EE               PAKISTAN                       1                       1        0     38
0-6 months (no birth wast)    EE               PAKISTAN                       0                       0        0     38
0-6 months (no birth wast)    EE               PAKISTAN                       0                       1        0     38
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       0      347    439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       1       19    439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       0       68    439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       1        5    439
0-6 months (no birth wast)    IRC              INDIA                          1                       0        0      9
0-6 months (no birth wast)    IRC              INDIA                          1                       1        0      9
0-6 months (no birth wast)    IRC              INDIA                          0                       0        5      9
0-6 months (no birth wast)    IRC              INDIA                          0                       1        4      9
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       0     1713   2001
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       1       73   2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       0      204   2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       1       11   2001
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       0      154    243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       1        4    243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       0       82    243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       1        3    243
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       0       62    202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       1        2    202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       0      137    202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       1        1    202
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       0      109    210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       1        3    210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       0       94    210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       1        4    210
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       0       70    225
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       1        0    225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       0      154    225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       1        1    225
0-6 months (no birth wast)    MAL-ED           PERU                           1                       0       64    287
0-6 months (no birth wast)    MAL-ED           PERU                           1                       1        0    287
0-6 months (no birth wast)    MAL-ED           PERU                           0                       0      222    287
0-6 months (no birth wast)    MAL-ED           PERU                           0                       1        1    287
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       0       25    268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       1        0    268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       0      241    268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       1        2    268
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46    219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1    219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      170    219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        2    219
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       0      490    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       1        3    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       0      187    683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       1        3    683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       0      400    437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       1       15    437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       0       21    437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       1        1    437
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       0        8     10
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       1        2     10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       0        0     10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       1        0     10
6-24 months                   EE               PAKISTAN                       1                       0       33     38
6-24 months                   EE               PAKISTAN                       1                       1        5     38
6-24 months                   EE               PAKISTAN                       0                       0        0     38
6-24 months                   EE               PAKISTAN                       0                       1        0     38
6-24 months                   GMS-Nepal        NEPAL                          1                       0      293    451
6-24 months                   GMS-Nepal        NEPAL                          1                       1       82    451
6-24 months                   GMS-Nepal        NEPAL                          0                       0       64    451
6-24 months                   GMS-Nepal        NEPAL                          0                       1       12    451
6-24 months                   IRC              INDIA                          1                       0        0     10
6-24 months                   IRC              INDIA                          1                       1        0     10
6-24 months                   IRC              INDIA                          0                       0       10     10
6-24 months                   IRC              INDIA                          0                       1        0     10
6-24 months                   Keneba           GAMBIA                         1                       0     1489   1910
6-24 months                   Keneba           GAMBIA                         1                       1      211   1910
6-24 months                   Keneba           GAMBIA                         0                       0      179   1910
6-24 months                   Keneba           GAMBIA                         0                       1       31   1910
6-24 months                   MAL-ED           BANGLADESH                     1                       0      149    232
6-24 months                   MAL-ED           BANGLADESH                     1                       1        2    232
6-24 months                   MAL-ED           BANGLADESH                     0                       0       78    232
6-24 months                   MAL-ED           BANGLADESH                     0                       1        3    232
6-24 months                   MAL-ED           BRAZIL                         1                       0       59    185
6-24 months                   MAL-ED           BRAZIL                         1                       1        1    185
6-24 months                   MAL-ED           BRAZIL                         0                       0      125    185
6-24 months                   MAL-ED           BRAZIL                         0                       1        0    185
6-24 months                   MAL-ED           INDIA                          1                       0      106    209
6-24 months                   MAL-ED           INDIA                          1                       1        3    209
6-24 months                   MAL-ED           INDIA                          0                       0       98    209
6-24 months                   MAL-ED           INDIA                          0                       1        2    209
6-24 months                   MAL-ED           NEPAL                          1                       0       68    226
6-24 months                   MAL-ED           NEPAL                          1                       1        2    226
6-24 months                   MAL-ED           NEPAL                          0                       0      156    226
6-24 months                   MAL-ED           NEPAL                          0                       1        0    226
6-24 months                   MAL-ED           PERU                           1                       0       60    267
6-24 months                   MAL-ED           PERU                           1                       1        1    267
6-24 months                   MAL-ED           PERU                           0                       0      204    267
6-24 months                   MAL-ED           PERU                           0                       1        2    267
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       0       23    248
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       1        0    248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       0      215    248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       1       10    248
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46    210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      160    210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        4    210
6-24 months                   PROVIDE          BANGLADESH                     1                       0      426    615
6-24 months                   PROVIDE          BANGLADESH                     1                       1        9    615
6-24 months                   PROVIDE          BANGLADESH                     0                       0      176    615
6-24 months                   PROVIDE          BANGLADESH                     0                       1        4    615
6-24 months                   SAS-CompFeed     INDIA                          1                       0      359    417
6-24 months                   SAS-CompFeed     INDIA                          1                       1       39    417
6-24 months                   SAS-CompFeed     INDIA                          0                       0       18    417
6-24 months                   SAS-CompFeed     INDIA                          0                       1        1    417


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/22339f8f-cefd-4383-ba7e-b5594aa8a279/846b1e26-8159-4e30-9b77-8b2adc293035/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/22339f8f-cefd-4383-ba7e-b5594aa8a279/846b1e26-8159-4e30-9b77-8b2adc293035/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/22339f8f-cefd-4383-ba7e-b5594aa8a279/846b1e26-8159-4e30-9b77-8b2adc293035/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/22339f8f-cefd-4383-ba7e-b5594aa8a279/846b1e26-8159-4e30-9b77-8b2adc293035/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2473404   0.2036807   0.2910001
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.1948052   0.1062461   0.2833643
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.1537604   0.1370691   0.1704518
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.1909091   0.1389626   0.2428556
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.0377358   0.0080557   0.0674160
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.0705882   0.0160249   0.1251515
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.0535714   0.0117714   0.0953714
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.0600000   0.0133433   0.1066567
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                0.0243408   0.0107277   0.0379539
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    NA                0.0360825   0.0098202   0.0623447
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0519126   0.0291583   0.0746669
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0684932   0.0104837   0.1265026
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0408735   0.0316886   0.0500584
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.0511628   0.0217043   0.0806213
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.2186667   0.1767850   0.2605483
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.1578947   0.0758236   0.2399659
6-24 months                   Keneba      GAMBIA       1                    NA                0.1241176   0.1084401   0.1397952
6-24 months                   Keneba      GAMBIA       0                    NA                0.1476190   0.0996302   0.1956079


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2384106   0.1991278   0.2776934
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.1578164   0.1418944   0.1737384
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.0491803   0.0219915   0.0763691
0-24 months (no birth wast)   MAL-ED      INDIA        NA                   NA                0.0566038   0.0254237   0.0877838
0-24 months (no birth wast)   PROVIDE     BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0546697   0.0333797   0.0759597
0-6 months (no birth wast)    Keneba      GAMBIA       NA                   NA                0.0419790   0.0331901   0.0507680
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.2084257   0.1708970   0.2459544
6-24 months                   Keneba      GAMBIA       NA                   NA                0.1267016   0.1117799   0.1416232


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.7875995   0.4836295   1.282620
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.2416008   0.9263028   1.664221
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 1.8705882   0.6209381   5.635184
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 1.1200000   0.3722239   3.370015
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    1                 1.4823883   0.5920038   3.711927
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.3193944   0.5084106   3.424007
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.2517362   0.6746607   2.322417
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.7220796   0.4149617   1.256499
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.1893478   0.8391570   1.685678


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0089298   -0.0258112   0.0079515
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0040559   -0.0019227   0.0100346
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.0114445   -0.0102827   0.0331716
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.0030323   -0.0265192   0.0325839
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.0033157   -0.0050469   0.0116783
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0027571   -0.0076207   0.0131350
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0011056   -0.0022129   0.0044240
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0102409   -0.0259094   0.0054275
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0025839   -0.0029765   0.0081444


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0374557   -0.1106348   0.0309017
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0257003   -0.0128706   0.0628025
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.2327044   -0.3336978   0.5585638
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.0535714   -0.6417907   0.4544207
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.1198890   -0.2346253   0.3726069
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0504326   -0.1585940   0.2217479
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0263358   -0.0558205   0.1020993
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0491348   -0.1268184   0.0231933
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0203938   -0.0244413   0.0632666
