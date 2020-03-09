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

agecat        studyid          country                        single    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  -------  ------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      0                   0      804    1197
0-24 months   COHORTS          GUATEMALA                      0                   1      295    1197
0-24 months   COHORTS          GUATEMALA                      1                   0       77    1197
0-24 months   COHORTS          GUATEMALA                      1                   1       21    1197
0-24 months   COHORTS          INDIA                          0                   0     3568    5376
0-24 months   COHORTS          INDIA                          0                   1     1799    5376
0-24 months   COHORTS          INDIA                          1                   0        5    5376
0-24 months   COHORTS          INDIA                          1                   1        4    5376
0-24 months   COHORTS          PHILIPPINES                    0                   0     1754    3005
0-24 months   COHORTS          PHILIPPINES                    0                   1     1177    3005
0-24 months   COHORTS          PHILIPPINES                    1                   0       41    3005
0-24 months   COHORTS          PHILIPPINES                    1                   1       33    3005
0-24 months   Guatemala BSC    GUATEMALA                      0                   0      225     282
0-24 months   Guatemala BSC    GUATEMALA                      0                   1       27     282
0-24 months   Guatemala BSC    GUATEMALA                      1                   0       27     282
0-24 months   Guatemala BSC    GUATEMALA                      1                   1        3     282
0-24 months   JiVitA-4         BANGLADESH                     0                   0     3734    5424
0-24 months   JiVitA-4         BANGLADESH                     0                   1     1682    5424
0-24 months   JiVitA-4         BANGLADESH                     1                   0        7    5424
0-24 months   JiVitA-4         BANGLADESH                     1                   1        1    5424
0-24 months   MAL-ED           BANGLADESH                     0                   0      176     263
0-24 months   MAL-ED           BANGLADESH                     0                   1       87     263
0-24 months   MAL-ED           BANGLADESH                     1                   0        0     263
0-24 months   MAL-ED           BANGLADESH                     1                   1        0     263
0-24 months   MAL-ED           BRAZIL                         0                   0      182     233
0-24 months   MAL-ED           BRAZIL                         0                   1       15     233
0-24 months   MAL-ED           BRAZIL                         1                   0       31     233
0-24 months   MAL-ED           BRAZIL                         1                   1        5     233
0-24 months   MAL-ED           INDIA                          0                   0      130     249
0-24 months   MAL-ED           INDIA                          0                   1      119     249
0-24 months   MAL-ED           INDIA                          1                   0        0     249
0-24 months   MAL-ED           INDIA                          1                   1        0     249
0-24 months   MAL-ED           NEPAL                          0                   0      166     240
0-24 months   MAL-ED           NEPAL                          0                   1       74     240
0-24 months   MAL-ED           NEPAL                          1                   0        0     240
0-24 months   MAL-ED           NEPAL                          1                   1        0     240
0-24 months   MAL-ED           PERU                           0                   0      247     302
0-24 months   MAL-ED           PERU                           0                   1       21     302
0-24 months   MAL-ED           PERU                           1                   0       28     302
0-24 months   MAL-ED           PERU                           1                   1        6     302
0-24 months   MAL-ED           SOUTH AFRICA                   0                   0      142     312
0-24 months   MAL-ED           SOUTH AFRICA                   0                   1       34     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0      106     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1       30     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      218     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       33     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        7     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        3     261
0-24 months   PROBIT           BELARUS                        0                   0    12086   16898
0-24 months   PROBIT           BELARUS                        0                   1     4119   16898
0-24 months   PROBIT           BELARUS                        1                   0      496   16898
0-24 months   PROBIT           BELARUS                        1                   1      197   16898
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1643    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      508    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      169    2375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       55    2375
0-24 months   ZVITAMBO         ZIMBABWE                       0                   0     9970   13890
0-24 months   ZVITAMBO         ZIMBABWE                       0                   1     3042   13890
0-24 months   ZVITAMBO         ZIMBABWE                       1                   0      636   13890
0-24 months   ZVITAMBO         ZIMBABWE                       1                   1      242   13890
0-6 months    COHORTS          GUATEMALA                      0                   0      703     959
0-6 months    COHORTS          GUATEMALA                      0                   1      187     959
0-6 months    COHORTS          GUATEMALA                      1                   0       60     959
0-6 months    COHORTS          GUATEMALA                      1                   1        9     959
0-6 months    COHORTS          INDIA                          0                   0     3873    5170
0-6 months    COHORTS          INDIA                          0                   1     1289    5170
0-6 months    COHORTS          INDIA                          1                   0        7    5170
0-6 months    COHORTS          INDIA                          1                   1        1    5170
0-6 months    COHORTS          PHILIPPINES                    0                   0     2253    3004
0-6 months    COHORTS          PHILIPPINES                    0                   1      677    3004
0-6 months    COHORTS          PHILIPPINES                    1                   0       49    3004
0-6 months    COHORTS          PHILIPPINES                    1                   1       25    3004
0-6 months    Guatemala BSC    GUATEMALA                      0                   0      231     265
0-6 months    Guatemala BSC    GUATEMALA                      0                   1        7     265
0-6 months    Guatemala BSC    GUATEMALA                      1                   0       25     265
0-6 months    Guatemala BSC    GUATEMALA                      1                   1        2     265
0-6 months    JiVitA-4         BANGLADESH                     0                   0     4526    5081
0-6 months    JiVitA-4         BANGLADESH                     0                   1      548    5081
0-6 months    JiVitA-4         BANGLADESH                     1                   0        7    5081
0-6 months    JiVitA-4         BANGLADESH                     1                   1        0    5081
0-6 months    MAL-ED           BANGLADESH                     0                   0      203     263
0-6 months    MAL-ED           BANGLADESH                     0                   1       60     263
0-6 months    MAL-ED           BANGLADESH                     1                   0        0     263
0-6 months    MAL-ED           BANGLADESH                     1                   1        0     263
0-6 months    MAL-ED           BRAZIL                         0                   0      186     233
0-6 months    MAL-ED           BRAZIL                         0                   1       11     233
0-6 months    MAL-ED           BRAZIL                         1                   0       32     233
0-6 months    MAL-ED           BRAZIL                         1                   1        4     233
0-6 months    MAL-ED           INDIA                          0                   0      168     249
0-6 months    MAL-ED           INDIA                          0                   1       81     249
0-6 months    MAL-ED           INDIA                          1                   0        0     249
0-6 months    MAL-ED           INDIA                          1                   1        0     249
0-6 months    MAL-ED           NEPAL                          0                   0      192     240
0-6 months    MAL-ED           NEPAL                          0                   1       48     240
0-6 months    MAL-ED           NEPAL                          1                   0        0     240
0-6 months    MAL-ED           NEPAL                          1                   1        0     240
0-6 months    MAL-ED           PERU                           0                   0      260     302
0-6 months    MAL-ED           PERU                           0                   1        8     302
0-6 months    MAL-ED           PERU                           1                   0       31     302
0-6 months    MAL-ED           PERU                           1                   1        3     302
0-6 months    MAL-ED           SOUTH AFRICA                   0                   0      159     312
0-6 months    MAL-ED           SOUTH AFRICA                   0                   1       17     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0      118     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1       18     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      240     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       11     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        8     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     261
0-6 months    PROBIT           BELARUS                        0                   0    12171   16895
0-6 months    PROBIT           BELARUS                        0                   1     4031   16895
0-6 months    PROBIT           BELARUS                        1                   0      500   16895
0-6 months    PROBIT           BELARUS                        1                   1      193   16895
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1852    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      299    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      192    2375
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       32    2375
0-6 months    ZVITAMBO         ZIMBABWE                       0                   0    10616   13797
0-6 months    ZVITAMBO         ZIMBABWE                       0                   1     2314   13797
0-6 months    ZVITAMBO         ZIMBABWE                       1                   0      688   13797
0-6 months    ZVITAMBO         ZIMBABWE                       1                   1      179   13797
6-24 months   COHORTS          GUATEMALA                      0                   0      886    1111
6-24 months   COHORTS          GUATEMALA                      0                   1      131    1111
6-24 months   COHORTS          GUATEMALA                      1                   0       81    1111
6-24 months   COHORTS          GUATEMALA                      1                   1       13    1111
6-24 months   COHORTS          INDIA                          0                   0     4358    5025
6-24 months   COHORTS          INDIA                          0                   1      658    5025
6-24 months   COHORTS          INDIA                          1                   0        6    5025
6-24 months   COHORTS          INDIA                          1                   1        3    5025
6-24 months   COHORTS          PHILIPPINES                    0                   0     1983    2775
6-24 months   COHORTS          PHILIPPINES                    0                   1      720    2775
6-24 months   COHORTS          PHILIPPINES                    1                   0       51    2775
6-24 months   COHORTS          PHILIPPINES                    1                   1       21    2775
6-24 months   Guatemala BSC    GUATEMALA                      0                   0      214     266
6-24 months   Guatemala BSC    GUATEMALA                      0                   1       22     266
6-24 months   Guatemala BSC    GUATEMALA                      1                   0       29     266
6-24 months   Guatemala BSC    GUATEMALA                      1                   1        1     266
6-24 months   JiVitA-4         BANGLADESH                     0                   0     4072    5420
6-24 months   JiVitA-4         BANGLADESH                     0                   1     1340    5420
6-24 months   JiVitA-4         BANGLADESH                     1                   0        7    5420
6-24 months   JiVitA-4         BANGLADESH                     1                   1        1    5420
6-24 months   MAL-ED           BANGLADESH                     0                   0      197     240
6-24 months   MAL-ED           BANGLADESH                     0                   1       43     240
6-24 months   MAL-ED           BANGLADESH                     1                   0        0     240
6-24 months   MAL-ED           BANGLADESH                     1                   1        0     240
6-24 months   MAL-ED           BRAZIL                         0                   0      172     207
6-24 months   MAL-ED           BRAZIL                         0                   1        5     207
6-24 months   MAL-ED           BRAZIL                         1                   0       29     207
6-24 months   MAL-ED           BRAZIL                         1                   1        1     207
6-24 months   MAL-ED           INDIA                          0                   0      169     233
6-24 months   MAL-ED           INDIA                          0                   1       64     233
6-24 months   MAL-ED           INDIA                          1                   0        0     233
6-24 months   MAL-ED           INDIA                          1                   1        0     233
6-24 months   MAL-ED           NEPAL                          0                   0      199     235
6-24 months   MAL-ED           NEPAL                          0                   1       36     235
6-24 months   MAL-ED           NEPAL                          1                   0        0     235
6-24 months   MAL-ED           NEPAL                          1                   1        0     235
6-24 months   MAL-ED           PERU                           0                   0      224     270
6-24 months   MAL-ED           PERU                           0                   1       14     270
6-24 months   MAL-ED           PERU                           1                   0       28     270
6-24 months   MAL-ED           PERU                           1                   1        4     270
6-24 months   MAL-ED           SOUTH AFRICA                   0                   0      123     259
6-24 months   MAL-ED           SOUTH AFRICA                   0                   1       21     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0       99     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1       16     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      211     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       26     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        6     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        2     245
6-24 months   PROBIT           BELARUS                        0                   0    15786   16598
6-24 months   PROBIT           BELARUS                        0                   1      133   16598
6-24 months   PROBIT           BELARUS                        1                   0      673   16598
6-24 months   PROBIT           BELARUS                        1                   1        6   16598
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1527    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      293    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      153    2003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       30    2003
6-24 months   ZVITAMBO         ZIMBABWE                       0                   0     9149   10771
6-24 months   ZVITAMBO         ZIMBABWE                       0                   1      954   10771
6-24 months   ZVITAMBO         ZIMBABWE                       1                   0      588   10771
6-24 months   ZVITAMBO         ZIMBABWE                       1                   1       80   10771


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
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/437ed7cf-e6ff-4e6f-ae1a-c29d7add17f6/2321ef42-60ba-48e2-b2a9-e3d4486c3d35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/437ed7cf-e6ff-4e6f-ae1a-c29d7add17f6/2321ef42-60ba-48e2-b2a9-e3d4486c3d35/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/437ed7cf-e6ff-4e6f-ae1a-c29d7add17f6/2321ef42-60ba-48e2-b2a9-e3d4486c3d35/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/437ed7cf-e6ff-4e6f-ae1a-c29d7add17f6/2321ef42-60ba-48e2-b2a9-e3d4486c3d35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.2681003   0.2418820   0.2943186
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.1988127   0.1154413   0.2821841
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.4027052   0.3844644   0.4209459
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4397172   0.3800761   0.4993583
0-24 months   MAL-ED           BRAZIL                         0                    NA                0.0761421   0.0390259   0.1132584
0-24 months   MAL-ED           BRAZIL                         1                    NA                0.1388889   0.0256764   0.2521013
0-24 months   MAL-ED           PERU                           0                    NA                0.0783582   0.0461309   0.1105855
0-24 months   MAL-ED           PERU                           1                    NA                0.1764706   0.0481180   0.3048232
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1965297   0.1309188   0.2621407
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2153165   0.1438649   0.2867682
0-24 months   PROBIT           BELARUS                        0                    NA                0.2544635   0.1949952   0.3139319
0-24 months   PROBIT           BELARUS                        1                    NA                0.2431268   0.1873380   0.2989156
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2308292   0.2118488   0.2498096
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3189286   0.2480474   0.3898097
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2351056   0.2277795   0.2424316
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2579047   0.2259128   0.2898965
0-6 months    COHORTS          GUATEMALA                      0                    NA                0.2101124   0.1833337   0.2368910
0-6 months    COHORTS          GUATEMALA                      1                    NA                0.1304348   0.0509292   0.2099404
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.2311714   0.2157914   0.2465514
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.3277321   0.2389028   0.4165614
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.0972634   0.0536849   0.1408419
0-6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1343928   0.0773027   0.1914829
0-6 months    PROBIT           BELARUS                        0                    NA                0.2490419   0.1895499   0.3085339
0-6 months    PROBIT           BELARUS                        1                    NA                0.2432131   0.1883088   0.2981174
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1389008   0.1242664   0.1535353
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1388809   0.0921767   0.1855850
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1799557   0.1733012   0.1866103
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2053950   0.1752311   0.2355590
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.1294907   0.1087606   0.1502208
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.1488668   0.0750192   0.2227144
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.2666633   0.2498616   0.2834650
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.2865811   0.1973252   0.3758371
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1421768   0.0843849   0.1999688
6-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1420090   0.0778365   0.2061816
6-24 months   PROBIT           BELARUS                        0                    NA                0.0083548   0.0044070   0.0123026
6-24 months   PROBIT           BELARUS                        1                    NA                0.0088365   0.0002568   0.0174162
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1596158   0.1427967   0.1764349
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1891290   0.1269302   0.2513278
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0945347   0.0888345   0.1002349
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1195892   0.0944620   0.1447164


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2639933   0.2390117   0.2889749
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4026622   0.3851243   0.4202002
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.0858369   0.0497913   0.1218826
0-24 months   MAL-ED           PERU                           NA                   NA                0.0894040   0.0571706   0.1216374
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137039
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2370526   0.2199455   0.2541598
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2364291   0.2293629   0.2434953
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2043796   0.1788445   0.2299146
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2336884   0.2185531   0.2488237
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2500148   0.1915461   0.3084835
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1393684   0.1254369   0.1532999
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1806915   0.1742710   0.1871119
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1296130   0.1098539   0.1493721
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2670270   0.2505637   0.2834903
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612581   0.1451483   0.1773679
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959985   0.0904349   0.1015621


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                 0.7415609   0.4821345   1.140579
0-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                 1.0919084   0.9464503   1.259722
0-24 months   MAL-ED           BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BRAZIL                         1                    0                 1.8240741   0.7056101   4.715418
0-24 months   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           1                    0                 2.2521008   0.9765802   5.193591
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.0955925   0.6839812   1.754906
0-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        1                    0                 0.9554485   0.7460377   1.223640
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3816647   1.0902693   1.750941
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.0969739   0.9653400   1.246557
0-6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      1                    0                 0.6207859   0.3330396   1.157145
0-6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                 1.4177016   1.0724577   1.874086
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0                 1.3817406   0.7442061   2.565428
0-6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        1                    0                 0.9765951   0.7630431   1.249914
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9998565   0.7028866   1.422296
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.1413642   0.9809963   1.327948
6-24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      1                    0                 1.1496329   0.6827679   1.935732
6-24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                 1.0746927   0.7821498   1.476654
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 0.9988196   0.5441882   1.833264
6-24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        1                    0                 1.0576589   0.4478582   2.497760
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1849014   0.8391771   1.673057
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2650295   1.0167936   1.573869


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0041070   -0.0112096   0.0029957
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0000429   -0.0034588   0.0033729
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0096948   -0.0089432   0.0283328
0-24 months   MAL-ED           PERU                           0                    NA                 0.0110458   -0.0042594   0.0263510
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0085985   -0.0399093   0.0571062
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0009513   -0.0031233   0.0050259
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0062234   -0.0019354   0.0143822
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0013235   -0.0006998   0.0033469
0-6 months    COHORTS          GUATEMALA                      0                    NA                -0.0057328   -0.0119082   0.0004426
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0025170   -0.0002656   0.0052996
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0149161   -0.0165301   0.0463623
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0009729   -0.0030407   0.0049866
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004676   -0.0041274   0.0050626
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0007357   -0.0011020   0.0025734
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0001222   -0.0060958   0.0063403
6-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0003637   -0.0024663   0.0031937
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0006803   -0.0374416   0.0388022
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0000197   -0.0002915   0.0003309
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016423   -0.0035065   0.0067911
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0014638   -0.0000993   0.0030269


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0155571   -0.0428078   0.0109815
0-24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0001066   -0.0086254   0.0083402
0-24 months   MAL-ED           BRAZIL                         0                    NA                 0.1129442   -0.1275143   0.3021215
0-24 months   MAL-ED           PERU                           0                    NA                 0.1235489   -0.0596047   0.2750443
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0419175   -0.2263579   0.2515056
0-24 months   PROBIT           BELARUS                        0                    NA                 0.0037247   -0.0126001   0.0197863
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0262533   -0.0088411   0.0601269
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055980   -0.0029965   0.0141188
0-6 months    COHORTS          GUATEMALA                      0                    NA                -0.0280498   -0.0586145   0.0016325
0-6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0107707   -0.0012267   0.0226244
0-6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.1329662   -0.1938873   0.3703362
0-6 months    PROBIT           BELARUS                        0                    NA                 0.0038914   -0.0125230   0.0200397
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0033552   -0.0301654   0.0357851
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0040717   -0.0061499   0.0141894
6-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0009432   -0.0482020   0.0477842
6-24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0013620   -0.0092959   0.0119074
6-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0047622   -0.3013318   0.2388580
6-24 months   PROBIT           BELARUS                        0                    NA                 0.0023532   -0.0354342   0.0387615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0101843   -0.0222618   0.0416005
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0152485   -0.0011469   0.0313754
