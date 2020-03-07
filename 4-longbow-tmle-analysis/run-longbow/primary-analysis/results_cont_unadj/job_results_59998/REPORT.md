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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mage       n_cell       n
----------  ---------------  -----------------------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        75      86
Birth       CMC-V-BCS-2002   INDIA                          <20             7      86
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      86
Birth       COHORTS          GUATEMALA                      [20-30)       367     756
Birth       COHORTS          GUATEMALA                      <20           101     756
Birth       COHORTS          GUATEMALA                      >=30          288     756
Birth       COHORTS          INDIA                          [20-30)      2965    4405
Birth       COHORTS          INDIA                          <20           337    4405
Birth       COHORTS          INDIA                          >=30         1103    4405
Birth       COHORTS          PHILIPPINES                    [20-30)      1744    2899
Birth       COHORTS          PHILIPPINES                    <20           354    2899
Birth       COHORTS          PHILIPPINES                    >=30          801    2899
Birth       EE               PAKISTAN                       [20-30)        68     177
Birth       EE               PAKISTAN                       <20             1     177
Birth       EE               PAKISTAN                       >=30          108     177
Birth       GMS-Nepal        NEPAL                          [20-30)       421     641
Birth       GMS-Nepal        NEPAL                          <20           125     641
Birth       GMS-Nepal        NEPAL                          >=30           95     641
Birth       IRC              INDIA                          [20-30)       289     343
Birth       IRC              INDIA                          <20            28     343
Birth       IRC              INDIA                          >=30           26     343
Birth       JiVitA-3         BANGLADESH                     [20-30)      9028   18006
Birth       JiVitA-3         BANGLADESH                     <20          7251   18006
Birth       JiVitA-3         BANGLADESH                     >=30         1727   18006
Birth       Keneba           GAMBIA                         [20-30)       670    1466
Birth       Keneba           GAMBIA                         <20           224    1466
Birth       Keneba           GAMBIA                         >=30          572    1466
Birth       MAL-ED           BANGLADESH                     [20-30)       148     215
Birth       MAL-ED           BANGLADESH                     <20            28     215
Birth       MAL-ED           BANGLADESH                     >=30           39     215
Birth       MAL-ED           BRAZIL                         [20-30)        39      62
Birth       MAL-ED           BRAZIL                         <20             8      62
Birth       MAL-ED           BRAZIL                         >=30           15      62
Birth       MAL-ED           INDIA                          [20-30)        36      45
Birth       MAL-ED           INDIA                          <20             7      45
Birth       MAL-ED           INDIA                          >=30            2      45
Birth       MAL-ED           NEPAL                          [20-30)        21      26
Birth       MAL-ED           NEPAL                          <20             0      26
Birth       MAL-ED           NEPAL                          >=30            5      26
Birth       MAL-ED           PERU                           [20-30)       113     228
Birth       MAL-ED           PERU                           <20            63     228
Birth       MAL-ED           PERU                           >=30           52     228
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        65     120
Birth       MAL-ED           SOUTH AFRICA                   <20            22     120
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        66     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           42     115
Birth       NIH-Birth        BANGLADESH                     [20-30)       385     573
Birth       NIH-Birth        BANGLADESH                     <20            67     573
Birth       NIH-Birth        BANGLADESH                     >=30          121     573
Birth       NIH-Crypto       BANGLADESH                     [20-30)       469     707
Birth       NIH-Crypto       BANGLADESH                     <20           124     707
Birth       NIH-Crypto       BANGLADESH                     >=30          114     707
Birth       PROBIT           BELARUS                        [20-30)      9889   13817
Birth       PROBIT           BELARUS                        <20          1402   13817
Birth       PROBIT           BELARUS                        >=30         2526   13817
Birth       PROVIDE          BANGLADESH                     [20-30)       366     532
Birth       PROVIDE          BANGLADESH                     <20            67     532
Birth       PROVIDE          BANGLADESH                     >=30           99     532
Birth       SAS-CompFeed     INDIA                          [20-30)       841    1103
Birth       SAS-CompFeed     INDIA                          <20           138    1103
Birth       SAS-CompFeed     INDIA                          >=30          124    1103
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      8680   12881
Birth       ZVITAMBO         ZIMBABWE                       <20          2030   12881
Birth       ZVITAMBO         ZIMBABWE                       >=30         2171   12881
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       292     368
6 months    CMC-V-BCS-2002   INDIA                          <20            33     368
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     368
6 months    COHORTS          GUATEMALA                      [20-30)       471     963
6 months    COHORTS          GUATEMALA                      <20           118     963
6 months    COHORTS          GUATEMALA                      >=30          374     963
6 months    COHORTS          INDIA                          [20-30)      3326    4897
6 months    COHORTS          INDIA                          <20           371    4897
6 months    COHORTS          INDIA                          >=30         1200    4897
6 months    COHORTS          PHILIPPINES                    [20-30)      1600    2706
6 months    COHORTS          PHILIPPINES                    <20           331    2706
6 months    COHORTS          PHILIPPINES                    >=30          775    2706
6 months    EE               PAKISTAN                       [20-30)       159     372
6 months    EE               PAKISTAN                       <20             1     372
6 months    EE               PAKISTAN                       >=30          212     372
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    GMS-Nepal        NEPAL                          <20           108     564
6 months    GMS-Nepal        NEPAL                          >=30           85     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    Guatemala BSC    GUATEMALA                      <20            46     276
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    IRC              INDIA                          [20-30)       342     408
6 months    IRC              INDIA                          <20            37     408
6 months    IRC              INDIA                          >=30           29     408
6 months    JiVitA-3         BANGLADESH                     [20-30)      7656   16779
6 months    JiVitA-3         BANGLADESH                     <20          7904   16779
6 months    JiVitA-3         BANGLADESH                     >=30         1219   16779
6 months    Keneba           GAMBIA                         [20-30)       987    2080
6 months    Keneba           GAMBIA                         <20           288    2080
6 months    Keneba           GAMBIA                         >=30          805    2080
6 months    LCNI-5           MALAWI                         [20-30)       364     669
6 months    LCNI-5           MALAWI                         <20           107     669
6 months    LCNI-5           MALAWI                         >=30          198     669
6 months    MAL-ED           BANGLADESH                     [20-30)       165     241
6 months    MAL-ED           BANGLADESH                     <20            35     241
6 months    MAL-ED           BANGLADESH                     >=30           41     241
6 months    MAL-ED           BRAZIL                         [20-30)       125     209
6 months    MAL-ED           BRAZIL                         <20            37     209
6 months    MAL-ED           BRAZIL                         >=30           47     209
6 months    MAL-ED           INDIA                          [20-30)       179     234
6 months    MAL-ED           INDIA                          <20            34     234
6 months    MAL-ED           INDIA                          >=30           21     234
6 months    MAL-ED           NEPAL                          [20-30)       185     236
6 months    MAL-ED           NEPAL                          <20             5     236
6 months    MAL-ED           NEPAL                          >=30           46     236
6 months    MAL-ED           PERU                           [20-30)       136     273
6 months    MAL-ED           PERU                           <20            76     273
6 months    MAL-ED           PERU                           >=30           61     273
6 months    MAL-ED           SOUTH AFRICA                   [20-30)       118     254
6 months    MAL-ED           SOUTH AFRICA                   <20            42     254
6 months    MAL-ED           SOUTH AFRICA                   >=30           94     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       128     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20            15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30          104     247
6 months    NIH-Birth        BANGLADESH                     [20-30)       357     535
6 months    NIH-Birth        BANGLADESH                     <20            61     535
6 months    NIH-Birth        BANGLADESH                     >=30          117     535
6 months    NIH-Crypto       BANGLADESH                     [20-30)       462     715
6 months    NIH-Crypto       BANGLADESH                     <20           131     715
6 months    NIH-Crypto       BANGLADESH                     >=30          122     715
6 months    PROBIT           BELARUS                        [20-30)     11314   15757
6 months    PROBIT           BELARUS                        <20          1619   15757
6 months    PROBIT           BELARUS                        >=30         2824   15757
6 months    PROVIDE          BANGLADESH                     [20-30)       424     603
6 months    PROVIDE          BANGLADESH                     <20            66     603
6 months    PROVIDE          BANGLADESH                     >=30          113     603
6 months    SAS-CompFeed     INDIA                          [20-30)      1015    1334
6 months    SAS-CompFeed     INDIA                          <20           171    1334
6 months    SAS-CompFeed     INDIA                          >=30          148    1334
6 months    SAS-FoodSuppl    INDIA                          [20-30)       260     380
6 months    SAS-FoodSuppl    INDIA                          <20            36     380
6 months    SAS-FoodSuppl    INDIA                          >=30           84     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1317    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2011
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2011
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5631    8489
6 months    ZVITAMBO         ZIMBABWE                       <20          1292    8489
6 months    ZVITAMBO         ZIMBABWE                       >=30         1566    8489
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       296     372
24 months   CMC-V-BCS-2002   INDIA                          <20            34     372
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     372
24 months   COHORTS          GUATEMALA                      [20-30)       532    1076
24 months   COHORTS          GUATEMALA                      <20           154    1076
24 months   COHORTS          GUATEMALA                      >=30          390    1076
24 months   COHORTS          INDIA                          [20-30)      2446    3665
24 months   COHORTS          INDIA                          <20           246    3665
24 months   COHORTS          INDIA                          >=30          973    3665
24 months   COHORTS          PHILIPPINES                    [20-30)      1461    2449
24 months   COHORTS          PHILIPPINES                    <20           293    2449
24 months   COHORTS          PHILIPPINES                    >=30          695    2449
24 months   EE               PAKISTAN                       [20-30)        66     168
24 months   EE               PAKISTAN                       <20             1     168
24 months   EE               PAKISTAN                       >=30          101     168
24 months   GMS-Nepal        NEPAL                          [20-30)       317     487
24 months   GMS-Nepal        NEPAL                          <20            94     487
24 months   GMS-Nepal        NEPAL                          >=30           76     487
24 months   IRC              INDIA                          [20-30)       343     409
24 months   IRC              INDIA                          <20            37     409
24 months   IRC              INDIA                          >=30           29     409
24 months   JiVitA-3         BANGLADESH                     [20-30)      4041    8598
24 months   JiVitA-3         BANGLADESH                     <20          3845    8598
24 months   JiVitA-3         BANGLADESH                     >=30          712    8598
24 months   Keneba           GAMBIA                         [20-30)       791    1715
24 months   Keneba           GAMBIA                         <20           217    1715
24 months   Keneba           GAMBIA                         >=30          707    1715
24 months   LCNI-5           MALAWI                         [20-30)       241     461
24 months   LCNI-5           MALAWI                         <20            78     461
24 months   LCNI-5           MALAWI                         >=30          142     461
24 months   MAL-ED           BANGLADESH                     [20-30)       146     212
24 months   MAL-ED           BANGLADESH                     <20            29     212
24 months   MAL-ED           BANGLADESH                     >=30           37     212
24 months   MAL-ED           BRAZIL                         [20-30)       102     169
24 months   MAL-ED           BRAZIL                         <20            27     169
24 months   MAL-ED           BRAZIL                         >=30           40     169
24 months   MAL-ED           INDIA                          [20-30)       172     225
24 months   MAL-ED           INDIA                          <20            33     225
24 months   MAL-ED           INDIA                          >=30           20     225
24 months   MAL-ED           NEPAL                          [20-30)       179     228
24 months   MAL-ED           NEPAL                          <20             4     228
24 months   MAL-ED           NEPAL                          >=30           45     228
24 months   MAL-ED           PERU                           [20-30)        98     201
24 months   MAL-ED           PERU                           <20            55     201
24 months   MAL-ED           PERU                           >=30           48     201
24 months   MAL-ED           SOUTH AFRICA                   [20-30)       106     238
24 months   MAL-ED           SOUTH AFRICA                   <20            39     238
24 months   MAL-ED           SOUTH AFRICA                   >=30           93     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)       113     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             9     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           92     214
24 months   NIH-Birth        BANGLADESH                     [20-30)       288     426
24 months   NIH-Birth        BANGLADESH                     <20            44     426
24 months   NIH-Birth        BANGLADESH                     >=30           94     426
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514
24 months   NIH-Crypto       BANGLADESH                     <20           101     514
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514
24 months   PROBIT           BELARUS                        [20-30)      2845    3970
24 months   PROBIT           BELARUS                        <20           365    3970
24 months   PROBIT           BELARUS                        >=30          760    3970
24 months   PROVIDE          BANGLADESH                     [20-30)       409     579
24 months   PROVIDE          BANGLADESH                     <20            64     579
24 months   PROVIDE          BANGLADESH                     >=30          106     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)       276     432
24 months   ZVITAMBO         ZIMBABWE                       <20            69     432
24 months   ZVITAMBO         ZIMBABWE                       >=30           87     432


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/062563fd-af37-4648-8a97-f0154ee7bafe/bf4469ac-ccbf-4259-b034-be9c3c4add7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/062563fd-af37-4648-8a97-f0154ee7bafe/bf4469ac-ccbf-4259-b034-be9c3c4add7f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/062563fd-af37-4648-8a97-f0154ee7bafe/bf4469ac-ccbf-4259-b034-be9c3c4add7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -1.0812807   -1.2215533   -0.9410080
Birth       COHORTS          GUATEMALA                      <20                  NA                -1.2331683   -1.5179353   -0.9484013
Birth       COHORTS          GUATEMALA                      >=30                 NA                -0.9777778   -1.1454746   -0.8100810
Birth       COHORTS          INDIA                          [20-30)              NA                -0.9629073   -1.0047654   -0.9210491
Birth       COHORTS          INDIA                          <20                  NA                -1.1540653   -1.2795515   -1.0285791
Birth       COHORTS          INDIA                          >=30                 NA                -0.9499275   -1.0236697   -0.8761853
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.7637443   -0.8236671   -0.7038214
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.9422316   -1.0782257   -0.8062375
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.6087890   -0.6944839   -0.5230942
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -1.0744893   -1.1814253   -0.9675533
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.4335200   -1.6272977   -1.2397423
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.8851579   -1.1125334   -0.6577824
Birth       IRC              INDIA                          [20-30)              NA                -1.0314533   -1.2379730   -0.8249335
Birth       IRC              INDIA                          <20                  NA                -0.9657143   -1.5437779   -0.3876507
Birth       IRC              INDIA                          >=30                 NA                -0.8269231   -1.4629238   -0.1909223
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.7282266   -0.7529455   -0.7035078
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -0.8336161   -0.8602844   -0.8069477
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -0.8017603   -0.8639893   -0.7395312
Birth       Keneba           GAMBIA                         [20-30)              NA                -1.2348284   -1.3256256   -1.1440311
Birth       Keneba           GAMBIA                         <20                  NA                -1.3709821   -1.5202118   -1.2217525
Birth       Keneba           GAMBIA                         >=30                 NA                -1.1818094   -1.2852383   -1.0783806
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.8888851   -1.0573115   -0.7204588
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.2260714   -1.6281317   -0.8240111
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -0.9388462   -1.3149054   -0.5627870
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       MAL-ED           BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0278761   -0.1858416    0.1300894
Birth       MAL-ED           PERU                           <20                  NA                -0.1534921   -0.4132380    0.1062539
Birth       MAL-ED           PERU                           >=30                 NA                 0.0184615   -0.2284224    0.2653455
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.2015385   -0.4788294    0.0757525
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.5727273   -0.9731275   -0.1723271
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.0784848   -0.3788211    0.5357908
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3647013   -1.4870132   -1.2423894
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -1.6288060   -1.8618043   -1.3958076
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -1.1704545   -1.3447113   -0.9961978
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.2324627   -1.3338355   -1.1310899
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -1.3019355   -1.5154062   -1.0884648
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2293860   -1.4370948   -1.0216771
Birth       PROBIT           BELARUS                        [20-30)              NA                -1.1647644   -1.3783733   -0.9511555
Birth       PROBIT           BELARUS                        <20                  NA                -1.1662090   -1.3758785   -0.9565395
Birth       PROBIT           BELARUS                        >=30                 NA                -1.0787074   -1.2899987   -0.8674162
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -1.2825137   -1.3748154   -1.1902120
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.4165672   -1.6097186   -1.2234157
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -1.2774747   -1.4683918   -1.0865577
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.6808561   -0.8642510   -0.4974613
Birth       SAS-CompFeed     INDIA                          <20                  NA                -0.6494928   -0.8288757   -0.4701098
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -0.6195968   -0.9118533   -0.3273402
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5094908   -0.5410868   -0.4778948
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6832020   -0.7477318   -0.6186721
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.3763657   -0.4389276   -0.3138039
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5302968   -0.6996451   -0.3609486
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5534848   -1.0425702   -0.0643995
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.2761240   -0.7250774    0.1728294
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.1866454    0.0829540    0.2903368
6 months    COHORTS          GUATEMALA                      <20                  NA                 0.3707627    0.1885341    0.5529913
6 months    COHORTS          GUATEMALA                      >=30                 NA                 0.1477005    0.0321125    0.2632885
6 months    COHORTS          INDIA                          [20-30)              NA                -0.6758148   -0.7152250   -0.6364046
6 months    COHORTS          INDIA                          <20                  NA                -0.8750135   -0.9888536   -0.7611734
6 months    COHORTS          INDIA                          >=30                 NA                -0.7616083   -0.8282025   -0.6950141
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.2405437   -0.2930789   -0.1880086
6 months    COHORTS          PHILIPPINES                    <20                  NA                -0.2872508   -0.4097897   -0.1647118
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -0.4066968   -0.4858385   -0.3275550
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.5753684   -0.6839877   -0.4667490
6 months    GMS-Nepal        NEPAL                          <20                  NA                -0.4918519   -0.6804121   -0.3032916
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -0.8704118   -1.0707746   -0.6700489
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0059064   -0.1338904    0.1457033
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -0.0850362   -0.3696465    0.1995741
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2408475   -0.5146230    0.0329281
6 months    IRC              INDIA                          [20-30)              NA                -0.6152875   -0.7566917   -0.4738834
6 months    IRC              INDIA                          <20                  NA                -0.3097297   -0.8554783    0.2360189
6 months    IRC              INDIA                          >=30                 NA                -0.7750000   -1.3672661   -0.1827339
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.5901313   -0.6176359   -0.5626266
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -0.5848279   -0.6113097   -0.5583462
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -0.6689253   -0.7288873   -0.6089634
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0852865   -0.1581066   -0.0124663
6 months    Keneba           GAMBIA                         <20                  NA                -0.0580295   -0.1876930    0.0716340
6 months    Keneba           GAMBIA                         >=30                 NA                -0.3484477   -0.4322830   -0.2646124
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.4282418    0.3206466    0.5358369
6 months    LCNI-5           MALAWI                         <20                  NA                 0.4111215    0.2234404    0.5988026
6 months    LCNI-5           MALAWI                         >=30                 NA                 0.4803535    0.3295149    0.6311922
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.1082424   -0.2603603    0.0438754
6 months    MAL-ED           BANGLADESH                     <20                  NA                -0.1380000   -0.5397577    0.2637577
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -0.2558537   -0.5370090    0.0253016
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 1.0399733    0.8205242    1.2594224
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.9724099    0.6542745    1.2905454
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.7912411    0.4355762    1.1469061
6 months    MAL-ED           INDIA                          [20-30)              NA                -0.7616946   -0.9129753   -0.6104139
6 months    MAL-ED           INDIA                          <20                  NA                -0.6246324   -0.9135952   -0.3356695
6 months    MAL-ED           INDIA                          >=30                 NA                -0.3829365   -0.6853633   -0.0805098
6 months    MAL-ED           NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    MAL-ED           NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    MAL-ED           NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    MAL-ED           PERU                           [20-30)              NA                 1.0056924    0.8294304    1.1819544
6 months    MAL-ED           PERU                           <20                  NA                 1.0704496    0.8507953    1.2901038
6 months    MAL-ED           PERU                           >=30                 NA                 1.1362022    0.8793565    1.3930479
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.5225706    0.2891043    0.7560369
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                 0.7282540    0.2944169    1.1620910
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.4836525    0.2721601    0.6951448
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6332031    0.4606743    0.8057319
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4642222   -0.0748448    1.0032892
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4272436    0.2146777    0.6398094
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4402474   -0.5519043   -0.3285906
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -0.3121585   -0.5785523   -0.0457646
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -0.5494943   -0.7388709   -0.3601177
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0477273   -0.0498750    0.1453296
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                 0.0443130   -0.1357216    0.2243476
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -0.0538934   -0.2532373    0.1454504
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.5694091    0.5079203    0.6308979
6 months    PROBIT           BELARUS                        <20                  NA                 0.6334188    0.5706894    0.6961481
6 months    PROBIT           BELARUS                        >=30                 NA                 0.5589412    0.4858113    0.6320712
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.1897445   -0.2912436   -0.0882454
6 months    PROVIDE          BANGLADESH                     <20                  NA                -0.1538636   -0.3853583    0.0776310
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -0.2605752   -0.4374317   -0.0837187
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.6634828   -0.8209167   -0.5060488
6 months    SAS-CompFeed     INDIA                          <20                  NA                -0.5691228   -0.6535919   -0.4846538
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -0.7925676   -0.9449088   -0.6402263
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.9293077   -1.0645188   -0.7940965
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -0.8980556   -1.1669619   -0.6291492
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -1.3175000   -1.6019148   -1.0330852
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0824506    0.0177562    0.1471451
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.1772374   -0.0279412    0.3824161
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0418431   -0.0613667    0.1450528
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3242648    0.2926902    0.3558394
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3233707    0.2585736    0.3881679
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.2494764    0.1888665    0.3100863
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5589133   -0.6758726   -0.4419540
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.5758333   -0.8476059   -0.3040607
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.5296032   -0.8093404   -0.2498659
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.2889286   -0.3658042   -0.2120530
24 months   COHORTS          GUATEMALA                      <20                  NA                -0.2900000   -0.4331214   -0.1468786
24 months   COHORTS          GUATEMALA                      >=30                 NA                -0.2676667   -0.3575462   -0.1777872
24 months   COHORTS          INDIA                          [20-30)              NA                -0.6265413   -0.6679585   -0.5851240
24 months   COHORTS          INDIA                          <20                  NA                -0.7873984   -0.9076932   -0.6671035
24 months   COHORTS          INDIA                          >=30                 NA                -0.7223535   -0.7860173   -0.6586898
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.5947159   -0.6419523   -0.5474796
24 months   COHORTS          PHILIPPINES                    <20                  NA                -0.6741980   -0.7780488   -0.5703471
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -0.6149209   -0.6857810   -0.5440608
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.0698738   -1.1799860   -0.9597616
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.2564716   -1.4665393   -1.0464040
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.2648026   -1.4743538   -1.0552514
24 months   IRC              INDIA                          [20-30)              NA                -0.7527308   -0.8508001   -0.6546615
24 months   IRC              INDIA                          <20                  NA                -0.5192793   -0.8088868   -0.2296717
24 months   IRC              INDIA                          >=30                 NA                -0.9530460   -1.3414201   -0.5646719
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2846102   -1.3161096   -1.2531109
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -1.3095605   -1.3443734   -1.2747475
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.3081601   -1.3913778   -1.2249425
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.7998791   -0.8710728   -0.7286853
24 months   Keneba           GAMBIA                         <20                  NA                -0.8827043   -1.0042323   -0.7611763
24 months   Keneba           GAMBIA                         >=30                 NA                -0.7939625   -0.8670074   -0.7209176
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0053527   -0.1247089    0.1354143
24 months   LCNI-5           MALAWI                         <20                  NA                -0.2517949   -0.4777859   -0.0258038
24 months   LCNI-5           MALAWI                         >=30                 NA                 0.0915845   -0.0526796    0.2358486
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.7591096   -0.9049932   -0.6132259
24 months   MAL-ED           BANGLADESH                     <20                  NA                -1.0418966   -1.3901603   -0.6936328
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.8822973   -1.1590555   -0.6055391
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.5110948    0.2521484    0.7700411
24 months   MAL-ED           BRAZIL                         <20                  NA                 0.4481481   -0.0604169    0.9567132
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.3487917   -0.0994064    0.7969898
24 months   MAL-ED           INDIA                          [20-30)              NA                -0.9753488   -1.1166346   -0.8340630
24 months   MAL-ED           INDIA                          <20                  NA                -0.9843939   -1.2373300   -0.7314578
24 months   MAL-ED           INDIA                          >=30                 NA                -0.7480000   -0.9626989   -0.5333011
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0812160   -0.0748547    0.2372866
24 months   MAL-ED           PERU                           <20                  NA                -0.1538182   -0.4144177    0.1067813
24 months   MAL-ED           PERU                           >=30                 NA                 0.4760764    0.2364378    0.7157149
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.3799371    0.1890566    0.5708176
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6208974    0.3286143    0.9131806
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.3533423    0.1724648    0.5342198
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9464902   -1.0622456   -0.8307347
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.5726705   -0.8875720   -0.2577689
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.9550975   -1.1750684   -0.7351267
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.5919461   -0.7117981   -0.4720941
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.5927723   -0.7886432   -0.3969014
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.7106329   -0.9541787   -0.4670872
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.7070445    0.5991869    0.8149021
24 months   PROBIT           BELARUS                        <20                  NA                 0.7146164    0.2144813    1.2147516
24 months   PROBIT           BELARUS                        >=30                 NA                 0.6568969    0.5585552    0.7552386
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.8448411   -0.9458685   -0.7438137
24 months   PROVIDE          BANGLADESH                     <20                  NA                -1.0760156   -1.3129079   -0.8391234
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.9675943   -1.1411781   -0.7940106
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2507246   -1.3760084   -1.1254408
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0005797   -1.2108367   -0.7903227
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1205747   -1.3534885   -0.8876610


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       COHORTS          INDIA                          NA                   NA                -0.9742815   -1.0093427   -0.9392203
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7777196   -0.7967334   -0.7587059
Birth       Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       MAL-ED           PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3545637   -1.4492090   -1.2599184
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       PROBIT           BELARUS                        NA                   NA                -1.1491782   -1.3593933   -0.9389630
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5144298   -0.5403185   -0.4885410
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    COHORTS          INDIA                          NA                   NA                -0.7119298   -0.7444861   -0.6793734
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0619988   -0.1773839    0.0533863
6 months    IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5933575   -0.6128938   -0.5738211
6 months    Keneba           GAMBIA                         NA                   NA                -0.1833609   -0.2343611   -0.1323607
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4409268    0.3613957    0.5204578
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7077885   -0.8346769   -0.5809000
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4495343   -0.5402027   -0.3588659
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5741099    0.5141290    0.6340908
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0782666    0.0252568    0.1312764
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3103322    0.2846161    0.3360483
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2813755   -0.3354674   -0.2272835
24 months   COHORTS          INDIA                          NA                   NA                -0.6627749   -0.6962103   -0.6293395
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2977181   -1.3209986   -1.2744376
24 months   Keneba           GAMBIA                         NA                   NA                -0.8079199   -0.8550714   -0.7607684
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0115944   -0.1019822    0.0787935
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9564667   -1.0725632   -0.8403701
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9097790   -1.0080462   -0.8115117
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6981406    0.5843775    0.8119038
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1845602   -1.2836321   -1.0854883


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.1518877   -0.4693285    0.1655532
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)            0.1035029   -0.1151261    0.3221319
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.1911580   -0.3234414   -0.0588746
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.0129798   -0.0718142    0.0977738
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1784874   -0.3270981   -0.0298767
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1549553    0.0503878    0.2595227
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3590307   -0.5803565   -0.1377049
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1893314   -0.0619353    0.4405981
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)            0.0657390   -0.5481078    0.6795858
Birth       IRC              INDIA                          >=30                 [20-30)            0.2045302   -0.4641606    0.8732210
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1053894   -0.1386863   -0.0720926
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0735336   -0.1385901   -0.0084772
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.1361538   -0.3108353    0.0385277
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0530189   -0.0846098    0.1906476
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3371863   -0.7730991    0.0987265
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0499610   -0.4620144    0.3620923
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.1256160   -0.4296243    0.1783924
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.0463376   -0.2467576    0.3394329
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.3711888   -0.8582315    0.1158539
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.2800233   -0.2547841    0.8148307
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.2641047   -0.5272557   -0.0009537
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1942468   -0.0186514    0.4071449
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0694728   -0.3057908    0.1668452
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0030767   -0.2280497    0.2342031
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           -0.0014446   -0.0901038    0.0872146
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0860569    0.0284737    0.1436402
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1340535   -0.3481261    0.0800191
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0050389   -0.2070199    0.2170977
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)            0.0313634   -0.0637691    0.1264959
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0612593   -0.2060099    0.3285286
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1737112   -0.2455611   -0.1018613
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1331251    0.0630373    0.2032128
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0231880   -0.5407625    0.4943864
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.2541728   -0.2256584    0.7340040
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.1841173   -0.0255472    0.3937817
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0389449   -0.1942269    0.1163371
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.1991987   -0.3196675   -0.0787299
6 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0857935   -0.1631754   -0.0084117
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0467070   -0.1800327    0.0866187
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1661530   -0.2611444   -0.0711617
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0835165   -0.1340913    0.3011243
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2950434   -0.5229544   -0.0671323
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0909427   -0.4080328    0.2261475
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2467539   -0.5541562    0.0606485
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)            0.3055578   -0.2582123    0.8693279
6 months    IRC              INDIA                          >=30                 [20-30)           -0.1597125   -0.7686248    0.4491999
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)            0.0053033   -0.0299402    0.0405469
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0787941   -0.1450645   -0.0125237
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)            0.0272569   -0.1214555    0.1759694
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.2631612   -0.3742069   -0.1521156
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)           -0.0171203   -0.2334554    0.1992149
6 months    LCNI-5           MALAWI                         >=30                 [20-30)            0.0521118   -0.1331691    0.2373927
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0297576   -0.4593493    0.3998342
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1476112   -0.4672800    0.1720576
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0675634   -0.4540451    0.3189182
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           -0.2487322   -0.6666502    0.1691858
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)            0.1370622   -0.1891054    0.4632299
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3787581    0.0406046    0.7169116
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)            0.0647572   -0.2168743    0.3463886
6 months    MAL-ED           PERU                           >=30                 [20-30)            0.1305098   -0.1809995    0.4420190
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.2056833   -0.2869840    0.6983507
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0389181   -0.3539349    0.2760986
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1689809   -0.7349839    0.3970221
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2059595   -0.4797303    0.0678112
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1280890   -0.1607586    0.4169366
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.1092469   -0.3290894    0.1105957
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0034143   -0.2082036    0.2013750
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1016207   -0.3235760    0.1203346
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)            0.0640096    0.0142155    0.1138038
6 months    PROBIT           BELARUS                        >=30                 [20-30)           -0.0104679   -0.0548589    0.0339231
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)            0.0358809   -0.2168875    0.2886492
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0708307   -0.2747431    0.1330817
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.0943600   -0.0477000    0.2364199
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1290848   -0.2842985    0.0261289
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0312521   -0.2697340    0.3322383
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.3881923   -0.7031111   -0.0732736
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0947868   -0.1203495    0.3099231
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0406076   -0.1624173    0.0812022
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0008940   -0.0729748    0.0711867
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0747884   -0.1431296   -0.0064473
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0169200   -0.3127914    0.2789513
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.0293101   -0.2738935    0.3325137
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0010714   -0.1635325    0.1613896
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0212619   -0.0970097    0.1395335
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.1608571   -0.2880822   -0.0336319
24 months   COHORTS          INDIA                          >=30                 [20-30)           -0.0958123   -0.1717626   -0.0198619
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0794820   -0.1935709    0.0346069
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0202049   -0.1053661    0.0649563
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.1865978   -0.4237752    0.0505796
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.1949288   -0.4316489    0.0417913
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)            0.2334515   -0.0723100    0.5392131
24 months   IRC              INDIA                          >=30                 [20-30)           -0.2003152   -0.6008798    0.2002495
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0249502   -0.0705494    0.0206490
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0235499   -0.1135239    0.0664242
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0828252   -0.2236713    0.0580208
24 months   Keneba           GAMBIA                         >=30                 [20-30)            0.0059165   -0.0960840    0.1079171
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.2571476   -0.5178926    0.0035975
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0862318   -0.1080056    0.2804692
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2827870   -0.6603710    0.0947971
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1231877   -0.4360410    0.1896655
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.0629466   -0.6336406    0.5077473
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1623031   -0.6799272    0.3553210
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0090451   -0.2987663    0.2806761
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.2273488   -0.0296673    0.4843650
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           -0.2350342   -0.5387942    0.0687259
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.3948604    0.1088802    0.6808406
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.2409603   -0.1081311    0.5900517
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0265948   -0.2895625    0.2363729
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2708161   -0.8327855    0.2911533
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1197515   -0.1371659    0.3766690
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3738197    0.0383167    0.7093228
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0086074   -0.2571763    0.2399615
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0008262   -0.2304561    0.2288038
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1186868   -0.3901256    0.1527520
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0075719   -0.4662483    0.4813922
24 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0501476   -0.1485600    0.0482648
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2311745   -0.4887099    0.0263608
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1227533   -0.3235961    0.0780896
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2501449    0.0053919    0.4948979
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1301499   -0.1343210    0.3946208


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0191378   -0.0846540    0.1229296
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0113742   -0.0363285    0.0135800
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0210192   -0.0166603    0.0586986
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.0419537   -0.1058502    0.0219427
Birth       IRC              INDIA                          [20-30)              NA                 0.0208702   -0.0542483    0.0959887
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0494930   -0.0653996   -0.0335864
Birth       Keneba           GAMBIA                         [20-30)              NA                -0.0001171   -0.0678618    0.0676276
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0529753   -0.1548253    0.0488746
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0241414   -0.1455584    0.0972755
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0089551   -0.1881873    0.2060975
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0101376   -0.0516228    0.0718980
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0116887   -0.0724498    0.0490725
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0155862   -0.0004259    0.0315983
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0159450   -0.0678874    0.0359974
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0108108   -0.0267605    0.0483821
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0049390   -0.0229138    0.0130358
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0276202   -0.0496471    0.1048875
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0074356   -0.0656328    0.0805039
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0361150   -0.0585490   -0.0136809
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0532996   -0.0880423   -0.0185568
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0284732   -0.0892205    0.0322740
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0679052   -0.1608587    0.0250483
6 months    IRC              INDIA                          [20-30)              NA                 0.0163578   -0.0532078    0.0859233
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0032262   -0.0219064    0.0154540
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0980744   -0.1516585   -0.0444903
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0126850   -0.0601451    0.0855151
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0294339   -0.1191049    0.0602370
6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0678960   -0.2003160    0.0645240
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0539061   -0.0091267    0.1169390
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0471892   -0.0748590    0.1692373
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0196079   -0.1447316    0.1839474
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0969818   -0.2240662    0.0301026
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0092868   -0.0729223    0.0543486
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0179650   -0.0766633    0.0407332
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0047008   -0.0061362    0.0155378
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0093462   -0.0608686    0.0421763
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0022256   -0.0328925    0.0284412
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0828502   -0.1646662   -0.0010343
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0041840   -0.0430868    0.0347188
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0139326   -0.0322534    0.0043882
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0017628   -0.0449995    0.0485250
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0075531   -0.0471447    0.0622509
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0362336   -0.0595495   -0.0129177
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0152432   -0.0456228    0.0151363
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0664369   -0.1316751   -0.0011987
24 months   IRC              INDIA                          [20-30)              NA                 0.0069158   -0.0351308    0.0489624
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0131078   -0.0368058    0.0105902
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0080409   -0.0591910    0.0431093
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0169471   -0.1029667    0.0690726
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0601829   -0.1429280    0.0225623
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0484715   -0.2172828    0.1203398
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0188822   -0.0351632    0.0729276
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0299822   -0.0954940    0.1554584
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0290930   -0.1074433    0.1656293
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0367112   -0.0335624    0.1069848
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0184041   -0.0866521    0.0498440
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0089039   -0.0556366    0.0378288
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0480259   -0.0991892    0.0031373
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0661645   -0.0076951    0.1400240
