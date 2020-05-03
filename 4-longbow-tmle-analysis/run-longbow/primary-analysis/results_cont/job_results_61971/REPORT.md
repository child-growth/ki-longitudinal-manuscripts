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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/fa56160a-bf2b-4734-9e79-4303a89102d1/add2ddde-fe64-4cf3-9351-4b8f72451f64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fa56160a-bf2b-4734-9e79-4303a89102d1/add2ddde-fe64-4cf3-9351-4b8f72451f64/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/fa56160a-bf2b-4734-9e79-4303a89102d1/add2ddde-fe64-4cf3-9351-4b8f72451f64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -1.3828341   -1.6421445   -1.1235237
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -1.0198270   -1.1482464   -0.8914075
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                -1.0000926   -1.2284249   -0.7717603
Birth       COHORTS          INDIA                          >=155 cm             NA                -1.0593929   -1.1655004   -0.9532853
Birth       COHORTS          INDIA                          <151 cm              NA                -0.9986346   -1.0845558   -0.9127134
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.8730503   -0.9844413   -0.7616593
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7200052   -0.8209406   -0.6190699
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.7479897   -0.8139405   -0.6820388
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7526529   -0.8402664   -0.6650393
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7461845   -0.7876944   -0.7046745
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -0.8011129   -0.8245840   -0.7776417
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.7565268   -0.7901733   -0.7228803
Birth       Keneba           GAMBIA                         >=155 cm             NA                -1.2203400   -1.2907098   -1.1499702
Birth       Keneba           GAMBIA                         <151 cm              NA                -1.5931448   -1.9823859   -1.2039037
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -1.3210324   -1.5121385   -1.1299262
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -1.0103969   -1.3753320   -0.6454619
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -0.9698315   -1.1530229   -0.7866401
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8890849   -1.2058355   -0.5723343
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.3877274   -0.0070549    0.7825098
Birth       MAL-ED           BRAZIL                         <151 cm              NA                 0.7073238    0.1092656    1.3053820
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                 0.7394607   -0.3216068    1.8005283
Birth       MAL-ED           INDIA                          >=155 cm             NA                -1.0570056   -1.6153438   -0.4986674
Birth       MAL-ED           INDIA                          <151 cm              NA                -0.9744375   -1.4747005   -0.4741745
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.9476531   -1.3566430   -0.5386633
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.1407584   -0.3911452    0.1096285
Birth       MAL-ED           PERU                           <151 cm              NA                -0.0505449   -0.2184627    0.1173729
Birth       MAL-ED           PERU                           [151-155) cm         NA                 0.1432227   -0.1181937    0.4046391
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6375168    0.3642795    0.9107541
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0820661    0.6767902    1.4873420
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.7826717    0.4160694    1.1492740
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4179708   -1.6298519   -1.2060897
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4218261   -1.5510325   -1.2926196
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1575940   -1.3344915   -0.9806966
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -1.1967413   -1.3981107   -0.9953720
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.2937546   -1.4084561   -1.1790531
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.2414031   -1.4058399   -1.0769663
Birth       PROBIT           BELARUS                        >=155 cm             NA                -1.1456684   -1.3584549   -0.9328819
Birth       PROBIT           BELARUS                        <151 cm              NA                -1.2750172   -1.3485566   -1.2014777
Birth       PROBIT           BELARUS                        [151-155) cm         NA                -1.1655970   -1.3732868   -0.9579072
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2483452   -1.4272183   -1.0694722
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.3444763   -1.4503328   -1.2386198
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.2774831   -1.4502652   -1.1047011
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6498387   -0.9003419   -0.3993354
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -0.7254290   -0.8714689   -0.5793890
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.6736716   -0.8443410   -0.5030022
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4488619   -0.4832278   -0.4144959
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.8098415   -0.9468593   -0.6728237
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6075758   -0.6882730   -0.5268786
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.1402227   -0.0613551    0.3418004
6 months    COHORTS          GUATEMALA                      <151 cm              NA                 0.2180500    0.1277533    0.3083467
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1535967    0.0040458    0.3031476
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5787494   -0.6788135   -0.4786853
6 months    COHORTS          INDIA                          <151 cm              NA                -0.7857184   -0.8654540   -0.7059828
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.6073040   -0.7085476   -0.5060605
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2892047   -0.3805067   -0.1979027
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -0.3205425   -0.3783201   -0.2627649
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2344584   -0.3146749   -0.1542420
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.3315476    0.0648725    0.5982227
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0435976   -0.2029059    0.1157106
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1850616   -0.4622404    0.0921172
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5150635   -0.5605803   -0.4695468
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -0.6108586   -0.6352898   -0.5864274
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.6054289   -0.6412458   -0.5696120
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.2266015   -0.2847337   -0.1684693
6 months    Keneba           GAMBIA                         <151 cm              NA                -0.2966200   -0.6512012    0.0579613
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.0335147   -0.1798115    0.1127822
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.4199446    0.3304140    0.5094752
6 months    LCNI-5           MALAWI                         <151 cm              NA                 0.5860019    0.3976453    0.7743584
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                 0.4437729    0.2892157    0.5983301
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2563897   -0.7251836    0.2124042
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.1272840   -0.2755298    0.0209618
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.1031311   -0.4002544    0.1939921
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 1.0362628    0.8160947    1.2564309
6 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.8447611    0.5148187    1.1747034
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 1.2150557    0.8695590    1.5605523
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.6059075   -0.8567974   -0.3550176
6 months    MAL-ED           INDIA                          <151 cm              NA                -0.6668423   -0.8688822   -0.4648024
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.8267459   -1.0533201   -0.6001717
6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.4132320    0.1145811    0.7118829
6 months    MAL-ED           NEPAL                          <151 cm              NA                 0.0788426   -0.0903129    0.2479981
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                 0.0626443   -0.2250853    0.3503739
6 months    MAL-ED           PERU                           >=155 cm             NA                 1.1339388    0.8590600    1.4088175
6 months    MAL-ED           PERU                           <151 cm              NA                 0.9690004    0.8069816    1.1310192
6 months    MAL-ED           PERU                           [151-155) cm         NA                 1.1626526    0.8968450    1.4284602
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.5102547    0.3304811    0.6900283
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.6509185    0.1975804    1.1042567
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.4788661    0.0457750    0.9119573
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5278619    0.3612894    0.6944343
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6311171    0.3349536    0.9272806
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.5170093    0.1971796    0.8368390
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5740869   -0.7748785   -0.3732954
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4676674   -0.5838074   -0.3515273
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3018333   -0.5114434   -0.0922232
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1334377   -0.0448511    0.3117264
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0020860   -0.1016546    0.1058266
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0287068   -0.1409254    0.1983391
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.5795523    0.5204851    0.6386196
6 months    PROBIT           BELARUS                        <151 cm              NA                 0.6127966    0.5253893    0.7002039
6 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.5231687    0.3888352    0.6575022
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0649353   -0.2593769    0.1295064
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.2899828   -0.3961455   -0.1838201
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1121815   -0.2903075    0.0659446
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6052756   -0.7907813   -0.4197699
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.7215704   -0.8768365   -0.5663043
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.5919159   -0.7348393   -0.4489925
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.0054411   -1.2698627   -0.7410196
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.9751985   -1.1351551   -0.8152420
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.0950421   -1.3168530   -0.8732312
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0672565    0.0013808    0.1331321
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2309538    0.0973053    0.3646023
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0108093   -0.1110205    0.1326391
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2898686    0.2592710    0.3204661
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3025990    0.1875161    0.4176818
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3217141    0.2460807    0.3973476
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2216056   -0.3828205   -0.0603907
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.3040308   -0.3733524   -0.2347092
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2515411   -0.3776331   -0.1254492
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4791255   -0.5630516   -0.3951994
24 months   COHORTS          INDIA                          <151 cm              NA                -0.6779725   -0.7462989   -0.6096460
24 months   COHORTS          INDIA                          [151-155) cm         NA                -0.5209330   -0.6110901   -0.4307759
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4791835   -0.5600020   -0.3983650
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -0.7151362   -0.7671698   -0.6631026
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5206635   -0.5884608   -0.4528662
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1684269   -1.2290355   -1.1078184
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -1.3519035   -1.3823252   -1.3214819
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.2500656   -1.2927245   -1.2074066
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.8199885   -0.8734898   -0.7664873
24 months   Keneba           GAMBIA                         <151 cm              NA                -1.0472793   -1.3051539   -0.7894047
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.6640818   -0.8074948   -0.5206688
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0301702   -0.1287631    0.0684226
24 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0251588   -0.2298406    0.1795229
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0609616   -0.2595620    0.1376388
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8464642   -1.3290997   -0.3638287
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.8233439   -0.9693061   -0.6773816
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.7967721   -1.0468937   -0.5466505
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.5257851    0.2139552    0.8376151
24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.0678971   -0.2525485    0.3883426
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.4891159   -0.0380025    1.0162342
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.6848418   -0.9364460   -0.4332377
24 months   MAL-ED           INDIA                          <151 cm              NA                -1.0034584   -1.1834694   -0.8234474
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.9146105   -1.1671889   -0.6620321
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1650044   -0.4538372    0.1238284
24 months   MAL-ED           NEPAL                          <151 cm              NA                -0.4468499   -0.5938167   -0.2998830
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.2833794   -0.5153127   -0.0514461
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0950852   -0.1437102    0.3338806
24 months   MAL-ED           PERU                           <151 cm              NA                 0.0898360   -0.0847667    0.2644388
24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.2081946   -0.0326361    0.4490253
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.4134927    0.2769286    0.5500567
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.2205539   -0.2288149    0.6699228
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.2789257   -0.0749027    0.6327541
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1348963   -0.0206859    0.2904785
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2474015   -0.5259249    0.0311219
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0792077   -0.2248278    0.3832432
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9129729   -1.1541837   -0.6717621
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9408265   -1.0629423   -0.8187106
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8631046   -1.0863551   -0.6398541
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3926631   -0.5989793   -0.1863470
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.7383286   -0.8625079   -0.6141493
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.5054556   -0.7013087   -0.3096025
24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.7033432    0.5849847    0.8217016
24 months   PROBIT           BELARUS                        <151 cm              NA                 0.6339038    0.4323919    0.8354157
24 months   PROBIT           BELARUS                        [151-155) cm         NA                 0.6358948    0.3356840    0.9361055
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.7268983   -0.9359033   -0.5178932
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.9873846   -1.0839644   -0.8908048
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.8202764   -1.0111171   -0.6294356
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1806518   -1.3066992   -1.0546045
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.3830337   -1.8506096   -0.9154578
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.8990660   -1.1210082   -0.6771239


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       JiVitA-3         BANGLADESH                     NA                   NA                -0.7780564   -0.7970843   -0.7590285
Birth       Keneba           GAMBIA                         NA                   NA                -1.2360866   -1.3011735   -1.1709998
Birth       MAL-ED           BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
Birth       MAL-ED           BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       MAL-ED           INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       MAL-ED           NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       MAL-ED           PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       PROBIT           BELARUS                        NA                   NA                -1.1472369   -1.3582325   -0.9362414
Birth       PROVIDE          BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       SAS-CompFeed     INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4906181   -0.5214690   -0.4597672
6 months    COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    JiVitA-3         BANGLADESH                     NA                   NA                -0.5932195   -0.6127714   -0.5736676
6 months    Keneba           GAMBIA                         NA                   NA                -0.2053991   -0.2588843   -0.1519138
6 months    LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    MAL-ED           BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    MAL-ED           BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    MAL-ED           INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    MAL-ED           NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    MAL-ED           PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    PROBIT           BELARUS                        NA                   NA                 0.5782032    0.5194935    0.6369129
6 months    PROVIDE          BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    SAS-CompFeed     INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948466    0.2673139    0.3223793
24 months   COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   JiVitA-3         BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621
24 months   Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   MAL-ED           BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   MAL-ED           BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   MAL-ED           INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   MAL-ED           NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   MAL-ED           PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   PROBIT           BELARUS                        NA                   NA                 0.6991214    0.5821715    0.8160713
24 months   PROVIDE          BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1712534   -1.2800940   -1.0624128


