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

agecat      studyid          country                        mhtcm           n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      >=155 cm           110     840  haz              
Birth       COHORTS          GUATEMALA                      <151 cm            545     840  haz              
Birth       COHORTS          GUATEMALA                      [151-155) cm       185     840  haz              
Birth       COHORTS          INDIA                          >=155 cm           530    1774  haz              
Birth       COHORTS          INDIA                          <151 cm            763    1774  haz              
Birth       COHORTS          INDIA                          [151-155) cm       481    1774  haz              
Birth       COHORTS          PHILIPPINES                    >=155 cm           630    3050  haz              
Birth       COHORTS          PHILIPPINES                    <151 cm           1545    3050  haz              
Birth       COHORTS          PHILIPPINES                    [151-155) cm       875    3050  haz              
Birth       JiVitA-3         BANGLADESH                     >=155 cm          3317   22356  haz              
Birth       JiVitA-3         BANGLADESH                     <151 cm          13436   22356  haz              
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      5603   22356  haz              
Birth       Keneba           GAMBIA                         >=155 cm          1187    1431  haz              
Birth       Keneba           GAMBIA                         <151 cm             51    1431  haz              
Birth       Keneba           GAMBIA                         [151-155) cm       193    1431  haz              
Birth       MAL-ED           BANGLADESH                     >=155 cm            22     222  haz              
Birth       MAL-ED           BANGLADESH                     <151 cm            145     222  haz              
Birth       MAL-ED           BANGLADESH                     [151-155) cm        55     222  haz              
Birth       MAL-ED           BRAZIL                         >=155 cm            32      64  haz              
Birth       MAL-ED           BRAZIL                         <151 cm             20      64  haz              
Birth       MAL-ED           BRAZIL                         [151-155) cm        12      64  haz              
Birth       MAL-ED           INDIA                          >=155 cm            12      43  haz              
Birth       MAL-ED           INDIA                          <151 cm             20      43  haz              
Birth       MAL-ED           INDIA                          [151-155) cm        11      43  haz              
Birth       MAL-ED           NEPAL                          >=155 cm             6      27  haz              
Birth       MAL-ED           NEPAL                          <151 cm             13      27  haz              
Birth       MAL-ED           NEPAL                          [151-155) cm         8      27  haz              
Birth       MAL-ED           PERU                           >=155 cm            48     226  haz              
Birth       MAL-ED           PERU                           <151 cm            131     226  haz              
Birth       MAL-ED           PERU                           [151-155) cm        47     226  haz              
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   <151 cm             10     101  haz              
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     101  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            72     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     122  haz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        29     122  haz              
Birth       NIH-Birth        BANGLADESH                     >=155 cm           111     608  haz              
Birth       NIH-Birth        BANGLADESH                     <151 cm            356     608  haz              
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       141     608  haz              
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           134     729  haz              
Birth       NIH-Crypto       BANGLADESH                     <151 cm            418     729  haz              
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       177     729  haz              
Birth       PROBIT           BELARUS                        >=155 cm         13209   13732  haz              
Birth       PROBIT           BELARUS                        <151 cm            125   13732  haz              
Birth       PROBIT           BELARUS                        [151-155) cm       398   13732  haz              
Birth       PROVIDE          BANGLADESH                     >=155 cm           110     517  haz              
Birth       PROVIDE          BANGLADESH                     <151 cm            286     517  haz              
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     517  haz              
Birth       SAS-CompFeed     INDIA                          >=155 cm           467    1135  haz              
Birth       SAS-CompFeed     INDIA                          <151 cm            385    1135  haz              
Birth       SAS-CompFeed     INDIA                          [151-155) cm       283    1135  haz              
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7732    9705  haz              
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            560    9705  haz              
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1413    9705  haz              
6 months    COHORTS          GUATEMALA                      >=155 cm           117     943  haz              
6 months    COHORTS          GUATEMALA                      <151 cm            629     943  haz              
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     943  haz              
6 months    COHORTS          INDIA                          >=155 cm           541    1819  haz              
6 months    COHORTS          INDIA                          <151 cm            790    1819  haz              
6 months    COHORTS          INDIA                          [151-155) cm       488    1819  haz              
6 months    COHORTS          PHILIPPINES                    >=155 cm           561    2708  haz              
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2708  haz              
6 months    COHORTS          PHILIPPINES                    [151-155) cm       779    2708  haz              
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231  haz              
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231  haz              
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  haz              
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2660   16761  haz              
6 months    JiVitA-3         BANGLADESH                     <151 cm           9797   16761  haz              
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4304   16761  haz              
6 months    Keneba           GAMBIA                         >=155 cm          1568    1877  haz              
6 months    Keneba           GAMBIA                         <151 cm             67    1877  haz              
6 months    Keneba           GAMBIA                         [151-155) cm       242    1877  haz              
6 months    LCNI-5           MALAWI                         >=155 cm           513     836  haz              
6 months    LCNI-5           MALAWI                         <151 cm            131     836  haz              
6 months    LCNI-5           MALAWI                         [151-155) cm       192     836  haz              
6 months    MAL-ED           BANGLADESH                     >=155 cm            24     241  haz              
6 months    MAL-ED           BANGLADESH                     <151 cm            156     241  haz              
6 months    MAL-ED           BANGLADESH                     [151-155) cm        61     241  haz              
6 months    MAL-ED           BRAZIL                         >=155 cm           121     209  haz              
6 months    MAL-ED           BRAZIL                         <151 cm             51     209  haz              
6 months    MAL-ED           BRAZIL                         [151-155) cm        37     209  haz              
6 months    MAL-ED           INDIA                          >=155 cm            55     235  haz              
6 months    MAL-ED           INDIA                          <151 cm            112     235  haz              
6 months    MAL-ED           INDIA                          [151-155) cm        68     235  haz              
6 months    MAL-ED           NEPAL                          >=155 cm            41     236  haz              
6 months    MAL-ED           NEPAL                          <151 cm            132     236  haz              
6 months    MAL-ED           NEPAL                          [151-155) cm        63     236  haz              
6 months    MAL-ED           PERU                           >=155 cm            58     272  haz              
6 months    MAL-ED           PERU                           <151 cm            157     272  haz              
6 months    MAL-ED           PERU                           [151-155) cm        57     272  haz              
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm           187     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   <151 cm             31     249  haz              
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm        31     249  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  haz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  haz              
6 months    NIH-Birth        BANGLADESH                     >=155 cm            96     537  haz              
6 months    NIH-Birth        BANGLADESH                     <151 cm            311     537  haz              
6 months    NIH-Birth        BANGLADESH                     [151-155) cm       130     537  haz              
6 months    NIH-Crypto       BANGLADESH                     >=155 cm           134     715  haz              
6 months    NIH-Crypto       BANGLADESH                     <151 cm            411     715  haz              
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm       170     715  haz              
6 months    PROBIT           BELARUS                        >=155 cm         12531   13031  haz              
6 months    PROBIT           BELARUS                        <151 cm            121   13031  haz              
6 months    PROBIT           BELARUS                        [151-155) cm       379   13031  haz              
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     603  haz              
6 months    PROVIDE          BANGLADESH                     <151 cm            330     603  haz              
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     603  haz              
6 months    SAS-CompFeed     INDIA                          >=155 cm           510    1228  haz              
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1228  haz              
6 months    SAS-CompFeed     INDIA                          [151-155) cm       297    1228  haz              
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            74     379  haz              
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379  haz              
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       103     379  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996  haz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996  haz              
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394  haz              
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            445    7394  haz              
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394  haz              
24 months   COHORTS          GUATEMALA                      >=155 cm           126     994  haz              
24 months   COHORTS          GUATEMALA                      <151 cm            659     994  haz              
24 months   COHORTS          GUATEMALA                      [151-155) cm       209     994  haz              
24 months   COHORTS          INDIA                          >=155 cm           552    1819  haz              
24 months   COHORTS          INDIA                          <151 cm            785    1819  haz              
24 months   COHORTS          INDIA                          [151-155) cm       482    1819  haz              
24 months   COHORTS          PHILIPPINES                    >=155 cm           510    2445  haz              
24 months   COHORTS          PHILIPPINES                    <151 cm           1234    2445  haz              
24 months   COHORTS          PHILIPPINES                    [151-155) cm       701    2445  haz              
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1314    8599  haz              
24 months   JiVitA-3         BANGLADESH                     <151 cm           5067    8599  haz              
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2218    8599  haz              
24 months   Keneba           GAMBIA                         >=155 cm          1338    1602  haz              
24 months   Keneba           GAMBIA                         <151 cm             60    1602  haz              
24 months   Keneba           GAMBIA                         [151-155) cm       204    1602  haz              
24 months   LCNI-5           MALAWI                         >=155 cm           355     577  haz              
24 months   LCNI-5           MALAWI                         <151 cm             95     577  haz              
24 months   LCNI-5           MALAWI                         [151-155) cm       127     577  haz              
24 months   MAL-ED           BANGLADESH                     >=155 cm            22     212  haz              
24 months   MAL-ED           BANGLADESH                     <151 cm            137     212  haz              
24 months   MAL-ED           BANGLADESH                     [151-155) cm        53     212  haz              
24 months   MAL-ED           BRAZIL                         >=155 cm            95     169  haz              
24 months   MAL-ED           BRAZIL                         <151 cm             43     169  haz              
24 months   MAL-ED           BRAZIL                         [151-155) cm        31     169  haz              
24 months   MAL-ED           INDIA                          >=155 cm            53     226  haz              
24 months   MAL-ED           INDIA                          <151 cm            110     226  haz              
24 months   MAL-ED           INDIA                          [151-155) cm        63     226  haz              
24 months   MAL-ED           NEPAL                          >=155 cm            38     228  haz              
24 months   MAL-ED           NEPAL                          <151 cm            129     228  haz              
24 months   MAL-ED           NEPAL                          [151-155) cm        61     228  haz              
24 months   MAL-ED           PERU                           >=155 cm            46     201  haz              
24 months   MAL-ED           PERU                           <151 cm            115     201  haz              
24 months   MAL-ED           PERU                           [151-155) cm        40     201  haz              
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm           180     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   <151 cm             27     234  haz              
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     234  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  haz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  haz              
24 months   NIH-Birth        BANGLADESH                     >=155 cm            77     429  haz              
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     429  haz              
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     429  haz              
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514  haz              
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514  haz              
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514  haz              
24 months   PROBIT           BELARUS                        >=155 cm          3859    4005  haz              
24 months   PROBIT           BELARUS                        <151 cm             35    4005  haz              
24 months   PROBIT           BELARUS                        [151-155) cm       111    4005  haz              
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     577  haz              
24 months   PROVIDE          BANGLADESH                     <151 cm            315     577  haz              
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     577  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  haz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  haz              
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374  haz              
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             98    1374  haz              
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374  haz              


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
![](/tmp/a7d6ced9-eb39-4a6f-9fca-4ab0a403dca3/1def04da-add1-45db-b4f0-543de3bd4fcc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/a7d6ced9-eb39-4a6f-9fca-4ab0a403dca3/1def04da-add1-45db-b4f0-543de3bd4fcc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/a7d6ced9-eb39-4a6f-9fca-4ab0a403dca3/1def04da-add1-45db-b4f0-543de3bd4fcc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.5625329    0.3035801    0.8214858
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -0.0127817   -0.1136731    0.0881098
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                 0.3574801    0.1150902    0.5998699
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.2841694   -0.3798328   -0.1885061
Birth       COHORTS          INDIA                          <151 cm              NA                -0.8305896   -0.9103285   -0.7508508
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.5746909   -0.6733117   -0.4760700
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0556176   -0.0224878    0.1337229
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.4144686   -0.4699714   -0.3589658
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1691750   -0.2418040   -0.0965460
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1729740   -1.2160528   -1.1298952
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -1.7543412   -1.7769199   -1.7317625
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.4474522   -1.4818475   -1.4130570
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.1046588    0.0335517    0.1757660
Birth       Keneba           GAMBIA                         <151 cm              NA                -0.2759048   -0.7142764    0.1624669
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -0.1904138   -0.3756377   -0.0051899
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.9254328   -1.4532657   -0.3975999
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -1.1923156   -1.3572777   -1.0273536
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8392456   -1.0942186   -0.5842726
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.3759933   -0.6483599   -0.1036267
Birth       MAL-ED           BRAZIL                         <151 cm              NA                -1.0137723   -1.6539510   -0.3735936
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                -0.9962827   -1.8787567   -0.1138086
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.9828967   -1.7583514   -0.2074419
Birth       MAL-ED           INDIA                          <151 cm              NA                -1.4007454   -1.8144909   -0.9869999
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.8586584   -1.3738894   -0.3434273
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.5032128   -0.7745193   -0.2319063
Birth       MAL-ED           PERU                           <151 cm              NA                -1.0333811   -1.1939710   -0.8727913
Birth       MAL-ED           PERU                           [151-155) cm         NA                -0.9663564   -1.1821509   -0.7505620
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.4764661   -0.6911366   -0.2617955
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.7806300   -1.7875959    0.2263359
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.1875684   -1.6012977   -0.7738391
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.9828069   -1.2679232   -0.6976907
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.2653431   -1.5994073   -0.9312788
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.3890230   -1.8734836   -0.9045625
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5496170   -0.7531612   -0.3460727
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0659602   -1.1808702   -0.9510502
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8753799   -1.0608588   -0.6899010
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.6399131   -0.8328870   -0.4469393
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.0318527   -1.1191749   -0.9445305
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.8155013   -0.9625130   -0.6684896
Birth       PROBIT           BELARUS                        >=155 cm             NA                 1.3258499    1.1654425    1.4862573
Birth       PROBIT           BELARUS                        <151 cm              NA                 0.9711440    0.8784382    1.0638498
Birth       PROBIT           BELARUS                        [151-155) cm         NA                 0.9537491    0.7623918    1.1451064
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6443230   -0.8253213   -0.4633247
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.0455665   -1.1453359   -0.9457971
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.7738611   -0.9248940   -0.6228281
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -1.1627457   -1.3043657   -1.0211258
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -1.7331351   -1.8620232   -1.6042469
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.5113199   -1.6670164   -1.3556233
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4389178   -0.4662913   -0.4115444
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.6892834   -0.7966079   -0.5819588
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.5974734   -0.6594600   -0.5354867
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -1.1348259   -1.3423361   -0.9273156
6 months    COHORTS          GUATEMALA                      <151 cm              NA                -1.9730916   -2.0560500   -1.8901331
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -1.5954365   -1.7557429   -1.4351301
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.4973993   -0.5912682   -0.4035305
6 months    COHORTS          INDIA                          <151 cm              NA                -1.2325316   -1.3111967   -1.1538665
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.9016078   -0.9952800   -0.8079356
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7423264   -0.8323453   -0.6523076
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -1.3646118   -1.4220902   -1.3071335
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0345674   -1.1102585   -0.9588764
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3268193   -1.6567094   -0.9969291
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6189034   -1.7893691   -1.4484378
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.5924716   -1.8521082   -1.3328351
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7891756   -0.8354135   -0.7429376
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -1.5342238   -1.5602864   -1.5081611
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.1446636   -1.1815383   -1.1077890
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.8406171   -0.8938106   -0.7874237
6 months    Keneba           GAMBIA                         <151 cm              NA                -1.5184264   -1.8006134   -1.2362395
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -1.2657235   -1.4013010   -1.1301459
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -1.4667044   -1.5537670   -1.3796418
6 months    LCNI-5           MALAWI                         <151 cm              NA                -2.1964783   -2.3664608   -2.0264958
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                -1.8062341   -1.9424023   -1.6700659
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8988914   -1.2186786   -0.5791043
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -1.3673956   -1.5205756   -1.2142156
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8993615   -1.0918271   -0.7068959
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.1683791   -0.0215979    0.3583560
6 months    MAL-ED           BRAZIL                         <151 cm              NA                -0.3300280   -0.5716911   -0.0883650
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 0.1518011   -0.2361413    0.5397435
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.8563711   -1.0662254   -0.6465169
6 months    MAL-ED           INDIA                          <151 cm              NA                -1.4492959   -1.6298752   -1.2687166
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.9763286   -1.1737845   -0.7788727
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0406253   -0.2563358    0.1750853
6 months    MAL-ED           NEPAL                          <151 cm              NA                -0.7915469   -0.9388824   -0.6442114
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.4533159   -0.6675421   -0.2390898
6 months    MAL-ED           PERU                           >=155 cm             NA                -1.1031110   -1.3182719   -0.8879502
6 months    MAL-ED           PERU                           <151 cm              NA                -1.4446040   -1.5962742   -1.2929337
6 months    MAL-ED           PERU                           [151-155) cm         NA                -1.2156064   -1.4391560   -0.9920569
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.9630588   -1.1089335   -0.8171842
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.4940702   -1.9152059   -1.0729345
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.2559436   -1.5935402   -0.9183469
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1806137   -1.3290496   -1.0321779
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8110820   -2.1152460   -1.5069181
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4014633   -1.6650123   -1.1379144
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9465238   -1.1543074   -0.7387402
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6553519   -1.7654678   -1.5452359
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1513223   -1.3292556   -0.9733890
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9178937   -1.0799175   -0.7558699
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.3464402   -1.4380825   -1.2547979
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.0733509   -1.2188317   -0.9278702
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.1270649    0.0363315    0.2177984
6 months    PROBIT           BELARUS                        <151 cm              NA                -0.4769100   -0.5577257   -0.3960944
6 months    PROBIT           BELARUS                        [151-155) cm         NA                -0.3278014   -0.4741800   -0.1814228
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.7318252   -0.8932465   -0.5704038
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -1.2830568   -1.3803239   -1.1857897
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.9953445   -1.1372520   -0.8534371
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -1.0860787   -1.1795221   -0.9926353
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -1.7491132   -1.8934164   -1.6048099
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.4714126   -1.6868178   -1.2560074
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.4211712   -1.6461666   -1.1961759
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -2.1392633   -2.2833695   -1.9951571
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.7505251   -1.9796342   -1.5214161
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3537418   -0.4156805   -0.2918030
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9688577   -1.0823843   -0.8553311
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7740549   -0.8779214   -0.6701885
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7902678   -0.8207852   -0.7597504
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5488827   -1.6588273   -1.4389381
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1068254   -1.1752383   -1.0384125
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -2.1996085   -2.3953111   -2.0039058
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -3.1311475   -3.2099379   -3.0523571
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9226821   -3.0771501   -2.7682141
24 months   COHORTS          INDIA                          >=155 cm             NA                -1.5500156   -1.6469632   -1.4530679
24 months   COHORTS          INDIA                          <151 cm              NA                -2.4102387   -2.4867321   -2.3337452
24 months   COHORTS          INDIA                          [151-155) cm         NA                -2.1118626   -2.2126194   -2.0111058
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9721246   -2.0667054   -1.8775438
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -2.6774897   -2.7389249   -2.6160544
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2814933   -2.3627607   -2.2002258
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.5025241   -1.5605377   -1.4445105
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -2.2294693   -2.2611995   -2.1977391
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.8373485   -1.8821474   -1.7925496
24 months   Keneba           GAMBIA                         >=155 cm             NA                -1.5052730   -1.5620014   -1.4485445
24 months   Keneba           GAMBIA                         <151 cm              NA                -2.3568791   -2.6048905   -2.1088676
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -1.8674749   -2.0013975   -1.7335524
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -1.6677562   -1.7649746   -1.5705379
24 months   LCNI-5           MALAWI                         <151 cm              NA                -2.4249080   -2.6469372   -2.2028787
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -2.0821708   -2.2455529   -1.9187888
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -1.4896640   -1.8134000   -1.1659281
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -2.2085288   -2.3633975   -2.0536602
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -1.5654097   -1.7921669   -1.3386525
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0887058   -0.1460374    0.3234491
24 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0332978   -0.3197865    0.2531910
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.0716241   -0.5030614    0.3598132
24 months   MAL-ED           INDIA                          >=155 cm             NA                -1.4978569   -1.7579114   -1.2378025
24 months   MAL-ED           INDIA                          <151 cm              NA                -2.1623639   -2.3479446   -1.9767832
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -1.7612890   -1.9508899   -1.5716881
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.7620656   -0.9940642   -0.5300669
24 months   MAL-ED           NEPAL                          <151 cm              NA                -1.5846701   -1.7343251   -1.4350150
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -1.1056967   -1.3440315   -0.8673620
24 months   MAL-ED           PERU                           >=155 cm             NA                -1.2735495   -1.5306086   -1.0164905
24 months   MAL-ED           PERU                           <151 cm              NA                -1.9678751   -2.1206130   -1.8151371
24 months   MAL-ED           PERU                           [151-155) cm         NA                -1.6117097   -1.8574233   -1.3659961
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -1.5570918   -1.7095654   -1.4046182
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -2.0579591   -2.5014796   -1.6144386
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.9650639   -2.3997204   -1.5304073
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4216492   -2.5893755   -2.2539230
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1899722   -3.4837128   -2.8962316
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7513073   -3.0416333   -2.4609814
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5431901   -1.7794033   -1.3069769
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5103029   -2.6324859   -2.3881198
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9888051   -2.1892442   -1.7883661
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9257856   -1.0845723   -0.7669988
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.6431038   -1.7553965   -1.5308111
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.3940509   -1.5541662   -1.2339356
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.1197896   -0.4097255    0.1701463
24 months   PROBIT           BELARUS                        <151 cm              NA                -1.3288795   -1.4403687   -1.2173902
24 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.5946419   -0.8822622   -0.3070217
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -1.1876758   -1.3669372   -1.0084143
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -1.8008602   -1.9078529   -1.6938674
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.5070692   -1.6737933   -1.3403450
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4801253   -1.5489004   -1.4113502
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2486333   -2.4628561   -2.0344105
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9508891   -2.1151317   -1.7866464


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
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5753146   -0.8533329   -0.2972963
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.2050529   -0.5599491    0.1498434
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          -0.5464202   -0.6710257   -0.4218147
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.2905214   -0.4273893   -0.1536536
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.4700862   -0.5657559   -0.3744165
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2247926   -0.3313123   -0.1182729
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.5813672   -0.6288891   -0.5338452
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.2744782   -0.3264113   -0.2225452
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3805636   -0.8249776    0.0638504
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2950727   -0.4938921   -0.0962532
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.2668828   -0.8202838    0.2865181
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0861872   -0.5002169    0.6725912
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.6377789   -1.3425374    0.0669795
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.6202893   -1.5483717    0.3077930
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4178487   -1.2924529    0.4567554
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.1242383   -0.8165089    1.0649854
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm          -0.5301683   -0.8448943   -0.2154423
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.4631437   -0.8101305   -0.1161569
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.3041639   -1.3319991    0.7236712
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.7111024   -1.1728717   -0.2493330
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.2825361   -0.7227158    0.1576436
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4062161   -0.9693930    0.1569608
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5163432   -0.7504263   -0.2822600
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3257630   -0.6012032   -0.0503227
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3919396   -0.6036916   -0.1801876
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1755882   -0.4179971    0.0668207
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3547059   -0.5042228   -0.2051889
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3721008   -0.4974218   -0.2467797
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.4012435   -0.6089527   -0.1935344
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.1295381   -0.3651139    0.1060377
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.5703893   -0.7074002   -0.4333785
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3485741   -0.6001931   -0.0969552
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2503655   -0.3611175   -0.1396136
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1585555   -0.2262854   -0.0908256
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.8382657   -1.0616746   -0.6148567
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4606106   -0.7229906   -0.1982307
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.7351323   -0.8576920   -0.6125726
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4042085   -0.5367503   -0.2716667
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6222854   -0.7286361   -0.5159347
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2922410   -0.4095709   -0.1749112
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.2920842   -0.6614018    0.0772334
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.2656524   -0.6875518    0.1562471
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7450482   -0.7945331   -0.6955632
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3554881   -0.4125872   -0.2983890
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6778093   -0.9651498   -0.3904687
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4251063   -0.5706453   -0.2795674
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7297739   -0.9207551   -0.5387928
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3395297   -0.5012052   -0.1778542
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.4685041   -0.8231438   -0.1138645
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0004701   -0.3739966    0.3730565
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4984071   -0.8070279   -0.1897863
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0165780   -0.4503300    0.4171740
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.5929248   -0.8716344   -0.3142151
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1199575   -0.4097177    0.1698028
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.7509216   -1.0102930   -0.4915503
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.4126906   -0.7157306   -0.1096507
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.3414929   -0.6051622   -0.0778237
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.1124954   -0.4230226    0.1980318
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.5310114   -0.9772555   -0.0847672
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2928847   -0.6611205    0.0753510
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6304683   -0.9690839   -0.2918528
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2208496   -0.5238646    0.0821654
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7088281   -0.9440232   -0.4736329
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2047985   -0.4783333    0.0687363
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.4285465   -0.6144340   -0.2426590
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1554572   -0.3723866    0.0614721
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6039750   -0.6793816   -0.5285684
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4548663   -0.5967701   -0.3129626
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5512317   -0.7399973   -0.3624660
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.2635194   -0.4777390   -0.0492997
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.6630344   -0.7909422   -0.5351267
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3853339   -0.6402454   -0.1304223
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.7180920   -0.9856218   -0.4505623
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.3293539   -0.6505812   -0.0081266
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6151159   -0.7446147   -0.4856172
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4203132   -0.5413981   -0.2992282
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7586149   -0.8727079   -0.6445219
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3165576   -0.3913957   -0.2417195
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.9315390   -1.1425143   -0.7205638
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.7230736   -0.9724866   -0.4736606
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.8602231   -0.9833641   -0.7370820
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5618470   -0.7013453   -0.4223487
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7053651   -0.8182681   -0.5924620
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3093687   -0.4340267   -0.1847107
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7269452   -0.7898506   -0.6640398
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3348244   -0.4081001   -0.2615487
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8516061   -1.1060798   -0.5971324
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3622020   -0.5076168   -0.2167871
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7571518   -0.9996631   -0.5146404
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4144146   -0.6048396   -0.2239896
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.7188648   -1.0781053   -0.3596243
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.0757456   -0.4704769    0.3189856
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1220036   -0.4929447    0.2489375
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.1603299   -0.6546998    0.3340399
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.6645070   -0.9839578   -0.3450561
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2634320   -0.5858939    0.0590299
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.8226045   -1.0986557   -0.5465533
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3436312   -0.6769144   -0.0103480
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.6943255   -0.9941508   -0.3945003
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.3381602   -0.6939699    0.0176496
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.5008673   -0.9687931   -0.0329415
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.4079721   -0.8674219    0.0514777
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7683230   -1.1075417   -0.4291043
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3296581   -0.6657062    0.0063900
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9671128   -1.2332658   -0.7009598
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4456151   -0.7547530   -0.1364771
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.7173183   -0.9119548   -0.5226818
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.4682654   -0.6938058   -0.2427249
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -1.2090899   -1.5138551   -0.9043246
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4748523   -0.8796216   -0.0700830
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.6131844   -0.8214363   -0.4049325
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3193934   -0.5636382   -0.0751485
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7685079   -0.9936319   -0.5433840
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4707637   -0.6483760   -0.2931515


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.4290091   -0.6730810   -0.1849372
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.3131530   -0.3939811   -0.2323249
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3046668   -0.3760159   -0.2333176
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.4163734   -0.4558886   -0.3768581
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0572584   -0.0903372   -0.0241796
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.1524501   -0.6486599    0.3437597
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.3124442   -0.6040602   -0.0208281
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.2473359   -0.8687764    0.3741046
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.4019200   -0.6424693   -0.1613706
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0943260   -0.2081249    0.0194729
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1536685   -0.3300527    0.0227158
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3814028   -0.5672787   -0.1955268
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2690032   -0.4386215   -0.0993849
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0138159   -0.0178492   -0.0097827
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.2481915   -0.4074168   -0.0889663
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.2810692   -0.3673433   -0.1947952
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0376231   -0.0499066   -0.0253396
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.6767966   -0.8716212   -0.4819721
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.4280157   -0.5076245   -0.3484069
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3982460   -0.4790022   -0.3174897
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2331014   -0.5375866    0.0713839
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5247299   -0.5659307   -0.4835292
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0753132   -0.0980591   -0.0525673
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.1910707   -0.2471486   -0.1349928
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.3061016   -0.6168583    0.0046550
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.1208033   -0.2451480    0.0035414
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.3495863   -0.5450844   -0.1540882
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.5209566   -0.7292537   -0.3126596
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.2209913   -0.4184573   -0.0235253
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1096855   -0.1894273   -0.0299436
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1881312   -0.2920727   -0.0841898
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4608583   -0.6501506   -0.2715659
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2807846   -0.4270963   -0.1344730
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0192742   -0.0237969   -0.0147514
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.3577050   -0.5004298   -0.2149801
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.3208105   -0.3710971   -0.2705239
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.4670346   -0.6759043   -0.2581648
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1887136   -0.2272382   -0.1501889
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0900399   -0.1040542   -0.0760256
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.7967295   -0.9802295   -0.6132296
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.5210564   -0.6024717   -0.4396412
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4419899   -0.5269743   -0.3570055
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5112391   -0.5643710   -0.4581072
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0776911   -0.1009447   -0.0544376
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.2174257   -0.2844954   -0.1503561
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.4887322   -0.8074574   -0.1700070
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0825914   -0.2329101    0.0677272
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.3866121   -0.6165097   -0.1567145
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.5455222   -0.7702200   -0.3208243
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.4789215   -0.7052499   -0.2525930
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0861312   -0.1640970   -0.0081654
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2239115   -0.3404749   -0.1073482
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6758678   -0.8907287   -0.4610069
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.5154790   -0.6650945   -0.3658636
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0246253   -0.0368895   -0.0123611
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.4125842   -0.5717495   -0.2534189
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1180370   -0.1515336   -0.0845403
