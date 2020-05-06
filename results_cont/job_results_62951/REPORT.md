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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0              74      86  whz              
Birth       CMC-V-BCS-2002   INDIA                          1              12      86  whz              
Birth       CMIN             BANGLADESH                     0              17      19  whz              
Birth       CMIN             BANGLADESH                     1               2      19  whz              
Birth       COHORTS          GUATEMALA                      0             732     756  whz              
Birth       COHORTS          GUATEMALA                      1              24     756  whz              
Birth       COHORTS          INDIA                          0            5813    6193  whz              
Birth       COHORTS          INDIA                          1             380    6193  whz              
Birth       COHORTS          PHILIPPINES                    0            2813    2899  whz              
Birth       COHORTS          PHILIPPINES                    1              86    2899  whz              
Birth       CONTENT          PERU                           0               2       2  whz              
Birth       CONTENT          PERU                           1               0       2  whz              
Birth       EE               PAKISTAN                       0             137     177  whz              
Birth       EE               PAKISTAN                       1              40     177  whz              
Birth       GMS-Nepal        NEPAL                          0             570     641  whz              
Birth       GMS-Nepal        NEPAL                          1              71     641  whz              
Birth       IRC              INDIA                          0             318     343  whz              
Birth       IRC              INDIA                          1              25     343  whz              
Birth       JiVitA-3         BANGLADESH                     0           15027   18014  whz              
Birth       JiVitA-3         BANGLADESH                     1            2987   18014  whz              
Birth       JiVitA-4         BANGLADESH                     0            1963    2396  whz              
Birth       JiVitA-4         BANGLADESH                     1             433    2396  whz              
Birth       Keneba           GAMBIA                         0            1425    1466  whz              
Birth       Keneba           GAMBIA                         1              41    1466  whz              
Birth       MAL-ED           BANGLADESH                     0             187     215  whz              
Birth       MAL-ED           BANGLADESH                     1              28     215  whz              
Birth       MAL-ED           BRAZIL                         0              56      62  whz              
Birth       MAL-ED           BRAZIL                         1               6      62  whz              
Birth       MAL-ED           INDIA                          0              37      45  whz              
Birth       MAL-ED           INDIA                          1               8      45  whz              
Birth       MAL-ED           NEPAL                          0              25      26  whz              
Birth       MAL-ED           NEPAL                          1               1      26  whz              
Birth       MAL-ED           PERU                           0             207     228  whz              
Birth       MAL-ED           PERU                           1              21     228  whz              
Birth       MAL-ED           SOUTH AFRICA                   0             112     120  whz              
Birth       MAL-ED           SOUTH AFRICA                   1               8     120  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             102     115  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              13     115  whz              
Birth       NIH-Birth        BANGLADESH                     0             506     575  whz              
Birth       NIH-Birth        BANGLADESH                     1              69     575  whz              
Birth       NIH-Crypto       BANGLADESH                     0             625     707  whz              
Birth       NIH-Crypto       BANGLADESH                     1              82     707  whz              
Birth       PROBIT           BELARUS                        0           13790   13817  whz              
Birth       PROBIT           BELARUS                        1              27   13817  whz              
Birth       PROVIDE          BANGLADESH                     0             491     532  whz              
Birth       PROVIDE          BANGLADESH                     1              41     532  whz              
Birth       ResPak           PAKISTAN                       0              28      38  whz              
Birth       ResPak           PAKISTAN                       1              10      38  whz              
Birth       SAS-CompFeed     INDIA                          0             901    1103  whz              
Birth       SAS-CompFeed     INDIA                          1             202    1103  whz              
Birth       ZVITAMBO         ZIMBABWE                       0           12227   12917  whz              
Birth       ZVITAMBO         ZIMBABWE                       1             690   12917  whz              
6 months    CMC-V-BCS-2002   INDIA                          0             292     368  whz              
6 months    CMC-V-BCS-2002   INDIA                          1              76     368  whz              
6 months    CMIN             BANGLADESH                     0             151     243  whz              
6 months    CMIN             BANGLADESH                     1              92     243  whz              
6 months    COHORTS          GUATEMALA                      0             809     963  whz              
6 months    COHORTS          GUATEMALA                      1             154     963  whz              
6 months    COHORTS          INDIA                          0            6034    6850  whz              
6 months    COHORTS          INDIA                          1             816    6850  whz              
6 months    COHORTS          PHILIPPINES                    0            2549    2706  whz              
6 months    COHORTS          PHILIPPINES                    1             157    2706  whz              
6 months    CONTENT          PERU                           0             195     215  whz              
6 months    CONTENT          PERU                           1              20     215  whz              
6 months    EE               PAKISTAN                       0             209     375  whz              
6 months    EE               PAKISTAN                       1             166     375  whz              
6 months    GMS-Nepal        NEPAL                          0             473     564  whz              
6 months    GMS-Nepal        NEPAL                          1              91     564  whz              
6 months    Guatemala BSC    GUATEMALA                      0             228     299  whz              
6 months    Guatemala BSC    GUATEMALA                      1              71     299  whz              
6 months    IRC              INDIA                          0             356     408  whz              
6 months    IRC              INDIA                          1              52     408  whz              
6 months    JiVitA-3         BANGLADESH                     0           11673   16784  whz              
6 months    JiVitA-3         BANGLADESH                     1            5111   16784  whz              
6 months    JiVitA-4         BANGLADESH                     0            3473    4833  whz              
6 months    JiVitA-4         BANGLADESH                     1            1360    4833  whz              
6 months    Keneba           GAMBIA                         0            1893    2089  whz              
6 months    Keneba           GAMBIA                         1             196    2089  whz              
6 months    LCNI-5           MALAWI                         0             530     839  whz              
6 months    LCNI-5           MALAWI                         1             309     839  whz              
6 months    MAL-ED           BANGLADESH                     0             202     241  whz              
6 months    MAL-ED           BANGLADESH                     1              39     241  whz              
6 months    MAL-ED           BRAZIL                         0             184     209  whz              
6 months    MAL-ED           BRAZIL                         1              25     209  whz              
6 months    MAL-ED           INDIA                          0             198     236  whz              
6 months    MAL-ED           INDIA                          1              38     236  whz              
6 months    MAL-ED           NEPAL                          0             208     236  whz              
6 months    MAL-ED           NEPAL                          1              28     236  whz              
6 months    MAL-ED           PERU                           0             239     273  whz              
6 months    MAL-ED           PERU                           1              34     273  whz              
6 months    MAL-ED           SOUTH AFRICA                   0             227     254  whz              
6 months    MAL-ED           SOUTH AFRICA                   1              27     254  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             208     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              39     247  whz              
6 months    NIH-Birth        BANGLADESH                     0             452     537  whz              
6 months    NIH-Birth        BANGLADESH                     1              85     537  whz              
6 months    NIH-Crypto       BANGLADESH                     0             613     715  whz              
6 months    NIH-Crypto       BANGLADESH                     1             102     715  whz              
6 months    PROBIT           BELARUS                        0           15641   15757  whz              
6 months    PROBIT           BELARUS                        1             116   15757  whz              
6 months    PROVIDE          BANGLADESH                     0             542     603  whz              
6 months    PROVIDE          BANGLADESH                     1              61     603  whz              
6 months    ResPak           PAKISTAN                       0             173     239  whz              
6 months    ResPak           PAKISTAN                       1              66     239  whz              
6 months    SAS-CompFeed     INDIA                          0             969    1334  whz              
6 months    SAS-CompFeed     INDIA                          1             365    1334  whz              
6 months    SAS-FoodSuppl    INDIA                          0             232     380  whz              
6 months    SAS-FoodSuppl    INDIA                          1             148     380  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028  whz              
6 months    ZVITAMBO         ZIMBABWE                       0            7632    8505  whz              
6 months    ZVITAMBO         ZIMBABWE                       1             873    8505  whz              
24 months   CMC-V-BCS-2002   INDIA                          0             295     372  whz              
24 months   CMC-V-BCS-2002   INDIA                          1              77     372  whz              
24 months   CMIN             BANGLADESH                     0             153     243  whz              
24 months   CMIN             BANGLADESH                     1              90     243  whz              
24 months   COHORTS          GUATEMALA                      0             743    1082  whz              
24 months   COHORTS          GUATEMALA                      1             339    1082  whz              
24 months   COHORTS          INDIA                          0            4654    5291  whz              
24 months   COHORTS          INDIA                          1             637    5291  whz              
24 months   COHORTS          PHILIPPINES                    0            2311    2449  whz              
24 months   COHORTS          PHILIPPINES                    1             138    2449  whz              
24 months   CONTENT          PERU                           0             147     164  whz              
24 months   CONTENT          PERU                           1              17     164  whz              
24 months   EE               PAKISTAN                       0             100     168  whz              
24 months   EE               PAKISTAN                       1              68     168  whz              
24 months   GMS-Nepal        NEPAL                          0             405     487  whz              
24 months   GMS-Nepal        NEPAL                          1              82     487  whz              
24 months   IRC              INDIA                          0             358     409  whz              
24 months   IRC              INDIA                          1              51     409  whz              
24 months   JiVitA-3         BANGLADESH                     0            5914    8603  whz              
24 months   JiVitA-3         BANGLADESH                     1            2689    8603  whz              
24 months   JiVitA-4         BANGLADESH                     0            3380    4735  whz              
24 months   JiVitA-4         BANGLADESH                     1            1355    4735  whz              
24 months   Keneba           GAMBIA                         0            1550    1726  whz              
24 months   Keneba           GAMBIA                         1             176    1726  whz              
24 months   LCNI-5           MALAWI                         0             365     563  whz              
24 months   LCNI-5           MALAWI                         1             198     563  whz              
24 months   MAL-ED           BANGLADESH                     0             179     212  whz              
24 months   MAL-ED           BANGLADESH                     1              33     212  whz              
24 months   MAL-ED           BRAZIL                         0             150     169  whz              
24 months   MAL-ED           BRAZIL                         1              19     169  whz              
24 months   MAL-ED           INDIA                          0             191     227  whz              
24 months   MAL-ED           INDIA                          1              36     227  whz              
24 months   MAL-ED           NEPAL                          0             201     228  whz              
24 months   MAL-ED           NEPAL                          1              27     228  whz              
24 months   MAL-ED           PERU                           0             174     201  whz              
24 months   MAL-ED           PERU                           1              27     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   0             214     238  whz              
24 months   MAL-ED           SOUTH AFRICA                   1              24     238  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             181     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              33     214  whz              
24 months   NIH-Birth        BANGLADESH                     0             354     428  whz              
24 months   NIH-Birth        BANGLADESH                     1              74     428  whz              
24 months   NIH-Crypto       BANGLADESH                     0             444     514  whz              
24 months   NIH-Crypto       BANGLADESH                     1              70     514  whz              
24 months   PROBIT           BELARUS                        0            3957    3970  whz              
24 months   PROBIT           BELARUS                        1              13    3970  whz              
24 months   PROVIDE          BANGLADESH                     0             519     579  whz              
24 months   PROVIDE          BANGLADESH                     1              60     579  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       0             331     433  whz              
24 months   ZVITAMBO         ZIMBABWE                       1             102     433  whz              


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
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
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
