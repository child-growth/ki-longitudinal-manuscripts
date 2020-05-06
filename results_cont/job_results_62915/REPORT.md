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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
