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
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight     12858   22454
Birth       JiVitA-3         BANGLADESH                     Low birthweight                 9596   22454
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight      1799    2823
Birth       JiVitA-4         BANGLADESH                     Low birthweight                 1024    2823
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
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight      8359   14130
6 months    JiVitA-3         BANGLADESH                     Low birthweight                 5771   14130
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      3004    4041
6 months    JiVitA-4         BANGLADESH                     Low birthweight                 1037    4041
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
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight      4241    7307
24 months   JiVitA-3         BANGLADESH                     Low birthweight                 3066    7307
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2955    4010
24 months   JiVitA-4         BANGLADESH                     Low birthweight                 1055    4010
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
![](/tmp/9a617780-e807-48e5-b61a-4d113e608b5c/d2e8fbb8-879f-4074-b96f-ddd439de0475/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9a617780-e807-48e5-b61a-4d113e608b5c/d2e8fbb8-879f-4074-b96f-ddd439de0475/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9a617780-e807-48e5-b61a-4d113e608b5c/d2e8fbb8-879f-4074-b96f-ddd439de0475/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8106056   -1.0347325   -0.5864786
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.9177365   -2.2715476   -1.5639254
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.8532014   -1.4573086   -0.2490943
Birth       CMIN             BANGLADESH                     Low birthweight              NA                -2.8544738   -3.6751566   -2.0337909
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2757650    0.1933220    0.3582079
Birth       COHORTS          GUATEMALA                      Low birthweight              NA                -1.4856458   -1.7669389   -1.2043526
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3617859   -0.3885552   -0.3350167
Birth       COHORTS          INDIA                          Low birthweight              NA                -1.8629392   -1.9180710   -1.8078074
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0783499   -0.1141449   -0.0425549
Birth       COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7655651   -1.9015614   -1.6295687
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -1.4305695   -1.6332076   -1.2279314
Birth       EE               PAKISTAN                       Low birthweight              NA                -2.7415996   -3.0739245   -2.4092746
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6690940   -0.7476823   -0.5905057
Birth       GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9838352   -2.1091794   -1.8584910
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1744249   -0.3422047   -0.0066451
Birth       IRC              INDIA                          Low birthweight              NA                -0.8255423   -1.2799296   -0.3711551
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9621571   -0.9796463   -0.9446679
Birth       JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.4306939   -2.4532683   -2.4081195
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.0177095   -1.0658867   -0.9695324
Birth       JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.4066186   -2.4683392   -2.3448980
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2222622    0.1579367    0.2865876
Birth       Keneba           GAMBIA                         Low birthweight              NA                -1.0632593   -1.2155087   -0.9110099
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.7896904   -0.9153856   -0.6639952
Birth       MAL-ED           BANGLADESH                     Low birthweight              NA                -2.2284138   -2.4611928   -1.9956349
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       MAL-ED           INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.7932680   -0.9045669   -0.6819692
Birth       MAL-ED           PERU                           Low birthweight              NA                -2.5521692   -2.8902740   -2.2140643
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307701
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5056919   -0.5942221   -0.4171618
Birth       NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9132714   -2.0393610   -1.7871817
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.6583302   -0.7326734   -0.5839871
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.7202086   -1.8519324   -1.5884848
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.5839590   -0.6589918   -0.5089262
Birth       PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7789460   -1.8733066   -1.6845855
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.0312216   -1.1000588   -0.9623844
Birth       SAS-CompFeed     INDIA                          Low birthweight              NA                -2.5064290   -2.6956761   -2.3171818
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3142458   -0.3341102   -0.2943814
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6710331   -1.7304253   -1.6116409
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.2965373   -1.4478403   -1.1452343
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.3514361   -2.7053717   -1.9975004
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6926155   -1.7655058   -1.6197252
6 months    COHORTS          GUATEMALA                      Low birthweight              NA                -2.7596659   -3.0430810   -2.4762508
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.7981760   -0.8282981   -0.7680539
6 months    COHORTS          INDIA                          Low birthweight              NA                -1.7898268   -1.8555986   -1.7240550
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0438039   -1.0865402   -1.0010677
6 months    COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0495989   -2.1928100   -1.9063878
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -1.7461377   -1.8795484   -1.6127271
6 months    EE               PAKISTAN                       Low birthweight              NA                -2.7067653   -2.9002407   -2.5132898
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1258525   -1.2109605   -1.0407444
6 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8948121   -2.0361064   -1.7535177
6 months    IRC              INDIA                          Normal or high birthweight   NA                -1.0691165   -1.2060679   -0.9321650
6 months    IRC              INDIA                          Low birthweight              NA                -1.8823794   -2.2343923   -1.5303666
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.9616058   -0.9881052   -0.9351065
6 months    JiVitA-3         BANGLADESH                     Low birthweight              NA                -1.8685528   -1.9001042   -1.8370015
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.1408668   -1.1858960   -1.0958375
6 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -1.9715348   -2.0467077   -1.8963619
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7783143   -0.8371936   -0.7194350
6 months    Keneba           GAMBIA                         Low birthweight              NA                -1.6341775   -1.7901368   -1.4782183
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.0466837   -1.1721482   -0.9212192
6 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -1.8217605   -2.0645748   -1.5789463
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0813743   -0.0652942    0.2280428
6 months    MAL-ED           BRAZIL                         Low birthweight              NA                -0.8563995   -1.5359572   -0.1768417
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -1.1114803   -1.2391202   -0.9838404
6 months    MAL-ED           INDIA                          Low birthweight              NA                -1.5424059   -1.8117994   -1.2730124
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.4872279   -0.6011240   -0.3733318
6 months    MAL-ED           NEPAL                          Low birthweight              NA                -1.4748892   -1.9223419   -1.0274365
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -1.2296010   -1.3338095   -1.1253925
6 months    MAL-ED           PERU                           Low birthweight              NA                -2.6622249   -3.0927949   -2.2316549
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.0034158   -1.1308495   -0.8759821
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -2.5961864   -3.1032648   -2.0891081
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1479328   -1.2462893   -1.0495763
6 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0450751   -2.2054812   -1.8846690
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.0019311   -1.0787507   -0.9251116
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.8347773   -1.9723347   -1.6972200
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.8995982   -0.9800370   -0.8191593
6 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -1.7119236   -1.8497904   -1.5740568
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -1.1616137   -1.2618404   -1.0613870
6 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -2.1525449   -2.2470364   -2.0580535
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5105308   -0.5600315   -0.4610301
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.4673794   -1.7513557   -1.1834030
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7368509   -0.7629797   -0.7107221
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7799357   -1.8500402   -1.7098313
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.4877602   -2.5953234   -2.3801971
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -3.0126263   -3.2600912   -2.7651613
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8943947   -2.9791368   -2.8096526
24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -3.5964662   -3.8416372   -3.3512952
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -1.9737043   -2.0105542   -1.9368544
24 months   COHORTS          INDIA                          Low birthweight              NA                -2.7246350   -2.7988652   -2.6504049
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3457548   -2.3923396   -2.2991699
24 months   COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0830629   -3.2378788   -2.9282470
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -2.4434434   -2.6070108   -2.2798760
24 months   EE               PAKISTAN                       Low birthweight              NA                -3.0020133   -3.2461641   -2.7578624
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7629321   -1.8577193   -1.6681449
24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2425063   -2.4179753   -2.0670374
24 months   IRC              INDIA                          Normal or high birthweight   NA                -1.6730293   -1.7724873   -1.5735712
24 months   IRC              INDIA                          Low birthweight              NA                -2.3441859   -2.5654500   -2.1229217
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -1.7792324   -1.8147211   -1.7437437
24 months   JiVitA-3         BANGLADESH                     Low birthweight              NA                -2.3969232   -2.4361609   -2.3576855
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -1.6468773   -1.6899284   -1.6038262
24 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -2.1215830   -2.1893485   -2.0538174
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4677380   -1.5330921   -1.4023840
24 months   Keneba           GAMBIA                         Low birthweight              NA                -2.0668652   -2.2447528   -1.8889775
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -1.8416036   -1.9732481   -1.7099591
24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -2.4715096   -2.7782488   -2.1647704
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -1.8370979   -1.9725055   -1.7016903
24 months   MAL-ED           INDIA                          Low birthweight              NA                -1.9492752   -2.2849108   -1.6136395
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -1.2512602   -1.3751635   -1.1273570
24 months   MAL-ED           NEPAL                          Low birthweight              NA                -1.6131804   -2.0915343   -1.1348264
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -1.6692528   -1.7840278   -1.5544778
24 months   MAL-ED           PERU                           Low birthweight              NA                -3.1581406   -3.7643721   -2.5519091
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -1.6224115   -1.7602621   -1.4845608
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -1.9672107   -2.6675244   -1.2668970
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -2.0004377   -2.1194458   -1.8814296
24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7563716   -2.9343036   -2.5784397
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -1.2680821   -1.3573242   -1.1788400
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -1.9724545   -2.1490995   -1.7958094
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -1.4594761   -1.5523067   -1.3666455
24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -2.0550719   -2.2146235   -1.8955204
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5232671   -1.5826650   -1.4638692
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.1744351   -2.3405441   -2.0083261


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
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5893720   -1.6085904   -1.5701537
Birth       JiVitA-4         BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
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
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3327473   -1.3568007   -1.3086940
6 months    JiVitA-4         BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
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
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0396606   -2.0692906   -2.0100306
24 months   JiVitA-4         BANGLADESH                     NA                   NA                -1.7744364   -1.8128124   -1.7360604
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
Birth       CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.1071309   -1.5285303   -0.6857316
Birth       CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0012723   -3.0499087   -0.9526360
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.7614107   -2.0545535   -1.4682680
Birth       COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5011533   -1.5624889   -1.4398177
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6872152   -1.8278419   -1.5465885
Birth       EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.3110301   -1.6995843   -0.9224759
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.3147412   -1.4627795   -1.1667028
Birth       IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6511174   -1.1363966   -0.1658382
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4685367   -1.4955428   -1.4415307
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3889091   -1.4666263   -1.3111918
Birth       Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.2855215   -1.4508566   -1.1201864
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4387235   -1.7042661   -1.1731809
Birth       MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.7589011   -2.1154523   -1.4023500
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4075794   -1.5616848   -1.2534741
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0618784   -1.2131271   -0.9106296
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1949870   -1.3154554   -1.0745186
Birth       ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -1.4752074   -1.6452725   -1.3051422
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3567873   -1.4192919   -1.2942827
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0548987   -1.4385703   -0.6712271
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0670503   -1.3594951   -0.7746055
6 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.9916508   -1.0640983   -0.9192033
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0057950   -1.1552498   -0.8563401
6 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9606275   -1.1949802   -0.7262748
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7689596   -0.9334185   -0.6045007
6 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8132630   -1.1896476   -0.4368784
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9069470   -0.9445377   -0.8693564
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8306681   -0.9178183   -0.7435178
6 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8558632   -1.0226371   -0.6890894
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7750768   -1.0485627   -0.5015910
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.9377738   -1.6339211   -0.2416264
6 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.4309257   -0.7290016   -0.1328497
6 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.9876613   -1.4498751   -0.5254475
6 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.4326239   -1.8760448   -0.9892030
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.5927706   -2.1177950   -1.0677462
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8971423   -1.0850125   -0.7092720
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8328462   -0.9903770   -0.6753154
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8123254   -0.9720773   -0.6525735
6 months    ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.9909312   -1.1130949   -0.8687675
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.9568486   -1.2450589   -0.6686383
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0430848   -1.1177101   -0.9684596
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5248661   -0.7945347   -0.2551974
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7020715   -0.9610081   -0.4431349
24 months   COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7509308   -0.8337506   -0.6681109
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7373082   -0.8990059   -0.5756104
24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5585699   -0.8527693   -0.2643704
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4795742   -0.6787676   -0.2803808
24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6711566   -0.9134541   -0.4288591
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6176908   -0.6658900   -0.5694916
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4747057   -0.5524396   -0.3969718
24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.5991271   -0.7873280   -0.4109263
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6299060   -0.9651100   -0.2947019
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.1121773   -0.4769492    0.2525947
24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.3619202   -0.8549168    0.1310765
24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -1.4888878   -2.1048789   -0.8728966
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.3447992   -1.0584232    0.3688248
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7559339   -0.9709747   -0.5408930
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7043724   -0.9020922   -0.5066526
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5955958   -0.7800446   -0.4111470
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6511680   -0.8270365   -0.4752995


### Parameter: PAR


agecat      studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1505901   -0.2471050   -0.0540752
Birth       CMIN             BANGLADESH                     Normal or high birthweight   NA                -1.0279524   -1.6764024   -0.3795024
Birth       COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1535711   -0.1991222   -0.1080200
Birth       COHORTS          INDIA                          Normal or high birthweight   NA                -0.3080288   -0.3274223   -0.2886353
Birth       COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1651887   -0.1876965   -0.1426810
Birth       EE               PAKISTAN                       Normal or high birthweight   NA                -0.4303055   -0.5804082   -0.2802029
Birth       GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4160640   -0.4819276   -0.3502005
Birth       IRC              INDIA                          Normal or high birthweight   NA                -0.1352096   -0.2231373   -0.0472819
Birth       JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.6272149   -0.6441242   -0.6103056
Birth       JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.5055813   -0.5448582   -0.4663044
Birth       Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1949960   -0.2291937   -0.1607982
Birth       MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.3284049   -0.4266165   -0.2301933
Birth       MAL-ED           INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       MAL-ED           PERU                           Normal or high birthweight   NA                -0.0895217   -0.1425978   -0.0364455
Birth       MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4253278   -0.4952160   -0.3554396
Birth       NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2511643   -0.2997578   -0.2025708
Birth       PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.3011430   -0.3552058   -0.2470802
Birth       ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.4002001   -0.4545982   -0.3458021
Birth       ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1867202   -0.1983397   -0.1751007
6 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1202586   -0.1756057   -0.0649115
6 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0932340   -0.1263442   -0.0601238
6 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.1958090   -0.2132330   -0.1783850
6 months    COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0934504   -0.1110918   -0.0758089
6 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.3338936   -0.4280637   -0.2397235
6 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2252014   -0.2811267   -0.1692762
6 months    IRC              INDIA                          Normal or high birthweight   NA                -0.1457048   -0.2150228   -0.0763869
6 months    JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.3711415   -0.3881008   -0.3541823
6 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.2100686   -0.2349429   -0.1851944
6 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1238922   -0.1522440   -0.0955403
6 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1627491   -0.2331835   -0.0923147
6 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0337986   -0.0702656    0.0026684
6 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0612363   -0.1108738   -0.0115988
6 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0525247   -0.0950012   -0.0100482
6 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0787539   -0.1237927   -0.0337151
6 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0585539   -0.1060010   -0.0111068
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2613416   -0.3262619   -0.1964214
6 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1967472   -0.2420257   -0.1514687
6 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1920933   -0.2385263   -0.1456604
6 months    ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.2416366   -0.2923461   -0.1909272
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0289052   -0.0404889   -0.0173215
6 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1294883   -0.1412553   -0.1177212
24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0589478   -0.0940781   -0.0238175
24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0697591   -0.0996223   -0.0398960
24 months   COHORTS          INDIA                          Normal or high birthweight   NA                -0.1392290   -0.1568219   -0.1216362
24 months   COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0650349   -0.0814523   -0.0486176
24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.2265466   -0.3519373   -0.1011559
24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1235566   -0.1795460   -0.0675671
24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.1084017   -0.1556265   -0.0611768
24 months   JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.2604282   -0.2814234   -0.2394329
24 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.1275591   -0.1493003   -0.1058180
24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0869982   -0.1151287   -0.0588678
24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1383726   -0.2182647   -0.0584804
24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0179480   -0.0730161    0.0371202
24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0328800   -0.0723165    0.0065564
24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0792229   -0.1343254   -0.0241204
24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0247158   -0.0619461    0.0125145
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2264242   -0.3003612   -0.1524871
24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.1731825   -0.2270981   -0.1192669
24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.1429461   -0.1925807   -0.0933114
24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0791580   -0.1023725   -0.0559434
