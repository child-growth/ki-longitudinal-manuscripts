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

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------------  -------  ------  -----------------
Birth       COHORTS          GUATEMALA                      >=155 cm           103     748  whz              
Birth       COHORTS          GUATEMALA                      <151 cm            484     748  whz              
Birth       COHORTS          GUATEMALA                      [151-155) cm       161     748  whz              
Birth       COHORTS          INDIA                          >=155 cm           508    1676  whz              
Birth       COHORTS          INDIA                          <151 cm            712    1676  whz              
Birth       COHORTS          INDIA                          [151-155) cm       456    1676  whz              
Birth       COHORTS          PHILIPPINES                    >=155 cm           616    2899  whz              
Birth       COHORTS          PHILIPPINES                    <151 cm           1445    2899  whz              
Birth       COHORTS          PHILIPPINES                    [151-155) cm       838    2899  whz              
Birth       JiVitA-3         BANGLADESH                     >=155 cm          2966   17936  whz              
Birth       JiVitA-3         BANGLADESH                     <151 cm          10259   17936  whz              
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      4711   17936  whz              
Birth       Keneba           GAMBIA                         >=155 cm          1135    1362  whz              
Birth       Keneba           GAMBIA                         <151 cm             46    1362  whz              
Birth       Keneba           GAMBIA                         [151-155) cm       181    1362  whz              
Birth       MAL-ED           BANGLADESH                     >=155 cm            21     209  whz              
Birth       MAL-ED           BANGLADESH                     <151 cm            134     209  whz              
Birth       MAL-ED           BANGLADESH                     [151-155) cm        54     209  whz              
Birth       MAL-ED           BRAZIL                         >=155 cm            32      61  whz              
Birth       MAL-ED           BRAZIL                         <151 cm             19      61  whz              
Birth       MAL-ED           BRAZIL                         [151-155) cm        10      61  whz              
Birth       MAL-ED           INDIA                          >=155 cm            11      41  whz              
Birth       MAL-ED           INDIA                          <151 cm             19      41  whz              
Birth       MAL-ED           INDIA                          [151-155) cm        11      41  whz              
Birth       MAL-ED           NEPAL                          >=155 cm             6      26  whz              
Birth       MAL-ED           NEPAL                          <151 cm             13      26  whz              
Birth       MAL-ED           NEPAL                          [151-155) cm         7      26  whz              
Birth       MAL-ED           PERU                           >=155 cm            47     221  whz              
Birth       MAL-ED           PERU                           <151 cm            127     221  whz              
Birth       MAL-ED           PERU                           [151-155) cm        47     221  whz              
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     100  whz              
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              9     100  whz              
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     100  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113  whz              
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113  whz              
Birth       NIH-Birth        BANGLADESH                     >=155 cm           107     575  whz              
Birth       NIH-Birth        BANGLADESH                     <151 cm            333     575  whz              
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       135     575  whz              
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           129     704  whz              
Birth       NIH-Crypto       BANGLADESH                     <151 cm            404     704  whz              
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       171     704  whz              
Birth       PROBIT           BELARUS                        >=155 cm         13136   13657  whz              
Birth       PROBIT           BELARUS                        <151 cm            124   13657  whz              
Birth       PROBIT           BELARUS                        [151-155) cm       397   13657  whz              
Birth       PROVIDE          BANGLADESH                     >=155 cm           108     510  whz              
Birth       PROVIDE          BANGLADESH                     <151 cm            281     510  whz              
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     510  whz              
Birth       SAS-CompFeed     INDIA                          >=155 cm           432     992  whz              
Birth       SAS-CompFeed     INDIA                          <151 cm            319     992  whz              
Birth       SAS-CompFeed     INDIA                          [151-155) cm       241     992  whz              
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060  whz              
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            499    9060  whz              
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060  whz              
6 months    COHORTS          GUATEMALA                      >=155 cm           117     946  whz              
6 months    COHORTS          GUATEMALA                      <151 cm            632     946  whz              
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     946  whz              
6 months    COHORTS          INDIA                          >=155 cm           541    1819  whz              
6 months    COHORTS          INDIA                          <151 cm            791    1819  whz              
6 months    COHORTS          INDIA                          [151-155) cm       487    1819  whz              
6 months    COHORTS          PHILIPPINES                    >=155 cm           560    2706  whz              
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2706  whz              
6 months    COHORTS          PHILIPPINES                    [151-155) cm       778    2706  whz              
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231  whz              
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231  whz              
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  whz              
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2651   16734  whz              
6 months    JiVitA-3         BANGLADESH                     <151 cm           9787   16734  whz              
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4296   16734  whz              
6 months    Keneba           GAMBIA                         >=155 cm          1568    1877  whz              
6 months    Keneba           GAMBIA                         <151 cm             67    1877  whz              
6 months    Keneba           GAMBIA                         [151-155) cm       242    1877  whz              
6 months    LCNI-5           MALAWI                         >=155 cm           513     836  whz              
6 months    LCNI-5           MALAWI                         <151 cm            131     836  whz              
6 months    LCNI-5           MALAWI                         [151-155) cm       192     836  whz              
6 months    MAL-ED           BANGLADESH                     >=155 cm            24     241  whz              
6 months    MAL-ED           BANGLADESH                     <151 cm            156     241  whz              
6 months    MAL-ED           BANGLADESH                     [151-155) cm        61     241  whz              
6 months    MAL-ED           BRAZIL                         >=155 cm           121     209  whz              
6 months    MAL-ED           BRAZIL                         <151 cm             51     209  whz              
6 months    MAL-ED           BRAZIL                         [151-155) cm        37     209  whz              
6 months    MAL-ED           INDIA                          >=155 cm            55     235  whz              
6 months    MAL-ED           INDIA                          <151 cm            112     235  whz              
6 months    MAL-ED           INDIA                          [151-155) cm        68     235  whz              
6 months    MAL-ED           NEPAL                          >=155 cm            41     236  whz              
6 months    MAL-ED           NEPAL                          <151 cm            132     236  whz              
6 months    MAL-ED           NEPAL                          [151-155) cm        63     236  whz              
6 months    MAL-ED           PERU                           >=155 cm            58     272  whz              
6 months    MAL-ED           PERU                           <151 cm            157     272  whz              
6 months    MAL-ED           PERU                           [151-155) cm        57     272  whz              
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm           187     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   <151 cm             31     249  whz              
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm        31     249  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  whz              
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  whz              
6 months    NIH-Birth        BANGLADESH                     >=155 cm            96     537  whz              
6 months    NIH-Birth        BANGLADESH                     <151 cm            311     537  whz              
6 months    NIH-Birth        BANGLADESH                     [151-155) cm       130     537  whz              
6 months    NIH-Crypto       BANGLADESH                     >=155 cm           134     715  whz              
6 months    NIH-Crypto       BANGLADESH                     <151 cm            411     715  whz              
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm       170     715  whz              
6 months    PROBIT           BELARUS                        >=155 cm         12530   13029  whz              
6 months    PROBIT           BELARUS                        <151 cm            121   13029  whz              
6 months    PROBIT           BELARUS                        [151-155) cm       378   13029  whz              
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     602  whz              
6 months    PROVIDE          BANGLADESH                     <151 cm            329     602  whz              
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     602  whz              
6 months    SAS-CompFeed     INDIA                          >=155 cm           509    1226  whz              
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1226  whz              
6 months    SAS-CompFeed     INDIA                          [151-155) cm       296    1226  whz              
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            75     379  whz              
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379  whz              
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       102     379  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995  whz              
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995  whz              
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270  whz              
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            440    7270  whz              
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270  whz              
24 months   COHORTS          GUATEMALA                      >=155 cm           128    1006  whz              
24 months   COHORTS          GUATEMALA                      <151 cm            668    1006  whz              
24 months   COHORTS          GUATEMALA                      [151-155) cm       210    1006  whz              
24 months   COHORTS          INDIA                          >=155 cm           549    1803  whz              
24 months   COHORTS          INDIA                          <151 cm            776    1803  whz              
24 months   COHORTS          INDIA                          [151-155) cm       478    1803  whz              
24 months   COHORTS          PHILIPPINES                    >=155 cm           507    2449  whz              
24 months   COHORTS          PHILIPPINES                    <151 cm           1239    2449  whz              
24 months   COHORTS          PHILIPPINES                    [151-155) cm       703    2449  whz              
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1305    8570  whz              
24 months   JiVitA-3         BANGLADESH                     <151 cm           5052    8570  whz              
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2213    8570  whz              
24 months   Keneba           GAMBIA                         >=155 cm          1339    1603  whz              
24 months   Keneba           GAMBIA                         <151 cm             60    1603  whz              
24 months   Keneba           GAMBIA                         [151-155) cm       204    1603  whz              
24 months   LCNI-5           MALAWI                         >=155 cm           345     561  whz              
24 months   LCNI-5           MALAWI                         <151 cm             92     561  whz              
24 months   LCNI-5           MALAWI                         [151-155) cm       124     561  whz              
24 months   MAL-ED           BANGLADESH                     >=155 cm            22     212  whz              
24 months   MAL-ED           BANGLADESH                     <151 cm            137     212  whz              
24 months   MAL-ED           BANGLADESH                     [151-155) cm        53     212  whz              
24 months   MAL-ED           BRAZIL                         >=155 cm            95     169  whz              
24 months   MAL-ED           BRAZIL                         <151 cm             43     169  whz              
24 months   MAL-ED           BRAZIL                         [151-155) cm        31     169  whz              
24 months   MAL-ED           INDIA                          >=155 cm            53     226  whz              
24 months   MAL-ED           INDIA                          <151 cm            110     226  whz              
24 months   MAL-ED           INDIA                          [151-155) cm        63     226  whz              
24 months   MAL-ED           NEPAL                          >=155 cm            38     228  whz              
24 months   MAL-ED           NEPAL                          <151 cm            129     228  whz              
24 months   MAL-ED           NEPAL                          [151-155) cm        61     228  whz              
24 months   MAL-ED           PERU                           >=155 cm            46     201  whz              
24 months   MAL-ED           PERU                           <151 cm            115     201  whz              
24 months   MAL-ED           PERU                           [151-155) cm        40     201  whz              
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm           180     234  whz              
24 months   MAL-ED           SOUTH AFRICA                   <151 cm             27     234  whz              
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm        27     234  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  whz              
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  whz              
24 months   NIH-Birth        BANGLADESH                     >=155 cm            76     428  whz              
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     428  whz              
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     428  whz              
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514  whz              
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514  whz              
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514  whz              
24 months   PROBIT           BELARUS                        >=155 cm          3796    3940  whz              
24 months   PROBIT           BELARUS                        <151 cm             34    3940  whz              
24 months   PROBIT           BELARUS                        [151-155) cm       110    3940  whz              
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     578  whz              
24 months   PROVIDE          BANGLADESH                     <151 cm            316     578  whz              
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     578  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  whz              
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  whz              
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm           267     367  whz              
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             34     367  whz              
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367  whz              


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
