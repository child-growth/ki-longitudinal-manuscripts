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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/7cf57fdf-7672-457a-9e2d-6444b7c5e382/14fef03e-e39e-466b-a956-00f78d27dfae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7cf57fdf-7672-457a-9e2d-6444b7c5e382/14fef03e-e39e-466b-a956-00f78d27dfae/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7cf57fdf-7672-457a-9e2d-6444b7c5e382/14fef03e-e39e-466b-a956-00f78d27dfae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2584211   -0.5561357    0.0392936
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.0335000   -2.6909811   -1.3760189
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9552564   -1.0568316   -0.8536813
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -2.4516667   -2.7794732   -2.1238602
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.7515662   -0.7811095   -0.7220230
Birth       COHORTS          INDIA                          Low birthweight              NA                -2.1743054   -2.2367958   -2.1118150
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6138207   -0.6592787   -0.5683627
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3848815   -2.5167479   -2.2530151
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.1153261   -0.3141244    0.0834722
Birth       EE               PAKISTAN                       Low birthweight              NA                -1.1046154   -1.4983877   -0.7108431
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7766737   -0.8675455   -0.6858020
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0653846   -2.1997999   -1.9309693
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.7617568   -0.9546041   -0.5689095
Birth       IRC              INDIA                          Low birthweight              NA                -2.5776596   -2.9629814   -2.1923377
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4371772   -0.4565857   -0.4177688
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5679068   -1.5935021   -1.5423114
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3848180   -0.4407430   -0.3288930
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5257680   -1.5978649   -1.4536712
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0822663   -1.1468137   -1.0177189
Birth       Keneba           GAMBIA                         Low birthweight              NA                -2.2427865   -2.3827461   -2.1028268
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7566949   -0.9106288   -0.6027611
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8043421   -2.0657218   -1.5429625
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       MAL-ED           INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                 0.0008716   -0.1196583    0.1214014
Birth       MAL-ED           PERU                           Low birthweight              NA                -1.2050000   -1.5355504   -0.8744496
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106948
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0316508   -1.1340632   -0.9292385
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2200000   -2.3627797   -2.0772203
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.9751173   -1.0612249   -0.8890098
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -2.2183007   -2.3695189   -2.0670824
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.0591771   -1.1413770   -0.9769772
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0309160   -2.1453514   -1.9164807
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.3948322   -0.5417250   -0.2479394
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -1.8472727   -1.9858702   -1.7086753
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2946341   -0.3195195   -0.2697486
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4840368   -2.5457033   -2.4223704
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4307045   -0.5926731   -0.2687359
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.9581783   -1.3917804   -0.5245762
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2377983    0.1555500    0.3200466
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -0.1694286   -0.4142266    0.0753695
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.5675620   -0.5985897   -0.5365343
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.1960543   -1.2636124   -1.1284962
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2600786   -0.3037002   -0.2164571
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -0.6071371   -0.7471686   -0.4671056
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.7563237   -0.8934000   -0.6192474
6 months    EE               PAKISTAN                       Low birthweight              NA                -0.8062341   -1.0109981   -0.6014701
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4845550   -0.5830115   -0.3860984
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -0.8852008   -1.0508953   -0.7195063
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.5407635   -0.6838731   -0.3976539
6 months    IRC              INDIA                          Low birthweight              NA                -0.8112255   -1.2012989   -0.4211521
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.4603346   -0.4871846   -0.4334846
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -0.8210352   -0.8516298   -0.7904406
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2941864   -0.3444495   -0.2439233
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.6224808   -0.6959006   -0.5490609
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1648170   -0.2320741   -0.0975600
6 months    Keneba           GAMBIA                         Low birthweight              NA                -0.4007234   -0.5607453   -0.2407015
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0622961   -0.2141768    0.0895846
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -0.3675667   -0.5906510   -0.1444823
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.9977345    0.8297156    1.1657534
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.4615000   -0.2462872    1.1692872
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.6505138   -0.7900845   -0.5109431
6 months    MAL-ED           INDIA                          Low birthweight              NA                -0.9476471   -1.2915286   -0.6037655
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1713889    0.0346796    0.3080982
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -0.1247368   -0.5800886    0.3306150
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                 1.0857546    0.9610459    1.2104633
6 months    MAL-ED           PERU                           Low birthweight              NA                 0.5993750    0.0523894    1.1463606
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.5375770    0.3818333    0.6933208
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.6580000   -0.0627518    1.3787518
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3527248   -0.4575886   -0.2478610
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7333389   -0.9081544   -0.5585233
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1173119    0.0290237    0.2056001
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.2509118   -0.4175109   -0.0843126
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0864384   -0.1783222    0.0054453
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -0.5614685   -0.7336186   -0.3893185
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.5692557   -0.7282817   -0.4102298
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -0.9704334   -1.0948386   -0.8460283
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1008188    0.0470258    0.1546117
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4187562   -0.6849115   -0.1526010
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3407893    0.3134838    0.3680949
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0876264    0.0133679    0.1618849
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4518380   -0.5591105   -0.3445655
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2868605   -1.5297211   -1.0439999
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1561176   -0.2245327   -0.0877026
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.9193548   -1.1637443   -0.6749653
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.4997418   -0.5320891   -0.4673944
24 months   COHORTS          INDIA                          Low birthweight              NA                -1.0018681   -1.0674538   -0.9362825
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5644465   -0.6027763   -0.5261166
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0491163   -1.1731686   -0.9250640
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.9327723   -1.1249914   -0.7405532
24 months   EE               PAKISTAN                       Low birthweight              NA                -1.1314925   -1.3555668   -0.9074182
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0506009   -1.1537353   -0.9474666
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3588550   -1.5288033   -1.1889067
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.6340846   -0.7320659   -0.5361033
24 months   IRC              INDIA                          Low birthweight              NA                -1.2530392   -1.4676552   -1.0384232
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.1317964   -1.1644165   -1.0991764
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.5468531   -1.5827258   -1.5109805
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1447588   -1.1843457   -1.1051720
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.5229345   -1.5910911   -1.4547778
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7359199   -0.8004492   -0.6713906
24 months   Keneba           GAMBIA                         Low birthweight              NA                -1.1532094   -1.3154430   -0.9909759
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7154545   -0.8536943   -0.5772148
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -1.1474444   -1.3752734   -0.9196155
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.8731892   -0.9925195   -0.7538589
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.2840909   -1.6676687   -0.9005131
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.3236946   -0.4384516   -0.2089375
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.7408333   -1.2102997   -0.2713670
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1693226    0.0489189    0.2897263
24 months   MAL-ED           PERU                           Low birthweight              NA                -0.7514583   -1.4307713   -0.0721454
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.4276525    0.3028150    0.5524901
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.0226923   -0.4513500    0.4967346
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7803992   -0.8905161   -0.6702823
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.1919226   -1.3938832   -0.9899619
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.4872165   -0.5969204   -0.3775126
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.9895238   -1.1603799   -0.8186677
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.7537727   -0.8471453   -0.6604002
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -1.3331655   -1.4884015   -1.1779294
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1770326   -1.2887349   -1.0653303
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.2036170   -1.4205452   -0.9866889


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
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.7750789   -2.4968236   -1.0533343
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.4964103   -1.8395933   -1.1532272
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4227392   -1.4918612   -1.3536172
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7710608   -1.9105427   -1.6315790
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9892893   -1.4303985   -0.5481801
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2887109   -1.4509612   -1.1264606
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.8159028   -2.2467891   -1.3850165
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1307295   -1.1609132   -1.1005459
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1409501   -1.2305684   -1.0513317
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1605202   -1.3146470   -1.0063933
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0476472   -1.3509869   -0.7443075
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.2058716   -1.5577110   -0.8540321
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992326   -0.6331153
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1883492   -1.3640601   -1.0126382
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2431833   -1.4171991   -1.0691676
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9717390   -1.1126370   -0.8308409
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4524405   -1.5924086   -1.3124724
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1894028   -2.2559012   -2.1229043
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5274738   -0.9903394   -0.0646081
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4072269   -0.6654726   -0.1489811
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6284923   -0.7028349   -0.5541497
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3470585   -0.4937270   -0.2003900
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0499104   -0.2963210    0.1965003
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4006458   -0.5933849   -0.2079067
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2704620   -0.6859588    0.1450348
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3607006   -0.4008877   -0.3205135
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3282944   -0.4152753   -0.2413135
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2359064   -0.4094878   -0.0623249
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3052706   -0.5751490   -0.0353921
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.5362345   -1.2636911    0.1912220
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.2971332   -0.6682592    0.0739928
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.2961257   -0.7715568    0.1793053
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.4863796   -1.0474014    0.0746422
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1204230   -0.6169638    0.8578097
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3806141   -0.5844691   -0.1767590
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3682237   -0.5567710   -0.1796764
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4750301   -0.6701666   -0.2798936
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.4011777   -0.5790909   -0.2232645
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5195750   -0.7911119   -0.2480381
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2531629   -0.3322826   -0.1740432
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.8350225   -1.1005195   -0.5695254
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7632372   -1.0170223   -0.5094521
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5021264   -0.5752552   -0.4289975
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.4846698   -0.6145087   -0.3548309
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.1987203   -0.4939447    0.0965042
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.3082540   -0.5070482   -0.1094598
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6189546   -0.8548791   -0.3830301
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4150567   -0.4634040   -0.3667093
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3781756   -0.4578789   -0.2984724
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4172895   -0.5918855   -0.2426936
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4319899   -0.6984786   -0.1655012
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.4109017   -0.8126126   -0.0091908
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.4171388   -0.9004273    0.0661498
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.9207810   -1.6106818   -0.2308801
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.4049602   -0.8951648    0.0852444
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4115234   -0.6415535   -0.1814933
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5023073   -0.7053511   -0.2992635
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5793927   -0.7605464   -0.3982391
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0265844   -0.2705828    0.2174141


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2064045   -0.3536325   -0.0591766
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1068864   -0.1437181   -0.0700548
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.2331794   -0.2505122   -0.2158467
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1289044   -0.1484916   -0.1093172
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.2179790   -0.3325052   -0.1034528
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3397693   -0.4011303   -0.2784084
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.2488263   -0.3375161   -0.1601366
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3406500   -0.3527016   -0.3285984
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.3038089   -0.3380361   -0.2695817
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1520955   -0.1805643   -0.1236266
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1851655   -0.2609361   -0.1093950
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0528891   -0.0885273   -0.0172509
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3182709   -0.3820511   -0.2544907
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2690340   -0.3223647   -0.2157033
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2392816   -0.2889973   -0.1895658
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2752131   -0.3437891   -0.2066371
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2208556   -0.2340580   -0.2076532
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0630038   -0.1210534   -0.0049542
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0368293   -0.0615937   -0.0120649
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1258593   -0.1419998   -0.1097188
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0323087   -0.0464896   -0.0181279
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0174820   -0.1038254    0.0688614
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1181300   -0.1769318   -0.0593283
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0457498   -0.1167300    0.0252304
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1474768   -0.1638464   -0.1311072
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0844070   -0.1070387   -0.0617752
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0332462   -0.0581026   -0.0083897
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0641325   -0.1229987   -0.0052663
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0256572   -0.0637811    0.0124668
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0445045   -0.1017849    0.0127758
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0245694   -0.0654157    0.0162769
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0288225   -0.0647893    0.0071443
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0071397   -0.0367197    0.0509991
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1109512   -0.1722181   -0.0496843
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0875497   -0.1338302   -0.0412692
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1126523   -0.1616622   -0.0636423
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0978704   -0.1474605   -0.0482803
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0173192   -0.0272468   -0.0073915
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0319105   -0.0420426   -0.0217785
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0986428   -0.1405042   -0.0567813
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0720254   -0.1014380   -0.0426128
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.0947801   -0.1096566   -0.0799036
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0432382   -0.0560680   -0.0304083
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0792515   -0.1979111    0.0394081
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0830890   -0.1380388   -0.0281393
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1044390   -0.1502453   -0.0586327
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.1742417   -0.1948017   -0.1536817
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0996295   -0.1213443   -0.0779147
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0600076   -0.0866229   -0.0333922
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0925693   -0.1545245   -0.0306140
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0622007   -0.1260893    0.0016878
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0339751   -0.0761266    0.0081764
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0555245   -0.1071271   -0.0039219
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0222130   -0.0515626    0.0071366
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1265459   -0.1996197   -0.0534722
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1231337   -0.1763033   -0.0699641
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1390943   -0.1870355   -0.0911531
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0057980   -0.0590235    0.0474276
