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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/f68c26ff-2490-4780-948b-d6e5a6e1e7b6/c21d5bb5-b4ed-446b-a74d-234705b885dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f68c26ff-2490-4780-948b-d6e5a6e1e7b6/c21d5bb5-b4ed-446b-a74d-234705b885dd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f68c26ff-2490-4780-948b-d6e5a6e1e7b6/c21d5bb5-b4ed-446b-a74d-234705b885dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.7854036   -0.9718860   -0.5989213
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                 0.0995573   -0.5708187    0.7699332
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0441935   -0.0446110    0.1329981
Birth       COHORTS          GUATEMALA                      1                    NA                 0.7234487    0.5772211    0.8696762
Birth       COHORTS          INDIA                          0                    NA                -0.5540904   -0.5805079   -0.5276728
Birth       COHORTS          INDIA                          1                    NA                -0.2976662   -0.3630943   -0.2322382
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2199584   -0.2562234   -0.1836934
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.2314706    0.1272858    0.3356553
Birth       EE               PAKISTAN                       0                    NA                -1.3221410   -1.4630227   -1.1812593
Birth       EE               PAKISTAN                       1                    NA                -0.6851143   -1.3832291    0.0130005
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.9509086   -1.0273531   -0.8744642
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.7740706   -0.9349981   -0.6131431
Birth       IRC              INDIA                          0                    NA                -0.5972699   -0.7180433   -0.4764964
Birth       IRC              INDIA                          1                    NA                 0.9134021    0.6270110    1.1997933
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1898087   -1.2045532   -1.1750641
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.0893487   -1.1380773   -1.0406202
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.2287232   -1.2702190   -1.1872274
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.1280341   -1.2864349   -0.9696333
Birth       Keneba           GAMBIA                         0                    NA                -0.0581107   -0.1159245   -0.0002969
Birth       Keneba           GAMBIA                         1                    NA                 0.6970340    0.5685990    0.8254689
Birth       MAL-ED           BANGLADESH                     0                    NA                -0.9991428   -1.1277640   -0.8705216
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.7429774   -1.0553922   -0.4305626
Birth       MAL-ED           INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       MAL-ED           INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       MAL-ED           PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       MAL-ED           PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6503195   -0.8182427   -0.4823963
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.2207172   -0.3640603    0.8054947
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.8870703   -0.9724798   -0.8016608
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.6525688   -0.8364920   -0.4686455
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8927408   -0.9677193   -0.8177622
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.7542960   -0.8959490   -0.6126431
Birth       PROBIT           BELARUS                        0                    NA                 1.0735991    0.9667613    1.1804370
Birth       PROBIT           BELARUS                        1                    NA                 2.1975178    2.0084974    2.3865381
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8493333   -0.9302823   -0.7683843
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9655986   -1.1387227   -0.7924745
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.1595117   -1.2094097   -1.1096137
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.2266439   -1.3643405   -1.0889473
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4591668   -0.4767571   -0.4415764
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2318060    0.1752177    0.2883944
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3893300   -1.5492927   -1.2293673
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.5988426   -1.9105536   -1.2871316
6 months    CMIN             BANGLADESH                     0                    NA                -1.6961300   -1.8330245   -1.5592355
6 months    CMIN             BANGLADESH                     1                    NA                -1.8879880   -2.6481276   -1.1278485
6 months    COHORTS          GUATEMALA                      0                    NA                -1.8343771   -1.9126297   -1.7561245
6 months    COHORTS          GUATEMALA                      1                    NA                -1.6362644   -1.7859539   -1.4865749
6 months    COHORTS          INDIA                          0                    NA                -0.9236607   -0.9528790   -0.8944423
6 months    COHORTS          INDIA                          1                    NA                -0.9276903   -0.9978756   -0.8575051
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.0988498   -1.1436589   -1.0540406
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.0578663   -1.1704072   -0.9453255
6 months    EE               PAKISTAN                       0                    NA                -1.7842147   -1.9084515   -1.6599779
6 months    EE               PAKISTAN                       1                    NA                -1.6263607   -1.9370622   -1.3156592
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2760929   -1.3605485   -1.1916373
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.2796668   -1.4540545   -1.1052791
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    IRC              INDIA                          0                    NA                -1.1347800   -1.2857888   -0.9837712
6 months    IRC              INDIA                          1                    NA                -1.2546813   -1.5186293   -0.9907332
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.1287013   -1.1518250   -1.1055776
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.0998978   -1.1642745   -1.0355211
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2407565   -1.2789759   -1.2025371
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.2936853   -1.4103341   -1.1770366
6 months    Keneba           GAMBIA                         0                    NA                -0.8815137   -0.9335271   -0.8295003
6 months    Keneba           GAMBIA                         1                    NA                -0.9444727   -1.0622904   -0.8266550
6 months    LCNI-5           MALAWI                         0                    NA                -1.6505603   -1.7196093   -1.5815113
6 months    LCNI-5           MALAWI                         1                    NA                -2.8021658   -3.5077869   -2.0965447
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1326886   -1.2630603   -1.0023168
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.3177550   -1.6067060   -1.0288040
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    MAL-ED           BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    MAL-ED           INDIA                          0                    NA                -1.1877097   -1.3158944   -1.0595250
6 months    MAL-ED           INDIA                          1                    NA                -1.1146485   -1.4267580   -0.8025389
6 months    MAL-ED           NEPAL                          0                    NA                -0.5054177   -0.6244470   -0.3863884
6 months    MAL-ED           NEPAL                          1                    NA                -0.6718577   -0.9883985   -0.3553169
6 months    MAL-ED           PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    MAL-ED           PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0535294   -1.1833817   -0.9236772
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -1.1073756   -1.6439476   -0.5708036
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.3347566   -1.4334453   -1.2360679
6 months    NIH-Birth        BANGLADESH                     1                    NA                -1.3333008   -1.5135619   -1.1530396
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1479249   -1.2276885   -1.0681613
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.2055713   -1.3540704   -1.0570722
6 months    PROBIT           BELARUS                        0                    NA                 0.0917361   -0.0045596    0.1880318
6 months    PROBIT           BELARUS                        1                    NA                 0.1533571    0.0301262    0.2765879
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0438310   -1.1258506   -0.9618113
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1735785   -1.3419023   -1.0052547
6 months    ResPak           PAKISTAN                       0                    NA                -1.4036969   -1.6344141   -1.1729797
6 months    ResPak           PAKISTAN                       1                    NA                -1.5347441   -2.0579251   -1.0115630
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2503656   -1.3442157   -1.1565156
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.5578962   -1.7686946   -1.3470978
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.8375896   -1.9615831   -1.7135960
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.2201416   -2.5310280   -1.9092552
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5448307   -0.5952978   -0.4943637
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4978661   -0.6922122   -0.3035199
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7455609   -0.7731529   -0.7179690
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.2117395   -1.2779876   -1.1454914
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5617522   -2.6726130   -2.4508914
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.4962009   -2.7104631   -2.2819388
24 months   CMIN             BANGLADESH                     0                    NA                -2.4776278   -2.6100674   -2.3451882
24 months   CMIN             BANGLADESH                     1                    NA                -2.4807740   -3.1555975   -1.8059504
24 months   COHORTS          GUATEMALA                      0                    NA                -3.0292519   -3.1005544   -2.9579494
24 months   COHORTS          GUATEMALA                      1                    NA                -2.7961764   -2.9650169   -2.6273359
24 months   COHORTS          INDIA                          0                    NA                -2.0779759   -2.1133305   -2.0426213
24 months   COHORTS          INDIA                          1                    NA                -2.0516264   -2.1388976   -1.9643551
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4032447   -2.4522563   -2.3542332
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.2743215   -2.3962466   -2.1523964
24 months   EE               PAKISTAN                       0                    NA                -2.5799387   -2.7433161   -2.4165614
24 months   EE               PAKISTAN                       1                    NA                -2.4759007   -2.8671755   -2.0846259
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8416586   -1.9371383   -1.7461788
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8482768   -2.0560124   -1.6405411
24 months   IRC              INDIA                          0                    NA                -1.7112996   -1.8263981   -1.5962012
24 months   IRC              INDIA                          1                    NA                -1.8490800   -2.0250399   -1.6731202
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8809374   -1.9116198   -1.8502551
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.8526454   -1.9289880   -1.7763028
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7126900   -1.7504947   -1.6748853
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7852611   -1.8911707   -1.6793514
24 months   Keneba           GAMBIA                         0                    NA                -1.5489309   -1.6051820   -1.4926798
24 months   Keneba           GAMBIA                         1                    NA                -1.6769399   -1.7891430   -1.5647368
24 months   LCNI-5           MALAWI                         0                    NA                -1.8756853   -1.9565513   -1.7948193
24 months   LCNI-5           MALAWI                         1                    NA                -2.2679799   -2.8019096   -1.7340502
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9423740   -2.0863217   -1.7984263
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.8780074   -2.1609262   -1.5950885
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   MAL-ED           INDIA                          0                    NA                -1.8923816   -2.0277213   -1.7570419
24 months   MAL-ED           INDIA                          1                    NA                -1.7045903   -2.0443993   -1.3647813
24 months   MAL-ED           NEPAL                          0                    NA                -1.3068469   -1.4318687   -1.1818251
24 months   MAL-ED           NEPAL                          1                    NA                -1.2278859   -1.7009748   -0.7547970
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6638539   -1.8006822   -1.5270256
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.2668358   -2.2439962   -0.2896754
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.1989585   -2.3195556   -2.0783613
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.1029496   -2.2927313   -1.9131679
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4063366   -1.5018937   -1.3107795
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.4389820   -1.6093281   -1.2686359
24 months   PROBIT           BELARUS                        0                    NA                -0.0899901   -0.4054517    0.2254714
24 months   PROBIT           BELARUS                        1                    NA                -0.2924290   -0.6213667    0.0365087
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5802054   -1.6754721   -1.4849387
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6100430   -1.7815429   -1.4385431
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5229150   -1.5839479   -1.4618821
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.7084069   -1.8928169   -1.5239969


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.8194253   -1.0062738   -0.6325768
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       EE               PAKISTAN                       NA                   NA                -1.2383333   -1.3946042   -1.0820625
Birth       GMS-Nepal        NEPAL                          NA                   NA                -0.9117209   -0.9811840   -0.8422578
Birth       IRC              INDIA                          NA                   NA                -0.1131044   -0.2551572    0.0289484
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.1782283   -1.1929469   -1.1635098
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.2196123   -1.2608853   -1.1783394
Birth       Keneba           GAMBIA                         NA                   NA                 0.1338508    0.0777935    0.1899081
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9625581   -1.0817638   -0.8433525
Birth       MAL-ED           INDIA                          NA                   NA                -1.0862222   -1.3432542   -0.8291902
Birth       MAL-ED           PERU                           NA                   NA                -0.8352193   -0.9473216   -0.7231170
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5594215   -0.7261377   -0.3927053
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.8156034   -0.8972149   -0.7339920
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.8487377   -0.9161997   -0.7812758
Birth       PROBIT           BELARUS                        NA                   NA                 1.3137865    1.1546333    1.4729398
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8579887   -0.9311892   -0.7847883
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.1641176   -1.2153187   -1.1129166
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4223508   -1.5654032   -1.2792984
6 months    CMIN             BANGLADESH                     NA                   NA                -1.7090230   -1.8439050   -1.5741410
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7950277   -1.8646284   -1.7254271
6 months    COHORTS          INDIA                          NA                   NA                -0.9241887   -0.9514678   -0.8969095
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.0928731   -1.1347142   -1.0510321
6 months    EE               PAKISTAN                       NA                   NA                -1.7873630   -1.9021295   -1.6725965
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.2753093   -1.3514861   -1.1991326
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          NA                   NA                -1.1707373   -1.3023712   -1.0391035
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.1254416   -1.1482406   -1.1026426
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.2464966   -1.2832103   -1.2097829
6 months    Keneba           GAMBIA                         NA                   NA                -0.8918017   -0.9392551   -0.8443483
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.1545706   -1.2720635   -1.0370777
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0820017   -0.0652646    0.2292679
6 months    MAL-ED           INDIA                          NA                   NA                -1.1907471   -1.3084496   -1.0730447
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5356897   -0.6466309   -0.4247484
6 months    MAL-ED           PERU                           NA                   NA                -1.3000971   -1.4087542   -1.1914400
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0492424   -1.1743146   -0.9241702
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.3447001   -1.4316348   -1.2577653
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1560014   -1.2261266   -1.0858763
6 months    PROBIT           BELARUS                        NA                   NA                 0.0987124    0.0071839    0.1902410
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0728671   -1.1465641   -0.9991701
6 months    ResPak           PAKISTAN                       NA                   NA                -1.4274196   -1.6382670   -1.2165722
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.2781121   -1.3694457   -1.1867786
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424220   -0.5912180   -0.4936261
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8157359   -0.8414876   -0.7899842
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5559249   -2.6552739   -2.4565759
24 months   CMIN             BANGLADESH                     NA                   NA                -2.4877155   -2.6168325   -2.3585986
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9946835   -3.0601854   -2.9291817
24 months   COHORTS          INDIA                          NA                   NA                -2.0741479   -2.1071054   -2.0411904
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.3841755   -2.4295300   -2.3388211
24 months   EE               PAKISTAN                       NA                   NA                -2.5941727   -2.7436756   -2.4446699
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8435238   -1.9304004   -1.7566473
24 months   IRC              INDIA                          NA                   NA                -1.7639600   -1.8601530   -1.6677669
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.8772038   -1.9062064   -1.8482013
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7182341   -1.7544244   -1.6820437
24 months   Keneba           GAMBIA                         NA                   NA                -1.5730887   -1.6234321   -1.5227452
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9287562   -2.0568859   -1.8006265
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0113750   -0.1608859    0.1836359
24 months   MAL-ED           INDIA                          NA                   NA                -1.8697758   -1.9956076   -1.7439440
24 months   MAL-ED           NEPAL                          NA                   NA                -1.2990889   -1.4193577   -1.1788201
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6435830   -1.7787856   -1.5083803
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.1580827   -2.2606216   -2.0555438
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4121200   -1.4955578   -1.3286822
24 months   PROBIT           BELARUS                        NA                   NA                -0.1437293   -0.4231910    0.1357324
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.5877105   -1.6705437   -1.5048773
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5460133   -1.6038691   -1.4881575


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.8849609    0.1906762    1.5792456
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.6792551    0.5082700    0.8502402
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2564241    0.1860105    0.3268378
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4514290    0.3415406    0.5613173
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.6370267   -0.0786346    1.3526880
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1768380   -0.0005828    0.3542589
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.5106720    1.1992193    1.8221247
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.1004599    0.0511232    0.1497967
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.1006890   -0.0610533    0.2624314
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.7551447    0.6144590    0.8958303
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.2561654   -0.0843402    0.5966709
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.8710367    0.2614553    1.4806181
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                  0.2345016    0.0318092    0.4371940
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.1384447   -0.0217572    0.2986466
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.1239186    0.9239805    1.3238567
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.1162653   -0.3085713    0.0760408
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0671323   -0.1875370    0.0532725
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.6909728    0.6317824    0.7501632
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.2095126   -0.5606330    0.1416078
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.1918580   -0.9649963    0.5812803
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.1981127    0.0293697    0.3668557
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0040297   -0.0794780    0.0714186
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0409834   -0.0794989    0.1614657
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                  0.1578541   -0.1791492    0.4948573
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 -0.0035739   -0.1971992    0.1900514
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.1199013   -0.4224977    0.1826952
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                  0.0288035   -0.0354169    0.0930239
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0529288   -0.1743665    0.0685088
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0629590   -0.1915356    0.0656176
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -1.1516055   -1.8607412   -0.4424699
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1850665   -0.5035525    0.1334196
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                  0.0730612   -0.2678544    0.4139768
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.1664400   -0.5049065    0.1720265
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0538461   -0.6063627    0.4986705
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                  0.0014559   -0.2043926    0.2073044
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0576464   -0.2267534    0.1114607
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0616209   -0.0471189    0.1703608
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1297476   -0.3169507    0.0574555
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.1310471   -0.7038816    0.4417873
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.3075306   -0.4854274   -0.1296337
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.3825520   -0.7207800   -0.0443241
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0469646   -0.1538403    0.2477696
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.4661786   -0.5378045   -0.3945527
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0655512   -0.1758490    0.3069515
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.0031462   -0.6913551    0.6850627
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                  0.2330755    0.0498137    0.4163373
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0263495   -0.0674551    0.1201542
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.1289233   -0.0025290    0.2603755
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                  0.1040380   -0.3212752    0.5293513
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0066182   -0.2342380    0.2210015
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1377804   -0.3488071    0.0732464
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                  0.0282920   -0.0519108    0.1084948
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0725711   -0.1833087    0.0381665
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.1280090   -0.2534475   -0.0025705
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.3922946   -0.9312013    0.1466121
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.0643666   -0.2510068    0.3797401
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1877913   -0.1781648    0.5537474
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0789610   -0.4093990    0.5673209
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.3970181   -0.5895397    1.3835759
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0960088   -0.1266436    0.3186613
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0326454   -0.2281167    0.1628260
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.2024389   -0.5882763    0.1833986
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0298376   -0.2253496    0.1656744
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1854919   -0.3793971    0.0084134


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0340217   -0.1339000    0.0658567
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1778406    0.1289359    0.2267453
Birth       COHORTS          INDIA                          0                    NA                 0.0469535    0.0339995    0.0599075
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0708622    0.0526348    0.0890896
Birth       EE               PAKISTAN                       0                    NA                 0.0838077   -0.0192390    0.1868543
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0391877    0.0015425    0.0768329
Birth       IRC              INDIA                          0                    NA                 0.4841655    0.3615218    0.6068092
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0115803    0.0061459    0.0170148
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0091108   -0.0072763    0.0254979
Birth       Keneba           GAMBIA                         0                    NA                 0.1919615    0.1526791    0.2312440
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0365846   -0.0238865    0.0970558
Birth       MAL-ED           INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       MAL-ED           PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0908980    0.0115897    0.1702063
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0714669    0.0107151    0.1322187
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0440030    0.0020989    0.0859071
Birth       PROBIT           BELARUS                        0                    NA                 0.2401874    0.1415576    0.3388172
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0086554   -0.0530134    0.0357026
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0046060   -0.0166783    0.0074663
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1179523    0.1070944    0.1288102
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0330208   -0.1217209    0.0556794
6 months    CMIN             BANGLADESH                     0                    NA                -0.0128930   -0.0546723    0.0288864
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0393494    0.0061607    0.0725381
6 months    COHORTS          INDIA                          0                    NA                -0.0005280   -0.0138225    0.0127665
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0059766   -0.0126011    0.0245544
6 months    EE               PAKISTAN                       0                    NA                -0.0031483   -0.0450956    0.0387990
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0007835   -0.0384350    0.0400021
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    IRC              INDIA                          0                    NA                -0.0359573   -0.1255727    0.0536580
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0032597   -0.0034754    0.0099948
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0057401   -0.0168717    0.0053915
6 months    Keneba           GAMBIA                         0                    NA                -0.0102879   -0.0344476    0.0138718
6 months    LCNI-5           MALAWI                         0                    NA                -0.0096304   -0.0272691    0.0080082
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0218820   -0.0809374    0.0371734
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    MAL-ED           INDIA                          0                    NA                -0.0030374   -0.0665932    0.0605183
6 months    MAL-ED           NEPAL                          0                    NA                -0.0302720   -0.0779920    0.0174480
6 months    MAL-ED           PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0042870   -0.0311072    0.0396813
6 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0099434   -0.0680036    0.0481168
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0080765   -0.0511623    0.0350093
6 months    PROBIT           BELARUS                        0                    NA                 0.0069763   -0.0154137    0.0293663
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0290362   -0.0687437    0.0106714
6 months    ResPak           PAKISTAN                       0                    NA                -0.0237227   -0.1319836    0.0845383
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0277465   -0.0597925    0.0042995
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0610947   -0.1228064    0.0006170
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024087   -0.0091998    0.0140172
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0701749   -0.0818818   -0.0584681
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0058273   -0.0563752    0.0680298
24 months   CMIN             BANGLADESH                     0                    NA                -0.0100878   -0.0489211    0.0287456
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0345683    0.0074261    0.0617106
24 months   COHORTS          INDIA                          0                    NA                 0.0038280   -0.0113798    0.0190358
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0190692   -0.0008946    0.0390330
24 months   EE               PAKISTAN                       0                    NA                -0.0142340   -0.0822773    0.0538093
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0018652   -0.0463152    0.0425848
24 months   IRC              INDIA                          0                    NA                -0.0526603   -0.1166702    0.0113495
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0037336   -0.0051497    0.0126169
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0055441   -0.0148556    0.0037675
24 months   Keneba           GAMBIA                         0                    NA                -0.0241578   -0.0484488    0.0001333
24 months   LCNI-5           MALAWI                         0                    NA                -0.0104633   -0.0281461    0.0072196
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0136178   -0.0436653    0.0709008
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   MAL-ED           INDIA                          0                    NA                 0.0226058   -0.0456704    0.0908821
24 months   MAL-ED           NEPAL                          0                    NA                 0.0077580   -0.0459682    0.0614843
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0202709   -0.0271657    0.0677076
24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0408757   -0.0232383    0.1049898
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0057834   -0.0578419    0.0462751
24 months   PROBIT           BELARUS                        0                    NA                -0.0537392   -0.1234144    0.0159360
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0075051   -0.0469733    0.0319631
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0230983   -0.0438503   -0.0023463
