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
![](/tmp/76e006f1-d3c0-4a7c-b08d-bc4d3ef60c45/a292f776-99da-463d-808e-6c0f8e727151/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/76e006f1-d3c0-4a7c-b08d-bc4d3ef60c45/a292f776-99da-463d-808e-6c0f8e727151/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/76e006f1-d3c0-4a7c-b08d-bc4d3ef60c45/a292f776-99da-463d-808e-6c0f8e727151/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.5371439    0.2745937    0.7996942
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -0.0180706   -0.1195663    0.0834250
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4219597    0.2189512    0.6249682
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.2861720   -0.3811298   -0.1912142
Birth       COHORTS          INDIA                          <151 cm              NA                -0.8301919   -0.9102502   -0.7501336
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.5787037   -0.6790103   -0.4783972
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0567136   -0.0213320    0.1347591
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.4153486   -0.4709820   -0.3597151
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1719283   -0.2444428   -0.0994137
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1747076   -1.2180900   -1.1313252
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -1.7546928   -1.7773080   -1.7320777
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.4454392   -1.4797127   -1.4111657
Birth       Keneba           GAMBIA                         >=155 cm             NA                 0.1047083    0.0336394    0.1757772
Birth       Keneba           GAMBIA                         <151 cm              NA                -0.3149861   -0.7711688    0.1411967
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -0.1951323   -0.3826938   -0.0075709
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8929242   -1.4361446   -0.3497038
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -1.1933969   -1.3572926   -1.0295013
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8446346   -1.0918435   -0.5974256
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.4505751   -0.7216624   -0.1794878
Birth       MAL-ED           BRAZIL                         <151 cm              NA                -1.1353776   -1.7234577   -0.5472974
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                -1.3892029   -2.1373943   -0.6410115
Birth       MAL-ED           INDIA                          >=155 cm             NA                -1.0640689   -1.8255802   -0.3025575
Birth       MAL-ED           INDIA                          <151 cm              NA                -1.4893837   -1.8969617   -1.0818056
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.9257948   -1.4673321   -0.3842575
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.5105271   -0.7901109   -0.2309432
Birth       MAL-ED           PERU                           <151 cm              NA                -1.0345625   -1.1952701   -0.8738550
Birth       MAL-ED           PERU                           [151-155) cm         NA                -0.9690940   -1.1858303   -0.7523576
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.4663999   -0.6785110   -0.2542889
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -0.5583448   -1.9414523    0.8247628
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.9898376   -1.3924739   -0.5872013
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.0136384   -1.2992560   -0.7280208
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.4161076   -1.7609683   -1.0712470
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.5288449   -1.9863746   -1.0713153
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5456840   -0.7521347   -0.3392334
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0667562   -1.1826541   -0.9508583
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8922935   -1.0774293   -0.7071577
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.6520164   -0.8437707   -0.4602620
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.0341276   -1.1218475   -0.9464078
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.8247985   -0.9712253   -0.6783718
Birth       PROBIT           BELARUS                        >=155 cm             NA                 1.3258524    1.1652853    1.4864195
Birth       PROBIT           BELARUS                        <151 cm              NA                 0.9822624    0.8860260    1.0784987
Birth       PROBIT           BELARUS                        [151-155) cm         NA                 0.9512833    0.7566183    1.1459483
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6389023   -0.8160240   -0.4617805
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.0452463   -1.1441785   -0.9463142
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.7698117   -0.9173427   -0.6222806
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -1.1627457   -1.3043657   -1.0211258
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -1.7331351   -1.8620232   -1.6042469
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.5113199   -1.6670164   -1.3556233
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4391523   -0.4665243   -0.4117802
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.6887894   -0.7954272   -0.5821515
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6014814   -0.6632489   -0.5397139
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -1.1110256   -1.3253912   -0.8966600
6 months    COHORTS          GUATEMALA                      <151 cm              NA                -1.9755439   -2.0572695   -1.8938182
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                -1.5793768   -1.7375768   -1.4211768
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5019448   -0.5961664   -0.4077232
6 months    COHORTS          INDIA                          <151 cm              NA                -1.2299454   -1.3088417   -1.1510490
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.9044437   -0.9988260   -0.8100615
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7426985   -0.8327426   -0.6526544
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -1.3614517   -1.4189256   -1.3039778
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0379580   -1.1145242   -0.9613918
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3151881   -1.6649723   -0.9654040
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6251405   -1.7964825   -1.4537986
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.5665409   -1.8109979   -1.3220839
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7903774   -0.8366699   -0.7440849
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -1.5350717   -1.5611004   -1.5090430
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.1455711   -1.1825621   -1.1085802
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.8399008   -0.8931187   -0.7866828
6 months    Keneba           GAMBIA                         <151 cm              NA                -1.4959198   -1.7655177   -1.2263220
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -1.2510187   -1.3869648   -1.1150725
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -1.4646218   -1.5516889   -1.3775547
6 months    LCNI-5           MALAWI                         <151 cm              NA                -2.2001278   -2.3704107   -2.0298450
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                -1.8069909   -1.9439724   -1.6700095
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.9114134   -1.2430983   -0.5797284
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -1.3713701   -1.5243411   -1.2183992
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8962670   -1.0846697   -0.7078644
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 0.1724570   -0.0173854    0.3622994
6 months    MAL-ED           BRAZIL                         <151 cm              NA                -0.3021901   -0.5418423   -0.0625379
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 0.2218723   -0.1789180    0.6226626
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.9048477   -1.1229805   -0.6867149
6 months    MAL-ED           INDIA                          <151 cm              NA                -1.4756660   -1.6580662   -1.2932657
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -1.0139170   -1.2131184   -0.8147155
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.0324535   -0.2416450    0.1767380
6 months    MAL-ED           NEPAL                          <151 cm              NA                -0.7934595   -0.9404975   -0.6464215
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                -0.4405061   -0.6580122   -0.2230000
6 months    MAL-ED           PERU                           >=155 cm             NA                -1.1013529   -1.3134503   -0.8892555
6 months    MAL-ED           PERU                           <151 cm              NA                -1.4503845   -1.6013795   -1.2993894
6 months    MAL-ED           PERU                           [151-155) cm         NA                -1.2008305   -1.4232521   -0.9784088
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.9671836   -1.1130094   -0.8213577
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.5487660   -1.9639438   -1.1335883
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.3466606   -1.6967747   -0.9965465
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1806203   -1.3288500   -1.0323907
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8486770   -2.1567771   -1.5405769
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4200318   -1.6831703   -1.1568933
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9459487   -1.1501208   -0.7417765
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6534106   -1.7632243   -1.5435969
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1582090   -1.3356020   -0.9808159
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.8888108   -1.0536576   -0.7239640
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.3486252   -1.4403610   -1.2568895
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.0858358   -1.2305365   -0.9411350
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.1271980    0.0364363    0.2179597
6 months    PROBIT           BELARUS                        <151 cm              NA                -0.4935904   -0.5763408   -0.4108400
6 months    PROBIT           BELARUS                        [151-155) cm         NA                -0.3284217   -0.4802055   -0.1766379
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.6923921   -0.8515014   -0.5332828
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -1.2893371   -1.3872304   -1.1914439
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.9984396   -1.1406519   -0.8562273
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -1.0860787   -1.1795221   -0.9926353
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -1.7491132   -1.8934164   -1.6048099
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -1.4714126   -1.6868178   -1.2560074
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.3662730   -1.5922324   -1.1403137
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -2.1318830   -2.2760712   -1.9876948
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.7372715   -1.9693910   -1.5051519
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3513550   -0.4135314   -0.2891785
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9443929   -1.0567346   -0.8320512
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7804824   -0.8850123   -0.6759526
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7907391   -0.8212576   -0.7602205
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5562757   -1.6651636   -1.4473877
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1044920   -1.1728699   -1.0361141
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -2.1739039   -2.3757853   -1.9720226
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -3.1383878   -3.2181777   -3.0585979
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -2.8941848   -3.0486577   -2.7397120
24 months   COHORTS          INDIA                          >=155 cm             NA                -1.5446834   -1.6414754   -1.4478915
24 months   COHORTS          INDIA                          <151 cm              NA                -2.4145860   -2.4910577   -2.3381142
24 months   COHORTS          INDIA                          [151-155) cm         NA                -2.1116653   -2.2113961   -2.0119346
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9735693   -2.0688350   -1.8783035
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -2.6780893   -2.7396029   -2.6165756
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2816361   -2.3631854   -2.2000868
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.5020405   -1.5596640   -1.4444170
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -2.2296568   -2.2614109   -2.1979028
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.8345039   -1.8794956   -1.7895122
24 months   Keneba           GAMBIA                         >=155 cm             NA                -1.5048723   -1.5615821   -1.4481626
24 months   Keneba           GAMBIA                         <151 cm              NA                -2.3408532   -2.5854100   -2.0962963
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -1.8679179   -2.0039712   -1.7318645
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -1.6667122   -1.7639307   -1.5694937
24 months   LCNI-5           MALAWI                         <151 cm              NA                -2.4163514   -2.6364709   -2.1962319
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -2.0894619   -2.2526938   -1.9262301
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -1.4629546   -1.7733086   -1.1526006
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -2.2058184   -2.3612866   -2.0503501
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -1.5645497   -1.7978489   -1.3312505
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.0678565   -0.1679360    0.3036489
24 months   MAL-ED           BRAZIL                         <151 cm              NA                -0.0924932   -0.3772357    0.1922493
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                -0.1741343   -0.5935818    0.2453132
24 months   MAL-ED           INDIA                          >=155 cm             NA                -1.4895560   -1.7457250   -1.2333871
24 months   MAL-ED           INDIA                          <151 cm              NA                -2.1543154   -2.3432310   -1.9653998
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -1.7469428   -1.9351845   -1.5587012
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.7507762   -0.9725455   -0.5290069
24 months   MAL-ED           NEPAL                          <151 cm              NA                -1.5875368   -1.7374002   -1.4376733
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -1.1109972   -1.3451213   -0.8768732
24 months   MAL-ED           PERU                           >=155 cm             NA                -1.2335041   -1.4828172   -0.9841911
24 months   MAL-ED           PERU                           <151 cm              NA                -1.9391903   -2.0950347   -1.7833459
24 months   MAL-ED           PERU                           [151-155) cm         NA                -1.6020890   -1.8473145   -1.3568635
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -1.5497499   -1.7024521   -1.3970478
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.9366065   -2.3749061   -1.4983069
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -1.8699971   -2.2850234   -1.4549708
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4249661   -2.5923917   -2.2575405
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1580804   -3.4535756   -2.8625852
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7418246   -3.0306305   -2.4530187
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5515333   -1.7931002   -1.3099663
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5125422   -2.6349965   -2.3900880
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9834657   -2.1872264   -1.7797051
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.9246561   -1.0858347   -0.7634775
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.6418617   -1.7535133   -1.5302101
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.4026002   -1.5630975   -1.2421030
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.1200101   -0.4104235    0.1704034
24 months   PROBIT           BELARUS                        <151 cm              NA                -1.3521594   -1.4647346   -1.2395843
24 months   PROBIT           BELARUS                        [151-155) cm         NA                -0.6303236   -0.9169493   -0.3436978
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2013732   -1.3784212   -1.0243252
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -1.7949597   -1.9004323   -1.6894871
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.5057094   -1.6726071   -1.3388117
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4783469   -1.5470550   -1.4096389
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2153992   -2.4329567   -1.9978417
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9422824   -2.1053789   -1.7791858


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
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5552146   -0.8367150   -0.2737141
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1151843   -0.4472291    0.2168606
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm          -0.5440199   -0.6683878   -0.4196521
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.2925317   -0.4301826   -0.1548809
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.4720622   -0.5678245   -0.3762998
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2286418   -0.3350812   -0.1222025
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.5799852   -0.6276467   -0.5323237
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.2707316   -0.3228068   -0.2186564
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.4196944   -0.8815921    0.0422034
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2998406   -0.5007139   -0.0989674
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.3004728   -0.8685699    0.2676243
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0482896   -0.5486605    0.6452396
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.6848024   -1.3400132   -0.0295917
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.9386278   -1.7435896   -0.1336659
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4253148   -1.2946063    0.4439767
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.1382741   -0.8014273    1.0779754
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm          -0.5240355   -0.8453882   -0.2026827
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.4585669   -0.8123751   -0.1047586
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0919448   -1.4874111    1.3035215
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.5234377   -0.9745304   -0.0723449
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.4024692   -0.8516104    0.0466720
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.5152065   -1.0593483    0.0289353
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5210722   -0.7581222   -0.2840222
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3466095   -0.6259547   -0.0672642
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3821113   -0.5927567   -0.1714658
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1727822   -0.4138900    0.0683257
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3435901   -0.4949307   -0.1922494
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3745691   -0.5016090   -0.2475293
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.4063441   -0.6093675   -0.2033207
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.1309094   -0.3612418    0.0994230
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.5703893   -0.7074002   -0.4333785
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3485742   -0.6001931   -0.0969552
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2496371   -0.3597005   -0.1395737
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1623291   -0.2298522   -0.0948060
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.8645183   -1.0937724   -0.6352642
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4683512   -0.7345578   -0.2021446
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.7280006   -0.8509640   -0.6050371
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4024989   -0.5358557   -0.2691422
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6187532   -0.7251554   -0.5123510
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2952595   -0.4131878   -0.1773312
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3099524   -0.7008851    0.0809803
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.2513528   -0.6787603    0.1760547
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7446942   -0.7943296   -0.6950589
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3551937   -0.4122902   -0.2980972
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6560191   -0.9309348   -0.3811033
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4111179   -0.5570645   -0.2651714
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7355060   -0.9268596   -0.5441525
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3423691   -0.5047432   -0.1799950
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.4599568   -0.8252950   -0.0946185
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0151463   -0.3664923    0.3967849
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4746471   -0.7816775   -0.1676166
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0494153   -0.3948630    0.4936936
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.5708183   -0.8556517   -0.2859849
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1090693   -0.4050726    0.1869340
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.7610060   -1.0163420   -0.5056700
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.4080526   -0.7095115   -0.1065937
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.3490316   -0.6096007   -0.0884624
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.0994775   -0.4068521    0.2078970
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.5815825   -1.0222232   -0.1409418
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3794770   -0.7591259    0.0001719
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6680567   -1.0110875   -0.3250258
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2394114   -0.5421182    0.0632954
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7074619   -0.9386505   -0.4762733
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2122603   -0.4826997    0.0581791
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.4598144   -0.6484107   -0.2712182
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1970250   -0.4162085    0.0221585
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6207884   -0.6964072   -0.5451697
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4556197   -0.6002677   -0.3109717
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5969450   -0.7840365   -0.4098535
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3060475   -0.5193677   -0.0927273
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.6630344   -0.7909422   -0.5351267
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.3853339   -0.6402454   -0.1304223
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm          -0.7656100   -1.0340085   -0.4972114
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.3709984   -0.6956226   -0.0463743
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5930380   -0.7215452   -0.4645307
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4291274   -0.5506884   -0.3075664
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7655366   -0.8786341   -0.6524392
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3137529   -0.3885796   -0.2389262
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.9644838   -1.1812354   -0.7477323
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.7202809   -0.9741980   -0.4663639
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.8699026   -0.9929336   -0.7468715
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5669819   -0.7056669   -0.4282969
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7045200   -0.8180652   -0.5909748
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3080668   -0.4334033   -0.1827303
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.7276163   -0.7901076   -0.6651250
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.3324633   -0.4054111   -0.2595156
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8359808   -1.0870918   -0.5848699
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3630455   -0.5104097   -0.2156813
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7496392   -0.9903346   -0.5089438
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4227497   -0.6128148   -0.2326847
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.7428638   -1.0901047   -0.3956229
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm          -0.1015951   -0.4886924    0.2855021
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1603496   -0.5308466    0.2101474
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.2419907   -0.7246742    0.2406927
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.6647594   -0.9840038   -0.3455150
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2573868   -0.5764930    0.0617193
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.8367606   -1.1062843   -0.5672368
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3602210   -0.6826465   -0.0377955
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.7056861   -1.0010866   -0.4102857
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm          -0.3685849   -0.7204936   -0.0166761
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.3868566   -0.8517176    0.0780045
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3202472   -0.7629203    0.1224259
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7331143   -1.0731598   -0.3930689
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3168585   -0.6508760    0.0171590
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9610090   -1.2314899   -0.6905281
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4319325   -0.7475028   -0.1163622
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.7172056   -0.9129970   -0.5214143
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.4779442   -0.7046264   -0.2512619
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -1.2321494   -1.5388656   -0.9254332
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.5103135   -0.9150250   -0.1056021
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.5935865   -0.7982477   -0.3889253
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.3043362   -0.5464583   -0.0622141
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7370523   -0.9651856   -0.5089190
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4639354   -0.6407788   -0.2870920


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -0.4036201   -0.6512612   -0.1559791
Birth       COHORTS          INDIA                          >=155 cm             NA                -0.3111505   -0.3914927   -0.2308082
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3057628   -0.3771367   -0.2343889
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.4146398   -0.4542503   -0.3750293
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0573079   -0.0902875   -0.0243283
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.1849587   -0.6954594    0.3255420
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                -0.2378624   -0.5316150    0.0558903
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.1661637   -0.7768370    0.4445096
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.3946057   -0.6427632   -0.1464481
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1043922   -0.2168292    0.0080448
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1228370   -0.3013662    0.0556922
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3853357   -0.5745006   -0.1961708
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2569000   -0.4253126   -0.0884873
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0138185   -0.0177966   -0.0098403
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.2536122   -0.4090302   -0.0981943
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.2810692   -0.3673433   -0.1947952
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0373887   -0.0496547   -0.0251226
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                -0.7005969   -0.9023271   -0.4988667
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.4234703   -0.5034469   -0.3434936
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3978739   -0.4786054   -0.3171424
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2447325   -0.5668189    0.0773538
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5235281   -0.5648240   -0.4822321
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.0760296   -0.0988490   -0.0532101
6 months    LCNI-5           MALAWI                         >=155 cm             NA                -0.1931533   -0.2492828   -0.1370239
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2935797   -0.6155523    0.0283928
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.1248812   -0.2485841   -0.0011784
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.3011098   -0.5013741   -0.1008455
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.5291284   -0.7320489   -0.3262080
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.2227494   -0.4171574   -0.0283415
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1055608   -0.1849573   -0.0261642
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1881246   -0.2926335   -0.0836157
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4614334   -0.6471128   -0.2757540
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3098675   -0.4587665   -0.1609685
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0194072   -0.0239379   -0.0148766
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.3971380   -0.5383426   -0.2559335
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.3208105   -0.3710971   -0.2705239
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.5219328   -0.7323141   -0.3115515
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1911003   -0.2297577   -0.1524430
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0895686   -0.1035945   -0.0755427
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.8224341   -1.0123455   -0.6325227
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.5263886   -0.6076314   -0.4451458
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4405453   -0.5261126   -0.3549780
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5117227   -0.5643819   -0.4590635
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.0780918   -0.1012700   -0.0549136
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.2184698   -0.2854024   -0.1515372
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.5154416   -0.8208490   -0.2100342
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0617421   -0.2121639    0.0886798
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.3949130   -0.6215462   -0.1682799
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.5568115   -0.7739801   -0.3396430
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.5189669   -0.7399463   -0.2979874
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0934730   -0.1731130   -0.0138330
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2205946   -0.3365183   -0.1046709
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6675246   -0.8867803   -0.4482689
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.5166085   -0.6681151   -0.3651019
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0244048   -0.0371213   -0.0116884
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.3988868   -0.5557120   -0.2420615
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1198154   -0.1534257   -0.0862050
