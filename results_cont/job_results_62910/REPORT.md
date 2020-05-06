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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enwast

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

agecat      studyid          country                        enwast    n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0             75      87  haz              
Birth       CMC-V-BCS-2002   INDIA                          1             12      87  haz              
Birth       CMIN             BANGLADESH                     0             15      19  haz              
Birth       CMIN             BANGLADESH                     1              4      19  haz              
Birth       COHORTS          GUATEMALA                      0            564     762  haz              
Birth       COHORTS          GUATEMALA                      1            198     762  haz              
Birth       COHORTS          INDIA                          0           5097    6231  haz              
Birth       COHORTS          INDIA                          1           1134    6231  haz              
Birth       COHORTS          PHILIPPINES                    0           2448    2910  haz              
Birth       COHORTS          PHILIPPINES                    1            462    2910  haz              
Birth       CONTENT          PERU                           0              2       2  haz              
Birth       CONTENT          PERU                           1              0       2  haz              
Birth       EE               PAKISTAN                       0            155     180  haz              
Birth       EE               PAKISTAN                       1             25     180  haz              
Birth       GMS-Nepal        NEPAL                          0            509     645  haz              
Birth       GMS-Nepal        NEPAL                          1            136     645  haz              
Birth       IRC              INDIA                          0            251     364  haz              
Birth       IRC              INDIA                          1            113     364  haz              
Birth       JiVitA-3         BANGLADESH                     0          16041   18062  haz              
Birth       JiVitA-3         BANGLADESH                     1           2021   18062  haz              
Birth       JiVitA-4         BANGLADESH                     0           2157    2399  haz              
Birth       JiVitA-4         BANGLADESH                     1            242    2399  haz              
Birth       Keneba           GAMBIA                         0           1102    1488  haz              
Birth       Keneba           GAMBIA                         1            386    1488  haz              
Birth       MAL-ED           BANGLADESH                     0            179     215  haz              
Birth       MAL-ED           BANGLADESH                     1             36     215  haz              
Birth       MAL-ED           BRAZIL                         0             60      62  haz              
Birth       MAL-ED           BRAZIL                         1              2      62  haz              
Birth       MAL-ED           INDIA                          0             40      45  haz              
Birth       MAL-ED           INDIA                          1              5      45  haz              
Birth       MAL-ED           NEPAL                          0             24      26  haz              
Birth       MAL-ED           NEPAL                          1              2      26  haz              
Birth       MAL-ED           PERU                           0            223     228  haz              
Birth       MAL-ED           PERU                           1              5     228  haz              
Birth       MAL-ED           SOUTH AFRICA                   0            108     121  haz              
Birth       MAL-ED           SOUTH AFRICA                   1             13     121  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            114     115  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              1     115  haz              
Birth       NIH-Birth        BANGLADESH                     0            407     580  haz              
Birth       NIH-Birth        BANGLADESH                     1            173     580  haz              
Birth       NIH-Crypto       BANGLADESH                     0            535     713  haz              
Birth       NIH-Crypto       BANGLADESH                     1            178     713  haz              
Birth       PROBIT           BELARUS                        0          10909   13886  haz              
Birth       PROBIT           BELARUS                        1           2977   13886  haz              
Birth       PROVIDE          BANGLADESH                     0            415     532  haz              
Birth       PROVIDE          BANGLADESH                     1            117     532  haz              
Birth       ResPak           PAKISTAN                       0             34      38  haz              
Birth       ResPak           PAKISTAN                       1              4      38  haz              
Birth       SAS-CompFeed     INDIA                          0            985    1105  haz              
Birth       SAS-CompFeed     INDIA                          1            120    1105  haz              
Birth       ZVITAMBO         ZIMBABWE                       0          10856   13092  haz              
Birth       ZVITAMBO         ZIMBABWE                       1           2236   13092  haz              
6 months    CMC-V-BCS-2002   INDIA                          0            272     363  haz              
6 months    CMC-V-BCS-2002   INDIA                          1             91     363  haz              
6 months    CMIN             BANGLADESH                     0            218     232  haz              
6 months    CMIN             BANGLADESH                     1             14     232  haz              
6 months    COHORTS          GUATEMALA                      0            725     901  haz              
6 months    COHORTS          GUATEMALA                      1            176     901  haz              
6 months    COHORTS          INDIA                          0           5364    6508  haz              
6 months    COHORTS          INDIA                          1           1144    6508  haz              
6 months    COHORTS          PHILIPPINES                    0           2191    2593  haz              
6 months    COHORTS          PHILIPPINES                    1            402    2593  haz              
6 months    CONTENT          PERU                           0            214     215  haz              
6 months    CONTENT          PERU                           1              1     215  haz              
6 months    EE               PAKISTAN                       0            255     292  haz              
6 months    EE               PAKISTAN                       1             37     292  haz              
6 months    GMS-Nepal        NEPAL                          0            421     528  haz              
6 months    GMS-Nepal        NEPAL                          1            107     528  haz              
6 months    Guatemala BSC    GUATEMALA                      0            293     299  haz              
6 months    Guatemala BSC    GUATEMALA                      1              6     299  haz              
6 months    IRC              INDIA                          0            268     382  haz              
6 months    IRC              INDIA                          1            114     382  haz              
6 months    JiVitA-3         BANGLADESH                     0          12724   14244  haz              
6 months    JiVitA-3         BANGLADESH                     1           1520   14244  haz              
6 months    JiVitA-4         BANGLADESH                     0           4010    4410  haz              
6 months    JiVitA-4         BANGLADESH                     1            400    4410  haz              
6 months    Keneba           GAMBIA                         0           1641    2029  haz              
6 months    Keneba           GAMBIA                         1            388    2029  haz              
6 months    LCNI-5           MALAWI                         0            825     839  haz              
6 months    LCNI-5           MALAWI                         1             14     839  haz              
6 months    MAL-ED           BANGLADESH                     0            188     229  haz              
6 months    MAL-ED           BANGLADESH                     1             41     229  haz              
6 months    MAL-ED           BRAZIL                         0            192     199  haz              
6 months    MAL-ED           BRAZIL                         1              7     199  haz              
6 months    MAL-ED           INDIA                          0            189     232  haz              
6 months    MAL-ED           INDIA                          1             43     232  haz              
6 months    MAL-ED           NEPAL                          0            201     232  haz              
6 months    MAL-ED           NEPAL                          1             31     232  haz              
6 months    MAL-ED           PERU                           0            261     266  haz              
6 months    MAL-ED           PERU                           1              5     266  haz              
6 months    MAL-ED           SOUTH AFRICA                   0            235     253  haz              
6 months    MAL-ED           SOUTH AFRICA                   1             18     253  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            235     238  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     238  haz              
6 months    NIH-Birth        BANGLADESH                     0            368     514  haz              
6 months    NIH-Birth        BANGLADESH                     1            146     514  haz              
6 months    NIH-Crypto       BANGLADESH                     0            517     694  haz              
6 months    NIH-Crypto       BANGLADESH                     1            177     694  haz              
6 months    PROBIT           BELARUS                        0          12689   15753  haz              
6 months    PROBIT           BELARUS                        1           3064   15753  haz              
6 months    PROVIDE          BANGLADESH                     0            472     597  haz              
6 months    PROVIDE          BANGLADESH                     1            125     597  haz              
6 months    ResPak           PAKISTAN                       0            185     228  haz              
6 months    ResPak           PAKISTAN                       1             43     228  haz              
6 months    SAS-CompFeed     INDIA                          0           1074    1213  haz              
6 months    SAS-CompFeed     INDIA                          1            139    1213  haz              
6 months    SAS-FoodSuppl    INDIA                          0            311     380  haz              
6 months    SAS-FoodSuppl    INDIA                          1             69     380  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020  haz              
6 months    ZVITAMBO         ZIMBABWE                       0           6904    8174  haz              
6 months    ZVITAMBO         ZIMBABWE                       1           1270    8174  haz              
24 months   CMC-V-BCS-2002   INDIA                          0            272     364  haz              
24 months   CMC-V-BCS-2002   INDIA                          1             92     364  haz              
24 months   CMIN             BANGLADESH                     0            217     232  haz              
24 months   CMIN             BANGLADESH                     1             15     232  haz              
24 months   COHORTS          GUATEMALA                      0            874    1027  haz              
24 months   COHORTS          GUATEMALA                      1            153    1027  haz              
24 months   COHORTS          INDIA                          0           4252    5070  haz              
24 months   COHORTS          INDIA                          1            818    5070  haz              
24 months   COHORTS          PHILIPPINES                    0           1989    2347  haz              
24 months   COHORTS          PHILIPPINES                    1            358    2347  haz              
24 months   CONTENT          PERU                           0            163     164  haz              
24 months   CONTENT          PERU                           1              1     164  haz              
24 months   EE               PAKISTAN                       0            115     137  haz              
24 months   EE               PAKISTAN                       1             22     137  haz              
24 months   GMS-Nepal        NEPAL                          0            365     455  haz              
24 months   GMS-Nepal        NEPAL                          1             90     455  haz              
24 months   IRC              INDIA                          0            269     383  haz              
24 months   IRC              INDIA                          1            114     383  haz              
24 months   JiVitA-3         BANGLADESH                     0           6422    7242  haz              
24 months   JiVitA-3         BANGLADESH                     1            820    7242  haz              
24 months   JiVitA-4         BANGLADESH                     0           3943    4315  haz              
24 months   JiVitA-4         BANGLADESH                     1            372    4315  haz              
24 months   Keneba           GAMBIA                         0           1354    1677  haz              
24 months   Keneba           GAMBIA                         1            323    1677  haz              
24 months   LCNI-5           MALAWI                         0            569     579  haz              
24 months   LCNI-5           MALAWI                         1             10     579  haz              
24 months   MAL-ED           BANGLADESH                     0            164     201  haz              
24 months   MAL-ED           BANGLADESH                     1             37     201  haz              
24 months   MAL-ED           BRAZIL                         0            154     160  haz              
24 months   MAL-ED           BRAZIL                         1              6     160  haz              
24 months   MAL-ED           INDIA                          0            180     223  haz              
24 months   MAL-ED           INDIA                          1             43     223  haz              
24 months   MAL-ED           NEPAL                          0            195     225  haz              
24 months   MAL-ED           NEPAL                          1             30     225  haz              
24 months   MAL-ED           PERU                           0            193     197  haz              
24 months   MAL-ED           PERU                           1              4     197  haz              
24 months   MAL-ED           SOUTH AFRICA                   0            221     237  haz              
24 months   MAL-ED           SOUTH AFRICA                   1             16     237  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            202     205  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     205  haz              
24 months   NIH-Birth        BANGLADESH                     0            293     409  haz              
24 months   NIH-Birth        BANGLADESH                     1            116     409  haz              
24 months   NIH-Crypto       BANGLADESH                     0            364     500  haz              
24 months   NIH-Crypto       BANGLADESH                     1            136     500  haz              
24 months   PROBIT           BELARUS                        0           3118    4032  haz              
24 months   PROBIT           BELARUS                        1            914    4032  haz              
24 months   PROVIDE          BANGLADESH                     0            452     570  haz              
24 months   PROVIDE          BANGLADESH                     1            118     570  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       0           1346    1505  haz              
24 months   ZVITAMBO         ZIMBABWE                       1            159    1505  haz              


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
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
