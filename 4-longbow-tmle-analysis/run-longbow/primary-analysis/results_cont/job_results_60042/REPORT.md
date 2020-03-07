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
Birth       CMC-V-BCS-2002   INDIA                          [20-30)        79      92
Birth       CMC-V-BCS-2002   INDIA                          <20             9      92
Birth       CMC-V-BCS-2002   INDIA                          >=30            4      92
Birth       COHORTS          GUATEMALA                      [20-30)       405     852
Birth       COHORTS          GUATEMALA                      <20           121     852
Birth       COHORTS          GUATEMALA                      >=30          326     852
Birth       COHORTS          INDIA                          [20-30)      3180    4715
Birth       COHORTS          INDIA                          <20           368    4715
Birth       COHORTS          INDIA                          >=30         1167    4715
Birth       COHORTS          PHILIPPINES                    [20-30)      1821    3050
Birth       COHORTS          PHILIPPINES                    <20           378    3050
Birth       COHORTS          PHILIPPINES                    >=30          851    3050
Birth       EE               PAKISTAN                       [20-30)        94     239
Birth       EE               PAKISTAN                       <20             1     239
Birth       EE               PAKISTAN                       >=30          144     239
Birth       GMS-Nepal        NEPAL                          [20-30)       446     696
Birth       GMS-Nepal        NEPAL                          <20           149     696
Birth       GMS-Nepal        NEPAL                          >=30          101     696
Birth       IRC              INDIA                          [20-30)       325     388
Birth       IRC              INDIA                          <20            35     388
Birth       IRC              INDIA                          >=30           28     388
Birth       JiVitA-3         BANGLADESH                     [20-30)     10853   22444
Birth       JiVitA-3         BANGLADESH                     <20          9472   22444
Birth       JiVitA-3         BANGLADESH                     >=30         2119   22444
Birth       Keneba           GAMBIA                         [20-30)       705    1543
Birth       Keneba           GAMBIA                         <20           238    1543
Birth       Keneba           GAMBIA                         >=30          600    1543
Birth       MAL-ED           BANGLADESH                     [20-30)       160     231
Birth       MAL-ED           BANGLADESH                     <20            30     231
Birth       MAL-ED           BANGLADESH                     >=30           41     231
Birth       MAL-ED           BRAZIL                         [20-30)        41      65
Birth       MAL-ED           BRAZIL                         <20             8      65
Birth       MAL-ED           BRAZIL                         >=30           16      65
Birth       MAL-ED           INDIA                          [20-30)        37      47
Birth       MAL-ED           INDIA                          <20             8      47
Birth       MAL-ED           INDIA                          >=30            2      47
Birth       MAL-ED           NEPAL                          [20-30)        22      27
Birth       MAL-ED           NEPAL                          <20             0      27
Birth       MAL-ED           NEPAL                          >=30            5      27
Birth       MAL-ED           PERU                           [20-30)       114     233
Birth       MAL-ED           PERU                           <20            66     233
Birth       MAL-ED           PERU                           >=30           53     233
Birth       MAL-ED           SOUTH AFRICA                   [20-30)        67     123
Birth       MAL-ED           SOUTH AFRICA                   <20            23     123
Birth       MAL-ED           SOUTH AFRICA                   >=30           33     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)        72     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20             7     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30           46     125
Birth       NIH-Birth        BANGLADESH                     [20-30)       410     606
Birth       NIH-Birth        BANGLADESH                     <20            70     606
Birth       NIH-Birth        BANGLADESH                     >=30          126     606
Birth       NIH-Crypto       BANGLADESH                     [20-30)       483     732
Birth       NIH-Crypto       BANGLADESH                     <20           130     732
Birth       NIH-Crypto       BANGLADESH                     >=30          119     732
Birth       PROBIT           BELARUS                        [20-30)      9943   13893
Birth       PROBIT           BELARUS                        <20          1408   13893
Birth       PROBIT           BELARUS                        >=30         2542   13893
Birth       PROVIDE          BANGLADESH                     [20-30)       371     539
Birth       PROVIDE          BANGLADESH                     <20            67     539
Birth       PROVIDE          BANGLADESH                     >=30          101     539
Birth       SAS-CompFeed     INDIA                          [20-30)       953    1252
Birth       SAS-CompFeed     INDIA                          <20           161    1252
Birth       SAS-CompFeed     INDIA                          >=30          138    1252
Birth       ZVITAMBO         ZIMBABWE                       [20-30)      9299   13835
Birth       ZVITAMBO         ZIMBABWE                       <20          2205   13835
Birth       ZVITAMBO         ZIMBABWE                       >=30         2331   13835
6 months    CMC-V-BCS-2002   INDIA                          [20-30)       293     369
6 months    CMC-V-BCS-2002   INDIA                          <20            33     369
6 months    CMC-V-BCS-2002   INDIA                          >=30           43     369
6 months    COHORTS          GUATEMALA                      [20-30)       470     961
6 months    COHORTS          GUATEMALA                      <20           118     961
6 months    COHORTS          GUATEMALA                      >=30          373     961
6 months    COHORTS          INDIA                          [20-30)      3331    4904
6 months    COHORTS          INDIA                          <20           371    4904
6 months    COHORTS          INDIA                          >=30         1202    4904
6 months    COHORTS          PHILIPPINES                    [20-30)      1601    2708
6 months    COHORTS          PHILIPPINES                    <20           331    2708
6 months    COHORTS          PHILIPPINES                    >=30          776    2708
6 months    EE               PAKISTAN                       [20-30)       159     371
6 months    EE               PAKISTAN                       <20             1     371
6 months    EE               PAKISTAN                       >=30          211     371
6 months    GMS-Nepal        NEPAL                          [20-30)       371     564
6 months    GMS-Nepal        NEPAL                          <20           108     564
6 months    GMS-Nepal        NEPAL                          >=30           85     564
6 months    Guatemala BSC    GUATEMALA                      [20-30)       171     276
6 months    Guatemala BSC    GUATEMALA                      <20            46     276
6 months    Guatemala BSC    GUATEMALA                      >=30           59     276
6 months    IRC              INDIA                          [20-30)       342     407
6 months    IRC              INDIA                          <20            36     407
6 months    IRC              INDIA                          >=30           29     407
6 months    JiVitA-3         BANGLADESH                     [20-30)      7679   16805
6 months    JiVitA-3         BANGLADESH                     <20          7905   16805
6 months    JiVitA-3         BANGLADESH                     >=30         1221   16805
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
6 months    PROBIT           BELARUS                        [20-30)     11316   15760
6 months    PROBIT           BELARUS                        <20          1619   15760
6 months    PROBIT           BELARUS                        >=30         2825   15760
6 months    PROVIDE          BANGLADESH                     [20-30)       424     604
6 months    PROVIDE          BANGLADESH                     <20            66     604
6 months    PROVIDE          BANGLADESH                     >=30          114     604
6 months    SAS-CompFeed     INDIA                          [20-30)      1017    1336
6 months    SAS-CompFeed     INDIA                          <20           171    1336
6 months    SAS-CompFeed     INDIA                          >=30          148    1336
6 months    SAS-FoodSuppl    INDIA                          [20-30)       261     380
6 months    SAS-FoodSuppl    INDIA                          <20            36     380
6 months    SAS-FoodSuppl    INDIA                          >=30           83     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)      1318    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           146    2012
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          548    2012
6 months    ZVITAMBO         ZIMBABWE                       [20-30)      5738    8653
6 months    ZVITAMBO         ZIMBABWE                       <20          1315    8653
6 months    ZVITAMBO         ZIMBABWE                       >=30         1600    8653
24 months   CMC-V-BCS-2002   INDIA                          [20-30)       295     371
24 months   CMC-V-BCS-2002   INDIA                          <20            34     371
24 months   CMC-V-BCS-2002   INDIA                          >=30           42     371
24 months   COHORTS          GUATEMALA                      [20-30)       527    1064
24 months   COHORTS          GUATEMALA                      <20           152    1064
24 months   COHORTS          GUATEMALA                      >=30          385    1064
24 months   COHORTS          INDIA                          [20-30)      2463    3692
24 months   COHORTS          INDIA                          <20           247    3692
24 months   COHORTS          INDIA                          >=30          982    3692
24 months   COHORTS          PHILIPPINES                    [20-30)      1460    2445
24 months   COHORTS          PHILIPPINES                    <20           292    2445
24 months   COHORTS          PHILIPPINES                    >=30          693    2445
24 months   EE               PAKISTAN                       [20-30)        65     167
24 months   EE               PAKISTAN                       <20             1     167
24 months   EE               PAKISTAN                       >=30          101     167
24 months   GMS-Nepal        NEPAL                          [20-30)       318     488
24 months   GMS-Nepal        NEPAL                          <20            94     488
24 months   GMS-Nepal        NEPAL                          >=30           76     488
24 months   IRC              INDIA                          [20-30)       343     409
24 months   IRC              INDIA                          <20            37     409
24 months   IRC              INDIA                          >=30           29     409
24 months   JiVitA-3         BANGLADESH                     [20-30)      4058    8627
24 months   JiVitA-3         BANGLADESH                     <20          3855    8627
24 months   JiVitA-3         BANGLADESH                     >=30          714    8627
24 months   Keneba           GAMBIA                         [20-30)       790    1714
24 months   Keneba           GAMBIA                         <20           217    1714
24 months   Keneba           GAMBIA                         >=30          707    1714
24 months   LCNI-5           MALAWI                         [20-30)       250     475
24 months   LCNI-5           MALAWI                         <20            80     475
24 months   LCNI-5           MALAWI                         >=30          145     475
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
24 months   NIH-Birth        BANGLADESH                     [20-30)       289     427
24 months   NIH-Birth        BANGLADESH                     <20            44     427
24 months   NIH-Birth        BANGLADESH                     >=30           94     427
24 months   NIH-Crypto       BANGLADESH                     [20-30)       334     514
24 months   NIH-Crypto       BANGLADESH                     <20           101     514
24 months   NIH-Crypto       BANGLADESH                     >=30           79     514
24 months   PROBIT           BELARUS                        [20-30)      2893    4035
24 months   PROBIT           BELARUS                        <20           369    4035
24 months   PROBIT           BELARUS                        >=30          773    4035
24 months   PROVIDE          BANGLADESH                     [20-30)       409     578
24 months   PROVIDE          BANGLADESH                     <20            64     578
24 months   PROVIDE          BANGLADESH                     >=30          105     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            2       6
24 months   ZVITAMBO         ZIMBABWE                       [20-30)      1101    1638
24 months   ZVITAMBO         ZIMBABWE                       <20           219    1638
24 months   ZVITAMBO         ZIMBABWE                       >=30          318    1638


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
![](/tmp/f401e103-32dd-47af-b20a-8120143c9654/175c53fc-6f24-429e-a359-33e89628800c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f401e103-32dd-47af-b20a-8120143c9654/175c53fc-6f24-429e-a359-33e89628800c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f401e103-32dd-47af-b20a-8120143c9654/175c53fc-6f24-429e-a359-33e89628800c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                 0.2557040    0.1330925    0.3783155
Birth       COHORTS          GUATEMALA                      <20                  NA                -0.1412963   -0.4122476    0.1296551
Birth       COHORTS          GUATEMALA                      >=30                 NA                 0.1253728   -0.0348125    0.2855582
Birth       COHORTS          INDIA                          [20-30)              NA                -0.7094322   -0.7501181   -0.6687463
Birth       COHORTS          INDIA                          <20                  NA                -0.9911928   -1.1072345   -0.8751511
Birth       COHORTS          INDIA                          >=30                 NA                -0.5029173   -0.5687749   -0.4370597
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.2203078   -0.2696696   -0.1709459
Birth       COHORTS          PHILIPPINES                    <20                  NA                -0.5179801   -0.6319964   -0.4039638
Birth       COHORTS          PHILIPPINES                    >=30                 NA                -0.1727789   -0.2463786   -0.0991791
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.9616411   -1.0577267   -0.8655556
Birth       GMS-Nepal        NEPAL                          <20                  NA                -1.6073456   -1.7930270   -1.4216641
Birth       GMS-Nepal        NEPAL                          >=30                 NA                -0.7976669   -1.0187013   -0.5766325
Birth       IRC              INDIA                          [20-30)              NA                -0.2904773   -0.4666249   -0.1143298
Birth       IRC              INDIA                          <20                  NA                -0.5937321   -1.2457863    0.0583221
Birth       IRC              INDIA                          >=30                 NA                -0.1580119   -0.6664584    0.3504347
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -1.4932904   -1.5190645   -1.4675162
Birth       JiVitA-3         BANGLADESH                     <20                  NA                -1.7237059   -1.7533958   -1.6940160
Birth       JiVitA-3         BANGLADESH                     >=30                 NA                -1.5042145   -1.5681454   -1.4402836
Birth       Keneba           GAMBIA                         [20-30)              NA                 0.1011181    0.0076651    0.1945711
Birth       Keneba           GAMBIA                         <20                  NA                -0.3503780   -0.5185239   -0.1822320
Birth       Keneba           GAMBIA                         >=30                 NA                 0.1249352    0.0188868    0.2309836
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -1.0939011   -1.2521612   -0.9356411
Birth       MAL-ED           BANGLADESH                     <20                  NA                -1.3076206   -1.6870915   -0.9281497
Birth       MAL-ED           BANGLADESH                     >=30                 NA                -1.0629781   -1.4416551   -0.6843011
Birth       MAL-ED           BRAZIL                         [20-30)              NA                -0.8314634   -1.1601853   -0.5027415
Birth       MAL-ED           BRAZIL                         <20                  NA                 0.0325000   -0.6736983    0.7386983
Birth       MAL-ED           BRAZIL                         >=30                 NA                -0.6318750   -1.2213825   -0.0423675
Birth       MAL-ED           PERU                           [20-30)              NA                -0.8114114   -0.9694321   -0.6533906
Birth       MAL-ED           PERU                           <20                  NA                -1.2051103   -1.4338857   -0.9763349
Birth       MAL-ED           PERU                           >=30                 NA                -0.5967689   -0.8758785   -0.3176593
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.6103263   -0.8843548   -0.3362978
Birth       MAL-ED           SOUTH AFRICA                   <20                  NA                -0.7304870   -1.1771876   -0.2837864
Birth       MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.3855103   -0.7672136   -0.0038071
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.2513889   -1.5042858   -0.9984920
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.9942857   -1.5328498   -0.4557216
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.0302174   -1.4291848   -0.6312500
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                -0.9768368   -1.0866853   -0.8669883
Birth       NIH-Birth        BANGLADESH                     <20                  NA                -0.7814141   -1.0411667   -0.5216615
Birth       NIH-Birth        BANGLADESH                     >=30                 NA                -0.8862354   -1.0692699   -0.7032009
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.8946296   -0.9807513   -0.8085078
Birth       NIH-Crypto       BANGLADESH                     <20                  NA                -0.9583496   -1.1466004   -0.7700988
Birth       NIH-Crypto       BANGLADESH                     >=30                 NA                -0.9143502   -1.1041431   -0.7245572
Birth       PROBIT           BELARUS                        [20-30)              NA                 1.3161586    1.1517838    1.4805335
Birth       PROBIT           BELARUS                        <20                  NA                 1.0720958    0.9274938    1.2166978
Birth       PROBIT           BELARUS                        >=30                 NA                 1.3825203    1.2026773    1.5623633
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.8543611   -0.9449116   -0.7638105
Birth       PROVIDE          BANGLADESH                     <20                  NA                -1.0820172   -1.2873850   -0.8766495
Birth       PROVIDE          BANGLADESH                     >=30                 NA                -0.8652231   -1.0471897   -0.6832565
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -1.4194664   -1.4950721   -1.3438606
Birth       SAS-CompFeed     INDIA                          <20                  NA                -1.5662345   -1.7591111   -1.3733579
Birth       SAS-CompFeed     INDIA                          >=30                 NA                -1.3678809   -1.6047152   -1.1310466
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.5086304   -0.5340114   -0.4832494
Birth       ZVITAMBO         ZIMBABWE                       <20                  NA                -0.5734828   -0.6330560   -0.5139095
Birth       ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.4353171   -0.4931054   -0.3775287
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                -1.4455907   -1.6039330   -1.2872484
6 months    CMC-V-BCS-2002   INDIA                          <20                  NA                -1.3162382   -1.7853214   -0.8471549
6 months    CMC-V-BCS-2002   INDIA                          >=30                 NA                -1.3325550   -1.7654189   -0.8996911
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -1.7556824   -1.8543850   -1.6569797
6 months    COHORTS          GUATEMALA                      <20                  NA                -1.7602182   -1.9822825   -1.5381538
6 months    COHORTS          GUATEMALA                      >=30                 NA                -1.8882044   -2.0092229   -1.7671859
6 months    COHORTS          INDIA                          [20-30)              NA                -1.0363789   -1.0762470   -0.9965109
6 months    COHORTS          INDIA                          <20                  NA                -1.2624737   -1.3708305   -1.1541169
6 months    COHORTS          INDIA                          >=30                 NA                -0.9887876   -1.0555626   -0.9220126
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -1.0771498   -1.1298890   -1.0244106
6 months    COHORTS          PHILIPPINES                    <20                  NA                -1.2309576   -1.3560440   -1.1058713
6 months    COHORTS          PHILIPPINES                    >=30                 NA                -1.2127334   -1.2905005   -1.1349664
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -1.2939548   -1.3856853   -1.2022244
6 months    GMS-Nepal        NEPAL                          <20                  NA                -1.5606014   -1.7693379   -1.3518648
6 months    GMS-Nepal        NEPAL                          >=30                 NA                -1.1817156   -1.4163915   -0.9470398
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -1.5030577   -1.6548833   -1.3512321
6 months    Guatemala BSC    GUATEMALA                      <20                  NA                -1.8323940   -2.0798291   -1.5849589
6 months    Guatemala BSC    GUATEMALA                      >=30                 NA                -1.5132767   -1.7766985   -1.2498549
6 months    IRC              INDIA                          [20-30)              NA                -1.2466969   -1.3907927   -1.1026011
6 months    IRC              INDIA                          <20                  NA                -1.3346642   -1.7952140   -0.8741144
6 months    IRC              INDIA                          >=30                 NA                -0.9731567   -1.5570754   -0.3892379
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -1.2509837   -1.2814784   -1.2204890
6 months    JiVitA-3         BANGLADESH                     <20                  NA                -1.3694507   -1.4003290   -1.3385723
6 months    JiVitA-3         BANGLADESH                     >=30                 NA                -1.2772072   -1.3512515   -1.2031630
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.8598829   -0.9282861   -0.7914797
6 months    Keneba           GAMBIA                         <20                  NA                -0.8704604   -0.9894571   -0.7514637
6 months    Keneba           GAMBIA                         >=30                 NA                -0.9655671   -1.0434741   -0.8876602
6 months    LCNI-5           MALAWI                         [20-30)              NA                -1.6437214   -1.7503192   -1.5371235
6 months    LCNI-5           MALAWI                         <20                  NA                -1.5651294   -1.7468610   -1.3833979
6 months    LCNI-5           MALAWI                         >=30                 NA                -1.7087696   -1.8464524   -1.5710868
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -1.1246587   -1.2562952   -0.9930223
6 months    MAL-ED           BANGLADESH                     <20                  NA                -1.5435811   -1.9158541   -1.1713080
6 months    MAL-ED           BANGLADESH                     >=30                 NA                -1.2617662   -1.5787185   -0.9448139
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0028099   -0.2071872    0.2128070
6 months    MAL-ED           BRAZIL                         <20                  NA                 0.1305133   -0.1951344    0.4561610
6 months    MAL-ED           BRAZIL                         >=30                 NA                 0.0090043   -0.2603614    0.2783700
6 months    MAL-ED           INDIA                          [20-30)              NA                -1.2288695   -1.3672587   -1.0904803
6 months    MAL-ED           INDIA                          <20                  NA                -1.2952560   -1.5826076   -1.0079044
6 months    MAL-ED           INDIA                          >=30                 NA                -0.8415149   -1.1591514   -0.5238784
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.5526126   -0.6730083   -0.4322170
6 months    MAL-ED           NEPAL                          <20                  NA                -1.4210000   -2.1753122   -0.6666878
6 months    MAL-ED           NEPAL                          >=30                 NA                -0.5042391   -0.7921347   -0.2163436
6 months    MAL-ED           PERU                           [20-30)              NA                -1.2926899   -1.4501811   -1.1351986
6 months    MAL-ED           PERU                           <20                  NA                -1.3656166   -1.5738144   -1.1574188
6 months    MAL-ED           PERU                           >=30                 NA                -1.3506519   -1.6195570   -1.0817468
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.1510243   -1.3214664   -0.9805822
6 months    MAL-ED           SOUTH AFRICA                   <20                  NA                -1.0932890   -1.4859785   -0.7005995
6 months    MAL-ED           SOUTH AFRICA                   >=30                 NA                -0.9950807   -1.2114803   -0.7786812
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -1.3890439   -1.5693266   -1.2087611
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -1.5493830   -1.9501993   -1.1485666
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -1.3146659   -1.4954986   -1.1338332
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                -1.4272608   -1.5376019   -1.3169198
6 months    NIH-Birth        BANGLADESH                     <20                  NA                -1.1799867   -1.4339133   -0.9260600
6 months    NIH-Birth        BANGLADESH                     >=30                 NA                -1.4584510   -1.6472095   -1.2696926
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.1762533   -1.2644333   -1.0880733
6 months    NIH-Crypto       BANGLADESH                     <20                  NA                -1.2416447   -1.4123950   -1.0708944
6 months    NIH-Crypto       BANGLADESH                     >=30                 NA                -1.2568406   -1.4412974   -1.0723837
6 months    PROBIT           BELARUS                        [20-30)              NA                 0.0981640    0.0080934    0.1882346
6 months    PROBIT           BELARUS                        <20                  NA                -0.0007037   -0.1311276    0.1297202
6 months    PROBIT           BELARUS                        >=30                 NA                 0.1308310    0.0141336    0.2475284
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -1.0333069   -1.1224874   -0.9441265
6 months    PROVIDE          BANGLADESH                     <20                  NA                -1.2397614   -1.4615604   -1.0179625
6 months    PROVIDE          BANGLADESH                     >=30                 NA                -1.2053726   -1.3823374   -1.0284078
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -1.3831121   -1.4738197   -1.2924044
6 months    SAS-CompFeed     INDIA                          <20                  NA                -1.3861181   -1.4995567   -1.2726795
6 months    SAS-CompFeed     INDIA                          >=30                 NA                -1.5141344   -1.6669872   -1.3612817
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -1.8738780   -2.0083534   -1.7394026
6 months    SAS-FoodSuppl    INDIA                          <20                  NA                -1.7212811   -2.0885145   -1.3540477
6 months    SAS-FoodSuppl    INDIA                          >=30                 NA                -2.0236779   -2.2840378   -1.7633181
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.5713324   -0.6328638   -0.5098009
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.5509918   -0.7378146   -0.3641691
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.4797461   -0.5726571   -0.3868351
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.8528099   -0.8849428   -0.8206770
6 months    ZVITAMBO         ZIMBABWE                       <20                  NA                -0.9029659   -0.9722338   -0.8336981
6 months    ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.8887775   -0.9572165   -0.8203385
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                -2.5767920   -2.6890294   -2.4645546
24 months   CMC-V-BCS-2002   INDIA                          <20                  NA                -2.3245022   -2.6473340   -2.0016704
24 months   CMC-V-BCS-2002   INDIA                          >=30                 NA                -2.5980056   -2.9034203   -2.2925909
24 months   COHORTS          GUATEMALA                      [20-30)              NA                -3.0048343   -3.0991282   -2.9105403
24 months   COHORTS          GUATEMALA                      <20                  NA                -3.0275165   -3.1957681   -2.8592648
24 months   COHORTS          GUATEMALA                      >=30                 NA                -2.9703260   -3.0838596   -2.8567923
24 months   COHORTS          INDIA                          [20-30)              NA                -2.1955145   -2.2441082   -2.1469207
24 months   COHORTS          INDIA                          <20                  NA                -2.5792602   -2.7077329   -2.4507875
24 months   COHORTS          INDIA                          >=30                 NA                -2.2068382   -2.2869430   -2.1267333
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -2.3782278   -2.4366031   -2.3198525
24 months   COHORTS          PHILIPPINES                    <20                  NA                -2.4852740   -2.6140902   -2.3564578
24 months   COHORTS          PHILIPPINES                    >=30                 NA                -2.4688923   -2.5574153   -2.3803693
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                -1.8941084   -1.9927879   -1.7954288
24 months   GMS-Nepal        NEPAL                          <20                  NA                -1.8953216   -2.1442586   -1.6463847
24 months   GMS-Nepal        NEPAL                          >=30                 NA                -1.7253175   -1.9792814   -1.4713535
24 months   IRC              INDIA                          [20-30)              NA                -1.7941551   -1.8969748   -1.6913354
24 months   IRC              INDIA                          <20                  NA                -1.8987945   -2.2033551   -1.5942338
24 months   IRC              INDIA                          >=30                 NA                -1.7469848   -2.1345605   -1.3594091
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -1.9735558   -2.0100654   -1.9370462
24 months   JiVitA-3         BANGLADESH                     <20                  NA                -2.0627453   -2.1018821   -2.0236085
24 months   JiVitA-3         BANGLADESH                     >=30                 NA                -1.9811219   -2.0635908   -1.8986530
24 months   Keneba           GAMBIA                         [20-30)              NA                -1.5395776   -1.6113324   -1.4678228
24 months   Keneba           GAMBIA                         <20                  NA                -1.6711085   -1.7929542   -1.5492628
24 months   Keneba           GAMBIA                         >=30                 NA                -1.6016458   -1.6818612   -1.5214304
24 months   LCNI-5           MALAWI                         [20-30)              NA                -1.9375008   -2.0661329   -1.8088688
24 months   LCNI-5           MALAWI                         <20                  NA                -1.7936996   -2.0190577   -1.5683415
24 months   LCNI-5           MALAWI                         >=30                 NA                -1.8815034   -2.0504850   -1.7125218
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -1.8718105   -2.0213852   -1.7222357
24 months   MAL-ED           BANGLADESH                     <20                  NA                -2.1818857   -2.5018447   -1.8619268
24 months   MAL-ED           BANGLADESH                     >=30                 NA                -2.2417806   -2.5860533   -1.8975079
24 months   MAL-ED           BRAZIL                         [20-30)              NA                -0.0107977   -0.2348819    0.2132865
24 months   MAL-ED           BRAZIL                         <20                  NA                 0.0066020   -0.4850712    0.4982751
24 months   MAL-ED           BRAZIL                         >=30                 NA                 0.0526572   -0.2968650    0.4021794
24 months   MAL-ED           INDIA                          [20-30)              NA                -1.9407099   -2.0906897   -1.7907300
24 months   MAL-ED           INDIA                          <20                  NA                -1.8075550   -2.0786711   -1.5364390
24 months   MAL-ED           INDIA                          >=30                 NA                -1.6039142   -1.9480373   -1.2597910
24 months   MAL-ED           PERU                           [20-30)              NA                -1.8151634   -2.0223689   -1.6079578
24 months   MAL-ED           PERU                           <20                  NA                -1.7858697   -2.0151718   -1.5565675
24 months   MAL-ED           PERU                           >=30                 NA                -1.6627902   -1.9026695   -1.4229109
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                -1.6837506   -1.8849104   -1.4825908
24 months   MAL-ED           SOUTH AFRICA                   <20                  NA                -1.5972402   -1.9980727   -1.1964077
24 months   MAL-ED           SOUTH AFRICA                   >=30                 NA                -1.5859008   -1.8060981   -1.3657036
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -2.7479204   -2.9417835   -2.5540572
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  NA                -2.7855556   -3.3723518   -2.1987593
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -2.5061413   -2.6995868   -2.3126958
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                -2.2522284   -2.3778309   -2.1266259
24 months   NIH-Birth        BANGLADESH                     <20                  NA                -1.9269979   -2.2114414   -1.6425544
24 months   NIH-Birth        BANGLADESH                     >=30                 NA                -2.2587857   -2.4738273   -2.0437441
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                -1.4452084   -1.5499285   -1.3404883
24 months   NIH-Crypto       BANGLADESH                     <20                  NA                -1.4894088   -1.6706883   -1.3081293
24 months   NIH-Crypto       BANGLADESH                     >=30                 NA                -1.3685492   -1.5912066   -1.1458917
24 months   PROBIT           BELARUS                        [20-30)              NA                -0.1690276   -0.3760685    0.0380134
24 months   PROBIT           BELARUS                        <20                  NA                -0.1442427   -0.8035881    0.5151027
24 months   PROBIT           BELARUS                        >=30                 NA                -0.0001280   -0.3159865    0.3157305
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -1.5703487   -1.6690115   -1.4716859
24 months   PROVIDE          BANGLADESH                     <20                  NA                -1.6071559   -1.8719132   -1.3423987
24 months   PROVIDE          BANGLADESH                     >=30                 NA                -1.7162653   -1.9194537   -1.5130769
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                -1.6102277   -1.6812405   -1.5392149
24 months   ZVITAMBO         ZIMBABWE                       <20                  NA                -1.7355549   -1.9249136   -1.5461962
24 months   ZVITAMBO         ZIMBABWE                       >=30                 NA                -1.5628828   -1.6833717   -1.4423938


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          NA                   NA                -0.6779343   -0.7109987   -0.6448698
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5894137   -1.6086318   -1.5701955
Birth       Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9312706   -1.0202524   -0.8422889
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        NA                   NA                 1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4999118   -0.5204765   -0.4793472
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          NA                   NA                -1.0441293   -1.0769738   -1.0112848
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5617391   -1.6780690   -1.4454093
6 months    IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3135466   -1.3366721   -1.2904210
6 months    Keneba           GAMBIA                         NA                   NA                -0.9040346   -0.9513522   -0.8567171
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6498804   -1.7271669   -1.5725940
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2016239   -1.3201698   -1.0830780
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4062134   -1.4951703   -1.3172565
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5410317   -0.5901099   -0.4919536
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8672235   -0.8928135   -0.8416336
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9905921   -3.0548289   -2.9263553
24 months   COHORTS          INDIA                          NA                   NA                -2.2182259   -2.2576094   -2.1788424
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0137151   -2.0414318   -1.9859984
24 months   Keneba           GAMBIA                         NA                   NA                -1.5798251   -1.6298520   -1.5297981
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8966105   -1.9881282   -1.8050928
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8901556   -2.0155338   -1.7647773
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2200371   -2.3231580   -2.1169161
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6052656   -1.6623196   -1.5482116


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <20                  [20-30)           -0.3970003   -0.6943816   -0.0996190
Birth       COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1303312   -0.3322403    0.0715780
Birth       COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <20                  [20-30)           -0.2817606   -0.4046313   -0.1588899
Birth       COHORTS          INDIA                          >=30                 [20-30)            0.2065149    0.1295862    0.2834436
Birth       COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <20                  [20-30)           -0.2976723   -0.4213430   -0.1740017
Birth       COHORTS          PHILIPPINES                    >=30                 [20-30)            0.0475289   -0.0402736    0.1353315
Birth       GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       GMS-Nepal        NEPAL                          <20                  [20-30)           -0.6457045   -0.8542254   -0.4371835
Birth       GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1639742   -0.0768803    0.4048287
Birth       IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       IRC              INDIA                          <20                  [20-30)           -0.3032548   -0.9788582    0.3723487
Birth       IRC              INDIA                          >=30                 [20-30)            0.1324655   -0.4054748    0.6704058
Birth       JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.2304156   -0.2673830   -0.1934481
Birth       JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0109241   -0.0775960    0.0557478
Birth       Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <20                  [20-30)           -0.4514961   -0.6435879   -0.2594042
Birth       Keneba           GAMBIA                         >=30                 [20-30)            0.0238171   -0.1163986    0.1640327
Birth       MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <20                  [20-30)           -0.2137194   -0.6256025    0.1981636
Birth       MAL-ED           BANGLADESH                     >=30                 [20-30)            0.0309231   -0.3802881    0.4421343
Birth       MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <20                  [20-30)            0.8639634    0.0850064    1.6429205
Birth       MAL-ED           BRAZIL                         >=30                 [20-30)            0.1995884   -0.4753761    0.8745529
Birth       MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <20                  [20-30)           -0.3936989   -0.6768921   -0.1105057
Birth       MAL-ED           PERU                           >=30                 [20-30)            0.2146424   -0.1061391    0.5354239
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <20                  [20-30)           -0.1201607   -0.6469630    0.4066417
Birth       MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.2248160   -0.2465682    0.6962001
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.2571032   -0.3378826    0.8520890
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2211715   -0.2511968    0.6935398
Birth       NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <20                  [20-30)            0.1954226   -0.0856876    0.4765329
Birth       NIH-Birth        BANGLADESH                     >=30                 [20-30)            0.0906014   -0.1217221    0.3029248
Birth       NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0637201   -0.2708230    0.1433829
Birth       NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0197206   -0.2282797    0.1888385
Birth       PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <20                  [20-30)           -0.2440629   -0.3647899   -0.1233358
Birth       PROBIT           BELARUS                        >=30                 [20-30)            0.0663617   -0.0097580    0.1424813
Birth       PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2276562   -0.4520784   -0.0032339
Birth       PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.0108620   -0.2140076    0.1922835
Birth       SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <20                  [20-30)           -0.1467681   -0.3580125    0.0644762
Birth       SAS-CompFeed     INDIA                          >=30                 [20-30)            0.0515855   -0.1451609    0.2483319
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0648524   -0.1295197   -0.0001851
Birth       ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0733133    0.0102963    0.1363304
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.1293525   -0.3666174    0.6253225
6 months    CMC-V-BCS-2002   INDIA                          >=30                 [20-30)            0.1130357   -0.3468573    0.5729286
6 months    COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <20                  [20-30)           -0.0045358   -0.2477347    0.2386631
6 months    COHORTS          GUATEMALA                      >=30                 [20-30)           -0.1325220   -0.2888089    0.0237648
6 months    COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <20                  [20-30)           -0.2260948   -0.3410901   -0.1110994
6 months    COHORTS          INDIA                          >=30                 [20-30)            0.0475913   -0.0290100    0.1241927
6 months    COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1538078   -0.2885860   -0.0190296
6 months    COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.1355836   -0.2279215   -0.0432458
6 months    GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    GMS-Nepal        NEPAL                          <20                  [20-30)           -0.2666465   -0.4949021   -0.0383909
6 months    GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1122392   -0.1392342    0.3637126
6 months    Guatemala BSC    GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <20                  [20-30)           -0.3293363   -0.6201410   -0.0385316
6 months    Guatemala BSC    GUATEMALA                      >=30                 [20-30)           -0.0102190   -0.3149882    0.2945503
6 months    IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    IRC              INDIA                          <20                  [20-30)           -0.0879673   -0.5705710    0.3946364
6 months    IRC              INDIA                          >=30                 [20-30)            0.2735403   -0.3280750    0.8751555
6 months    JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.1184670   -0.1556999   -0.0812341
6 months    JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0262236   -0.1015851    0.0491380
6 months    Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <20                  [20-30)           -0.0105774   -0.1470941    0.1259392
6 months    Keneba           GAMBIA                         >=30                 [20-30)           -0.1056842   -0.2078014   -0.0035670
6 months    LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <20                  [20-30)            0.0785919   -0.1312039    0.2883878
6 months    LCNI-5           MALAWI                         >=30                 [20-30)           -0.0650482   -0.2374397    0.1073432
6 months    MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <20                  [20-30)           -0.4189223   -0.8143383   -0.0235063
6 months    MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.1371074   -0.4808234    0.2066085
6 months    MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <20                  [20-30)            0.1277033   -0.2610082    0.5164149
6 months    MAL-ED           BRAZIL                         >=30                 [20-30)            0.0061944   -0.3344738    0.3468625
6 months    MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <20                  [20-30)           -0.0663864   -0.3855889    0.2528160
6 months    MAL-ED           INDIA                          >=30                 [20-30)            0.3873546    0.0406812    0.7340281
6 months    MAL-ED           NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <20                  [20-30)           -0.8683874   -1.6322474   -0.1045274
6 months    MAL-ED           NEPAL                          >=30                 [20-30)            0.0483735   -0.2636825    0.3604295
6 months    MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <20                  [20-30)           -0.0729267   -0.3343486    0.1884951
6 months    MAL-ED           PERU                           >=30                 [20-30)           -0.0579620   -0.3698961    0.2539721
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0577353   -0.3704842    0.4859548
6 months    MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.1559436   -0.1201815    0.4320686
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.1603391   -0.6000945    0.2794163
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0743779   -0.1814311    0.3301869
6 months    NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <20                  [20-30)            0.2472742   -0.0277668    0.5223151
6 months    NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0311902   -0.2471420    0.1847616
6 months    NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0653914   -0.2575193    0.1267366
6 months    NIH-Crypto       BANGLADESH                     >=30                 [20-30)           -0.0805872   -0.2848734    0.1236990
6 months    PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <20                  [20-30)           -0.0988677   -0.1744154   -0.0233199
6 months    PROBIT           BELARUS                        >=30                 [20-30)            0.0326670   -0.0289742    0.0943081
6 months    PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <20                  [20-30)           -0.2064545   -0.4450289    0.0321199
6 months    PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1720657   -0.3696363    0.0255050
6 months    SAS-CompFeed     INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <20                  [20-30)           -0.0030060   -0.0966992    0.0906871
6 months    SAS-CompFeed     INDIA                          >=30                 [20-30)           -0.1310224   -0.3021880    0.0401432
6 months    SAS-FoodSuppl    INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <20                  [20-30)            0.1525969   -0.2385882    0.5437820
6 months    SAS-FoodSuppl    INDIA                          >=30                 [20-30)           -0.1497999   -0.4432980    0.1436982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)            0.0203405   -0.1755046    0.2161857
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.0915863   -0.0185929    0.2017654
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.0501560   -0.1260195    0.0257075
6 months    ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           -0.0359676   -0.1110351    0.0391000
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   CMC-V-BCS-2002   INDIA                          <20                  [20-30)            0.2522898   -0.0894877    0.5940672
24 months   CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           -0.0212136   -0.3459724    0.3035453
24 months   COHORTS          GUATEMALA                      [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <20                  [20-30)           -0.0226822   -0.2149917    0.1696273
24 months   COHORTS          GUATEMALA                      >=30                 [20-30)            0.0345083   -0.1122494    0.1812661
24 months   COHORTS          INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <20                  [20-30)           -0.3837458   -0.5212257   -0.2462659
24 months   COHORTS          INDIA                          >=30                 [20-30)           -0.0113237   -0.1044919    0.0818445
24 months   COHORTS          PHILIPPINES                    [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <20                  [20-30)           -0.1070462   -0.2485217    0.0344293
24 months   COHORTS          PHILIPPINES                    >=30                 [20-30)           -0.0906645   -0.1967214    0.0153925
24 months   GMS-Nepal        NEPAL                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   GMS-Nepal        NEPAL                          <20                  [20-30)           -0.0012133   -0.2687195    0.2662929
24 months   GMS-Nepal        NEPAL                          >=30                 [20-30)            0.1687909   -0.1019976    0.4395794
24 months   IRC              INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   IRC              INDIA                          <20                  [20-30)           -0.1046394   -0.4257508    0.2164720
24 months   IRC              INDIA                          >=30                 [20-30)            0.0471703   -0.3536230    0.4479637
24 months   JiVitA-3         BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <20                  [20-30)           -0.0891895   -0.1374067   -0.0409723
24 months   JiVitA-3         BANGLADESH                     >=30                 [20-30)           -0.0075661   -0.0923466    0.0772144
24 months   Keneba           GAMBIA                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <20                  [20-30)           -0.1315309   -0.2715105    0.0084486
24 months   Keneba           GAMBIA                         >=30                 [20-30)           -0.0620683   -0.1669904    0.0428539
24 months   LCNI-5           MALAWI                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <20                  [20-30)            0.1438012   -0.1157610    0.4033635
24 months   LCNI-5           MALAWI                         >=30                 [20-30)            0.0559974   -0.1564936    0.2684885
24 months   MAL-ED           BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <20                  [20-30)           -0.3100753   -0.6624168    0.0422663
24 months   MAL-ED           BANGLADESH                     >=30                 [20-30)           -0.3699702   -0.7451131    0.0051727
24 months   MAL-ED           BRAZIL                         [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <20                  [20-30)            0.0173996   -0.5233425    0.5581418
24 months   MAL-ED           BRAZIL                         >=30                 [20-30)            0.0634549   -0.3531388    0.4800485
24 months   MAL-ED           INDIA                          [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <20                  [20-30)            0.1331548   -0.1769814    0.4432910
24 months   MAL-ED           INDIA                          >=30                 [20-30)            0.3367957   -0.0392581    0.7128495
24 months   MAL-ED           PERU                           [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <20                  [20-30)            0.0292937   -0.2797640    0.3383514
24 months   MAL-ED           PERU                           >=30                 [20-30)            0.1523732   -0.1654342    0.4701806
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <20                  [20-30)            0.0865105   -0.3623513    0.5353722
24 months   MAL-ED           SOUTH AFRICA                   >=30                 [20-30)            0.0978498   -0.2006991    0.3963987
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           -0.0376352   -0.6556261    0.5803557
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)            0.2417790   -0.0320897    0.5156477
24 months   NIH-Birth        BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <20                  [20-30)            0.3252305    0.0162506    0.6342103
24 months   NIH-Birth        BANGLADESH                     >=30                 [20-30)           -0.0065573   -0.2528326    0.2397179
24 months   NIH-Crypto       BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <20                  [20-30)           -0.0442005   -0.2528856    0.1644846
24 months   NIH-Crypto       BANGLADESH                     >=30                 [20-30)            0.0766592   -0.1685808    0.3218992
24 months   PROBIT           BELARUS                        [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <20                  [20-30)            0.0247848   -0.5735241    0.6230938
24 months   PROBIT           BELARUS                        >=30                 [20-30)            0.1688996   -0.0147589    0.3525581
24 months   PROVIDE          BANGLADESH                     [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <20                  [20-30)           -0.0368072   -0.3191729    0.2455585
24 months   PROVIDE          BANGLADESH                     >=30                 [20-30)           -0.1459166   -0.3716201    0.0797869
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)            0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <20                  [20-30)           -0.1253272   -0.3268189    0.0761645
24 months   ZVITAMBO         ZIMBABWE                       >=30                 [20-30)            0.0473449   -0.0901527    0.1848425


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      [20-30)              NA                -0.1259740   -0.2205164   -0.0314316
Birth       COHORTS          INDIA                          [20-30)              NA                 0.0314980    0.0082028    0.0547932
Birth       COHORTS          PHILIPPINES                    [20-30)              NA                -0.0287414   -0.0609721    0.0034893
Birth       GMS-Nepal        NEPAL                          [20-30)              NA                -0.1235169   -0.1862638   -0.0607700
Birth       IRC              INDIA                          [20-30)              NA                -0.0175639   -0.0903354    0.0552077
Birth       JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0961233   -0.1138203   -0.0784263
Birth       Keneba           GAMBIA                         [20-30)              NA                -0.0703145   -0.1403647   -0.0002643
Birth       MAL-ED           BANGLADESH                     [20-30)              NA                -0.0241941   -0.1171709    0.0687827
Birth       MAL-ED           BRAZIL                         [20-30)              NA                 0.1554634   -0.0636144    0.3745412
Birth       MAL-ED           PERU                           [20-30)              NA                -0.0713783   -0.1969771    0.0542204
Birth       MAL-ED           SOUTH AFRICA                   [20-30)              NA                -0.0213810   -0.2049774    0.1622154
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0957889   -0.0895533    0.2811310
Birth       NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0455661   -0.0143574    0.1054897
Birth       NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0148650   -0.0673519    0.0376219
Birth       PROBIT           BELARUS                        [20-30)              NA                -0.0047169   -0.0233364    0.0139025
Birth       PROVIDE          BANGLADESH                     [20-30)              NA                -0.0307410   -0.0813884    0.0199064
Birth       SAS-CompFeed     INDIA                          [20-30)              NA                -0.0119554   -0.0469911    0.0230804
Birth       ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0087186   -0.0069709    0.0244080
6 months    CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0221399   -0.0504953    0.0947752
6 months    COHORTS          GUATEMALA                      [20-30)              NA                -0.0600512   -0.1352687    0.0151662
6 months    COHORTS          INDIA                          [20-30)              NA                -0.0077504   -0.0299051    0.0144044
6 months    COHORTS          PHILIPPINES                    [20-30)              NA                -0.0634226   -0.0978545   -0.0289906
6 months    GMS-Nepal        NEPAL                          [20-30)              NA                -0.0568844   -0.1179295    0.0041608
6 months    Guatemala BSC    GUATEMALA                      [20-30)              NA                -0.0586814   -0.1500853    0.0327225
6 months    IRC              INDIA                          [20-30)              NA                 0.0122907   -0.0444174    0.0689988
6 months    JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0625629   -0.0820955   -0.0430303
6 months    Keneba           GAMBIA                         [20-30)              NA                -0.0441517   -0.0940215    0.0057181
6 months    LCNI-5           MALAWI                         [20-30)              NA                -0.0061590   -0.0757692    0.0634511
6 months    MAL-ED           BANGLADESH                     [20-30)              NA                -0.0803343   -0.1675233    0.0068546
6 months    MAL-ED           BRAZIL                         [20-30)              NA                 0.0447658   -0.0764595    0.1659912
6 months    MAL-ED           INDIA                          [20-30)              NA                 0.0272456   -0.0354708    0.0899620
6 months    MAL-ED           NEPAL                          [20-30)              NA                -0.0089693   -0.0756683    0.0577297
6 months    MAL-ED           PERU                           [20-30)              NA                -0.0309762   -0.1437515    0.0817991
6 months    MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0877041   -0.0521472    0.2275554
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0202989   -0.0978036    0.1384014
6 months    NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0210474   -0.0391563    0.0812512
6 months    NIH-Crypto       BANGLADESH                     [20-30)              NA                -0.0224250   -0.0762469    0.0313969
6 months    PROBIT           BELARUS                        [20-30)              NA                -0.0001566   -0.0131279    0.0128147
6 months    PROVIDE          BANGLADESH                     [20-30)              NA                -0.0583846   -0.1072036   -0.0095655
6 months    SAS-CompFeed     INDIA                          [20-30)              NA                -0.0187442   -0.0384333    0.0009448
6 months    SAS-FoodSuppl    INDIA                          [20-30)              NA                -0.0248062   -0.1032106    0.0535982
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.0303006   -0.0054178    0.0660191
6 months    ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0144136   -0.0337060    0.0048789
24 months   CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0179241   -0.0321447    0.0679928
24 months   COHORTS          GUATEMALA                      [20-30)              NA                 0.0142422   -0.0556546    0.0841390
24 months   COHORTS          INDIA                          [20-30)              NA                -0.0227114   -0.0510402    0.0056173
24 months   COHORTS          PHILIPPINES                    [20-30)              NA                -0.0358867   -0.0735080    0.0017346
24 months   GMS-Nepal        NEPAL                          [20-30)              NA                 0.0066903   -0.0595724    0.0729530
24 months   IRC              INDIA                          [20-30)              NA                -0.0046224   -0.0443175    0.0350727
24 months   JiVitA-3         BANGLADESH                     [20-30)              NA                -0.0401593   -0.0649837   -0.0153348
24 months   Keneba           GAMBIA                         [20-30)              NA                -0.0402475   -0.0922566    0.0117616
24 months   LCNI-5           MALAWI                         [20-30)              NA                 0.0408903   -0.0474504    0.1292310
24 months   MAL-ED           BANGLADESH                     [20-30)              NA                -0.1065858   -0.1936359   -0.0195357
24 months   MAL-ED           BRAZIL                         [20-30)              NA                 0.0169121   -0.1249213    0.1587454
24 months   MAL-ED           INDIA                          [20-30)              NA                 0.0505543   -0.0129180    0.1140266
24 months   MAL-ED           PERU                           [20-30)              NA                 0.0626924   -0.0781690    0.2035538
24 months   MAL-ED           SOUTH AFRICA                   [20-30)              NA                 0.0386911   -0.1162673    0.1936495
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                 0.1023596   -0.0247706    0.2294898
24 months   NIH-Birth        BANGLADESH                     [20-30)              NA                 0.0321913   -0.0350122    0.0993948
24 months   NIH-Crypto       BANGLADESH                     [20-30)              NA                 0.0039438   -0.0565430    0.0644306
24 months   PROBIT           BELARUS                        [20-30)              NA                 0.0247384   -0.1547057    0.2041826
24 months   PROVIDE          BANGLADESH                     [20-30)              NA                -0.0320734   -0.0866424    0.0224955
24 months   ZVITAMBO         ZIMBABWE                       [20-30)              NA                 0.0049621   -0.0364778    0.0464020
