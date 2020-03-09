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

**Intervention Variable:** birthwt

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

agecat      studyid          country                        birthwt                       n_cell       n
----------  ---------------  -----------------------------  ---------------------------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      19
Birth       CMIN             BANGLADESH                     Low birthweight                    5      19
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       COHORTS          GUATEMALA                      Low birthweight                   54     756
Birth       COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       COHORTS          INDIA                          Low birthweight                 1015    6193
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       COHORTS          PHILIPPINES                    Low birthweight                  211    2899
Birth       CONTENT          PERU                           Normal or high birthweight         2       2
Birth       CONTENT          PERU                           Low birthweight                    0       2
Birth       EE               PAKISTAN                       Normal or high birthweight       138     177
Birth       EE               PAKISTAN                       Low birthweight                   39     177
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       472     641
Birth       GMS-Nepal        NEPAL                          Low birthweight                  169     641
Birth       IRC              INDIA                          Normal or high birthweight       296     343
Birth       IRC              INDIA                          Low birthweight                   47     343
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12587   18014
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 5427   18014
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1758    2396
Birth       JiVitA-4         BANGLADESH                     Low birthweight                  638    2396
Birth       Keneba           GAMBIA                         Normal or high birthweight      1273    1465
Birth       Keneba           GAMBIA                         Low birthweight                  192    1465
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     215
Birth       MAL-ED           BANGLADESH                     Low birthweight                   38     215
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        60      62
Birth       MAL-ED           BRAZIL                         Low birthweight                    2      62
Birth       MAL-ED           INDIA                          Normal or high birthweight        38      45
Birth       MAL-ED           INDIA                          Low birthweight                    7      45
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      26
Birth       MAL-ED           NEPAL                          Low birthweight                    2      26
Birth       MAL-ED           PERU                           Normal or high birthweight       218     228
Birth       MAL-ED           PERU                           Low birthweight                   10     228
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     120
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    5     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  154     575
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       554     707
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  153     707
Birth       PROBIT           BELARUS                        Normal or high birthweight     13817   13817
Birth       PROBIT           BELARUS                        Low birthweight                    0   13817
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       401     532
Birth       PROVIDE          BANGLADESH                     Low birthweight                  131     532
Birth       ResPak           PAKISTAN                       Normal or high birthweight        34      38
Birth       ResPak           PAKISTAN                       Low birthweight                    4      38
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       894    1103
Birth       SAS-CompFeed     INDIA                          Low birthweight                  209    1103
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       317     360
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   43     360
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    COHORTS          GUATEMALA                      Low birthweight                   70     774
6 months    COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    COHORTS          INDIA                          Low birthweight                 1252    6252
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2664
6 months    CONTENT          PERU                           Normal or high birthweight         2       2
6 months    CONTENT          PERU                           Low birthweight                    0       2
6 months    EE               PAKISTAN                       Normal or high birthweight       243     374
6 months    EE               PAKISTAN                       Low birthweight                  131     374
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    IRC              INDIA                          Normal or high birthweight       334     402
6 months    IRC              INDIA                          Low birthweight                   68     402
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8338   14105
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5767   14105
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3005    4045
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1040    4045
6 months    Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight       188     238
6 months    MAL-ED           BANGLADESH                     Low birthweight                   50     238
6 months    MAL-ED           BRAZIL                         Normal or high birthweight       199     209
6 months    MAL-ED           BRAZIL                         Low birthweight                   10     209
6 months    MAL-ED           INDIA                          Normal or high birthweight       193     227
6 months    MAL-ED           INDIA                          Low birthweight                   34     227
6 months    MAL-ED           NEPAL                          Normal or high birthweight       210     229
6 months    MAL-ED           NEPAL                          Low birthweight                   19     229
6 months    MAL-ED           PERU                           Normal or high birthweight       254     270
6 months    MAL-ED           PERU                           Low birthweight                   16     270
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       238     253
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   15     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       545     715
6 months    NIH-Crypto       BANGLADESH                     Low birthweight                  170     715
6 months    PROBIT           BELARUS                        Normal or high birthweight     15757   15757
6 months    PROBIT           BELARUS                        Low birthweight                    0   15757
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       460     603
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     603
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1001    1324
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1324
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       321     364
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     364
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   COHORTS          GUATEMALA                      Low birthweight                   62     657
24 months   COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   COHORTS          INDIA                          Low birthweight                  910    4821
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   COHORTS          PHILIPPINES                    Low birthweight                  215    2410
24 months   CONTENT          PERU                           Normal or high birthweight         2       2
24 months   CONTENT          PERU                           Low birthweight                    0       2
24 months   EE               PAKISTAN                       Normal or high birthweight       101     168
24 months   EE               PAKISTAN                       Low birthweight                   67     168
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     486
24 months   GMS-Nepal        NEPAL                          Low birthweight                  131     486
24 months   IRC              INDIA                          Normal or high birthweight       335     403
24 months   IRC              INDIA                          Low birthweight                   68     403
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4225    7282
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3057    7282
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2944    3997
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1053    3997
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1057
24 months   Keneba           GAMBIA                         Low birthweight                  152    1057
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       165     210
24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     210
24 months   MAL-ED           BRAZIL                         Normal or high birthweight       161     169
24 months   MAL-ED           BRAZIL                         Low birthweight                    8     169
24 months   MAL-ED           INDIA                          Normal or high birthweight       185     218
24 months   MAL-ED           INDIA                          Low birthweight                   33     218
24 months   MAL-ED           NEPAL                          Normal or high birthweight       203     221
24 months   MAL-ED           NEPAL                          Low birthweight                   18     221
24 months   MAL-ED           PERU                           Normal or high birthweight       187     199
24 months   MAL-ED           PERU                           Low birthweight                   12     199
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       224     237
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     413
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514
24 months   PROBIT           BELARUS                        Normal or high birthweight      3970    3970
24 months   PROBIT           BELARUS                        Low birthweight                    0    3970
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       440     579
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431


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
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/4c4e6119-d5f8-46e9-ac82-9bb68bc78409/d30ea483-7e22-4d03-8c2c-709a16ca6fa9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4c4e6119-d5f8-46e9-ac82-9bb68bc78409/d30ea483-7e22-4d03-8c2c-709a16ca6fa9/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4c4e6119-d5f8-46e9-ac82-9bb68bc78409/d30ea483-7e22-4d03-8c2c-709a16ca6fa9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2600695   -0.5584444    0.0383054
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.9090220   -2.8085995   -1.0094445
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9543981   -1.0559423   -0.8528538
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -2.4354906   -2.7723503   -2.0986310
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.7525342   -0.7821509   -0.7229176
Birth       COHORTS          INDIA                          Low birthweight              NA                -2.1706734   -2.2331363   -2.1082104
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6148798   -0.6603507   -0.5694090
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3822308   -2.5123220   -2.2521396
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.1082681   -0.3071306    0.0905944
Birth       EE               PAKISTAN                       Low birthweight              NA                -1.1223387   -1.5151827   -0.7294947
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7752204   -0.8666125   -0.6838284
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0728822   -2.2129487   -1.9328158
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.7540215   -0.9475768   -0.5604663
Birth       IRC              INDIA                          Low birthweight              NA                -2.5163922   -3.0165816   -2.0162029
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4380390   -0.4574002   -0.4186778
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5675091   -1.5933355   -1.5416827
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3845238   -0.4404356   -0.3286119
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5256448   -1.5978013   -1.4534883
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0845172   -1.1488893   -1.0201451
Birth       Keneba           GAMBIA                         Low birthweight              NA                -2.1981905   -2.3422036   -2.0541774
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7613745   -0.9152413   -0.6075077
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8416244   -2.1052086   -1.5780401
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       MAL-ED           INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0000663   -0.1233916    0.1232589
Birth       MAL-ED           PERU                           Low birthweight              NA                -1.0859006   -1.3184704   -0.8533308
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106948
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0302705   -1.1326364   -0.9279045
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2002680   -2.3427520   -2.0577840
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.9798385   -1.0660207   -0.8936563
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -2.2261557   -2.3844085   -2.0679028
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.0616094   -1.1436974   -0.9795213
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0271283   -2.1416743   -1.9125824
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.3937716   -0.5408873   -0.2466560
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -1.8372897   -1.9631357   -1.7114438
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2956168   -0.3204964   -0.2707373
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4826285   -2.5443423   -2.4209147
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4377413   -0.5998760   -0.2756065
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.9984702   -1.4531108   -0.5438295
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2380397    0.1557717    0.3203076
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -0.2079994   -0.4510823    0.0350834
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.5721504   -0.6031987   -0.5411020
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.1831300   -1.2511492   -1.1151109
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2611220   -0.3048120   -0.2174320
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5766468   -0.7171457   -0.4361479
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.7434349   -0.8809594   -0.6059103
6 months    EE               PAKISTAN                       Low birthweight              NA                -0.7804439   -0.9834806   -0.5774073
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4755060   -0.5739025   -0.3771095
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -0.9018640   -1.0684869   -0.7352410
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.5498675   -0.6940050   -0.4057299
6 months    IRC              INDIA                          Low birthweight              NA                -0.8211979   -1.2267849   -0.4156109
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4625599   -0.4893203   -0.4357996
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -0.8222401   -0.8536524   -0.7908277
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2973393   -0.3480195   -0.2466591
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.6169891   -0.6915033   -0.5424748
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1610279   -0.2284421   -0.0936137
6 months    Keneba           GAMBIA                         Low birthweight              NA                -0.4452176   -0.6123577   -0.2780775
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0609951   -0.2147343    0.0927441
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -0.3608680   -0.5954038   -0.1263322
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.9983726    0.8303104    1.1664347
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.5234032   -0.1990593    1.2458657
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.6558624   -0.7965504   -0.5151744
6 months    MAL-ED           INDIA                          Low birthweight              NA                -0.8445273   -1.2339403   -0.4551143
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1700662    0.0330524    0.3070800
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -0.2029148   -0.7127103    0.3068807
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                 1.0833760    0.9585438    1.2082082
6 months    MAL-ED           PERU                           Low birthweight              NA                 0.7191258    0.0047484    1.4335032
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.5380915    0.3822250    0.6939581
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.3953286   -0.3778704    1.1685276
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3485291   -0.4534719   -0.2435862
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7049957   -0.8805936   -0.5293978
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1196988    0.0320138    0.2073838
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.2650046   -0.4383047   -0.0917044
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0869633   -0.1792304    0.0053038
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -0.5544020   -0.7278773   -0.3809266
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.5641636   -0.7218236   -0.4065037
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -0.9860295   -1.1205413   -0.8515176
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1018208    0.0480253    0.1556162
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4937039   -0.7600772   -0.2273306
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3401855    0.3128838    0.3674871
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0908726    0.0167604    0.1649848
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4498330   -0.5571756   -0.3424903
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2237727   -1.4686220   -0.9789235
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1563620   -0.2248215   -0.0879025
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.9127668   -1.1582971   -0.6672365
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.5042332   -0.5364813   -0.4719851
24 months   COHORTS          INDIA                          Low birthweight              NA                -1.0072131   -1.0718299   -0.9425963
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5644316   -0.6027923   -0.5260709
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0477585   -1.1716760   -0.9238410
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.9151903   -1.1102551   -0.7201255
24 months   EE               PAKISTAN                       Low birthweight              NA                -1.2156048   -1.4445398   -0.9866697
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0478968   -1.1507819   -0.9450117
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3512632   -1.5211669   -1.1813595
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.6326532   -0.7307604   -0.5345460
24 months   IRC              INDIA                          Low birthweight              NA                -1.2513026   -1.4665630   -1.0360422
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.1262821   -1.1590653   -1.0934988
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5596798   -1.5970806   -1.5222790
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1442232   -1.1837555   -1.1046908
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5101864   -1.5794997   -1.4408731
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7382632   -0.8029782   -0.6735482
24 months   Keneba           GAMBIA                         Low birthweight              NA                -1.1560961   -1.3226132   -0.9895790
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7260648   -0.8654407   -0.5866888
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -1.1369345   -1.3692942   -0.9045747
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8727321   -0.9920150   -0.7534493
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.2592729   -1.6511630   -0.8673827
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.3242497   -0.4390745   -0.2094250
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.8331485   -1.3256137   -0.3406833
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1652551    0.0448424    0.2856679
24 months   MAL-ED           PERU                           Low birthweight              NA                -1.1082822   -1.8323891   -0.3841753
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.4265014    0.3015941    0.5514086
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.0693204   -0.4609901    0.5996309
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7838270   -0.8944765   -0.6731776
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.2100009   -1.4124351   -1.0075668
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.4679784   -0.5769422   -0.3590145
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.0154686   -1.1943363   -0.8366009
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.7554573   -0.8486683   -0.6622464
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -1.3182551   -1.4747204   -1.1617899
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1790035   -1.2902746   -1.0677323
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.2067377   -1.4267472   -0.9867283


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
Birth       Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4937083   -0.6464716   -0.3409451
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    EE               PAKISTAN                       NA                   NA                -0.7738057   -0.8881828   -0.6594286
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    IRC              INDIA                          NA                   NA                -0.5865133   -0.7228579   -0.4501686
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.6078114   -0.6285877   -0.5870351
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
6 months    Keneba           GAMBIA                         NA                   NA                -0.1980632   -0.2602433   -0.1358831
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1264286   -0.2562001    0.0033429
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.6950184   -0.8251168   -0.5649199
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1468195    0.0154553    0.2781837
6 months    MAL-ED           PERU                           NA                   NA                 1.0569321    0.9344468    1.1794174
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5447167    0.3920617    0.6973717
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5650627    0.4090080    0.7211174
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3088788    0.2831827    0.3345749
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5504808   -0.6531501   -0.4478114
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   IRC              INDIA                          NA                   NA                -0.7385236   -0.8304949   -0.6465522
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.3060382   -1.3311265   -1.2809499
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964
24 months   Keneba           GAMBIA                         NA                   NA                -0.7959275   -0.8565476   -0.7353073
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8080238   -0.9295087   -0.6865389
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9353899   -1.0537553   -0.8170246
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3576697   -0.4708099   -0.2445294
24 months   MAL-ED           PERU                           NA                   NA                 0.1137982   -0.0103449    0.2379412
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1119136   -0.0377314    0.2615586
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1828306   -1.2821673   -1.0834939


