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
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92
Birth       CMIN             BANGLADESH                     Normal or high birthweight        14      26
Birth       CMIN             BANGLADESH                     Low birthweight                   12      26
Birth       COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       COHORTS          GUATEMALA                      Low birthweight                   67     784
Birth       COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       COHORTS          INDIA                          Low birthweight                 1370    6638
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       COHORTS          PHILIPPINES                    Low birthweight                  295    3004
Birth       CONTENT          PERU                           Normal or high birthweight         2       2
Birth       CONTENT          PERU                           Low birthweight                    0       2
Birth       EE               PAKISTAN                       Normal or high birthweight       160     240
Birth       EE               PAKISTAN                       Low birthweight                   80     240
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight       476     696
Birth       GMS-Nepal        NEPAL                          Low birthweight                  220     696
Birth       IRC              INDIA                          Normal or high birthweight       317     383
Birth       IRC              INDIA                          Low birthweight                   66     383
Birth       Keneba           GAMBIA                         Normal or high birthweight      1308    1529
Birth       Keneba           GAMBIA                         Low birthweight                  221    1529
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight       177     231
Birth       MAL-ED           BANGLADESH                     Low birthweight                   54     231
Birth       MAL-ED           BRAZIL                         Normal or high birthweight        61      65
Birth       MAL-ED           BRAZIL                         Low birthweight                    4      65
Birth       MAL-ED           INDIA                          Normal or high birthweight        39      47
Birth       MAL-ED           INDIA                          Low birthweight                    8      47
Birth       MAL-ED           NEPAL                          Normal or high birthweight        24      27
Birth       MAL-ED           NEPAL                          Low birthweight                    3      27
Birth       MAL-ED           PERU                           Normal or high birthweight       221     233
Birth       MAL-ED           PERU                           Low birthweight                   12     233
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight       115     123
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight                    8     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608
Birth       NIH-Birth        BANGLADESH                     Low birthweight                  185     608
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight       560     732
Birth       NIH-Crypto       BANGLADESH                     Low birthweight                  172     732
Birth       PROBIT           BELARUS                        Normal or high birthweight     13893   13893
Birth       PROBIT           BELARUS                        Low birthweight                    0   13893
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight       402     539
Birth       PROVIDE          BANGLADESH                     Low birthweight                  137     539
Birth       ResPak           PAKISTAN                       Normal or high birthweight        35      42
Birth       ResPak           PAKISTAN                       Low birthweight                    7      42
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight       914    1252
Birth       SAS-CompFeed     INDIA                          Low birthweight                  338    1252
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       319     361
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   42     361
6 months    CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    COHORTS          GUATEMALA                      Low birthweight                   68     771
6 months    COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    COHORTS          INDIA                          Low birthweight                 1256    6261
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    COHORTS          PHILIPPINES                    Low birthweight                  248    2666
6 months    CONTENT          PERU                           Normal or high birthweight         2       2
6 months    CONTENT          PERU                           Low birthweight                    0       2
6 months    EE               PAKISTAN                       Normal or high birthweight       242     372
6 months    EE               PAKISTAN                       Low birthweight                  130     372
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    IRC              INDIA                          Normal or high birthweight       335     401
6 months    IRC              INDIA                          Low birthweight                   66     401
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
6 months    PROBIT           BELARUS                        Normal or high birthweight     15760   15760
6 months    PROBIT           BELARUS                        Low birthweight                    0   15760
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight       461     604
6 months    PROVIDE          BANGLADESH                     Low birthweight                  143     604
6 months    ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight      1003    1326
6 months    SAS-CompFeed     INDIA                          Low birthweight                  323    1326
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       320     363
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   43     363
24 months   CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   COHORTS          GUATEMALA                      Normal or high birthweight       589     650
24 months   COHORTS          GUATEMALA                      Low birthweight                   61     650
24 months   COHORTS          INDIA                          Normal or high birthweight      3949    4858
24 months   COHORTS          INDIA                          Low birthweight                  909    4858
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   COHORTS          PHILIPPINES                    Low birthweight                  212    2406
24 months   CONTENT          PERU                           Normal or high birthweight         2       2
24 months   CONTENT          PERU                           Low birthweight                    0       2
24 months   EE               PAKISTAN                       Normal or high birthweight       100     167
24 months   EE               PAKISTAN                       Low birthweight                   67     167
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       355     487
24 months   GMS-Nepal        NEPAL                          Low birthweight                  132     487
24 months   IRC              INDIA                          Normal or high birthweight       335     403
24 months   IRC              INDIA                          Low birthweight                   68     403
24 months   Keneba           GAMBIA                         Normal or high birthweight       905    1056
24 months   Keneba           GAMBIA                         Low birthweight                  151    1056
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
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414
24 months   NIH-Birth        BANGLADESH                     Low birthweight                  127     414
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       388     514
24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  126     514
24 months   PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   PROBIT           BELARUS                        Low birthweight                    0    4035
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       439     578
24 months   PROVIDE          BANGLADESH                     Low birthweight                  139     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635


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
* agecat: Birth, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/1905a51f-bee3-404c-b762-b4d5bc5e5be0/c143bf16-22f7-4d58-adfd-0823af9ceb3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1905a51f-bee3-404c-b762-b4d5bc5e5be0/c143bf16-22f7-4d58-adfd-0823af9ceb3e/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1905a51f-bee3-404c-b762-b4d5bc5e5be0/c143bf16-22f7-4d58-adfd-0823af9ceb3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8096914   -1.0319871   -0.5873956
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.0768182   -2.3933709   -1.7602655
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.9128571   -1.5285066   -0.2972077
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -3.0108333   -3.7632550   -2.2584116
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2787308    0.1965332    0.3609284
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -1.5529851   -1.8587827   -1.2471875
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3589313   -0.3857107   -0.3321518
Birth       COHORTS          INDIA                          Low birthweight              NA                -1.8652409   -1.9197394   -1.8107423
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0778331   -0.1136506   -0.0420157
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7652203   -1.8986192   -1.6318215
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -1.4328750   -1.6326993   -1.2330507
Birth       EE               PAKISTAN                       Low birthweight              NA                -2.7168750   -3.0379890   -2.3957610
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6720378   -0.7503101   -0.5937655
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9790000   -2.1014079   -1.8565921
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1788328   -0.3466053   -0.0110603
Birth       IRC              INDIA                          Low birthweight              NA                -0.9378788   -1.3840253   -0.4917323
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2254167    0.1611822    0.2896512
Birth       Keneba           GAMBIA                         Low birthweight              NA                -1.1454977   -1.2974752   -0.9935203
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7878531   -0.9135532   -0.6621530
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -2.2005556   -2.4280587   -1.9730524
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       MAL-ED           INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.7929412   -0.9039557   -0.6819267
Birth       MAL-ED           PERU                           Low birthweight              NA                -2.5375000   -2.8214599   -2.2535401
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307701
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5052128   -0.5934386   -0.4169869
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9046216   -2.0310512   -1.7781920
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.6623929   -0.7361106   -0.5886752
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.7140116   -1.8401746   -1.5878487
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.5852488   -0.6606041   -0.5098935
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7649635   -1.8603011   -1.6696259
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.0316849   -1.1011353   -0.9622345
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -2.5123669   -2.6857616   -2.3389721
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3134990   -0.3333888   -0.2936093
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6773435   -1.7371895   -1.6174975
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.2943417   -1.4455964   -1.1430870
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.3468651   -2.6990082   -1.9947219
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6924751   -1.7653666   -1.6195836
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -2.7511765   -3.0323225   -2.4700304
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.7937223   -0.8238145   -0.7636300
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.7920064   -1.8560831   -1.7279296
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0438586   -1.0865759   -1.0011412
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0478629   -2.1886868   -1.9070390
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -1.7418733   -1.8750474   -1.6086992
6 months    EE               PAKISTAN                       Low birthweight              NA                -2.7095256   -2.9020644   -2.5169869
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1274433   -1.2135344   -1.0413522
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8858333   -2.0230911   -1.7485755
6 months    IRC              INDIA                          Normal or high birthweight   NA                -1.0753831   -1.2124994   -0.9382668
6 months    IRC              INDIA                          Low birthweight              NA                -1.9225758   -2.2762601   -1.5688914
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7795492   -0.8383862   -0.7207123
6 months    Keneba           GAMBIA                         Low birthweight              NA                -1.6498936   -1.8006255   -1.4991618
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.0485461   -1.1738156   -0.9232766
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8143667   -2.0578015   -1.5709318
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0815997   -0.0648733    0.2280726
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                -0.6295000   -1.2348773   -0.0241227
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -1.1092055   -1.2366453   -0.9817657
6 months    MAL-ED           INDIA                          Low birthweight              NA                -1.5332353   -1.8069178   -1.2595527
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.4816587   -0.5953933   -0.3679242
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -1.1818421   -1.5908999   -0.7727843
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -1.2297474   -1.3338758   -1.1256189
6 months    MAL-ED           PERU                           Low birthweight              NA                -2.5562500   -2.9660921   -2.1464079
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.0017577   -1.1283198   -0.8751956
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.0173333   -2.6374080   -1.3972587
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1471004   -1.2457026   -1.0484981
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0464790   -2.2066706   -1.8862875
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.0047706   -1.0815391   -0.9280021
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.8203235   -1.9551422   -1.6855048
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.8985936   -0.9789737   -0.8182136
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7141958   -1.8484090   -1.5799827
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.1600648   -1.2637140   -1.0564156
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -2.1584056   -2.2546577   -2.0621534
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5104788   -0.5599749   -0.4609828
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.3796269   -1.6560163   -1.1032374
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7372449   -0.7633890   -0.7111008
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7791682   -1.8502140   -1.7081224
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.4866510   -2.5940829   -2.3792192
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.9936434   -3.2335267   -2.7537601
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8932767   -2.9782557   -2.8082978
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -3.6485246   -3.8937748   -3.4032743
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -1.9705444   -2.0073841   -1.9337048
24 months   COHORTS          INDIA                          Low birthweight              NA                -2.7315182   -2.8055206   -2.6575157
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3453874   -2.3919628   -2.2988120
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0876415   -3.2406371   -2.9346459
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -2.4468833   -2.6093811   -2.2843856
24 months   EE               PAKISTAN                       Low birthweight              NA                -3.0029851   -3.2458695   -2.7601006
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7638545   -1.8596000   -1.6681090
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2163005   -2.3868103   -2.0457907
24 months   IRC              INDIA                          Normal or high birthweight   NA                -1.6764378   -1.7759768   -1.5768988
24 months   IRC              INDIA                          Low birthweight              NA                -2.2986765   -2.5189054   -2.0784475
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4663204   -1.5318790   -1.4007619
24 months   Keneba           GAMBIA                         Low birthweight              NA                -2.0846457   -2.2525549   -1.9167365
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.8438485   -1.9750508   -1.7126462
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -2.4791111   -2.7799869   -2.1782354
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -1.8402432   -1.9754811   -1.7050054
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.9380303   -2.2556066   -1.6204540
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -1.2512808   -1.3751253   -1.1274363
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -1.6547222   -2.1001159   -1.2093285
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -1.6688503   -1.7834261   -1.5542744
24 months   MAL-ED           PERU                           Low birthweight              NA                -2.9893056   -3.5631394   -2.4154717
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.6225409   -1.7602959   -1.4847859
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.0707692   -2.6891041   -1.4524344
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9914344   -2.1116520   -1.8712168
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7588911   -2.9374056   -2.5803766
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.2705670   -1.3601006   -1.1810334
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.9669048   -2.1379364   -1.7958731
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.4557403   -1.5485754   -1.3629052
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0656835   -2.2277057   -1.9036612
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5242510   -1.5837172   -1.4647849
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.1865026   -2.3541463   -2.0188589


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3096345   -0.4709405   -0.1483285
Birth       Keneba           GAMBIA                         NA                   NA                 0.0272662   -0.0366578    0.0911901
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4167959   -1.5608725   -1.2727194
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    EE               PAKISTAN                       NA                   NA                -2.0800314   -2.1993502   -1.9607126
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    IRC              INDIA                          NA                   NA                -1.2148213   -1.3469493   -1.0826933
6 months    Keneba           GAMBIA                         NA                   NA                -0.9022065   -0.9593933   -0.8450196
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2094328   -1.3276892   -1.0911764
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.1727166   -1.2902312   -1.0552020
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5397525   -0.6522623   -0.4272428
6 months    MAL-ED           PERU                           NA                   NA                -1.3083549   -1.4159952   -1.2007147
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0619697   -1.1900452   -0.9338942
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3098656   -1.4501587   -1.1695725
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8663392   -0.8919231   -0.8407552
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5467080   -2.6470149   -2.4464010
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9641538   -3.0462906   -2.8820170
24 months   COHORTS          INDIA                          NA                   NA                -2.1129333   -2.1469655   -2.0789011
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4107897   -2.4561358   -2.3654436
24 months   EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   IRC              INDIA                          NA                   NA                -1.7814309   -1.8749526   -1.6879093
24 months   Keneba           GAMBIA                         NA                   NA                -1.5547363   -1.6172161   -1.4922564
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9799762   -2.1065965   -1.8533558
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8550459   -1.9795611   -1.7305306
24 months   MAL-ED           NEPAL                          NA                   NA                -1.2841403   -1.4044291   -1.1638514
24 months   MAL-ED           PERU                           NA                   NA                -1.7484757   -1.8697456   -1.6272058
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5512346   -2.7029497   -2.3995194
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6024251   -1.6594303   -1.5454198


