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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        single    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                    0      254    1207
0-24 months   COHORTS          GUATEMALA                      0                    1      855    1207
0-24 months   COHORTS          GUATEMALA                      1                    0       12    1207
0-24 months   COHORTS          GUATEMALA                      1                    1       86    1207
0-24 months   COHORTS          INDIA                          0                    0     3293    5384
0-24 months   COHORTS          INDIA                          0                    1     2082    5384
0-24 months   COHORTS          INDIA                          1                    0        4    5384
0-24 months   COHORTS          INDIA                          1                    1        5    5384
0-24 months   COHORTS          PHILIPPINES                    0                    0      924    3018
0-24 months   COHORTS          PHILIPPINES                    0                    1     2019    3018
0-24 months   COHORTS          PHILIPPINES                    1                    0       21    3018
0-24 months   COHORTS          PHILIPPINES                    1                    1       54    3018
0-24 months   Guatemala BSC    GUATEMALA                      0                    0      118     282
0-24 months   Guatemala BSC    GUATEMALA                      0                    1      134     282
0-24 months   Guatemala BSC    GUATEMALA                      1                    0        8     282
0-24 months   Guatemala BSC    GUATEMALA                      1                    1       22     282
0-24 months   JiVitA-4         BANGLADESH                     0                    0     2263    5423
0-24 months   JiVitA-4         BANGLADESH                     0                    1     3152    5423
0-24 months   JiVitA-4         BANGLADESH                     1                    0        4    5423
0-24 months   JiVitA-4         BANGLADESH                     1                    1        4    5423
0-24 months   MAL-ED           BANGLADESH                     0                    0      103     265
0-24 months   MAL-ED           BANGLADESH                     0                    1      162     265
0-24 months   MAL-ED           BANGLADESH                     1                    0        0     265
0-24 months   MAL-ED           BANGLADESH                     1                    1        0     265
0-24 months   MAL-ED           BRAZIL                         0                    0      148     233
0-24 months   MAL-ED           BRAZIL                         0                    1       49     233
0-24 months   MAL-ED           BRAZIL                         1                    0       22     233
0-24 months   MAL-ED           BRAZIL                         1                    1       14     233
0-24 months   MAL-ED           INDIA                          0                    0       99     249
0-24 months   MAL-ED           INDIA                          0                    1      150     249
0-24 months   MAL-ED           INDIA                          1                    0        0     249
0-24 months   MAL-ED           INDIA                          1                    1        0     249
0-24 months   MAL-ED           NEPAL                          0                    0      156     240
0-24 months   MAL-ED           NEPAL                          0                    1       84     240
0-24 months   MAL-ED           NEPAL                          1                    0        0     240
0-24 months   MAL-ED           NEPAL                          1                    1        0     240
0-24 months   MAL-ED           PERU                           0                    0      101     303
0-24 months   MAL-ED           PERU                           0                    1      167     303
0-24 months   MAL-ED           PERU                           1                    0       14     303
0-24 months   MAL-ED           PERU                           1                    1       21     303
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0       79     314
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1       97     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0       59     314
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1       79     314
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       37     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      215     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        3     262
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        7     262
0-24 months   PROBIT           BELARUS                        0                    0    14176   16897
0-24 months   PROBIT           BELARUS                        0                    1     2028   16897
0-24 months   PROBIT           BELARUS                        1                    0      568   16897
0-24 months   PROBIT           BELARUS                        1                    1      125   16897
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1400    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      751    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      148    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       76    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0     7683   14016
0-24 months   ZVITAMBO         ZIMBABWE                       0                    1     5444   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0      485   14016
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1      404   14016
0-6 months    COHORTS          GUATEMALA                      0                    0      622     974
0-6 months    COHORTS          GUATEMALA                      0                    1      283     974
0-6 months    COHORTS          GUATEMALA                      1                    0       36     974
0-6 months    COHORTS          GUATEMALA                      1                    1       33     974
0-6 months    COHORTS          INDIA                          0                    0     4207    5203
0-6 months    COHORTS          INDIA                          0                    1      988    5203
0-6 months    COHORTS          INDIA                          1                    0        6    5203
0-6 months    COHORTS          INDIA                          1                    1        2    5203
0-6 months    COHORTS          PHILIPPINES                    0                    0     2246    3018
0-6 months    COHORTS          PHILIPPINES                    0                    1      697    3018
0-6 months    COHORTS          PHILIPPINES                    1                    0       52    3018
0-6 months    COHORTS          PHILIPPINES                    1                    1       23    3018
0-6 months    Guatemala BSC    GUATEMALA                      0                    0      167     265
0-6 months    Guatemala BSC    GUATEMALA                      0                    1       71     265
0-6 months    Guatemala BSC    GUATEMALA                      1                    0       14     265
0-6 months    Guatemala BSC    GUATEMALA                      1                    1       13     265
0-6 months    JiVitA-4         BANGLADESH                     0                    0     3333    5115
0-6 months    JiVitA-4         BANGLADESH                     0                    1     1775    5115
0-6 months    JiVitA-4         BANGLADESH                     1                    0        5    5115
0-6 months    JiVitA-4         BANGLADESH                     1                    1        2    5115
0-6 months    MAL-ED           BANGLADESH                     0                    0      170     265
0-6 months    MAL-ED           BANGLADESH                     0                    1       95     265
0-6 months    MAL-ED           BANGLADESH                     1                    0        0     265
0-6 months    MAL-ED           BANGLADESH                     1                    1        0     265
0-6 months    MAL-ED           BRAZIL                         0                    0      156     233
0-6 months    MAL-ED           BRAZIL                         0                    1       41     233
0-6 months    MAL-ED           BRAZIL                         1                    0       25     233
0-6 months    MAL-ED           BRAZIL                         1                    1       11     233
0-6 months    MAL-ED           INDIA                          0                    0      164     249
0-6 months    MAL-ED           INDIA                          0                    1       85     249
0-6 months    MAL-ED           INDIA                          1                    0        0     249
0-6 months    MAL-ED           INDIA                          1                    1        0     249
0-6 months    MAL-ED           NEPAL                          0                    0      197     240
0-6 months    MAL-ED           NEPAL                          0                    1       43     240
0-6 months    MAL-ED           NEPAL                          1                    0        0     240
0-6 months    MAL-ED           NEPAL                          1                    1        0     240
0-6 months    MAL-ED           PERU                           0                    0      154     303
0-6 months    MAL-ED           PERU                           0                    1      114     303
0-6 months    MAL-ED           PERU                           1                    0       20     303
0-6 months    MAL-ED           PERU                           1                    1       15     303
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      116     314
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1       60     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0       82     314
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1       56     314
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      146     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      106     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        7     262
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        3     262
0-6 months    PROBIT           BELARUS                        0                    0    15119   16892
0-6 months    PROBIT           BELARUS                        0                    1     1080   16892
0-6 months    PROBIT           BELARUS                        1                    0      614   16892
0-6 months    PROBIT           BELARUS                        1                    1       79   16892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1726    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      425    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      184    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       40    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0     9751   13999
0-6 months    ZVITAMBO         ZIMBABWE                       0                    1     3361   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0      625   13999
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1      262   13999
6-24 months   COHORTS          GUATEMALA                      0                    0      186     820
6-24 months   COHORTS          GUATEMALA                      0                    1      572     820
6-24 months   COHORTS          GUATEMALA                      1                    0        9     820
6-24 months   COHORTS          GUATEMALA                      1                    1       53     820
6-24 months   COHORTS          INDIA                          0                    0     3016    4117
6-24 months   COHORTS          INDIA                          0                    1     1094    4117
6-24 months   COHORTS          INDIA                          1                    0        4    4117
6-24 months   COHORTS          INDIA                          1                    1        3    4117
6-24 months   COHORTS          PHILIPPINES                    0                    0      724    2097
6-24 months   COHORTS          PHILIPPINES                    0                    1     1322    2097
6-24 months   COHORTS          PHILIPPINES                    1                    0       20    2097
6-24 months   COHORTS          PHILIPPINES                    1                    1       31    2097
6-24 months   Guatemala BSC    GUATEMALA                      0                    0      105     185
6-24 months   Guatemala BSC    GUATEMALA                      0                    1       63     185
6-24 months   Guatemala BSC    GUATEMALA                      1                    0        8     185
6-24 months   Guatemala BSC    GUATEMALA                      1                    1        9     185
6-24 months   JiVitA-4         BANGLADESH                     0                    0     2259    3642
6-24 months   JiVitA-4         BANGLADESH                     0                    1     1377    3642
6-24 months   JiVitA-4         BANGLADESH                     1                    0        4    3642
6-24 months   JiVitA-4         BANGLADESH                     1                    1        2    3642
6-24 months   MAL-ED           BANGLADESH                     0                    0       91     158
6-24 months   MAL-ED           BANGLADESH                     0                    1       67     158
6-24 months   MAL-ED           BANGLADESH                     1                    0        0     158
6-24 months   MAL-ED           BANGLADESH                     1                    1        0     158
6-24 months   MAL-ED           BRAZIL                         0                    0      133     163
6-24 months   MAL-ED           BRAZIL                         0                    1        8     163
6-24 months   MAL-ED           BRAZIL                         1                    0       19     163
6-24 months   MAL-ED           BRAZIL                         1                    1        3     163
6-24 months   MAL-ED           INDIA                          0                    0       89     154
6-24 months   MAL-ED           INDIA                          0                    1       65     154
6-24 months   MAL-ED           INDIA                          1                    0        0     154
6-24 months   MAL-ED           INDIA                          1                    1        0     154
6-24 months   MAL-ED           NEPAL                          0                    0      153     194
6-24 months   MAL-ED           NEPAL                          0                    1       41     194
6-24 months   MAL-ED           NEPAL                          1                    0        0     194
6-24 months   MAL-ED           NEPAL                          1                    1        0     194
6-24 months   MAL-ED           PERU                           0                    0       77     149
6-24 months   MAL-ED           PERU                           0                    1       53     149
6-24 months   MAL-ED           PERU                           1                    0       13     149
6-24 months   MAL-ED           PERU                           1                    1        6     149
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0       56     158
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1       37     158
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0       42     158
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1       23     158
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       30     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      109     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        4     144
6-24 months   PROBIT           BELARUS                        0                    0    13915   15467
6-24 months   PROBIT           BELARUS                        0                    1      948   15467
6-24 months   PROBIT           BELARUS                        1                    0      558   15467
6-24 months   PROBIT           BELARUS                        1                    1       46   15467
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1115    1589
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      326    1589
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      112    1589
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       36    1589
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0     5889    8461
6-24 months   ZVITAMBO         ZIMBABWE                       0                    1     2083    8461
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0      347    8461
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      142    8461


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/fc3d9650-e1e4-406b-b221-426e09ffd202/3acb6a37-66c7-478d-a4f1-3a46c4bdadee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fc3d9650-e1e4-406b-b221-426e09ffd202/3acb6a37-66c7-478d-a4f1-3a46c4bdadee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fc3d9650-e1e4-406b-b221-426e09ffd202/3acb6a37-66c7-478d-a4f1-3a46c4bdadee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fc3d9650-e1e4-406b-b221-426e09ffd202/3acb6a37-66c7-478d-a4f1-3a46c4bdadee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.7713590   0.7466147   0.7961034
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.8975577   0.8398519   0.9552635
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.6861687   0.6693217   0.7030156
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.7135484   0.6255831   0.8015138
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.5317460   0.4700280   0.5934641
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.7333333   0.5748097   0.8918569
0-24 months   MAL-ED           BRAZIL                         0                    NA                0.2482813   0.1878160   0.3087465
0-24 months   MAL-ED           BRAZIL                         1                    NA                0.4042789   0.2388667   0.5696911
0-24 months   MAL-ED           PERU                           0                    NA                0.6230747   0.5649688   0.6811807
0-24 months   MAL-ED           PERU                           1                    NA                0.5386038   0.3717166   0.7054910
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.5259818   0.4442996   0.6076639
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.5800514   0.4979114   0.6621914
0-24 months   PROBIT           BELARUS                        0                    NA                0.1272735   0.1106732   0.1438739
0-24 months   PROBIT           BELARUS                        1                    NA                0.1179575   0.0990159   0.1368992
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3412142   0.3201668   0.3622615
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2771305   0.2163675   0.3378935
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.4163125   0.4078688   0.4247562
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.4536837   0.4182917   0.4890756
0-6 months    COHORTS          GUATEMALA                      0                    NA                0.3135246   0.2832482   0.3438010
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.4795736   0.3518346   0.6073127
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.2370711   0.2216050   0.2525371
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.2411561   0.1669393   0.3153728
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.2972758   0.2387911   0.3557606
0-6 months    Guatemala BSC    GUATEMALA                      1                    NA                0.5272207   0.3091504   0.7452911
0-6 months    MAL-ED           BRAZIL                         0                    NA                0.2108503   0.1538082   0.2678924
0-6 months    MAL-ED           BRAZIL                         1                    NA                0.3547568   0.2113982   0.4981154
0-6 months    MAL-ED           PERU                           0                    NA                0.4274505   0.3681050   0.4867960
0-6 months    MAL-ED           PERU                           1                    NA                0.4066317   0.2330174   0.5802461
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.3224927   0.2461021   0.3988832
0-6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.4264436   0.3457844   0.5071027
0-6 months    PROBIT           BELARUS                        0                    NA                0.0669450   0.0560789   0.0778112
0-6 months    PROBIT           BELARUS                        1                    NA                0.0949778   0.0673215   0.1226342
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1915849   0.1742332   0.2089366
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1227082   0.0766932   0.1687233
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.2570198   0.2495165   0.2645232
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2899790   0.2565434   0.3234146
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.7546174   0.7239651   0.7852698
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.8548387   0.7671013   0.9425761
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.6463590   0.6255251   0.6671928
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.6105161   0.4949144   0.7261178
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.3750000   0.3015949   0.4484051
6-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.5294118   0.2914989   0.7673246
6-24 months   MAL-ED           PERU                           0                    NA                0.4076923   0.3229347   0.4924499
6-24 months   MAL-ED           PERU                           1                    NA                0.3157895   0.1060755   0.5255034
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.3920587   0.2924332   0.4916842
6-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.3487182   0.2327258   0.4647106
6-24 months   PROBIT           BELARUS                        0                    NA                0.0639598   0.0522587   0.0756609
6-24 months   PROBIT           BELARUS                        1                    NA                0.0660277   0.0447505   0.0873048
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2256490   0.2040537   0.2472442
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2413932   0.1707741   0.3120124
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2622999   0.2526096   0.2719901
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3074995   0.2617250   0.3532740


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7796189   0.7562250   0.8030128
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6868787   0.6703303   0.7034272
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2703863   0.2132328   0.3275398
0-24 months   MAL-ED           PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.5605096   0.5055248   0.6154943
0-24 months   PROBIT           BELARUS                        NA                   NA                0.1274191   0.1115552   0.1432829
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3482105   0.3290467   0.3673744
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.4172374   0.4090737   0.4254012
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3244353   0.2950189   0.3538517
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2385686   0.2233602   0.2537770
0-6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2231760   0.1695976   0.2767543
0-6 months    MAL-ED           PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3694268   0.3159570   0.4228965
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0686124   0.0577768   0.0794479
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1957895   0.1798275   0.2117515
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.2588042   0.2515487   0.2660597
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7621951   0.7330377   0.7913526
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6452074   0.6247246   0.6656902
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   MAL-ED           PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2278162   0.2071874   0.2484451
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2629713   0.2535901   0.2723525


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 1.1636056   1.0831206   1.2500714
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 1.0399024   0.9172131   1.1790030
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                 1.3791045   1.0790454   1.7626034
0-24 months   MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         1                    0                 1.6283099   1.0098085   2.6256396
0-24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           1                    0                 0.8644289   0.6255840   1.1944635
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.1027975   0.8960663   1.3572237
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        1                    0                 0.9268034   0.8041910   1.0681101
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8121893   0.6471190   1.0193665
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.0897671   1.0056261   1.1809481
0-6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      1                    0                 1.5296203   1.1545465   2.0265429
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 1.0172312   0.7435173   1.3917085
0-6 months    Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    Guatemala BSC    GUATEMALA                      1                    0                 1.7735068   1.1234065   2.7998116
0-6 months    MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         1                    0                 1.6825055   1.0354499   2.7339078
0-6 months    MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           1                    0                 0.9512955   0.6072744   1.4902045
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0                 1.3223356   0.9801541   1.7839761
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        1                    0                 1.4187436   1.0714020   1.8786911
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6404901   0.4357913   0.9413395
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.1282360   1.0019292   1.2704655
6-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      1                    0                 1.1328107   1.0144231   1.2650147
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 0.9445465   0.7795781   1.1444243
6-24 months   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   Guatemala BSC    GUATEMALA                      1                    0                 1.4117647   0.8647352   2.3048439
6-24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           1                    0                 0.7745780   0.3862340   1.5533872
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.8894541   0.5836198   1.3555547
6-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        1                    0                 1.0323304   0.7676235   1.3883187
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0697733   0.7866651   1.4547676
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.1723204   1.0057554   1.3664704


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0082599    0.0023764   0.0141433
0-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0007101   -0.0018264   0.0032465
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0214455    0.0019436   0.0409473
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0221050   -0.0052707   0.0494807
0-24 months   MAL-ED           PERU                           0                    NA                -0.0026127   -0.0225969   0.0173715
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0345278   -0.0235273   0.0925829
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0001455   -0.0030546   0.0033457
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0069964   -0.0014273   0.0154200
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0009249   -0.0012552   0.0031051
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0109107    0.0021140   0.0197074
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0014975   -0.0010210   0.0040161
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0197053   -0.0014484   0.0408589
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.0123257   -0.0135788   0.0382301
0-6 months    MAL-ED           PERU                           0                    NA                -0.0017079   -0.0217238   0.0183080
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0469341   -0.0087081   0.1025763
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0016673    0.0001471   0.0031876
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042046   -0.0026704   0.0110795
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017844   -0.0002335   0.0038023
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0075777    0.0003202   0.0148352
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0011515   -0.0044905   0.0021875
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0141892   -0.0095805   0.0379589
6-24 months   MAL-ED           PERU                           0                    NA                -0.0117192   -0.0409824   0.0175441
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0123119   -0.0765264   0.0519026
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0003060   -0.0005276   0.0011397
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0021673   -0.0045357   0.0088703
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0006714   -0.0018499   0.0031927


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0105947    0.0029773   0.0181540
0-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0010337   -0.0026669   0.0047207
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0387668    0.0025234   0.0736932
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0817533   -0.0247121   0.1771572
0-24 months   MAL-ED           PERU                           0                    NA                -0.0042109   -0.0369469   0.0274917
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0616007   -0.0483972   0.1600577
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0011423   -0.0243114   0.0259635
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0200924   -0.0044426   0.0440280
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022168   -0.0030221   0.0074284
0-6 months    COHORTS          GUATEMALA                      0                    NA                 0.0336298    0.0061134   0.0603843
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0062772   -0.0043520   0.0167939
0-6 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0621655   -0.0070928   0.1266609
0-6 months    MAL-ED           BRAZIL                         0                    NA                 0.0552284   -0.0675744   0.1639053
0-6 months    MAL-ED           PERU                           0                    NA                -0.0040116   -0.0521441   0.0419191
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.1270457   -0.0382392   0.2660177
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0243008    0.0017474   0.0463447
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0214749   -0.0143140   0.0560011
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0068947   -0.0009326   0.0146608
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0099420    0.0003332   0.0194583
6-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0017847   -0.0069721   0.0033759
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0364583   -0.0266802   0.0957140
6-24 months   MAL-ED           PERU                           0                    NA                -0.0295958   -0.1063031   0.0417928
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0324213   -0.2162718   0.1236385
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0047620   -0.0084152   0.0177670
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0095132   -0.0203508   0.0385032
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025531   -0.0070804   0.0120945
