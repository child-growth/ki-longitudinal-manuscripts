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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n
----------  ---------------  -----------------------------  -------------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       COHORTS          GUATEMALA                      <151 cm            545     840
Birth       COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       COHORTS          INDIA                          >=155 cm           530    1774
Birth       COHORTS          INDIA                          <151 cm            763    1774
Birth       COHORTS          INDIA                          [151-155) cm       481    1774
Birth       COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       JiVitA-3         BANGLADESH                     >=155 cm          3317   22356
Birth       JiVitA-3         BANGLADESH                     <151 cm          13436   22356
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      5603   22356
Birth       Keneba           GAMBIA                         >=155 cm          1187    1431
Birth       Keneba           GAMBIA                         <151 cm             51    1431
Birth       Keneba           GAMBIA                         [151-155) cm       193    1431
Birth       MAL-ED           BANGLADESH                     >=155 cm            22     222
Birth       MAL-ED           BANGLADESH                     <151 cm            145     222
Birth       MAL-ED           BANGLADESH                     [151-155) cm        55     222
Birth       MAL-ED           BRAZIL                         >=155 cm            32      64
Birth       MAL-ED           BRAZIL                         <151 cm             20      64
Birth       MAL-ED           BRAZIL                         [151-155) cm        12      64
Birth       MAL-ED           INDIA                          >=155 cm            12      43
Birth       MAL-ED           INDIA                          <151 cm             20      43
Birth       MAL-ED           INDIA                          [151-155) cm        11      43
Birth       MAL-ED           NEPAL                          >=155 cm             6      27
Birth       MAL-ED           NEPAL                          <151 cm             13      27
Birth       MAL-ED           NEPAL                          [151-155) cm         8      27
Birth       MAL-ED           PERU                           >=155 cm            48     226
Birth       MAL-ED           PERU                           <151 cm            131     226
Birth       MAL-ED           PERU                           [151-155) cm        47     226
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     101
Birth       MAL-ED           SOUTH AFRICA                   <151 cm             10     101
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            72     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        29     122
Birth       NIH-Birth        BANGLADESH                     >=155 cm           111     608
Birth       NIH-Birth        BANGLADESH                     <151 cm            356     608
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       141     608
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           134     729
Birth       NIH-Crypto       BANGLADESH                     <151 cm            418     729
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       177     729
Birth       PROBIT           BELARUS                        >=155 cm         13209   13732
Birth       PROBIT           BELARUS                        <151 cm            125   13732
Birth       PROBIT           BELARUS                        [151-155) cm       398   13732
Birth       PROVIDE          BANGLADESH                     >=155 cm           110     517
Birth       PROVIDE          BANGLADESH                     <151 cm            286     517
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     517
Birth       SAS-CompFeed     INDIA                          >=155 cm           467    1135
Birth       SAS-CompFeed     INDIA                          <151 cm            385    1135
Birth       SAS-CompFeed     INDIA                          [151-155) cm       283    1135
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7732    9705
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            560    9705
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1413    9705
6 months    COHORTS          GUATEMALA                      >=155 cm           117     943
6 months    COHORTS          GUATEMALA                      <151 cm            629     943
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     943
6 months    COHORTS          INDIA                          >=155 cm           541    1819
6 months    COHORTS          INDIA                          <151 cm            790    1819
6 months    COHORTS          INDIA                          [151-155) cm       488    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm           561    2708
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2708
6 months    COHORTS          PHILIPPINES                    [151-155) cm       779    2708
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2660   16761
6 months    JiVitA-3         BANGLADESH                     <151 cm           9797   16761
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4304   16761
6 months    Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    Keneba           GAMBIA                         <151 cm             67    1877
6 months    Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    LCNI-5           MALAWI                         >=155 cm           513     836
6 months    LCNI-5           MALAWI                         <151 cm            131     836
6 months    LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    MAL-ED           BANGLADESH                     >=155 cm            24     241
6 months    MAL-ED           BANGLADESH                     <151 cm            156     241
6 months    MAL-ED           BANGLADESH                     [151-155) cm        61     241
6 months    MAL-ED           BRAZIL                         >=155 cm           121     209
6 months    MAL-ED           BRAZIL                         <151 cm             51     209
6 months    MAL-ED           BRAZIL                         [151-155) cm        37     209
6 months    MAL-ED           INDIA                          >=155 cm            55     235
6 months    MAL-ED           INDIA                          <151 cm            112     235
6 months    MAL-ED           INDIA                          [151-155) cm        68     235
6 months    MAL-ED           NEPAL                          >=155 cm            41     236
6 months    MAL-ED           NEPAL                          <151 cm            132     236
6 months    MAL-ED           NEPAL                          [151-155) cm        63     236
6 months    MAL-ED           PERU                           >=155 cm            58     272
6 months    MAL-ED           PERU                           <151 cm            157     272
6 months    MAL-ED           PERU                           [151-155) cm        57     272
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm           187     249
6 months    MAL-ED           SOUTH AFRICA                   <151 cm             31     249
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm        31     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247
6 months    NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    NIH-Crypto       BANGLADESH                     >=155 cm           134     715
6 months    NIH-Crypto       BANGLADESH                     <151 cm            411     715
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm       170     715
6 months    PROBIT           BELARUS                        >=155 cm         12531   13031
6 months    PROBIT           BELARUS                        <151 cm            121   13031
6 months    PROBIT           BELARUS                        [151-155) cm       379   13031
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     603
6 months    PROVIDE          BANGLADESH                     <151 cm            330     603
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     603
6 months    SAS-CompFeed     INDIA                          >=155 cm           510    1228
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1228
6 months    SAS-CompFeed     INDIA                          [151-155) cm       297    1228
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            74     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       103     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            445    7394
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394
24 months   COHORTS          GUATEMALA                      >=155 cm           126     994
24 months   COHORTS          GUATEMALA                      <151 cm            659     994
24 months   COHORTS          GUATEMALA                      [151-155) cm       209     994
24 months   COHORTS          INDIA                          >=155 cm           552    1819
24 months   COHORTS          INDIA                          <151 cm            785    1819
24 months   COHORTS          INDIA                          [151-155) cm       482    1819
24 months   COHORTS          PHILIPPINES                    >=155 cm           510    2445
24 months   COHORTS          PHILIPPINES                    <151 cm           1234    2445
24 months   COHORTS          PHILIPPINES                    [151-155) cm       701    2445
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1314    8599
24 months   JiVitA-3         BANGLADESH                     <151 cm           5067    8599
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2218    8599
24 months   Keneba           GAMBIA                         >=155 cm          1338    1602
24 months   Keneba           GAMBIA                         <151 cm             60    1602
24 months   Keneba           GAMBIA                         [151-155) cm       204    1602
24 months   LCNI-5           MALAWI                         >=155 cm           355     577
24 months   LCNI-5           MALAWI                         <151 cm             95     577
24 months   LCNI-5           MALAWI                         [151-155) cm       127     577
24 months   MAL-ED           BANGLADESH                     >=155 cm            22     212
24 months   MAL-ED           BANGLADESH                     <151 cm            137     212
24 months   MAL-ED           BANGLADESH                     [151-155) cm        53     212
24 months   MAL-ED           BRAZIL                         >=155 cm            95     169
24 months   MAL-ED           BRAZIL                         <151 cm             43     169
24 months   MAL-ED           BRAZIL                         [151-155) cm        31     169
24 months   MAL-ED           INDIA                          >=155 cm            53     226
24 months   MAL-ED           INDIA                          <151 cm            110     226
24 months   MAL-ED           INDIA                          [151-155) cm        63     226
24 months   MAL-ED           NEPAL                          >=155 cm            38     228
24 months   MAL-ED           NEPAL                          <151 cm            129     228
24 months   MAL-ED           NEPAL                          [151-155) cm        61     228
24 months   MAL-ED           PERU                           >=155 cm            46     201
24 months   MAL-ED           PERU                           <151 cm            115     201
24 months   MAL-ED           PERU                           [151-155) cm        40     201
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm           180     234
24 months   MAL-ED           SOUTH AFRICA                   <151 cm             27     234
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214
24 months   NIH-Birth        BANGLADESH                     >=155 cm            77     429
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     429
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     429
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514
24 months   PROBIT           BELARUS                        >=155 cm          3859    4005
24 months   PROBIT           BELARUS                        <151 cm             35    4005
24 months   PROBIT           BELARUS                        [151-155) cm       111    4005
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     577
24 months   PROVIDE          BANGLADESH                     <151 cm            315     577
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             98    1374
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2f41c5c7-ec60-42cf-847c-0c2f7298c46b/4d4e6bbc-8348-4e20-a154-17bd1ac356bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2f41c5c7-ec60-42cf-847c-0c2f7298c46b/4d4e6bbc-8348-4e20-a154-17bd1ac356bd/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/2f41c5c7-ec60-42cf-847c-0c2f7298c46b/4d4e6bbc-8348-4e20-a154-17bd1ac356bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.5392420    0.2729159    0.8055680
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -0.0133170   -0.1133330    0.0866991
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4013894    0.1949174    0.6078614
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.2912917   -0.3871289   -0.1954545
Birth       COHORTS          INDIA                          <151 cm              NA                -0.8305859   -0.9103614   -0.7508105
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.5786571   -0.6770502   -0.4802640
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0600899   -0.0181626    0.1383424
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.4147218   -0.4703157   -0.3591279
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1713780   -0.2436840   -0.0990720
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1716465   -1.2146314   -1.1286615
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -1.7539860   -1.7766366   -1.7313353
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.4468347   -1.4810492   -1.4126202
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.1038104    0.0327549    0.1748659
Birth       Keneba           GAMBIA                         <151 cm              NA                -0.2999815   -0.7597831    0.1598201
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -0.1799991   -0.3684668    0.0084685
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -1.0035316   -1.5932626   -0.4138006
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -1.1916003   -1.3566594   -1.0265413
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8397761   -1.0912394   -0.5883127
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.4256479   -0.6956165   -0.1556793
Birth       MAL-ED           BRAZIL                         <151 cm              NA                -1.0670526   -1.6636322   -0.4704731
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                -1.0973447   -1.9358087   -0.2588808
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.9209817   -1.6920127   -0.1499506
Birth       MAL-ED           INDIA                          <151 cm              NA                -1.4116242   -1.8213749   -1.0018735
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.8161056   -1.3636191   -0.2685921
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.5225938   -0.7899127   -0.2552748
Birth       MAL-ED           PERU                           <151 cm              NA                -1.0282401   -1.1880308   -0.8684495
Birth       MAL-ED           PERU                           [151-155) cm         NA                -0.9666412   -1.1867614   -0.7465210
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.4713560   -0.6841627   -0.2585493
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.0209118   -2.0352148   -0.0066088
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.1155748   -1.4899598   -0.7411898
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.0055243   -1.2897393   -0.7213092
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.5434511   -1.8963953   -1.1905069
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4813475   -1.9588918   -1.0038032
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5616972   -0.7704771   -0.3529174
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0630073   -1.1783373   -0.9476772
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8847499   -1.0699275   -0.6995723
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.6223833   -0.8174650   -0.4273017
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.0296692   -1.1169534   -0.9423850
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.8173181   -0.9627007   -0.6719354
Birth       PROBIT           BELARUS                        >=155 cm             NA                 1.3259014    1.1652578    1.4865450
Birth       PROBIT           BELARUS                        <151 cm              NA                 0.9918389    0.8971991    1.0864787
Birth       PROBIT           BELARUS                        [151-155) cm         NA                 0.9507341    0.7573839    1.1440842
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6461086   -0.8242430   -0.4679742
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.0446201   -1.1431357   -0.9461044
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.7828739   -0.9331902   -0.6325576
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -1.1627457   -1.3043657   -1.0211258
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -1.7331351   -1.8620232   -1.6042469
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.5113199   -1.6670164   -1.3556233
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4387139   -0.4660878   -0.4113401
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.6882040   -0.7957489   -0.5806591
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6003936   -0.6623461   -0.5384411
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -1.1641791   -1.3780094   -0.9503489
6 months    COHORTS          GUATEMALA                      <151 cm              NA                -1.9748813   -2.0577625   -1.8920001
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -1.5832441   -1.7437317   -1.4227566
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5003565   -0.5941648   -0.4065481
6 months    COHORTS          INDIA                          <151 cm              NA                -1.2322457   -1.3110606   -1.1534307
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.9042604   -0.9982134   -0.8103075
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7446071   -0.8346636   -0.6545507
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -1.3626511   -1.4202188   -1.3050834
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0330633   -1.1087303   -0.9573964
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3224728   -1.6649499   -0.9799958
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6512912   -1.8180265   -1.4845559
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4905467   -1.7399376   -1.2411557
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7849287   -0.8307702   -0.7390873
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -1.5344791   -1.5605122   -1.5084460
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.1462063   -1.1831900   -1.1092227
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.8404545   -0.8936554   -0.7872536
6 months    Keneba           GAMBIA                         <151 cm              NA                -1.4772687   -1.7479899   -1.2065476
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -1.2601609   -1.3948328   -1.1254891
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -1.4652724   -1.5524029   -1.3781419
6 months    LCNI-5           MALAWI                         <151 cm              NA                -2.1946619   -2.3642518   -2.0250720
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                -1.8002427   -1.9365691   -1.6639163
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.9281950   -1.2310587   -0.6253312
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -1.3742079   -1.5287524   -1.2196633
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.9217452   -1.1101483   -0.7333421
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.1730341   -0.0170520    0.3631202
6 months    MAL-ED           BRAZIL                         <151 cm              NA                -0.2743343   -0.5144376   -0.0342310
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 0.2094383   -0.1828586    0.6017351
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.9174922   -1.1283373   -0.7066471
6 months    MAL-ED           INDIA                          <151 cm              NA                -1.4778957   -1.6580088   -1.2977826
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -1.0358858   -1.2327721   -0.8389995
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0042510   -0.2117821    0.2032800
6 months    MAL-ED           NEPAL                          <151 cm              NA                -0.7903803   -0.9375666   -0.6431941
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.4285101   -0.6452064   -0.2118138
6 months    MAL-ED           PERU                           >=155 cm             NA                -1.1038823   -1.3211800   -0.8865846
6 months    MAL-ED           PERU                           <151 cm              NA                -1.4476953   -1.5985353   -1.2968553
6 months    MAL-ED           PERU                           [151-155) cm         NA                -1.2037689   -1.4391879   -0.9683498
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.9667108   -1.1122826   -0.8211390
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.5317578   -1.9584528   -1.1050629
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.3239414   -1.6829330   -0.9649498
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1953478   -1.3445638   -1.0461319
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8954742   -2.1979399   -1.5930085
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.5179974   -1.7733896   -1.2626051
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9394521   -1.1438547   -0.7350495
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6571785   -1.7670863   -1.5472706
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1544422   -1.3305318   -0.9783525
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.8741120   -1.0390242   -0.7091998
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.3521153   -1.4438611   -1.2603695
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.0856658   -1.2315648   -0.9397669
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.1270786    0.0363048    0.2178524
6 months    PROBIT           BELARUS                        <151 cm              NA                -0.4655068   -0.5495122   -0.3815014
6 months    PROBIT           BELARUS                        [151-155) cm         NA                -0.3282814   -0.4776553   -0.1789075
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6886772   -0.8489359   -0.5284184
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -1.2885962   -1.3860186   -1.1911737
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.9914176   -1.1341821   -0.8486530
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -1.0860787   -1.1795221   -0.9926353
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -1.7491132   -1.8934164   -1.6048099
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.4714126   -1.6868178   -1.2560074
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.3449419   -1.5732643   -1.1166194
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -2.1348023   -2.2789032   -1.9907014
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.7043849   -1.9448264   -1.4639433
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3529231   -0.4149526   -0.2908936
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9641606   -1.0806670   -0.8476543
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7740440   -0.8765320   -0.6715561
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7914286   -0.8219526   -0.7609047
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5566105   -1.6666580   -1.4465630
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1043540   -1.1726601   -1.0360479
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -2.1782171   -2.3725294   -1.9839048
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -3.1316020   -3.2106535   -3.0525504
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9185399   -3.0771851   -2.7598947
24 months   COHORTS          INDIA                          >=155 cm             NA                -1.5495071   -1.6467190   -1.4522953
24 months   COHORTS          INDIA                          <151 cm              NA                -2.4122542   -2.4889862   -2.3355222
24 months   COHORTS          INDIA                          [151-155) cm         NA                -2.1100396   -2.2102557   -2.0098236
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9675184   -2.0626318   -1.8724050
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -2.6778626   -2.7394575   -2.6162677
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2827143   -2.3639437   -2.2014849
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.4988410   -1.5565640   -1.4411180
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -2.2288816   -2.2605919   -2.1971714
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.8361073   -1.8811509   -1.7910636
24 months   Keneba           GAMBIA                         >=155 cm             NA                -1.5043633   -1.5610347   -1.4476920
24 months   Keneba           GAMBIA                         <151 cm              NA                -2.3103295   -2.5622735   -2.0583855
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -1.8458108   -1.9804050   -1.7112166
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -1.6664905   -1.7632973   -1.5696837
24 months   LCNI-5           MALAWI                         <151 cm              NA                -2.4267650   -2.6497862   -2.2037437
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -2.0943877   -2.2549878   -1.9337877
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -1.6082193   -1.9155809   -1.3008577
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -2.2155331   -2.3714471   -2.0596190
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -1.6689067   -1.9063127   -1.4315008
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0537605   -0.1824981    0.2900191
24 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0854659   -0.3733102    0.2023784
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.2396629   -0.6706458    0.1913200
24 months   MAL-ED           INDIA                          >=155 cm             NA                -1.4305238   -1.6863885   -1.1746591
24 months   MAL-ED           INDIA                          <151 cm              NA                -2.1555799   -2.3421656   -1.9689942
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -1.7427041   -1.9272749   -1.5581334
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.7543526   -0.9859063   -0.5227989
24 months   MAL-ED           NEPAL                          <151 cm              NA                -1.5789549   -1.7281757   -1.4297341
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -1.1188351   -1.3570384   -0.8806318
24 months   MAL-ED           PERU                           >=155 cm             NA                -1.3195996   -1.5758165   -1.0633826
24 months   MAL-ED           PERU                           <151 cm              NA                -1.9615190   -2.1184600   -1.8045781
24 months   MAL-ED           PERU                           [151-155) cm         NA                -1.6373656   -1.8826574   -1.3920738
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -1.5535945   -1.7059843   -1.4012047
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.9772095   -2.4045580   -1.5498610
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.9181111   -2.3376661   -1.4985561
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4204501   -2.5887980   -2.2521021
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1629624   -3.4556886   -2.8702363
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7154513   -3.0078755   -2.4230271
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5462081   -1.7856037   -1.3068125
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5127815   -2.6344685   -2.3910944
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9870361   -2.1907096   -1.7833625
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9272883   -1.0839842   -0.7705925
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.6453399   -1.7575276   -1.5331522
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.3889954   -1.5511213   -1.2268695
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.1199265   -0.4104086    0.1705556
24 months   PROBIT           BELARUS                        <151 cm              NA                -1.3179545   -1.4224398   -1.2134692
24 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.6606144   -0.9624219   -0.3588069
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2063077   -1.3844954   -1.0281201
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -1.7932736   -1.8997558   -1.6867914
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.5035264   -1.6707306   -1.3363221
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4806954   -1.5493945   -1.4119962
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2565714   -2.4713704   -2.0417725
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9312160   -2.0971502   -1.7652818


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                 0.1335238    0.0490187    0.2180289
Birth       COHORTS          INDIA                          NA                   NA                -0.5973224   -0.6502394   -0.5444055
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -1.5893474   -1.6086366   -1.5700581
Birth       Keneba           GAMBIA                         NA                   NA                 0.0474004   -0.0188757    0.1136765
Birth       MAL-ED           BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        NA                   NA                 1.3120339    1.1524984    1.4715694
Birth       PROVIDE          BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4765410   -0.5009545   -0.4521274
6 months    COHORTS          GUATEMALA                      NA                   NA                -1.8116225   -1.8800533   -1.7431916
6 months    COHORTS          INDIA                          NA                   NA                -0.9254151   -0.9779952   -0.8728349
6 months    COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -1.5599206   -1.6885363   -1.4313049
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -1.3139055   -1.3370256   -1.2907854
6 months    Keneba           GAMBIA                         NA                   NA                -0.9159303   -0.9650776   -0.8667830
6 months    LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    MAL-ED           BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        NA                   NA                 0.1077908    0.0170166    0.1985649
6 months    PROVIDE          BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.8882058   -1.9998264   -1.7765852
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424553   -0.5916933   -0.4932174
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8803077   -0.9076731   -0.8529423
24 months   COHORTS          GUATEMALA                      NA                   NA                -2.9963380   -3.0630990   -2.9295770
24 months   COHORTS          INDIA                          NA                   NA                -2.0710720   -2.1255079   -2.0166362
24 months   COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142
24 months   Keneba           GAMBIA                         NA                   NA                -1.5829641   -1.6348134   -1.5311148
24 months   LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   MAL-ED           BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        NA                   NA                -0.1444149   -0.4258602    0.1370304
24 months   PROVIDE          BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5981623   -1.6603107   -1.5360139


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5525589   -0.8371809   -0.2679369
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1378525   -0.4750839    0.1993788
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          -0.5392943   -0.6641693   -0.4144193
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.2873655   -0.4242131   -0.1505178
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.4748117   -0.5706453   -0.3789782
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2314679   -0.3378781   -0.1250578
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.5823395   -0.6297584   -0.5349205
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.2751882   -0.3266357   -0.2237407
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.4037919   -0.8691446    0.0615608
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2838095   -0.4855657   -0.0820533
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.1880687   -0.7999127    0.4237753
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1637555   -0.4774125    0.8049236
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.6414047   -1.3013428    0.0185334
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.6716968   -1.5576570    0.2142634
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4906425   -1.3665581    0.3852731
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.1048760   -0.8471673    1.0569193
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm          -0.5056464   -0.8160844   -0.1952084
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.4440475   -0.7908896   -0.0972053
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.5495558   -1.5870143    0.4879027
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.6442188   -1.0779263   -0.2105113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5379268   -0.9894226   -0.0864310
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4758232   -1.0351369    0.0834904
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5013100   -0.7407328   -0.2618873
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3230527   -0.6035410   -0.0425643
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.4072859   -0.6210610   -0.1935108
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1949347   -0.4381483    0.0482788
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3340625   -0.4880362   -0.1800888
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3751673   -0.4991690   -0.2511657
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.3985115   -0.6023899   -0.1946330
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.1367653   -0.3699095    0.0963789
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.5703893   -0.7074002   -0.4333785
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3485742   -0.6001931   -0.0969552
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2494901   -0.3604545   -0.1385257
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1616797   -0.2293762   -0.0939832
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.8107022   -1.0400027   -0.5814017
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4190650   -0.6862340   -0.1518960
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.7318892   -0.8545117   -0.6092667
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4039040   -0.5366035   -0.2712044
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6180440   -0.7246052   -0.5114828
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2884562   -0.4057795   -0.1711329
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3288184   -0.7101156    0.0524788
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1680738   -0.5917765    0.2556289
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7495503   -0.7988024   -0.7002982
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3612776   -0.4180892   -0.3044659
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6368143   -0.9127300   -0.3608985
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4197064   -0.5644155   -0.2749974
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7293895   -0.9201224   -0.5386566
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3349703   -0.4968903   -0.1730503
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.4460129   -0.7867348   -0.1052910
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0064498   -0.3493094    0.3622089
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4473684   -0.7542203   -0.1405165
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0364042   -0.3999499    0.4727582
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.5604035   -0.8378235   -0.2829836
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1183936   -0.4075183    0.1707311
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.7861293   -1.0392142   -0.5330443
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.4242590   -0.7235026   -0.1250155
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.3438130   -0.6085398   -0.0790861
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0998866   -0.4210789    0.2213058
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.5650471   -1.0161883   -0.1139058
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3572306   -0.7447993    0.0303381
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7001264   -1.0387249   -0.3615279
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3226495   -0.6184618   -0.0268373
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7177264   -0.9491096   -0.4863432
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2149901   -0.4847109    0.0547308
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.4780033   -0.6668071   -0.2891996
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.2115539   -0.4318550    0.0087473
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          -0.5925854   -0.6688339   -0.5163370
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4553600   -0.6003690   -0.3103510
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5999190   -0.7877945   -0.4120436
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3027404   -0.5171624   -0.0883184
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.6630344   -0.7909422   -0.5351267
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3853339   -0.6402454   -0.1304223
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.7898605   -1.0611595   -0.5185614
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.3594430   -0.6917091   -0.0271769
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6112376   -0.7434864   -0.4789887
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4211209   -0.5409320   -0.3013099
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7651818   -0.8793980   -0.6509657
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3129254   -0.3876805   -0.2381703
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.9533848   -1.1628233   -0.7439464
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.7403228   -0.9910444   -0.4896012
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.8627471   -0.9862389   -0.7392552
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5605325   -0.6997984   -0.4212666
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7103442   -0.8238071   -0.5968813
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3151959   -0.4402543   -0.1901375
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7300406   -0.7923897   -0.6676916
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3372662   -0.4104746   -0.2640579
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8059662   -1.0642516   -0.5476808
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3414475   -0.4875266   -0.1953683
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7602745   -1.0034868   -0.5170621
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4278972   -0.6155902   -0.2402043
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.6073138   -0.9543135   -0.2603140
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0606874   -0.4487206    0.3273457
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1392264   -0.5125906    0.2341378
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.2934234   -0.7875976    0.2007509
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.7250561   -1.0418261   -0.4082861
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.3121803   -0.6276683    0.0033076
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.8246023   -1.1000602   -0.5491444
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3644825   -0.6966155   -0.0323494
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.6419195   -0.9431933   -0.3406456
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.3177660   -0.6718496    0.0363176
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.4236149   -0.8777768    0.0305470
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3645165   -0.8114040    0.0823709
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7425124   -1.0803456   -0.4046791
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2950012   -0.6336846    0.0436822
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9665734   -1.2344208   -0.6987260
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4408280   -0.7545022   -0.1271538
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.7180516   -0.9109027   -0.5252005
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.4617071   -0.6872626   -0.2361516
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -1.1980280   -1.5050537   -0.8910023
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.5406879   -0.9700499   -0.1113259
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5869659   -0.7937108   -0.3802210
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.2972186   -0.5407625   -0.0536747
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7758761   -1.0014070   -0.5503451
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4505206   -0.6297514   -0.2712898


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.4057182   -0.6566271   -0.1548092
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.3060308   -0.3869777   -0.2250839
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3091391   -0.3806169   -0.2376613
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.4177009   -0.4569497   -0.3784521
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0564100   -0.0893453   -0.0234746
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0743513   -0.6315387    0.4828361
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.2627896   -0.5487140    0.0231349
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.3092509   -0.9317131    0.3132113
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.3825390   -0.6195300   -0.1455480
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0994361   -0.2138039    0.0149318
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1309512   -0.3054920    0.0435897
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3693225   -0.5605618   -0.1780833
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2865330   -0.4578542   -0.1152118
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0138675   -0.0180466   -0.0096884
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.2464059   -0.4028148   -0.0899970
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.2810692   -0.3673433   -0.1947952
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0378270   -0.0501175   -0.0255366
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.6474434   -0.8484876   -0.4463991
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.4250586   -0.5046381   -0.3454791
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3959652   -0.4767241   -0.3152064
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2374478   -0.5513615    0.0764659
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5289768   -0.5698889   -0.4880647
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0754758   -0.0982198   -0.0527319
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.1925027   -0.2486633   -0.1363421
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2767981   -0.5726216    0.0190254
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.1254583   -0.2492821   -0.0016346
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.2884653   -0.4825727   -0.0943579
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.5573309   -0.7589500   -0.3557118
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.2202200   -0.4196246   -0.0208154
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1060335   -0.1852611   -0.0268059
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1733971   -0.2783387   -0.0684556
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4679300   -0.6537491   -0.2821108
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3245663   -0.4736851   -0.1754476
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0192878   -0.0239199   -0.0146558
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.4008530   -0.5428784   -0.2588276
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.3208105   -0.3710971   -0.2705239
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.5432640   -0.7563525   -0.3301754
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1895322   -0.2280768   -0.1509877
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0888790   -0.1029031   -0.0748549
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.8181209   -1.0017014   -0.6345404
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.5215649   -0.6031566   -0.4399732
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4465961   -0.5320743   -0.3611179
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5149222   -0.5675264   -0.4623181
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0786008   -0.1018068   -0.0553947
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.2186915   -0.2855008   -0.1518822
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.3701769   -0.6741251   -0.0662288
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0476461   -0.1980124    0.1027202
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.4539452   -0.6806618   -0.2272286
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.5532351   -0.7777119   -0.3287583
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.4328714   -0.6572447   -0.2084981
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0896284   -0.1685858   -0.0106710
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2251107   -0.3425418   -0.1076796
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6728498   -0.8900127   -0.4556870
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.5139763   -0.6619433   -0.3660093
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0244884   -0.0372119   -0.0117649
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.3939522   -0.5523861   -0.2355184
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1174669   -0.1509461   -0.0839878
