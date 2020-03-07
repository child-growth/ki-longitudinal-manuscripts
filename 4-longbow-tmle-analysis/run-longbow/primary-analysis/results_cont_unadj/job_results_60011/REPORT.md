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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        feducyrs    n_cell       n
----------  ---------------  -----------------------------  ---------  -------  ------
Birth       COHORTS          GUATEMALA                      High           136     718
Birth       COHORTS          GUATEMALA                      Low            311     718
Birth       COHORTS          GUATEMALA                      Medium         271     718
Birth       COHORTS          INDIA                          High           507    1291
Birth       COHORTS          INDIA                          Low            414    1291
Birth       COHORTS          INDIA                          Medium         370    1291
Birth       COHORTS          PHILIPPINES                    High           994    2728
Birth       COHORTS          PHILIPPINES                    Low            773    2728
Birth       COHORTS          PHILIPPINES                    Medium         961    2728
Birth       GMS-Nepal        NEPAL                          High           162     640
Birth       GMS-Nepal        NEPAL                          Low            266     640
Birth       GMS-Nepal        NEPAL                          Medium         212     640
Birth       JiVitA-3         BANGLADESH                     High          4049   17367
Birth       JiVitA-3         BANGLADESH                     Low           7452   17367
Birth       JiVitA-3         BANGLADESH                     Medium        5866   17367
Birth       JiVitA-4         BANGLADESH                     High           510    2323
Birth       JiVitA-4         BANGLADESH                     Low            913    2323
Birth       JiVitA-4         BANGLADESH                     Medium         900    2323
Birth       MAL-ED           BANGLADESH                     High            44     119
Birth       MAL-ED           BANGLADESH                     Low             33     119
Birth       MAL-ED           BANGLADESH                     Medium          42     119
Birth       MAL-ED           INDIA                          High             7      23
Birth       MAL-ED           INDIA                          Low             13      23
Birth       MAL-ED           INDIA                          Medium           3      23
Birth       MAL-ED           NEPAL                          High             3       9
Birth       MAL-ED           NEPAL                          Low              3       9
Birth       MAL-ED           NEPAL                          Medium           3       9
Birth       MAL-ED           PERU                           High            84     190
Birth       MAL-ED           PERU                           Low             56     190
Birth       MAL-ED           PERU                           Medium          50     190
Birth       MAL-ED           SOUTH AFRICA                   High            10      33
Birth       MAL-ED           SOUTH AFRICA                   Low             14      33
Birth       MAL-ED           SOUTH AFRICA                   Medium           9      33
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High            62      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             26      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           8      96
Birth       NIH-Crypto       BANGLADESH                     High           277     707
Birth       NIH-Crypto       BANGLADESH                     Low            229     707
Birth       NIH-Crypto       BANGLADESH                     Medium         201     707
Birth       PROBIT           BELARUS                        High          2047   13350
Birth       PROBIT           BELARUS                        Low           5292   13350
Birth       PROBIT           BELARUS                        Medium        6011   13350
Birth       PROVIDE          BANGLADESH                     High           161     532
Birth       PROVIDE          BANGLADESH                     Low            185     532
Birth       PROVIDE          BANGLADESH                     Medium         186     532
Birth       SAS-CompFeed     INDIA                          High           270    1101
Birth       SAS-CompFeed     INDIA                          Low            476    1101
Birth       SAS-CompFeed     INDIA                          Medium         355    1101
Birth       ZVITAMBO         ZIMBABWE                       High           914   12573
Birth       ZVITAMBO         ZIMBABWE                       Low           2091   12573
Birth       ZVITAMBO         ZIMBABWE                       Medium        9568   12573
6 months    COHORTS          GUATEMALA                      High           165     905
6 months    COHORTS          GUATEMALA                      Low            406     905
6 months    COHORTS          GUATEMALA                      Medium         334     905
6 months    COHORTS          INDIA                          High           544    1385
6 months    COHORTS          INDIA                          Low            450    1385
6 months    COHORTS          INDIA                          Medium         391    1385
6 months    COHORTS          PHILIPPINES                    High           892    2562
6 months    COHORTS          PHILIPPINES                    Low            744    2562
6 months    COHORTS          PHILIPPINES                    Medium         926    2562
6 months    GMS-Nepal        NEPAL                          High           137     563
6 months    GMS-Nepal        NEPAL                          Low            243     563
6 months    GMS-Nepal        NEPAL                          Medium         183     563
6 months    JiVitA-3         BANGLADESH                     High          4271   16105
6 months    JiVitA-3         BANGLADESH                     Low           6291   16105
6 months    JiVitA-3         BANGLADESH                     Medium        5543   16105
6 months    JiVitA-4         BANGLADESH                     High          1098    4690
6 months    JiVitA-4         BANGLADESH                     Low           1726    4690
6 months    JiVitA-4         BANGLADESH                     Medium        1866    4690
6 months    LCNI-5           MALAWI                         High           251     812
6 months    LCNI-5           MALAWI                         Low            290     812
6 months    LCNI-5           MALAWI                         Medium         271     812
6 months    MAL-ED           BANGLADESH                     High            50     132
6 months    MAL-ED           BANGLADESH                     Low             36     132
6 months    MAL-ED           BANGLADESH                     Medium          46     132
6 months    MAL-ED           INDIA                          High            43     138
6 months    MAL-ED           INDIA                          Low             54     138
6 months    MAL-ED           INDIA                          Medium          41     138
6 months    MAL-ED           NEPAL                          High            40      95
6 months    MAL-ED           NEPAL                          Low             27      95
6 months    MAL-ED           NEPAL                          Medium          28      95
6 months    MAL-ED           PERU                           High           107     224
6 months    MAL-ED           PERU                           Low             60     224
6 months    MAL-ED           PERU                           Medium          57     224
6 months    MAL-ED           SOUTH AFRICA                   High            33      92
6 months    MAL-ED           SOUTH AFRICA                   Low             35      92
6 months    MAL-ED           SOUTH AFRICA                   Medium          24      92
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           127     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             55     201
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          19     201
6 months    NIH-Crypto       BANGLADESH                     High           279     715
6 months    NIH-Crypto       BANGLADESH                     Low            223     715
6 months    NIH-Crypto       BANGLADESH                     Medium         213     715
6 months    PROBIT           BELARUS                        High          2512   15207
6 months    PROBIT           BELARUS                        Low           5957   15207
6 months    PROBIT           BELARUS                        Medium        6738   15207
6 months    PROVIDE          BANGLADESH                     High           209     603
6 months    PROVIDE          BANGLADESH                     Low            208     603
6 months    PROVIDE          BANGLADESH                     Medium         186     603
6 months    SAS-CompFeed     INDIA                          High           349    1331
6 months    SAS-CompFeed     INDIA                          Low            548    1331
6 months    SAS-CompFeed     INDIA                          Medium         434    1331
6 months    SAS-FoodSuppl    INDIA                          High           101     380
6 months    SAS-FoodSuppl    INDIA                          Low            132     380
6 months    SAS-FoodSuppl    INDIA                          Medium         147     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High           371    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low           1082    2017
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium         564    2017
6 months    ZVITAMBO         ZIMBABWE                       High           569    8266
6 months    ZVITAMBO         ZIMBABWE                       Low           1433    8266
6 months    ZVITAMBO         ZIMBABWE                       Medium        6264    8266
24 months   COHORTS          GUATEMALA                      High           178    1002
24 months   COHORTS          GUATEMALA                      Low            465    1002
24 months   COHORTS          GUATEMALA                      Medium         359    1002
24 months   COHORTS          INDIA                          High           536    1370
24 months   COHORTS          INDIA                          Low            448    1370
24 months   COHORTS          INDIA                          Medium         386    1370
24 months   COHORTS          PHILIPPINES                    High           798    2319
24 months   COHORTS          PHILIPPINES                    Low            693    2319
24 months   COHORTS          PHILIPPINES                    Medium         828    2319
24 months   GMS-Nepal        NEPAL                          High           113     486
24 months   GMS-Nepal        NEPAL                          Low            218     486
24 months   GMS-Nepal        NEPAL                          Medium         155     486
24 months   JiVitA-3         BANGLADESH                     High          2055    8264
24 months   JiVitA-3         BANGLADESH                     Low           3371    8264
24 months   JiVitA-3         BANGLADESH                     Medium        2838    8264
24 months   JiVitA-4         BANGLADESH                     High          1092    4602
24 months   JiVitA-4         BANGLADESH                     Low           1694    4602
24 months   JiVitA-4         BANGLADESH                     Medium        1816    4602
24 months   LCNI-5           MALAWI                         High           170     555
24 months   LCNI-5           MALAWI                         Low            194     555
24 months   LCNI-5           MALAWI                         Medium         191     555
24 months   MAL-ED           BANGLADESH                     High            40     117
24 months   MAL-ED           BANGLADESH                     Low             35     117
24 months   MAL-ED           BANGLADESH                     Medium          42     117
24 months   MAL-ED           INDIA                          High            42     132
24 months   MAL-ED           INDIA                          Low             51     132
24 months   MAL-ED           INDIA                          Medium          39     132
24 months   MAL-ED           NEPAL                          High            38      91
24 months   MAL-ED           NEPAL                          Low             27      91
24 months   MAL-ED           NEPAL                          Medium          26      91
24 months   MAL-ED           PERU                           High            77     164
24 months   MAL-ED           PERU                           Low             44     164
24 months   MAL-ED           PERU                           Medium          43     164
24 months   MAL-ED           SOUTH AFRICA                   High            34      91
24 months   MAL-ED           SOUTH AFRICA                   Low             34      91
24 months   MAL-ED           SOUTH AFRICA                   Medium          23      91
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High           114     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low             47     177
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium          16     177
24 months   NIH-Crypto       BANGLADESH                     High           211     514
24 months   NIH-Crypto       BANGLADESH                     Low            144     514
24 months   NIH-Crypto       BANGLADESH                     Medium         159     514
24 months   PROBIT           BELARUS                        High           620    3851
24 months   PROBIT           BELARUS                        Low           1488    3851
24 months   PROBIT           BELARUS                        Medium        1743    3851
24 months   PROVIDE          BANGLADESH                     High           202     579
24 months   PROVIDE          BANGLADESH                     Low            198     579
24 months   PROVIDE          BANGLADESH                     Medium         179     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           5       6
24 months   ZVITAMBO         ZIMBABWE                       High            13     410
24 months   ZVITAMBO         ZIMBABWE                       Low            103     410
24 months   ZVITAMBO         ZIMBABWE                       Medium         294     410


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/3c2ff5e8-7ec1-4993-ae17-53191c7650d8/6ecd0151-4d9a-4eec-ba1f-ad604ed385fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3c2ff5e8-7ec1-4993-ae17-53191c7650d8/6ecd0151-4d9a-4eec-ba1f-ad604ed385fe/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/3c2ff5e8-7ec1-4993-ae17-53191c7650d8/6ecd0151-4d9a-4eec-ba1f-ad604ed385fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                -1.1294853   -1.3658088   -0.8931618
Birth       COHORTS          GUATEMALA                      Low                  NA                -0.9410289   -1.1050635   -0.7769944
Birth       COHORTS          GUATEMALA                      Medium               NA                -1.1287823   -1.2879384   -0.9696262
Birth       COHORTS          INDIA                          High                 NA                -1.0067456   -1.1079815   -0.9055096
Birth       COHORTS          INDIA                          Low                  NA                -0.9271498   -1.0315479   -0.8227516
Birth       COHORTS          INDIA                          Medium               NA                -1.0795135   -1.2006237   -0.9584034
Birth       COHORTS          PHILIPPINES                    High                 NA                -0.8783501   -0.9578790   -0.7988212
Birth       COHORTS          PHILIPPINES                    Low                  NA                -0.5826132   -0.6684841   -0.4967423
Birth       COHORTS          PHILIPPINES                    Medium               NA                -0.6719979   -0.7527577   -0.5912382
Birth       GMS-Nepal        NEPAL                          High                 NA                -1.3329012   -1.5060054   -1.1597971
Birth       GMS-Nepal        NEPAL                          Low                  NA                -0.9641353   -1.0981144   -0.8301563
Birth       GMS-Nepal        NEPAL                          Medium               NA                -1.1412736   -1.2934497   -0.9890974
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.7328698   -0.7690976   -0.6966421
Birth       JiVitA-3         BANGLADESH                     Low                  NA                -0.7855958   -0.8122584   -0.7589333
Birth       JiVitA-3         BANGLADESH                     Medium               NA                -0.7899182   -0.8200221   -0.7598142
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.6629216   -0.7756899   -0.5501533
Birth       JiVitA-4         BANGLADESH                     Low                  NA                -0.6840526   -0.7605194   -0.6075858
Birth       JiVitA-4         BANGLADESH                     Medium               NA                -0.6938222   -0.7823658   -0.6052787
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.6647727   -0.9768465   -0.3526990
Birth       MAL-ED           BANGLADESH                     Low                  NA                -1.2246970   -1.6175983   -0.8317957
Birth       MAL-ED           BANGLADESH                     Medium               NA                -1.0283333   -1.3291471   -0.7275196
Birth       MAL-ED           PERU                           High                 NA                 0.0189286   -0.1456484    0.1835055
Birth       MAL-ED           PERU                           Low                  NA                -0.0228571   -0.2834265    0.2377122
Birth       MAL-ED           PERU                           Medium               NA                -0.0616000   -0.3356304    0.2124304
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.2810000   -0.1017325    0.6637325
Birth       MAL-ED           SOUTH AFRICA                   Low                  NA                -0.0364286   -0.7135146    0.6406575
Birth       MAL-ED           SOUTH AFRICA                   Medium               NA                 0.8666667    0.3467047    1.3866286
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.7446774    0.5287317    0.9606232
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.6161538    0.1324976    1.0998101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.2775000    0.4059642    2.1490358
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -1.2386823   -1.3731475   -1.1042171
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                -1.2912664   -1.4398499   -1.1426829
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                -1.1980100   -1.3533592   -1.0426607
Birth       PROBIT           BELARUS                        High                 NA                -1.1075232   -1.3122466   -0.9027998
Birth       PROBIT           BELARUS                        Low                  NA                -1.1487302   -1.3894722   -0.9079881
Birth       PROBIT           BELARUS                        Medium               NA                -1.1516046   -1.3575944   -0.9456147
Birth       PROVIDE          BANGLADESH                     High                 NA                -1.2776398   -1.4164593   -1.1388202
Birth       PROVIDE          BANGLADESH                     Low                  NA                -1.3318919   -1.4559352   -1.2078486
Birth       PROVIDE          BANGLADESH                     Medium               NA                -1.2832258   -1.4195271   -1.1469245
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.6195556   -0.8331288   -0.4059823
Birth       SAS-CompFeed     INDIA                          Low                  NA                -0.7234034   -0.9123741   -0.5344327
Birth       SAS-CompFeed     INDIA                          Medium               NA                -0.6322535   -0.8276375   -0.4368696
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.5535667   -0.6476891   -0.4594444
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                -0.4463128   -0.5104939   -0.3821317
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                -0.5187960   -0.5488631   -0.4887288
6 months    COHORTS          GUATEMALA                      High                 NA                 0.2140606    0.0366930    0.3914282
6 months    COHORTS          GUATEMALA                      Low                  NA                 0.1866256    0.0785255    0.2947258
6 months    COHORTS          GUATEMALA                      Medium               NA                 0.2058982    0.0837418    0.3280546
6 months    COHORTS          INDIA                          High                 NA                -0.5941544   -0.6904715   -0.4978373
6 months    COHORTS          INDIA                          Low                  NA                -0.7121556   -0.8192470   -0.6050641
6 months    COHORTS          INDIA                          Medium               NA                -0.6570844   -0.7669329   -0.5472359
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.2752915   -0.3454299   -0.2051531
6 months    COHORTS          PHILIPPINES                    Low                  NA                -0.2886828   -0.3685466   -0.2088190
6 months    COHORTS          PHILIPPINES                    Medium               NA                -0.2886069   -0.3597715   -0.2174423
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.5329197   -0.7058769   -0.3599626
6 months    GMS-Nepal        NEPAL                          Low                  NA                -0.6466872   -0.7805909   -0.5127836
6 months    GMS-Nepal        NEPAL                          Medium               NA                -0.5980419   -0.7460041   -0.4500797
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.5112819   -0.5475636   -0.4750002
6 months    JiVitA-3         BANGLADESH                     Low                  NA                -0.6565840   -0.6855934   -0.6275746
6 months    JiVitA-3         BANGLADESH                     Medium               NA                -0.5765272   -0.6075094   -0.5455449
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.2409472   -0.3269268   -0.1549676
6 months    JiVitA-4         BANGLADESH                     Low                  NA                -0.4542439   -0.5136635   -0.3948243
6 months    JiVitA-4         BANGLADESH                     Medium               NA                -0.4062701   -0.4612717   -0.3512685
6 months    LCNI-5           MALAWI                         High                 NA                 0.4149801    0.2860787    0.5438815
6 months    LCNI-5           MALAWI                         Low                  NA                 0.4731724    0.3546910    0.5916538
6 months    LCNI-5           MALAWI                         Medium               NA                 0.4319188    0.3066205    0.5572172
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.2272000   -0.4896987    0.0352987
6 months    MAL-ED           BANGLADESH                     Low                  NA                -0.5229630   -0.7610673   -0.2848586
6 months    MAL-ED           BANGLADESH                     Medium               NA                -0.2069203   -0.5777841    0.1639435
6 months    MAL-ED           INDIA                          High                 NA                -0.6627519   -0.9321284   -0.3933754
6 months    MAL-ED           INDIA                          Low                  NA                -0.6231790   -0.8936812   -0.3526768
6 months    MAL-ED           INDIA                          Medium               NA                -0.9320528   -1.2868384   -0.5772673
6 months    MAL-ED           NEPAL                          High                 NA                 0.1245000   -0.1537996    0.4027996
6 months    MAL-ED           NEPAL                          Low                  NA                -0.2586420   -0.6371472    0.1198633
6 months    MAL-ED           NEPAL                          Medium               NA                 0.1848810   -0.1954504    0.5652123
6 months    MAL-ED           PERU                           High                 NA                 1.0555997    0.8673844    1.2438150
6 months    MAL-ED           PERU                           Low                  NA                 1.2907500    1.0206998    1.5608002
6 months    MAL-ED           PERU                           Medium               NA                 0.9277632    0.6660976    1.1894287
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.6000000    0.2067729    0.9932271
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                 0.1914286   -0.2352316    0.6180888
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                 0.3658333   -0.0134465    0.7451132
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.4597113    0.2732426    0.6461800
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.5108182    0.2651087    0.7565277
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 1.0939474    0.6707504    1.5171443
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1100538   -0.0127060    0.2328135
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                -0.0692377   -0.2145273    0.0760520
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                 0.0282394   -0.1162245    0.1727034
6 months    PROBIT           BELARUS                        High                 NA                 0.5497671    0.4685596    0.6309747
6 months    PROBIT           BELARUS                        Low                  NA                 0.5812456    0.5127622    0.6497290
6 months    PROBIT           BELARUS                        Medium               NA                 0.5743841    0.5133223    0.6354458
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0708453   -0.2151279    0.0734373
6 months    PROVIDE          BANGLADESH                     Low                  NA                -0.2952163   -0.4400079   -0.1504248
6 months    PROVIDE          BANGLADESH                     Medium               NA                -0.2356989   -0.3726930   -0.0987049
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.5768481   -0.7269927   -0.4267036
6 months    SAS-CompFeed     INDIA                          Low                  NA                -0.7380657   -0.8828273   -0.5933041
6 months    SAS-CompFeed     INDIA                          Medium               NA                -0.6408871   -0.8030360   -0.4787382
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.9590099   -1.1802891   -0.7377307
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                -0.9258333   -1.1073915   -0.7442752
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                -1.1261905   -1.3248843   -0.9274966
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1248113   -0.0002257    0.2498483
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0770464    0.0074323    0.1466604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.0532506   -0.0518261    0.1583273
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.3641301    0.2645551    0.4637050
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                 0.1689079    0.1025540    0.2352618
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                 0.3444660    0.3151493    0.3737827
24 months   COHORTS          GUATEMALA                      High                 NA                -0.3884831   -0.5105737   -0.2663926
24 months   COHORTS          GUATEMALA                      Low                  NA                -0.1953333   -0.2761675   -0.1144992
24 months   COHORTS          GUATEMALA                      Medium               NA                -0.2974095   -0.3949226   -0.1998963
24 months   COHORTS          INDIA                          High                 NA                -0.4396269   -0.5211828   -0.3580709
24 months   COHORTS          INDIA                          Low                  NA                -0.8353571   -0.9259263   -0.7447879
24 months   COHORTS          INDIA                          Medium               NA                -0.5678238   -0.6700155   -0.4656321
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.5049875   -0.5654642   -0.4445108
24 months   COHORTS          PHILIPPINES                    Low                  NA                -0.6840548   -0.7526209   -0.6154888
24 months   COHORTS          PHILIPPINES                    Medium               NA                -0.6648309   -0.7307766   -0.5988852
24 months   GMS-Nepal        NEPAL                          High                 NA                -1.1672566   -1.3487495   -0.9857638
24 months   GMS-Nepal        NEPAL                          Low                  NA                -1.1045642   -1.2378587   -0.9712697
24 months   GMS-Nepal        NEPAL                          Medium               NA                -1.1485054   -1.3068013   -0.9902095
24 months   JiVitA-3         BANGLADESH                     High                 NA                -1.2168224   -1.2632801   -1.1703646
24 months   JiVitA-3         BANGLADESH                     Low                  NA                -1.3254109   -1.3606840   -1.2901377
24 months   JiVitA-3         BANGLADESH                     Medium               NA                -1.3254898   -1.3644439   -1.2865357
24 months   JiVitA-4         BANGLADESH                     High                 NA                -1.1502015   -1.2238508   -1.0765522
24 months   JiVitA-4         BANGLADESH                     Low                  NA                -1.2661452   -1.3188420   -1.2134484
24 months   JiVitA-4         BANGLADESH                     Medium               NA                -1.2247026   -1.2726522   -1.1767531
24 months   LCNI-5           MALAWI                         High                 NA                 0.0101765   -0.1447369    0.1650899
24 months   LCNI-5           MALAWI                         Low                  NA                -0.0768041   -0.2040037    0.0503955
24 months   LCNI-5           MALAWI                         Medium               NA                -0.0598168   -0.2075116    0.0878781
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.8220000   -1.0735761   -0.5704239
24 months   MAL-ED           BANGLADESH                     Low                  NA                -1.0530000   -1.3334079   -0.7725921
24 months   MAL-ED           BANGLADESH                     Medium               NA                -0.8586905   -1.1878206   -0.5295603
24 months   MAL-ED           INDIA                          High                 NA                -0.9196429   -1.1172293   -0.7220564
24 months   MAL-ED           INDIA                          Low                  NA                -0.9011765   -1.1246081   -0.6777449
24 months   MAL-ED           INDIA                          Medium               NA                -1.0301282   -1.3396214   -0.7206350
24 months   MAL-ED           NEPAL                          High                 NA                -0.2439474   -0.5138874    0.0259927
24 months   MAL-ED           NEPAL                          Low                  NA                -0.6744444   -0.9422280   -0.4066608
24 months   MAL-ED           NEPAL                          Medium               NA                -0.5769231   -0.9563979   -0.1974483
24 months   MAL-ED           PERU                           High                 NA                 0.0337121   -0.1518379    0.2192621
24 months   MAL-ED           PERU                           Low                  NA                 0.4035606    0.1914033    0.6157179
24 months   MAL-ED           PERU                           Medium               NA                 0.0305814   -0.2824529    0.3436157
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.5749510    0.2453299    0.9045720
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                 0.3051471   -0.0373472    0.6476413
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                 0.1167391   -0.1527373    0.3862155
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1500000   -0.0288354    0.3288354
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0195390   -0.2781210    0.2390430
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                 0.1887500   -0.1726265    0.5501265
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.4881043   -0.6455949   -0.3306136
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                -0.8966667   -1.0523746   -0.7409588
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                -0.5132704   -0.6793435   -0.3471974
24 months   PROBIT           BELARUS                        High                 NA                 0.7426317    0.6082768    0.8769866
24 months   PROBIT           BELARUS                        Low                  NA                 0.7052520    0.5233473    0.8871567
24 months   PROBIT           BELARUS                        Medium               NA                 0.6700497    0.5654020    0.7746974
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.7265099   -0.8678732   -0.5851466
24 months   PROVIDE          BANGLADESH                     Low                  NA                -1.0751263   -1.2036327   -0.9466198
24 months   PROVIDE          BANGLADESH                     Medium               NA                -0.8789944   -1.0350361   -0.7229527
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -1.1300000   -1.5806579   -0.6793421
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                -1.3333010   -1.5667077   -1.0998942
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                -1.1409864   -1.2570250   -1.0249478


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0475905   -1.1510656   -0.9441155
Birth       COHORTS          INDIA                          NA                   NA                -1.0020759   -1.0646599   -0.9394920
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7218585   -0.7694262   -0.6742908
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1161563   -1.2038617   -1.0284508
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7747631   -0.7940385   -0.7554876
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6831985   -0.7361386   -0.6302583
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9483613   -1.1437809   -0.7529418
Birth       MAL-ED           PERU                           NA                   NA                -0.0145789   -0.1426994    0.1135416
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3060606   -0.0577506    0.6698718
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7542708    0.5468640    0.9616776
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1437060   -1.3543158   -0.9330962
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6685468   -0.8459689   -0.4911247
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5092691   -0.5354330   -0.4831051
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1987403    0.1250477    0.2724329
6 months    COHORTS          INDIA                          NA                   NA                -0.6502599   -0.7103477   -0.5901722
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2839930   -0.3263706   -0.2416154
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6031912   -0.6894381   -0.5169444
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5904964   -0.6106039   -0.5703890
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3852207   -0.4232704   -0.3471709
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4414163    0.3697939    0.5130386
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.3007955   -0.4778591   -0.1237319
6 months    MAL-ED           INDIA                          NA                   NA                -0.7272766   -0.9000901   -0.5544630
6 months    MAL-ED           NEPAL                          NA                   NA                 0.0334035   -0.1647857    0.2315927
6 months    MAL-ED           PERU                           NA                   NA                 1.0860565    0.9516698    1.2204433
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3834783    0.1440275    0.6229290
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5336484    0.3899788    0.6773181
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5730055    0.5136977    0.6323133
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6641059   -0.8040033   -0.5242086
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0791782    0.0263777    0.1319787
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3153847    0.2894045    0.3413649
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2662176   -0.3220630   -0.2103721
24 months   COHORTS          INDIA                          NA                   NA                -0.6051533   -0.6581071   -0.5521995
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6155714   -0.6532287   -0.5779140
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1331550   -1.2220936   -1.0442165
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2984354   -1.3225016   -1.2743692
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2222794   -1.2547188   -1.1898401
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0443153   -0.1269075    0.0382769
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.9042735   -1.0737243   -0.7348227
24 months   MAL-ED           INDIA                          NA                   NA                -0.9451515   -1.0860650   -0.8042380
24 months   MAL-ED           NEPAL                          NA                   NA                -0.4668132   -0.6466833   -0.2869431
24 months   MAL-ED           PERU                           NA                   NA                 0.1321189   -0.0027984    0.2670362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3583333    0.1644154    0.5522513
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1084840   -0.0300100    0.2469780
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6953371    0.5818973    0.8087769
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1889512   -1.2920613   -1.0858411


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low                  High               0.1884564   -0.0992173    0.4761300
Birth       COHORTS          GUATEMALA                      Medium               High               0.0007030   -0.2842171    0.2856232
Birth       COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low                  High               0.0795958   -0.0658267    0.2250183
Birth       COHORTS          INDIA                          Medium               High              -0.0727680   -0.2306172    0.0850813
Birth       COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low                  High               0.2957369    0.1786957    0.4127781
Birth       COHORTS          PHILIPPINES                    Medium               High               0.2063522    0.0930077    0.3196967
Birth       GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low                  High               0.3687659    0.1498699    0.5876619
Birth       GMS-Nepal        NEPAL                          Medium               High               0.1916276   -0.0388558    0.4221111
Birth       JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              -0.0527260   -0.0957928   -0.0096591
Birth       JiVitA-3         BANGLADESH                     Medium               High              -0.0570483   -0.1009923   -0.0131044
Birth       JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              -0.0211310   -0.1590457    0.1167837
Birth       JiVitA-4         BANGLADESH                     Medium               High              -0.0309007   -0.1719083    0.1101070
Birth       MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low                  High              -0.5599242   -1.0616826   -0.0581659
Birth       MAL-ED           BANGLADESH                     Medium               High              -0.3635606   -0.7970107    0.0698894
Birth       MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low                  High              -0.0417857   -0.3499772    0.2664057
Birth       MAL-ED           PERU                           Medium               High              -0.0805286   -0.4001819    0.2391247
Birth       MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low                  High              -0.3174286   -1.0952008    0.4603437
Birth       MAL-ED           SOUTH AFRICA                   Medium               High               0.5856667   -0.0599684    1.2313017
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1285236   -0.6581988    0.4011517
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.5328226   -0.3650679    1.4307130
Birth       NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              -0.0525841   -0.2529785    0.1478104
Birth       NIH-Crypto       BANGLADESH                     Medium               High               0.0406724   -0.1647888    0.2461335
Birth       PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        Low                  High              -0.0412070   -0.1708985    0.0884846
Birth       PROBIT           BELARUS                        Medium               High              -0.0440814   -0.1390312    0.0508685
Birth       PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low                  High              -0.0542521   -0.2404177    0.1319134
Birth       PROVIDE          BANGLADESH                     Medium               High              -0.0055861   -0.2001340    0.1889619
Birth       SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low                  High              -0.1038478   -0.2493711    0.0416755
Birth       SAS-CompFeed     INDIA                          Medium               High              -0.0126980   -0.2127205    0.1873245
Birth       ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High               0.1072540   -0.0066681    0.2211760
Birth       ZVITAMBO         ZIMBABWE                       Medium               High               0.0347708   -0.0640374    0.1335789
6 months    COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low                  High              -0.0274350   -0.2351485    0.1802785
6 months    COHORTS          GUATEMALA                      Medium               High              -0.0081624   -0.2235259    0.2072011
6 months    COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low                  High              -0.1180011   -0.2620344    0.0260321
6 months    COHORTS          INDIA                          Medium               High              -0.0629300   -0.2090247    0.0831647
6 months    COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low                  High              -0.0133913   -0.1196816    0.0928990
6 months    COHORTS          PHILIPPINES                    Medium               High              -0.0133154   -0.1132344    0.0866035
6 months    GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low                  High              -0.1137675   -0.3325011    0.1049660
6 months    GMS-Nepal        NEPAL                          Medium               High              -0.0651222   -0.2927337    0.1624893
6 months    JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              -0.1453021   -0.1899773   -0.1006270
6 months    JiVitA-3         BANGLADESH                     Medium               High              -0.0652453   -0.1091264   -0.0213641
6 months    JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              -0.2132967   -0.3196414   -0.1069520
6 months    JiVitA-4         BANGLADESH                     Medium               High              -0.1653229   -0.2635429   -0.0671029
6 months    LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         Low                  High               0.0581923   -0.1168889    0.2332735
6 months    LCNI-5           MALAWI                         Medium               High               0.0169387   -0.1628257    0.1967032
6 months    MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low                  High              -0.2957630   -0.6501628    0.0586369
6 months    MAL-ED           BANGLADESH                     Medium               High               0.0202797   -0.4340831    0.4746425
6 months    MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low                  High               0.0395729   -0.3421798    0.4213257
6 months    MAL-ED           INDIA                          Medium               High              -0.2693009   -0.7147630    0.1761612
6 months    MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low                  High              -0.3831420   -0.8529471    0.0866632
6 months    MAL-ED           NEPAL                          Medium               High               0.0603810   -0.4108967    0.5316586
6 months    MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low                  High               0.2351503   -0.0940185    0.5643191
6 months    MAL-ED           PERU                           Medium               High              -0.1278365   -0.4501622    0.1944891
6 months    MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              -0.4085714   -0.9888011    0.1716582
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              -0.2341667   -0.7805006    0.3121672
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High               0.0511069   -0.2573469    0.3595606
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.6342361    0.1717794    1.0966928
6 months    NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              -0.1792914   -0.3694993    0.0109164
6 months    NIH-Crypto       BANGLADESH                     Medium               High              -0.0818143   -0.2713923    0.1077636
6 months    PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        Low                  High               0.0314785   -0.0380718    0.1010287
6 months    PROBIT           BELARUS                        Medium               High               0.0246170   -0.0374225    0.0866564
6 months    PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low                  High              -0.2243711   -0.4287777   -0.0199644
6 months    PROVIDE          BANGLADESH                     Medium               High              -0.1648536   -0.3638130    0.0341057
6 months    SAS-CompFeed     INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low                  High              -0.1612176   -0.2585250   -0.0639102
6 months    SAS-CompFeed     INDIA                          Medium               High              -0.0640390   -0.1466954    0.0186175
6 months    SAS-FoodSuppl    INDIA                          High                 High               0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High               0.0331766   -0.2530538    0.3194070
6 months    SAS-FoodSuppl    INDIA                          Medium               High              -0.1671806   -0.4645755    0.1302143
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.0477650   -0.1908746    0.0953446
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              -0.0715607   -0.2348866    0.0917652
6 months    ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              -0.1952222   -0.3148800   -0.0755643
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              -0.0196641   -0.1234650    0.0841369
24 months   COHORTS          GUATEMALA                      High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low                  High               0.1931498    0.0467249    0.3395748
24 months   COHORTS          GUATEMALA                      Medium               High               0.0910737   -0.0651790    0.2473264
24 months   COHORTS          INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low                  High              -0.3957303   -0.5176079   -0.2738526
24 months   COHORTS          INDIA                          Medium               High              -0.1281970   -0.2589430    0.0025491
24 months   COHORTS          PHILIPPINES                    High                 High               0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low                  High              -0.1790674   -0.2704935   -0.0876413
24 months   COHORTS          PHILIPPINES                    Medium               High              -0.1598434   -0.2493212   -0.0703657
24 months   GMS-Nepal        NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low                  High               0.0626924   -0.1624899    0.2878747
24 months   GMS-Nepal        NEPAL                          Medium               High               0.0187513   -0.2220749    0.2595774
24 months   JiVitA-3         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              -0.1085885   -0.1646115   -0.0525655
24 months   JiVitA-3         BANGLADESH                     Medium               High              -0.1086674   -0.1672726   -0.0500622
24 months   JiVitA-4         BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              -0.1159438   -0.2068349   -0.0250526
24 months   JiVitA-4         BANGLADESH                     Medium               High              -0.0745012   -0.1618754    0.0128731
24 months   LCNI-5           MALAWI                         High                 High               0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         Low                  High              -0.0869806   -0.2874248    0.1134637
24 months   LCNI-5           MALAWI                         Medium               High              -0.0699932   -0.2840305    0.1440440
24 months   MAL-ED           BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low                  High              -0.2310000   -0.6077216    0.1457216
24 months   MAL-ED           BANGLADESH                     Medium               High              -0.0366905   -0.4509576    0.3775766
24 months   MAL-ED           INDIA                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low                  High               0.0184664   -0.2797988    0.3167315
24 months   MAL-ED           INDIA                          Medium               High              -0.1104853   -0.4776726    0.2567019
24 months   MAL-ED           NEPAL                          High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low                  High              -0.4304971   -0.8107282   -0.0502660
24 months   MAL-ED           NEPAL                          Medium               High              -0.3329757   -0.7986674    0.1327160
24 months   MAL-ED           PERU                           High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low                  High               0.3698485    0.0879983    0.6516986
24 months   MAL-ED           PERU                           Medium               High              -0.0031307   -0.3670253    0.3607639
24 months   MAL-ED           SOUTH AFRICA                   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              -0.2698039   -0.7451484    0.2055405
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              -0.4582118   -0.8839671   -0.0324566
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High               0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              -0.1695390   -0.4839381    0.1448601
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High               0.0387500   -0.3644560    0.4419560
24 months   NIH-Crypto       BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              -0.4085624   -0.6300308   -0.1870940
24 months   NIH-Crypto       BANGLADESH                     Medium               High              -0.0251662   -0.2540407    0.2037084
24 months   PROBIT           BELARUS                        High                 High               0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        Low                  High              -0.0373797   -0.2252398    0.1504804
24 months   PROBIT           BELARUS                        Medium               High              -0.0725820   -0.2057620    0.0605980
24 months   PROVIDE          BANGLADESH                     High                 High               0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low                  High              -0.3486164   -0.5396595   -0.1575732
24 months   PROVIDE          BANGLADESH                     Medium               High              -0.1524845   -0.3630376    0.0580686
24 months   ZVITAMBO         ZIMBABWE                       High                 High               0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              -0.2033010   -0.7108157    0.3042138
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              -0.0109864   -0.4763438    0.4543710


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0818948   -0.1311749    0.2949645
Birth       COHORTS          INDIA                          High                 NA                 0.0046697   -0.0735336    0.0828729
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.1564916    0.0934173    0.2195659
Birth       GMS-Nepal        NEPAL                          High                 NA                 0.2167450    0.0667867    0.3667033
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0418932   -0.0719398   -0.0118466
Birth       JiVitA-4         BANGLADESH                     High                 NA                -0.0202769   -0.1195910    0.0790372
Birth       MAL-ED           BANGLADESH                     High                 NA                -0.2835886   -0.5356983   -0.0314789
Birth       MAL-ED           PERU                           High                 NA                -0.0335075   -0.1733327    0.1063177
Birth       MAL-ED           SOUTH AFRICA                   High                 NA                 0.0250606   -0.4109032    0.4610244
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0095934   -0.1619187    0.1811055
Birth       NIH-Crypto       BANGLADESH                     High                 NA                -0.0054690   -0.1101705    0.0992325
Birth       PROBIT           BELARUS                        High                 NA                -0.0361828   -0.1162607    0.0438951
Birth       PROVIDE          BANGLADESH                     High                 NA                -0.0208189   -0.1370419    0.0954041
Birth       SAS-CompFeed     INDIA                          High                 NA                -0.0489912   -0.1626855    0.0647030
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                 0.0442977   -0.0465624    0.1351578
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0153203   -0.1747522    0.1441116
6 months    COHORTS          INDIA                          High                 NA                -0.0561055   -0.1309380    0.0187270
6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0087015   -0.0660577    0.0486547
6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0702715   -0.2212487    0.0807056
6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0792145   -0.1081531   -0.0502759
6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.1442735   -0.2167224   -0.0718246
6 months    LCNI-5           MALAWI                         High                 NA                 0.0264362   -0.0806766    0.1335489
6 months    MAL-ED           BANGLADESH                     High                 NA                -0.0735955   -0.2928120    0.1456211
6 months    MAL-ED           INDIA                          High                 NA                -0.0645246   -0.3037053    0.1746560
6 months    MAL-ED           NEPAL                          High                 NA                -0.0910965   -0.3180503    0.1358573
6 months    MAL-ED           PERU                           High                 NA                 0.0304569   -0.1096905    0.1706042
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                -0.2165217   -0.5343829    0.1013395
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0739371   -0.0331731    0.1810474
6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0802915   -0.1779600    0.0173770
6 months    PROBIT           BELARUS                        High                 NA                 0.0232384   -0.0268845    0.0733614
6 months    PROVIDE          BANGLADESH                     High                 NA                -0.1282454   -0.2432545   -0.0132363
6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0872578   -0.1287260   -0.0457896
6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0531480   -0.2438450    0.1375490
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0456331   -0.1581974    0.0669312
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0487453   -0.1447927    0.0473020
24 months   COHORTS          GUATEMALA                      High                 NA                 0.1222656    0.0094434    0.2350877
24 months   COHORTS          INDIA                          High                 NA                -0.1655264   -0.2307253   -0.1003275
24 months   COHORTS          PHILIPPINES                    High                 NA                -0.1105839   -0.1611641   -0.0600037
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0341016   -0.1256860    0.1938893
24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0816130   -0.1199269   -0.0432991
24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0720780   -0.1345238   -0.0096322
24 months   LCNI-5           MALAWI                         High                 NA                -0.0544918   -0.1814487    0.0724651
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0822735   -0.3030189    0.1384719
24 months   MAL-ED           INDIA                          High                 NA                -0.0255087   -0.2100436    0.1590263
24 months   MAL-ED           NEPAL                          High                 NA                -0.2228658   -0.4334944   -0.0122372
24 months   MAL-ED           PERU                           High                 NA                 0.0984068   -0.0440783    0.2408918
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                -0.2166176   -0.4716964    0.0384611
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0415160   -0.1413429    0.0583109
24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.1222459   -0.2380089   -0.0064830
24 months   PROBIT           BELARUS                        High                 NA                -0.0472946   -0.1649253    0.0703361
24 months   PROVIDE          BANGLADESH                     High                 NA                -0.1663571   -0.2798061   -0.0529081
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0589512   -0.5071088    0.3892063
