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

* arm
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single

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




# Results Detail

## Results Plots
![](/tmp/ff6266d9-d75e-411c-a068-e5e369557c41/978354c3-732b-4ccf-80dd-c933613286dd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ff6266d9-d75e-411c-a068-e5e369557c41/978354c3-732b-4ccf-80dd-c933613286dd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ff6266d9-d75e-411c-a068-e5e369557c41/978354c3-732b-4ccf-80dd-c933613286dd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -1.0873089   -1.2298049   -0.9448128
Birth       COHORTS          GUATEMALA                      <20                  NA                -1.2246899   -1.5807243   -0.8686555
Birth       COHORTS          GUATEMALA                      >=30                 NA                -0.9970214   -1.1793852   -0.8146576
Birth       COHORTS          INDIA                          [20-30)              NA                -0.9696805   -1.0121236   -0.9272374
Birth       COHORTS          INDIA                          <20                  NA                -1.1059013   -1.2284179   -0.9833848
Birth       COHORTS          INDIA                          >=30                 NA                -0.9366087   -1.0137262   -0.8594912
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.7602243   -0.8208526   -0.6995960
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.9088651   -1.0532903   -0.7644400
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.6158402   -0.7027374   -0.5289429
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -1.0665945   -1.1747552   -0.9584338
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.4371666   -1.6548199   -1.2195133
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.9462700   -1.1530614   -0.7394786
Birth       IRC              INDIA                          [20-30)              NA                -1.0375518   -1.2442340   -0.8308696
Birth       IRC              INDIA                          <20                  NA                -0.9488573   -1.5987131   -0.2990015
Birth       IRC              INDIA                          >=30                 NA                -0.7998045   -1.6191543    0.0195453
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.7265342   -0.7518401   -0.7012283
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -0.8403546   -0.8685822   -0.8121269
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -0.8108817   -0.8785014   -0.7432619
Birth       Keneba           GAMBIA                         [20-30)              NA                -1.2316650   -1.3242307   -1.1390993
Birth       Keneba           GAMBIA                         <20                  NA                -1.4641575   -1.6252952   -1.3030198
Birth       Keneba           GAMBIA                         >=30                 NA                -1.2099396   -1.3160992   -1.1037800
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.8920484   -1.0610892   -0.7230076
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.2482424   -1.6679098   -0.8285750
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -0.9442401   -1.3231425   -0.5653378
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1282051   -0.2476806    0.5040909
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.5562500   -0.1284217    1.2409217
Birth       MAL-ED           BRAZIL                         >=30                 NA                 1.0353333    0.3801713    1.6904954
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0348928   -0.1948115    0.1250260
Birth       MAL-ED           PERU                           <20                  NA                -0.1653344   -0.4372398    0.1065710
Birth       MAL-ED           PERU                           >=30                 NA                 0.0274350   -0.2242118    0.2790818
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.1712206   -0.4480732    0.1056320
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.5298292   -1.0174509   -0.0422076
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.0522647   -0.5718027    0.4672733
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.8186364    0.5971189    1.0401538
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 1.1171429    0.1947087    2.0395770
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.6150000    0.2609657    0.9690343
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -1.3684555   -1.4907651   -1.2461459
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -1.5653003   -1.8076108   -1.3229898
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -1.1740085   -1.3482295   -0.9997874
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.2309306   -1.3327603   -1.1291009
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -1.2750854   -1.5008588   -1.0493120
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2888487   -1.5110514   -1.0666459
Birth       PROBIT           BELARUS                        [20-30)              NA                -1.1624515   -1.3797386   -0.9451645
Birth       PROBIT           BELARUS                        <20                  NA                -1.1396993   -1.3402183   -0.9391803
Birth       PROBIT           BELARUS                        >=30                 NA                -1.1240580   -1.3337698   -0.9143463
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -1.2849728   -1.3766393   -1.1933064
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.3981104   -1.5978292   -1.1983915
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -1.2691288   -1.4633182   -1.0749393
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.6803546   -0.8652973   -0.4954120
Birth       SAS-CompFeed     INDIA                          <20                  NA                -0.6675463   -0.8865296   -0.4485631
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -0.5875985   -0.8484625   -0.3267345
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.4951323   -0.5275675   -0.4626971
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.6554107   -0.7310066   -0.5798147
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4556675   -0.5267877   -0.3845474
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5316549   -0.7006927   -0.3626171
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -0.6726076   -1.2217215   -0.1234936
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1798507   -0.6317409    0.2720396
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.1872175    0.0816692    0.2927658
6 months    COHORTS          GUATEMALA                      <20                  NA                 0.3169395    0.0993464    0.5345326
6 months    COHORTS          GUATEMALA                      >=30                 NA                 0.1702017    0.0513626    0.2890409
6 months    COHORTS          INDIA                          [20-30)              NA                -0.6947249   -0.7345927   -0.6548572
6 months    COHORTS          INDIA                          <20                  NA                -0.8819211   -1.0047405   -0.7591016
6 months    COHORTS          INDIA                          >=30                 NA                -0.7042688   -0.7733960   -0.6351417
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.2404187   -0.2938832   -0.1869541
6 months    COHORTS          PHILIPPINES                    <20                  NA                -0.2696466   -0.3980548   -0.1412385
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -0.3895612   -0.4675504   -0.3115720
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.5756067   -0.6859155   -0.4652979
6 months    GMS-Nepal        NEPAL                          <20                  NA                -0.5498242   -0.7519214   -0.3477270
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -0.7810538   -1.0167889   -0.5453187
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                 0.0054460   -0.1363589    0.1472510
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -0.0783565   -0.3703090    0.2135961
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -0.2342607   -0.5089392    0.0404179
6 months    IRC              INDIA                          [20-30)              NA                -0.6179523   -0.7599227   -0.4759818
6 months    IRC              INDIA                          <20                  NA                -0.3131971   -0.8902531    0.2638589
6 months    IRC              INDIA                          >=30                 NA                -0.8168885   -1.4755973   -0.1581798
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.5891197   -0.6181051   -0.5601344
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -0.5909107   -0.6189415   -0.5628800
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -0.6338361   -0.7004313   -0.5672410
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0849645   -0.1588652   -0.0110639
6 months    Keneba           GAMBIA                         <20                  NA                -0.0972708   -0.2239453    0.0294036
6 months    Keneba           GAMBIA                         >=30                 NA                -0.3705929   -0.4551804   -0.2860054
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.4131314    0.3055418    0.5207211
6 months    LCNI-5           MALAWI                         <20                  NA                 0.4495455    0.2647430    0.6343480
6 months    LCNI-5           MALAWI                         >=30                 NA                 0.5024052    0.3540079    0.6508025
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.1031827   -0.2599142    0.0535489
6 months    MAL-ED           BANGLADESH                     <20                  NA                -0.1253703   -0.5842584    0.3335177
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -0.2208334   -0.4748495    0.0331827
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 1.0222899    0.7994449    1.2451348
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.9705939    0.6193757    1.3218120
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.7679631    0.3626798    1.1732463
6 months    MAL-ED           INDIA                          [20-30)              NA                -0.7584867   -0.9100699   -0.6069034
6 months    MAL-ED           INDIA                          <20                  NA                -0.6333242   -0.9664960   -0.3001524
6 months    MAL-ED           INDIA                          >=30                 NA                -0.3499687   -0.6621592   -0.0377782
6 months    MAL-ED           NEPAL                          [20-30)              NA                 0.1162432   -0.0345491    0.2670356
6 months    MAL-ED           NEPAL                          <20                  NA                -0.1990000   -0.7855073    0.3875073
6 months    MAL-ED           NEPAL                          >=30                 NA                 0.1206884   -0.1611060    0.4024828
6 months    MAL-ED           PERU                           [20-30)              NA                 0.9717200    0.7928199    1.1506201
6 months    MAL-ED           PERU                           <20                  NA                 1.1805114    0.9560700    1.4049527
6 months    MAL-ED           PERU                           >=30                 NA                 1.0749092    0.8032465    1.3465719
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.5360842    0.3031497    0.7690187
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6951413    0.1688314    1.2214512
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.4599968    0.2395321    0.6804614
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.6383136    0.4648926    0.8117345
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.4629683   -0.1216239    1.0475605
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.4178572    0.2029004    0.6328140
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -0.4568201   -0.5690299   -0.3446103
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -0.2656118   -0.5386895    0.0074659
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -0.5295279   -0.7232166   -0.3358391
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0434401   -0.0543452    0.1412255
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                 0.0440298   -0.1544703    0.2425300
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -0.1621367   -0.3653779    0.0411044
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.5704503    0.5085135    0.6323872
6 months    PROBIT           BELARUS                        <20                  NA                 0.6098792    0.5352009    0.6845576
6 months    PROBIT           BELARUS                        >=30                 NA                 0.5456104    0.4598014    0.6314193
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.1946860   -0.2970675   -0.0923045
6 months    PROVIDE          BANGLADESH                     <20                  NA                -0.1504562   -0.3995886    0.0986762
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -0.2522280   -0.4397978   -0.0646582
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.6650529   -0.8231873   -0.5069184
6 months    SAS-CompFeed     INDIA                          <20                  NA                -0.5719772   -0.6599546   -0.4839998
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -0.7704448   -0.9310761   -0.6098135
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.9268527   -1.0623674   -0.7913379
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -0.8598044   -1.1293328   -0.5902759
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -1.2971882   -1.5828108   -1.0115655
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0936484    0.0278476    0.1594492
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2326672    0.0170952    0.4482392
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.0091311   -0.0945364    0.1127986
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.3198880    0.2862534    0.3535226
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                 0.3462590    0.2751484    0.4173696
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                 0.1789450    0.1092928    0.2485972
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -0.5640014   -0.6811441   -0.4468587
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -0.6046838   -0.8819536   -0.3274140
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.4518137   -0.7177245   -0.1859029
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -0.3125389   -0.3908708   -0.2342070
24 months   COHORTS          GUATEMALA                      <20                  NA                -0.2615395   -0.4171998   -0.1058791
24 months   COHORTS          GUATEMALA                      >=30                 NA                -0.3033285   -0.4020956   -0.2045613
24 months   COHORTS          INDIA                          [20-30)              NA                -0.6701490   -0.7113862   -0.6289118
24 months   COHORTS          INDIA                          <20                  NA                -0.8044929   -0.9198089   -0.6891769
24 months   COHORTS          INDIA                          >=30                 NA                -0.6364365   -0.7014874   -0.5713857
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.6015181   -0.6492812   -0.5537550
24 months   COHORTS          PHILIPPINES                    <20                  NA                -0.6504853   -0.7555396   -0.5454311
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -0.5925258   -0.6622543   -0.5227974
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.0685183   -1.1796461   -0.9573906
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.2926844   -1.5192099   -1.0661589
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.1379254   -1.3449514   -0.9308995
24 months   IRC              INDIA                          [20-30)              NA                -0.7568538   -0.8547956   -0.6589119
24 months   IRC              INDIA                          <20                  NA                -0.5201766   -0.8150548   -0.2252985
24 months   IRC              INDIA                          >=30                 NA                -0.9072183   -1.4074581   -0.4069785
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2944996   -1.3282564   -1.2607427
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -1.3050904   -1.3435873   -1.2665935
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.3010240   -1.3826875   -1.2193606
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.7932587   -0.8655334   -0.7209841
24 months   Keneba           GAMBIA                         <20                  NA                -0.8928435   -1.0304594   -0.7552275
24 months   Keneba           GAMBIA                         >=30                 NA                -0.8067033   -0.8797013   -0.7337052
24 months   LCNI-5           MALAWI                         [20-30)              NA                -0.0219905   -0.1510048    0.1070239
24 months   LCNI-5           MALAWI                         <20                  NA                -0.2468129   -0.4694479   -0.0241780
24 months   LCNI-5           MALAWI                         >=30                 NA                 0.1293749   -0.0124944    0.2712442
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.7732808   -0.9197502   -0.6268115
24 months   MAL-ED           BANGLADESH                     <20                  NA                -1.0657233   -1.4257251   -0.7057215
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -0.9529783   -1.2343652   -0.6715915
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.5241763    0.2552064    0.7931462
24 months   MAL-ED           BRAZIL                         <20                  NA                 0.3990951   -0.1506662    0.9488564
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.3631667   -0.1172826    0.8436160
24 months   MAL-ED           INDIA                          [20-30)              NA                -0.9660479   -1.1080071   -0.8240886
24 months   MAL-ED           INDIA                          <20                  NA                -0.9940672   -1.2594888   -0.7286456
24 months   MAL-ED           INDIA                          >=30                 NA                -0.7856423   -1.0209419   -0.5503428
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0760138   -0.0866904    0.2387181
24 months   MAL-ED           PERU                           <20                  NA                -0.1000957   -0.3826270    0.1824356
24 months   MAL-ED           PERU                           >=30                 NA                 0.4912900    0.2492746    0.7333054
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.4020458    0.2123836    0.5917079
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                 0.6666298    0.3541331    0.9791265
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                 0.3095411    0.1250039    0.4940783
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0147050   -0.1583772    0.1877873
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2561111   -0.7907626    0.2785403
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                 0.1344565   -0.0554095    0.3243226
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9531612   -1.0695683   -0.8367541
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -0.4841363   -0.8104572   -0.1578153
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -0.9565113   -1.1873089   -0.7257137
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.5991763   -0.7178469   -0.4805057
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -0.6267939   -0.8257821   -0.4278057
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -0.7308367   -0.9787543   -0.4829192
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.7099352    0.5974603    0.8224100
24 months   PROBIT           BELARUS                        <20                  NA                 0.7389737    0.5020034    0.9759441
24 months   PROBIT           BELARUS                        >=30                 NA                 0.6146791    0.5031283    0.7262299
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.8539094   -0.9546156   -0.7532031
24 months   PROVIDE          BANGLADESH                     <20                  NA                -0.9753296   -1.2378143   -0.7128449
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -0.9811787   -1.1575463   -0.8048111
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.2470941   -1.3727036   -1.1214845
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.0196468   -1.2545056   -0.7847879
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.1429784   -1.3716585   -0.9142983


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
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.1373810   -0.5209251    0.2461631
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)            0.0902875   -0.1411647    0.3217397
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.1362208   -0.2659535   -0.0064881
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.0330718   -0.0550152    0.1211588
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1486409   -0.3054107    0.0081290
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.1443841    0.0384966    0.2502716
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.3705721   -0.6134506   -0.1276937
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1203245   -0.1123622    0.3530112
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)            0.0886945   -0.5932033    0.7705923
Birth       IRC              INDIA                          >=30                 [20-30)            0.2377473   -0.6079656    1.0834602
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1138204   -0.1487280   -0.0789128
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0843475   -0.1542752   -0.0144199
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.2324925   -0.4181264   -0.0468586
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0217254   -0.1189284    0.1623791
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3561940   -0.8086237    0.0962356
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.0521917   -0.4676925    0.3633091
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.4280449   -0.3530220    1.2091117
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.9071282    0.1517955    1.6624609
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.1304416   -0.4459868    0.1851036
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.0623278   -0.2348770    0.3595325
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.3586086   -0.9250249    0.2078076
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1189559   -0.4706254    0.7085372
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2985065   -0.6501530    1.2471660
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2036364   -0.6212610    0.2139882
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)           -0.1968448   -0.4679566    0.0742669
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.1944470   -0.0182647    0.4071587
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0441548   -0.2914870    0.2031775
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0579181   -0.3017743    0.1859381
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)            0.0227522   -0.0817408    0.1272452
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0383935   -0.0222092    0.0989962
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1131375   -0.3323870    0.1061120
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)            0.0158441   -0.1989576    0.2306458
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)            0.0128083   -0.1149937    0.1406103
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0927561   -0.1600489    0.3455612
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1602784   -0.2424324   -0.0781244
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0394647   -0.0386239    0.1175534
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.1409527   -0.7155464    0.4336411
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.3518042   -0.1307050    0.8343134
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)            0.1297220   -0.1117742    0.3712182
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.0170158   -0.1750458    0.1410142
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.1871961   -0.3163129   -0.0580793
6 months    COHORTS          INDIA                          >=30                 [20-30)           -0.0095439   -0.0891032    0.0700154
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0292280   -0.1684084    0.1099525
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1491426   -0.2438490   -0.0544361
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)            0.0257825   -0.2045329    0.2560978
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.2054471   -0.4665595    0.0556653
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.0838025   -0.4085229    0.2409179
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.2397067   -0.5495601    0.0701467
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)            0.3047552   -0.2893664    0.8988767
6 months    IRC              INDIA                          >=30                 [20-30)           -0.1989363   -0.8728779    0.4750054
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0017910   -0.0397745    0.0361925
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0447164   -0.1184610    0.0290282
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0123063   -0.1588664    0.1342538
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.2856284   -0.3974438   -0.1738130
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)            0.0364141   -0.1764672    0.2492954
6 months    LCNI-5           MALAWI                         >=30                 [20-30)            0.0892738   -0.0933587    0.2719063
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.0221877   -0.5071188    0.4627434
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1176507   -0.4138464    0.1785450
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)           -0.0516960   -0.4674936    0.3641016
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)           -0.2543268   -0.7174492    0.2087955
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)            0.1251625   -0.2409571    0.4912821
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.4085180    0.0610755    0.7559604
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.3152432   -0.9208249    0.2903384
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0044452   -0.3151583    0.3240487
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)            0.2087913   -0.0767838    0.4943664
6 months    MAL-ED           PERU                           >=30                 [20-30)            0.1031892   -0.2223729    0.4287513
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.1590571   -0.4151758    0.7332901
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0760874   -0.3980363    0.2458615
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1753453   -0.7852575    0.4345670
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.2204564   -0.4966104    0.0556977
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1912083   -0.1041353    0.4865518
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0727078   -0.2970351    0.1516194
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)            0.0005897   -0.2211117    0.2222911
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.2055769   -0.4307397    0.0195859
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)            0.0394289   -0.0337248    0.1125826
6 months    PROBIT           BELARUS                        >=30                 [20-30)           -0.0248400   -0.0756907    0.0260108
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)            0.0442298   -0.2252049    0.3136645
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0575420   -0.2708984    0.1558143
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)            0.0930757   -0.0480996    0.2342509
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1053919   -0.2677992    0.0570153
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.0670483   -0.2350458    0.3691425
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.3703355   -0.6866216   -0.0540494
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.1390188   -0.0864385    0.3644761
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           -0.0845173   -0.2074869    0.0384524
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.0263710   -0.0521645    0.1049065
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.1409430   -0.2180842   -0.0638017
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)           -0.0406824   -0.3413459    0.2599811
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.1121877   -0.1766566    0.4010320
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)            0.0509994   -0.1234494    0.2254483
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0092104   -0.1169300    0.1353509
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.1343439   -0.2564067   -0.0122812
24 months   COHORTS          INDIA                          >=30                 [20-30)            0.0337125   -0.0423843    0.1098092
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.0489672   -0.1642102    0.0662758
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0089923   -0.0752916    0.0932762
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2241661   -0.4773602    0.0290280
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)           -0.0694071   -0.3051653    0.1663511
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)            0.2366771   -0.0738216    0.5471759
24 months   IRC              INDIA                          >=30                 [20-30)           -0.1503646   -0.6603530    0.3596238
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0105908   -0.0611453    0.0399637
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0065245   -0.0971755    0.0841266
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.0995847   -0.2547704    0.0556010
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0134445   -0.1160010    0.0891120
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)           -0.2248224   -0.4801561    0.0305112
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.1513654   -0.0382478    0.3409785
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2924424   -0.6814519    0.0965670
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1796975   -0.4966479    0.1372529
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)           -0.1250812   -0.7369883    0.4868259
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)           -0.1610096   -0.7155225    0.3935033
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)           -0.0280193   -0.3297133    0.2736746
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.1804055   -0.0953223    0.4561334
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)           -0.1761095   -0.5026864    0.1504673
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.4152762    0.1221722    0.7083802
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.2645840   -0.0994958    0.6286639
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)           -0.0925047   -0.3559796    0.1709702
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.2708161   -0.8327855    0.2911533
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.1197515   -0.1371659    0.3766690
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.4690249    0.1223993    0.8156505
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0033501   -0.2619146    0.2552144
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0276176   -0.2586599    0.2034248
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.1316604   -0.4039083    0.1405876
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0290385   -0.1477245    0.2058016
24 months   PROBIT           BELARUS                        >=30                 [20-30)           -0.0952561   -0.2096173    0.0191051
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.1214203   -0.4039336    0.1610931
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1272694   -0.3290987    0.0745600
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)            0.2274473   -0.0389812    0.4938757
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.1041157   -0.1570779    0.3653092


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.0251660   -0.0838324    0.1341645
Birth       COHORTS          INDIA                          [20-30)              NA                -0.0046010   -0.0303963    0.0211943
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                 0.0174992   -0.0209434    0.0559418
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.0498486   -0.1142200    0.0145229
Birth       IRC              INDIA                          [20-30)              NA                 0.0269687   -0.0489102    0.1028476
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0511855   -0.0678367   -0.0345343
Birth       Keneba           GAMBIA                         [20-30)              NA                -0.0032804   -0.0729181    0.0663572
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0498121   -0.1521014    0.0524772
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.2746981    0.0264094    0.5229868
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0171248   -0.1406610    0.1064114
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0213627   -0.2207371    0.1780117
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0562016   -0.2275676    0.1151644
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0138918   -0.0478917    0.0756752
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0132207   -0.0742150    0.0477735
Birth       PROBIT           BELARUS                        [20-30)              NA                 0.0132733   -0.0050854    0.0316320
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0134858   -0.0652709    0.0382992
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                 0.0103093   -0.0264107    0.0470292
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0192975   -0.0386119    0.0000170
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0289782   -0.0484711    0.1064276
6 months    COHORTS          GUATEMALA                      [20-30)              NA                 0.0068635   -0.0696032    0.0833303
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0172048   -0.0401812    0.0057716
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0534246   -0.0891837   -0.0176655
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0282349   -0.0905009    0.0340311
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0674448   -0.1618554    0.0269658
6 months    IRC              INDIA                          [20-30)              NA                 0.0190225   -0.0511603    0.0892053
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0042377   -0.0248618    0.0163864
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0983963   -0.1530036   -0.0437891
6 months    LCNI-5           MALAWI                         [20-30)              NA                 0.0277953   -0.0446665    0.1002572
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0344937   -0.1272738    0.0582865
6 months    MAL-ED           BRAZIL                         [20-30)              NA                -0.0502125   -0.1875080    0.0870830
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0506982   -0.0132175    0.1146139
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0058125   -0.0715975    0.0599726
6 months    MAL-ED           PERU                           [20-30)              NA                 0.0811615   -0.0442472    0.2065702
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0060943   -0.1627627    0.1749513
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.1020923   -0.2297819    0.0255974
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0072858   -0.0574252    0.0719968
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0136779   -0.0735598    0.0462040
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0036596   -0.0077623    0.0150814
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0044047   -0.0569679    0.0481586
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0006555   -0.0321461    0.0308350
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0853052   -0.1676193   -0.0029911
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0153817   -0.0555211    0.0247576
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0095558   -0.0305842    0.0114726
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0068508   -0.0389728    0.0526745
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0311634   -0.0268625    0.0891894
24 months   COHORTS          INDIA                          [20-30)              NA                 0.0073741   -0.0157693    0.0305175
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0084411   -0.0391752    0.0222930
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -0.0677924   -0.1347199   -0.0008649
24 months   IRC              INDIA                          [20-30)              NA                 0.0110388   -0.0310813    0.0531588
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0032185   -0.0293837    0.0229467
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0146612   -0.0667136    0.0373912
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0103961   -0.0739145    0.0947068
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.0460116   -0.1287957    0.0367725
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0615530   -0.2403710    0.1172650
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0095812   -0.0458185    0.0649809
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0351843   -0.0963236    0.1666923
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0069843   -0.1290049    0.1429736
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0400925   -0.0781403    0.1583253
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0433822   -0.0276703    0.1144348
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0111739   -0.0779816    0.0556339
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.0117945   -0.0547118    0.0311227
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0389576   -0.0906010    0.0126857
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0625339   -0.0124542    0.1375219
