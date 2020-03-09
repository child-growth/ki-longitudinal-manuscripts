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
![](/tmp/54b48383-28be-4055-a2b8-6d4bf27ea56d/46b3f54b-c1b0-4f36-ad50-eff49bbe6e37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/54b48383-28be-4055-a2b8-6d4bf27ea56d/46b3f54b-c1b0-4f36-ad50-eff49bbe6e37/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/54b48383-28be-4055-a2b8-6d4bf27ea56d/46b3f54b-c1b0-4f36-ad50-eff49bbe6e37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.8043726   -0.9919004   -0.6168448
Birth       CMC-V-BCS-2002   INDIA                          1                    NA                -0.4974608   -1.1557751    0.1608535
Birth       COHORTS          GUATEMALA                      0                    NA                 0.0435594   -0.0454675    0.1325863
Birth       COHORTS          GUATEMALA                      1                    NA                 0.7292935    0.5850033    0.8735837
Birth       COHORTS          INDIA                          0                    NA                -0.5549723   -0.5813927   -0.5285518
Birth       COHORTS          INDIA                          1                    NA                -0.2918191   -0.3576817   -0.2259565
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.2200069   -0.2562464   -0.1837673
Birth       COHORTS          PHILIPPINES                    1                    NA                 0.2276462    0.1242930    0.3309994
Birth       EE               PAKISTAN                       0                    NA                -1.3355106   -1.4761145   -1.1949067
Birth       EE               PAKISTAN                       1                    NA                -0.8431531   -1.5644280   -0.1218783
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.9468822   -1.0233623   -0.8704021
Birth       GMS-Nepal        NEPAL                          1                    NA                -0.7719133   -0.9338558   -0.6099707
Birth       IRC              INDIA                          0                    NA                -0.5834178   -0.7036558   -0.4631798
Birth       IRC              INDIA                          1                    NA                 0.9784440    0.6933854    1.2635025
Birth       JiVitA-3         BANGLADESH                     0                    NA                -1.1898563   -1.2046004   -1.1751123
Birth       JiVitA-3         BANGLADESH                     1                    NA                -1.0861404   -1.1347050   -1.0375758
Birth       JiVitA-4         BANGLADESH                     0                    NA                -1.2290897   -1.2705769   -1.1876026
Birth       JiVitA-4         BANGLADESH                     1                    NA                -1.1517724   -1.3070018   -0.9965431
Birth       Keneba           GAMBIA                         0                    NA                -0.0603265   -0.1181028   -0.0025502
Birth       Keneba           GAMBIA                         1                    NA                 0.6984296    0.5727007    0.8241585
Birth       MAL-ED           BANGLADESH                     0                    NA                -1.0011516   -1.1298665   -0.8724367
Birth       MAL-ED           BANGLADESH                     1                    NA                -0.7799289   -1.0942878   -0.4655701
Birth       MAL-ED           INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       MAL-ED           INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       MAL-ED           PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       MAL-ED           PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                -0.6445505   -0.8106384   -0.4784626
Birth       MAL-ED           SOUTH AFRICA                   1                    NA                 0.2621444   -0.3845199    0.9088088
Birth       NIH-Birth        BANGLADESH                     0                    NA                -0.8854436   -0.9706128   -0.8002745
Birth       NIH-Birth        BANGLADESH                     1                    NA                -0.6429519   -0.8276836   -0.4582202
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.8959720   -0.9711346   -0.8208095
Birth       NIH-Crypto       BANGLADESH                     1                    NA                -0.7505598   -0.8944643   -0.6066554
Birth       PROBIT           BELARUS                        0                    NA                 1.0712270    0.9644433    1.1780106
Birth       PROBIT           BELARUS                        1                    NA                 2.1717365    1.9861749    2.3572981
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.8541607   -0.9347425   -0.7735788
Birth       PROVIDE          BANGLADESH                     1                    NA                -0.9368019   -1.1125562   -0.7610476
Birth       SAS-CompFeed     INDIA                          0                    NA                -1.1595117   -1.2094097   -1.1096137
Birth       SAS-CompFeed     INDIA                          1                    NA                -1.2266439   -1.3643405   -1.0889473
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.4594419   -0.4770397   -0.4418441
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                 0.2259541    0.1689978    0.2829104
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -1.3841328   -1.5430926   -1.2251729
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                -1.6937394   -2.0133807   -1.3740981
6 months    CMIN             BANGLADESH                     0                    NA                -1.6940651   -1.8308559   -1.5572743
6 months    CMIN             BANGLADESH                     1                    NA                -1.9483538   -2.6593769   -1.2373308
6 months    COHORTS          GUATEMALA                      0                    NA                -1.8346159   -1.9130284   -1.7562033
6 months    COHORTS          GUATEMALA                      1                    NA                -1.6326173   -1.7828088   -1.4824258
6 months    COHORTS          INDIA                          0                    NA                -0.9234398   -0.9526463   -0.8942333
6 months    COHORTS          INDIA                          1                    NA                -0.9259847   -0.9960265   -0.8559430
6 months    COHORTS          PHILIPPINES                    0                    NA                -1.1000774   -1.1448516   -1.0553033
6 months    COHORTS          PHILIPPINES                    1                    NA                -1.0454591   -1.1571409   -0.9337774
6 months    EE               PAKISTAN                       0                    NA                -1.7876828   -1.9120940   -1.6632715
6 months    EE               PAKISTAN                       1                    NA                -1.8110250   -2.1260329   -1.4960172
6 months    GMS-Nepal        NEPAL                          0                    NA                -1.2789278   -1.3635974   -1.1942581
6 months    GMS-Nepal        NEPAL                          1                    NA                -1.2613758   -1.4390400   -1.0837116
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    IRC              INDIA                          0                    NA                -1.1331214   -1.2835705   -0.9826722
6 months    IRC              INDIA                          1                    NA                -1.2464417   -1.5077707   -0.9851126
6 months    JiVitA-3         BANGLADESH                     0                    NA                -1.1285857   -1.1516616   -1.1055099
6 months    JiVitA-3         BANGLADESH                     1                    NA                -1.0999598   -1.1644953   -1.0354242
6 months    JiVitA-4         BANGLADESH                     0                    NA                -1.2407568   -1.2789955   -1.2025181
6 months    JiVitA-4         BANGLADESH                     1                    NA                -1.3036932   -1.4207317   -1.1866547
6 months    Keneba           GAMBIA                         0                    NA                -0.8831651   -0.9349836   -0.8313466
6 months    Keneba           GAMBIA                         1                    NA                -0.9462416   -1.0655239   -0.8269594
6 months    LCNI-5           MALAWI                         0                    NA                -1.6506302   -1.7196851   -1.5815753
6 months    LCNI-5           MALAWI                         1                    NA                -2.6167697   -3.3568553   -1.8766842
6 months    MAL-ED           BANGLADESH                     0                    NA                -1.1270717   -1.2558142   -0.9983292
6 months    MAL-ED           BANGLADESH                     1                    NA                -1.3034665   -1.6064066   -1.0005264
6 months    MAL-ED           BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    MAL-ED           BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    MAL-ED           INDIA                          0                    NA                -1.1909351   -1.3183870   -1.0634832
6 months    MAL-ED           INDIA                          1                    NA                -1.1993324   -1.5118992   -0.8867656
6 months    MAL-ED           NEPAL                          0                    NA                -0.4988596   -0.6177780   -0.3799412
6 months    MAL-ED           NEPAL                          1                    NA                -0.7397713   -1.0587406   -0.4208021
6 months    MAL-ED           PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    MAL-ED           PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                -1.0523532   -1.1823617   -0.9223448
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.9998156   -1.5277631   -0.4718682
6 months    NIH-Birth        BANGLADESH                     0                    NA                -1.3466549   -1.4449305   -1.2483793
6 months    NIH-Birth        BANGLADESH                     1                    NA                -1.3386778   -1.5217309   -1.1556246
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -1.1461084   -1.2256640   -1.0665528
6 months    NIH-Crypto       BANGLADESH                     1                    NA                -1.1860053   -1.3349046   -1.0371060
6 months    PROBIT           BELARUS                        0                    NA                 0.0956255   -0.0006416    0.1918926
6 months    PROBIT           BELARUS                        1                    NA                 0.1620130    0.0362299    0.2877962
6 months    PROVIDE          BANGLADESH                     0                    NA                -1.0466053   -1.1282758   -0.9649349
6 months    PROVIDE          BANGLADESH                     1                    NA                -1.1920829   -1.3582969   -1.0258689
6 months    ResPak           PAKISTAN                       0                    NA                -1.4076751   -1.6390559   -1.1762943
6 months    ResPak           PAKISTAN                       1                    NA                -1.5141352   -2.0426993   -0.9855711
6 months    SAS-CompFeed     INDIA                          0                    NA                -1.2503656   -1.3442157   -1.1565156
6 months    SAS-CompFeed     INDIA                          1                    NA                -1.5578962   -1.7686946   -1.3470978
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -1.8390196   -1.9634563   -1.7145829
6 months    SAS-FoodSuppl    INDIA                          1                    NA                -2.1852384   -2.4984659   -1.8720109
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5451872   -0.5956535   -0.4947208
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5091788   -0.7086328   -0.3097248
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.7453505   -0.7729421   -0.7177589
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                -1.2143218   -1.2805528   -1.1480909
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -2.5664181   -2.6773260   -2.4555102
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                -2.5369854   -2.7556142   -2.3183567
24 months   CMIN             BANGLADESH                     0                    NA                -2.4817033   -2.6140917   -2.3493150
24 months   CMIN             BANGLADESH                     1                    NA                -2.5954496   -3.1362522   -2.0546470
24 months   COHORTS          GUATEMALA                      0                    NA                -3.0277176   -3.0989959   -2.9564392
24 months   COHORTS          GUATEMALA                      1                    NA                -2.8017506   -2.9668529   -2.6366484
24 months   COHORTS          INDIA                          0                    NA                -2.0778657   -2.1132343   -2.0424971
24 months   COHORTS          INDIA                          1                    NA                -2.0572736   -2.1441090   -1.9704383
24 months   COHORTS          PHILIPPINES                    0                    NA                -2.4050862   -2.4540800   -2.3560924
24 months   COHORTS          PHILIPPINES                    1                    NA                -2.2741634   -2.3943218   -2.1540049
24 months   EE               PAKISTAN                       0                    NA                -2.5862264   -2.7495048   -2.4229479
24 months   EE               PAKISTAN                       1                    NA                -2.6910381   -3.1116896   -2.2703867
24 months   GMS-Nepal        NEPAL                          0                    NA                -1.8439824   -1.9396058   -1.7483589
24 months   GMS-Nepal        NEPAL                          1                    NA                -1.8497486   -2.0531730   -1.6463241
24 months   IRC              INDIA                          0                    NA                -1.7186876   -1.8332246   -1.6041506
24 months   IRC              INDIA                          1                    NA                -1.8630615   -2.0403023   -1.6858207
24 months   JiVitA-3         BANGLADESH                     0                    NA                -1.8809257   -1.9116010   -1.8502504
24 months   JiVitA-3         BANGLADESH                     1                    NA                -1.8467954   -1.9227010   -1.7708898
24 months   JiVitA-4         BANGLADESH                     0                    NA                -1.7127046   -1.7505369   -1.6748723
24 months   JiVitA-4         BANGLADESH                     1                    NA                -1.7719934   -1.8760304   -1.6679564
24 months   Keneba           GAMBIA                         0                    NA                -1.5487996   -1.6050286   -1.4925707
24 months   Keneba           GAMBIA                         1                    NA                -1.6777066   -1.7888438   -1.5665693
24 months   LCNI-5           MALAWI                         0                    NA                -1.8759329   -1.9567962   -1.7950697
24 months   LCNI-5           MALAWI                         1                    NA                -2.2388552   -2.7979536   -1.6797567
24 months   MAL-ED           BANGLADESH                     0                    NA                -1.9412766   -2.0847669   -1.7977864
24 months   MAL-ED           BANGLADESH                     1                    NA                -1.8909328   -2.1747123   -1.6071534
24 months   MAL-ED           BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   MAL-ED           BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   MAL-ED           INDIA                          0                    NA                -1.8953397   -2.0308502   -1.7598291
24 months   MAL-ED           INDIA                          1                    NA                -1.7017809   -2.0416805   -1.3618814
24 months   MAL-ED           NEPAL                          0                    NA                -1.3049667   -1.4304518   -1.1794816
24 months   MAL-ED           NEPAL                          1                    NA                -1.2674004   -1.7128502   -0.8219505
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -1.6646016   -1.8014964   -1.5277067
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                -1.2356176   -2.1665126   -0.3047227
24 months   NIH-Birth        BANGLADESH                     0                    NA                -2.1866637   -2.3071073   -2.0662201
24 months   NIH-Birth        BANGLADESH                     1                    NA                -2.0768580   -2.2701038   -1.8836122
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -1.4019813   -1.4977533   -1.3062093
24 months   NIH-Crypto       BANGLADESH                     1                    NA                -1.4565103   -1.6234425   -1.2895781
24 months   PROBIT           BELARUS                        0                    NA                -0.0844324   -0.4022426    0.2333779
24 months   PROBIT           BELARUS                        1                    NA                -0.2989750   -0.5872984   -0.0106517
24 months   PROVIDE          BANGLADESH                     0                    NA                -1.5801148   -1.6760114   -1.4842182
24 months   PROVIDE          BANGLADESH                     1                    NA                -1.6218341   -1.7901782   -1.4534900
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -1.5201711   -1.5811531   -1.4591891
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                -1.7198967   -1.9067778   -1.5330156


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
Birth       CMC-V-BCS-2002   INDIA                          1                    0                  0.3069118   -0.3742432    0.9880668
Birth       COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      1                    0                  0.6857341    0.5166314    0.8548368
Birth       COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          1                    0                  0.2631531    0.1923251    0.3339812
Birth       COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                  0.4476530    0.3385207    0.5567854
Birth       EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       1                    0                  0.4923575   -0.2446197    1.2293347
Birth       GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                  0.1749689   -0.0038692    0.3538071
Birth       IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          1                    0                  1.5618618    1.2521021    1.8716215
Birth       JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                  0.1037160    0.0544415    0.1529904
Birth       JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                  0.0773173   -0.0815067    0.2361413
Birth       Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         1                    0                  0.7587561    0.6207034    0.8968088
Birth       MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     1                    0                  0.2212227   -0.1195119    0.5619573
Birth       MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   1                    0                  0.9066949    0.2351445    1.5782454
Birth       NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                  0.2424918    0.0388333    0.4461503
Birth       NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                  0.1454122   -0.0168374    0.3076618
Birth       PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        1                    0                  1.1005095    0.9051499    1.2958692
Birth       PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 -0.0826412   -0.2776414    0.1123590
Birth       SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 -0.0671323   -0.1875370    0.0532725
Birth       ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                  0.6853961    0.6258648    0.7449273
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 -0.3096066   -0.6675719    0.0483586
6 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    CMIN             BANGLADESH                     1                    0                 -0.2542887   -0.9784967    0.4699193
6 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      1                    0                  0.2019985    0.0324428    0.3715543
6 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          1                    0                 -0.0025449   -0.0778343    0.0727445
6 months    COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                  0.0546183   -0.0650997    0.1743364
6 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       1                    0                 -0.0233423   -0.3628557    0.3161712
6 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                  0.0175519   -0.1794014    0.2145053
6 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          1                    0                 -0.1133203   -0.4131293    0.1864888
6 months    JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                  0.0286260   -0.0357814    0.0930334
6 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 -0.0629364   -0.1850381    0.0591653
6 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         1                    0                 -0.0630766   -0.1928866    0.0667335
6 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         1                    0                 -0.9661395   -1.7099122   -0.2223668
6 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 -0.1763948   -0.5063184    0.1535289
6 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          1                    0                 -0.0083973   -0.3465597    0.3297650
6 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          1                    0                 -0.2409118   -0.5816415    0.0998180
6 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.0525376   -0.4919738    0.5970491
6 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                  0.0079772   -0.1994930    0.2154473
6 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 -0.0398969   -0.2088897    0.1290960
6 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        1                    0                  0.0663876   -0.0454890    0.1782642
6 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 -0.1454776   -0.3307702    0.0398150
6 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       1                    0                 -0.1064601   -0.6846366    0.4717164
6 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 -0.3075306   -0.4854274   -0.1296337
6 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.3462188   -0.6879157   -0.0045219
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0360084   -0.1697625    0.2417792
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.4689713   -0.5405968   -0.3973459
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0294327   -0.2158022    0.2746676
24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   CMIN             BANGLADESH                     1                    0                 -0.1137462   -0.6704144    0.4429220
24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      1                    0                  0.2259669    0.0463336    0.4056003
24 months   COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          1                    0                  0.0205921   -0.0727753    0.1139594
24 months   COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                  0.1309228    0.0011997    0.2606459
24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       1                    0                 -0.1048118   -0.5576891    0.3480656
24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0057662   -0.2301899    0.2186575
24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          1                    0                 -0.1443739   -0.3560807    0.0673329
24 months   JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                  0.0341303   -0.0456151    0.1138757
24 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0592888   -0.1681033    0.0495257
24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         1                    0                 -0.1289069   -0.2533903   -0.0044235
24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         1                    0                 -0.3629222   -0.9269577    0.2011133
24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                  0.0503438   -0.2681736    0.3688612
24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          1                    0                  0.1935587   -0.1725437    0.5596611
24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          1                    0                  0.0375663   -0.4246900    0.4998226
24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.4289839   -0.5124076    1.3703754
24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                  0.1098057   -0.1170116    0.3366229
24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0545290   -0.2458105    0.1367526
24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        1                    0                 -0.2145426   -0.5594116    0.1303263
24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0417193   -0.2349342    0.1514957
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.1997256   -0.3963166   -0.0031347


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          0                    NA                -0.0150527   -0.1153344    0.0852290
Birth       COHORTS          GUATEMALA                      0                    NA                 0.1784747    0.1296787    0.2272708
Birth       COHORTS          INDIA                          0                    NA                 0.0478354    0.0348599    0.0608108
Birth       COHORTS          PHILIPPINES                    0                    NA                 0.0709106    0.0526706    0.0891507
Birth       EE               PAKISTAN                       0                    NA                 0.0971772   -0.0057172    0.2000717
Birth       GMS-Nepal        NEPAL                          0                    NA                 0.0351613   -0.0026962    0.0730188
Birth       IRC              INDIA                          0                    NA                 0.4703134    0.3489638    0.5916631
Birth       JiVitA-3         BANGLADESH                     0                    NA                 0.0116280    0.0061628    0.0170933
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0094774   -0.0068379    0.0257927
Birth       Keneba           GAMBIA                         0                    NA                 0.1941773    0.1549009    0.2334537
Birth       MAL-ED           BANGLADESH                     0                    NA                 0.0385935   -0.0205187    0.0977057
Birth       MAL-ED           INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       MAL-ED           PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       MAL-ED           SOUTH AFRICA                   0                    NA                 0.0851290    0.0079063    0.1623518
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0698402    0.0088877    0.1307927
Birth       NIH-Crypto       BANGLADESH                     0                    NA                 0.0472343    0.0052372    0.0892314
Birth       PROBIT           BELARUS                        0                    NA                 0.2425596    0.1437388    0.3413804
Birth       PROVIDE          BANGLADESH                     0                    NA                -0.0038280   -0.0478975    0.0402414
Birth       SAS-CompFeed     INDIA                          0                    NA                -0.0046060   -0.0166783    0.0074663
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                 0.1182275    0.1073675    0.1290874
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0382180   -0.1281354    0.0516993
6 months    CMIN             BANGLADESH                     0                    NA                -0.0149579   -0.0563581    0.0264424
6 months    COHORTS          GUATEMALA                      0                    NA                 0.0395881    0.0062142    0.0729621
6 months    COHORTS          INDIA                          0                    NA                -0.0007488   -0.0140275    0.0125298
6 months    COHORTS          PHILIPPINES                    0                    NA                 0.0072043   -0.0112988    0.0257074
6 months    EE               PAKISTAN                       0                    NA                 0.0003198   -0.0414765    0.0421160
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0036184   -0.0355852    0.0428221
6 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    IRC              INDIA                          0                    NA                -0.0376160   -0.1272356    0.0520037
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0031442   -0.0035953    0.0098836
6 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0057398   -0.0169146    0.0054349
6 months    Keneba           GAMBIA                         0                    NA                -0.0086366   -0.0326647    0.0153915
6 months    LCNI-5           MALAWI                         0                    NA                -0.0095605   -0.0272536    0.0081326
6 months    MAL-ED           BANGLADESH                     0                    NA                -0.0274989   -0.0860582    0.0310603
6 months    MAL-ED           BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    MAL-ED           INDIA                          0                    NA                 0.0001880   -0.0609267    0.0613026
6 months    MAL-ED           NEPAL                          0                    NA                -0.0368301   -0.0837598    0.0100996
6 months    MAL-ED           PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0031108   -0.0324184    0.0386401
6 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0019549   -0.0562328    0.0601425
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0098930   -0.0526577    0.0328717
6 months    PROBIT           BELARUS                        0                    NA                 0.0030869   -0.0203997    0.0265735
6 months    PROVIDE          BANGLADESH                     0                    NA                -0.0262618   -0.0660449    0.0135213
6 months    ResPak           PAKISTAN                       0                    NA                -0.0197445   -0.1283948    0.0889058
6 months    SAS-CompFeed     INDIA                          0                    NA                -0.0277465   -0.0597925    0.0042995
6 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0596646   -0.1218043    0.0024751
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0027651   -0.0089317    0.0144620
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0703854   -0.0820993   -0.0586714
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0104932   -0.0511701    0.0721565
24 months   CMIN             BANGLADESH                     0                    NA                -0.0060122   -0.0430556    0.0310313
24 months   COHORTS          GUATEMALA                      0                    NA                 0.0330340    0.0060498    0.0600182
24 months   COHORTS          INDIA                          0                    NA                 0.0037178   -0.0114845    0.0189201
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0209106    0.0009322    0.0408890
24 months   EE               PAKISTAN                       0                    NA                -0.0079464   -0.0749288    0.0590360
24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0004586   -0.0444051    0.0453222
24 months   IRC              INDIA                          0                    NA                -0.0452724   -0.1082627    0.0177180
24 months   JiVitA-3         BANGLADESH                     0                    NA                 0.0037219   -0.0050809    0.0125247
24 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0055295   -0.0147769    0.0037179
24 months   Keneba           GAMBIA                         0                    NA                -0.0242890   -0.0485374   -0.0000407
24 months   LCNI-5           MALAWI                         0                    NA                -0.0102156   -0.0278815    0.0074503
24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0125204   -0.0469940    0.0720348
24 months   MAL-ED           BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   MAL-ED           INDIA                          0                    NA                 0.0255639   -0.0425649    0.0936926
24 months   MAL-ED           NEPAL                          0                    NA                 0.0058778   -0.0481929    0.0599485
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0210186   -0.0266011    0.0686383
24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0285810   -0.0356714    0.0928333
24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0101387   -0.0614924    0.0412151
24 months   PROBIT           BELARUS                        0                    NA                -0.0592970   -0.1368184    0.0182245
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0075957   -0.0475424    0.0323510
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0258422   -0.0469056   -0.0047788