### Parameter: ATE


agecat      studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.2671268   -1.6539356   -0.8803181
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0979762   -3.0701709   -1.1257815
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.8317159   -2.1483681   -1.5150637
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5063096   -1.5670322   -1.4455870
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6873872   -1.8255108   -1.5492636
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.2840000   -1.6622115   -0.9057885
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.3069622   -1.4522558   -1.1616685
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7590460   -1.2356950   -0.2823970
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.3709144   -1.5359090   -1.2059198
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4127024   -1.6726220   -1.1527829
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.7445588   -2.0494480   -1.4396696
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3994089   -1.5535784   -1.2452393
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0516188   -1.1977399   -0.9054976
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1797147   -1.3012371   -1.0581924
Birth       ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4806820   -1.6357098   -1.3256541
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3638445   -1.4269091   -1.3007798
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0525234   -1.4357763   -0.6692705
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0587014   -1.3491429   -0.7682599
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.9982841   -1.0690751   -0.9274930
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0040043   -1.1511646   -0.8568441
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9676524   -1.2017603   -0.7335445
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7583900   -0.9204128   -0.5963672
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8471927   -1.2265256   -0.4678597
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8703444   -1.0321525   -0.7085363
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7658206   -1.0395960   -0.4920452
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.7110997   -1.3339447   -0.0882546
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.4240298   -0.7259288   -0.1221307
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.7001834   -1.1247583   -0.2756085
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.3265026   -1.7493658   -0.9036394
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.0155756   -1.6484347   -0.3827166
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8993787   -1.0874843   -0.7112730
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8155529   -0.9706963   -0.6604095
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8156022   -0.9720443   -0.6591601
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.9983408   -1.1259021   -0.8707794
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.8691480   -1.1499344   -0.5883617
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0419233   -1.1176268   -0.9662198
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5069924   -0.7698338   -0.2441510
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7552478   -1.0148034   -0.4956923
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7609737   -0.8436388   -0.6783086
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7422541   -0.9021820   -0.5823262
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5561017   -0.8483317   -0.2638718
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4524460   -0.6479986   -0.2568935
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6222387   -0.8639178   -0.3805595
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.6183253   -0.7985790   -0.4380715
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6352626   -0.9635007   -0.3070245
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0977871   -0.4429594    0.2473853
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.4034414   -0.8657325    0.0588496
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.3204553   -1.9056159   -0.7352947
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.4482283   -1.0817221    0.1852655
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7674567   -0.9826768   -0.5522366
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6963378   -0.8893872   -0.5032883
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6099431   -0.7966771   -0.4232091
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6622516   -0.8401297   -0.4843734


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1515043   -0.2478059   -0.0552026
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.9682967   -1.5760943   -0.3604991
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1565369   -0.2014680   -0.1116059
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3108834   -0.3301749   -0.2915919
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1657055   -0.1882119   -0.1431991
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.4280000   -0.5755887   -0.2804113
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4131202   -0.4775426   -0.3486979
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1308017   -0.2178247   -0.0437786
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1981505   -0.2321057   -0.1641953
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.3302421   -0.4285394   -0.2319448
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0898485   -0.1418899   -0.0378072
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4258070   -0.4952633   -0.3563506
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2471017   -0.2942562   -0.1999471
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2998533   -0.3531249   -0.2465816
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.3997368   -0.4597826   -0.3396911
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1874670   -0.1991462   -0.1757878
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1224542   -0.1790535   -0.0658550
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0933744   -0.1266291   -0.0601198
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.2002627   -0.2175758   -0.1829496
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0933958   -0.1110022   -0.0757893
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.3381581   -0.4324836   -0.2438326
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2236106   -0.2792844   -0.1679367
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.1394382   -0.2090496   -0.0698268
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1226572   -0.1506624   -0.0946520
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1608867   -0.2307837   -0.0909896
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0340239   -0.0702671    0.0022193
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0635111   -0.1128456   -0.0141766
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0580938   -0.1013303   -0.0148573
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0786076   -0.1236494   -0.0335658
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0602120   -0.1080110   -0.0124130
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2621741   -0.3273511   -0.1969970
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1939077   -0.2387319   -0.1490835
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1930979   -0.2393322   -0.1468635
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2431856   -0.2972081   -0.1891630
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0289572   -0.0405336   -0.0173808
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1290943   -0.1409434   -0.1172451
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0600569   -0.0954724   -0.0246415
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0708771   -0.1005493   -0.0412049
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.1423889   -0.1599649   -0.1248129
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0654023   -0.0818122   -0.0489924
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.2231067   -0.3474647   -0.0987486
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1226342   -0.1785728   -0.0666957
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1049931   -0.1517042   -0.0582820
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0884158   -0.1173112   -0.0595204
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1361277   -0.2148431   -0.0574123
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0148026   -0.0672612    0.0376559
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0328595   -0.0732371    0.0075181
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0796254   -0.1358570   -0.0233939
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0245864   -0.0616944    0.0125217
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2354275   -0.3097504   -0.1611047
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1706976   -0.2246549   -0.1167403
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1466818   -0.1963709   -0.0969927
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0781740   -0.1015883   -0.0547598