### Parameter: ATE


agecat      studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.6489525   -2.6069255   -0.6909795
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.4810926   -1.8330403   -1.1291448
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4181391   -1.4872866   -1.3489917
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7673510   -1.9051104   -1.6295915
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.0140706   -1.4615287   -0.5666125
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2976618   -1.4645711   -1.1307526
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.7623707   -2.3043574   -1.2203839
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1294701   -1.1598737   -1.0990666
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1411210   -1.2307127   -1.0515294
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1136733   -1.2713739   -0.9559726
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0802499   -1.3858731   -0.7746266
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.0858343   -1.3492242   -0.8224443
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992326   -0.6331153
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1699976   -1.3456047   -0.9943905
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2463171   -1.4269645   -1.0656698
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9655190   -1.1066480   -0.8243900
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4435181   -1.5809155   -1.3061207
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1870117   -2.2535434   -2.1204799
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5607289   -1.0451659   -0.0762919
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4460391   -0.7023217   -0.1897565
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6109797   -0.6856921   -0.5362673
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3155248   -0.4626018   -0.1684477
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0370090   -0.2828547    0.2088366
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4263580   -0.6196146   -0.2331014
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2713304   -0.7047268    0.1620660
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3596801   -0.4002438   -0.3191164
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3196498   -0.4078799   -0.2314197
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2841897   -0.4643567   -0.1040228
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.2998729   -0.5831821   -0.0165636
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.4749693   -1.2170981    0.2671595
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.1886649   -0.6035192    0.2261894
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3729810   -0.9014062    0.1554442
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.3642502   -1.0889834    0.3604830
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1427629   -0.9323969    0.6468710
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3564666   -0.5616386   -0.1512947
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3847034   -0.5789088   -0.1904980
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4674387   -0.6641266   -0.2707508
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.4218658   -0.6125127   -0.2312189
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5955247   -0.8666114   -0.3244380
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2493129   -0.3282490   -0.1703768
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.7739398   -1.0412749   -0.5066046
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7564048   -1.0113354   -0.5014742
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5029799   -0.5746412   -0.4313187
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.4833269   -0.6129849   -0.3536689
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.3004144   -0.5965017   -0.0043272
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.3033664   -0.5022136   -0.1045193
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6186494   -0.8558347   -0.3814641
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4333977   -0.4824273   -0.3843682
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3659632   -0.4468940   -0.2850325
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4178329   -0.5959758   -0.2396901
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4108697   -0.6825133   -0.1392261
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.3865407   -0.7966495    0.0235681
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.5088988   -1.0152657   -0.0025318
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.2735373   -2.0062345   -0.5408402
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.3571810   -0.9023031    0.1879412
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4261739   -0.6570119   -0.1953359
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5474902   -0.7550920   -0.3398885
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5627978   -0.7455391   -0.3800565
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0277343   -0.2748145    0.2193460


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2047561   -0.3571915   -0.0523206
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1077448   -0.1448335   -0.0706561
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.2322115   -0.2496210   -0.2148019
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1278452   -0.1474458   -0.1082446
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.2250370   -0.3445496   -0.1055244
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3412226   -0.4033917   -0.2790536
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.2565615   -0.3504489   -0.1626742
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3397883   -0.3519361   -0.3276404
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3041031   -0.3382669   -0.2699394
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1498446   -0.1784688   -0.1212203
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1804860   -0.2559853   -0.1049867
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0519512   -0.0897033   -0.0141990
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3196513   -0.3836604   -0.2556421
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2643128   -0.3179332   -0.2106924
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2368493   -0.2865681   -0.1871304
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2762737   -0.3462221   -0.2063253
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2198728   -0.2330531   -0.2066925
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0559671   -0.1150499    0.0031158
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0370707   -0.0618378   -0.0123035
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1212709   -0.1374313   -0.1051106
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0312654   -0.0454234   -0.0171074
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0303708   -0.1189268    0.0581852
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1271790   -0.1862113   -0.0681467
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0366458   -0.1094873    0.0361956
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1452515   -0.1617739   -0.1287290
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0812540   -0.1044931   -0.0580150
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0370353   -0.0621992   -0.0118714
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0654334   -0.1273415   -0.0035254
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0262952   -0.0648166    0.0122262
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0391560   -0.0961027    0.0177908
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0232467   -0.0639182    0.0174248
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0264439   -0.0618585    0.0089707
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0066252   -0.0385044    0.0517547
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1151469   -0.1770427   -0.0532512
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0899366   -0.1363047   -0.0435685
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1121274   -0.1614368   -0.0628179
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.1029625   -0.1534267   -0.0524983
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0183212   -0.0278340   -0.0088084
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0313067   -0.0414157   -0.0211977
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1006478   -0.1429402   -0.0583554
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0717811   -0.1012013   -0.0423609
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.0902887   -0.1048225   -0.0757548
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0432530   -0.0560789   -0.0304272
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0968335   -0.2167866    0.0231196
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0857932   -0.1412133   -0.0303731
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1058704   -0.1522137   -0.0595270
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1797561   -0.2009096   -0.1586026
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.1001651   -0.1219470   -0.0783832
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0576643   -0.0839881   -0.0313405
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0819590   -0.1459619   -0.0179562
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0626578   -0.1268500    0.0015344
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0334199   -0.0759616    0.0091217
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0514570   -0.1020190   -0.0008950
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0210618   -0.0499705    0.0078469
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1231181   -0.1959160   -0.0503202
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1423718   -0.1966914   -0.0880522
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1374097   -0.1855184   -0.0893009
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0038272   -0.0572660    0.0496117