### Parameter: ATE


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3630071    0.0737476    0.6522667
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.3827415    0.0373280    0.7281550
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm           0.0607583   -0.0759359    0.1974524
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1863425    0.0324160    0.3402691
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0279844   -0.1484008    0.0924319
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0326476   -0.1661338    0.1008385
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0549284   -0.1006658   -0.0091910
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0103423   -0.0611862    0.0405016
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3728048   -0.7683063    0.0226967
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.1006924   -0.3040091    0.1026243
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0405654   -0.3684348    0.4495656
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1213120   -0.3619107    0.6045347
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.3195964   -0.4139272    1.0531199
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.3517333   -0.7670311    1.4704977
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm           0.0825681   -0.6723507    0.8374868
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.1093524   -0.5852149    0.8039197
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm           0.0902135   -0.2108706    0.3912976
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm           0.2839811   -0.0798920    0.6478541
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4445493   -0.0460718    0.9351705
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1451549   -0.3126794    0.6029892
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0038553   -0.2520931    0.2443826
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2603768   -0.0150164    0.5357699
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.0970132   -0.3295416    0.1355152
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0446617   -0.3048896    0.2155661
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1293488   -0.3096909    0.0509933
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0199286   -0.1262136    0.0863564
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0961311   -0.3039546    0.1116925
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0291379   -0.2784763    0.2202005
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0755903   -0.2522836    0.1011030
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0238330   -0.1468234    0.0991575
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3609796   -0.5022784   -0.2196809
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1587139   -0.2464166   -0.0710112
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0778273   -0.1424009    0.2980556
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0133740   -0.2372628    0.2640107
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.2069690   -0.3349284   -0.0790096
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0285547   -0.1708403    0.1137310
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0313378   -0.1393746    0.0766991
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0547463   -0.0669655    0.1764580
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3751452   -0.6857738   -0.0645167
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.5166092   -0.9012551   -0.1319633
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0957950   -0.1456524   -0.0459377
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0903654   -0.1472139   -0.0335169
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0700185   -0.4293920    0.2893551
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1930868    0.0357973    0.3503764
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1660573   -0.0425809    0.3746954
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0238283   -0.1548994    0.2025560
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.1291057   -0.3630564    0.6212678
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1532586   -0.4027857    0.7093029
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.1915017   -0.5870144    0.2040109
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.1787929   -0.2300710    0.5876567
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0609348   -0.3831657    0.2612960
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2208384   -0.5639105    0.1222336
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.3343893   -0.6780582    0.0092795
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3505877   -0.7672747    0.0660994
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.1649383   -0.4842756    0.1543989
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0287139   -0.3550975    0.4125252
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.1406638   -0.3471425    0.6284702
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0313885   -0.5006833    0.4379062
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1032552   -0.2368070    0.4433175
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0108526   -0.3724059    0.3507006
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.1064196   -0.1262555    0.3390946
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2722537   -0.0189092    0.5634165
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1313517   -0.3378986    0.0751953
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1047308   -0.3509380    0.1414764
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0332443   -0.0627937    0.1292822
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0563837   -0.1834035    0.0706362
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2250475   -0.4465148   -0.0035803
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0472462   -0.3106978    0.2162054
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1162948   -0.3024226    0.0698329
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0133597   -0.1924389    0.2191583
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0302426   -0.2803045    0.3407898
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0896010   -0.4349521    0.2557502
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1636973    0.0141721    0.3132226
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0564472   -0.1952159    0.0823216
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0127304   -0.1062998    0.1317606
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0318456   -0.0497429    0.1134340
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0824252   -0.2579244    0.0930740
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0299355   -0.2346901    0.1748190
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.1988470   -0.3061348   -0.0915592
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0418075   -0.1641845    0.0805695
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2359527   -0.3320259   -0.1398795
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0414801   -0.1469614    0.0640013
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.1834766   -0.2529031   -0.1140502
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0816387   -0.1541181   -0.0091592
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2272908   -0.4906813    0.0360997
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1559068    0.0027538    0.3090598
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm           0.0050114   -0.2219634    0.2319863
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0307914   -0.2516183    0.1900355
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0231203   -0.4820944    0.5283350
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0496921   -0.4937258    0.5931100
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4578881   -0.9028027   -0.0129734
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0366693   -0.6638005    0.5904620
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.3186166   -0.6353012   -0.0019319
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2297687   -0.5921763    0.1326390
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2818455   -0.6061088    0.0424179
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.1183750   -0.4882233    0.2514733
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0052492   -0.2980569    0.2875586
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.1131094   -0.2244259    0.4506447
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.1929387   -0.6651193    0.2792419
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.1345669   -0.5159665    0.2468326
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3822978   -0.7019406   -0.0626551
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0556886   -0.3973307    0.2859535
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0278536   -0.2978189    0.2421118
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0498683   -0.2780491    0.3777857
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3456655   -0.5861639   -0.1051670
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1127925   -0.3968211    0.1712362
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0694393   -0.3134864    0.1746077
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0674484   -0.3482963    0.2133996
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2604863   -0.4905994   -0.0303732
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0933781   -0.3761571    0.1894009
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2023818   -0.6877930    0.2830294
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2815858    0.0250075    0.5381641


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.3210426    0.0764769    0.5656084
Birth       COHORTS          INDIA                          >=155 cm             NA                 0.0820003   -0.0060351    0.1700356
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0227198   -0.1125651    0.0671254
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0318720   -0.0686180    0.0048741
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0157466   -0.0462035    0.0147103
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0570477   -0.3031292    0.4172245
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.0140758   -0.2993163    0.3274680
Birth       MAL-ED           INDIA                          >=155 cm             NA                 0.0892007   -0.3975494    0.5759508
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       MAL-ED           PERU                           >=155 cm             NA                 0.0977719   -0.1297265    0.3252704
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1208018   -0.0396017    0.2812053
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0680491   -0.1252324    0.2613305
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0467317   -0.2304571    0.1369937
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0015686   -0.0055156    0.0023785
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0577528   -0.2165526    0.1010470
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0253831   -0.1130216    0.0622554
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0417562   -0.0573060   -0.0262064
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0523778   -0.1369246    0.2416802
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0980621   -0.1811639   -0.0149603
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0046386   -0.0863748    0.0770975
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3571392   -0.6090299   -0.1052485
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0781560   -0.1188808   -0.0374311
6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0212025   -0.0031733    0.0455783
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0316104   -0.0257521    0.0889730
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.1187134   -0.3254847    0.5629114
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0641854   -0.2033780    0.0750072
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0975074   -0.3234652    0.1284504
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.3028012   -0.5796890   -0.0259134
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.0790797   -0.3222283    0.1640689
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0188953   -0.0688446    0.1066351
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0083594   -0.1018052    0.1185241
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1266832   -0.0588331    0.3121994
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.1036754   -0.2659448    0.0585940
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0013491   -0.0053445    0.0026463
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1337718   -0.3040065    0.0364628
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0373549   -0.1468422    0.0721324
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0000586   -0.2378360    0.2379532
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0115192   -0.0306869    0.0537253
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0049781   -0.0093864    0.0193426
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0627980   -0.2128412    0.0872452
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0928268   -0.1617055   -0.0239482
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1307757   -0.2030715   -0.0584799
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.1286373   -0.1850472   -0.0722273
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0098169   -0.0124336    0.0320674
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0167014   -0.0833487    0.0499459
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0271717   -0.4220796    0.4764231
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0631619   -0.2528926    0.1265688
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.2670830   -0.4993698   -0.0347961
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.2099079   -0.4740344    0.0542186
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.0161130   -0.1975465    0.2297724
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0218509   -0.0949318    0.0512300
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0800988   -0.1871673    0.0269697
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0013939   -0.2164797    0.2192674
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2176870   -0.4046088   -0.0307653
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0042217   -0.0129465    0.0045030
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1645377   -0.3446479    0.0155725
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0093984   -0.0607151    0.0795120
