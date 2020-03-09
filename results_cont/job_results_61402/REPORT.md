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
![](/tmp/8ce37b96-1386-4564-b723-b368873ed303/85236189-b3bb-4d9e-8f26-38a6c2a41000/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8ce37b96-1386-4564-b723-b368873ed303/85236189-b3bb-4d9e-8f26-38a6c2a41000/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8ce37b96-1386-4564-b723-b368873ed303/85236189-b3bb-4d9e-8f26-38a6c2a41000/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -1.4035234   -1.6651713   -1.1418756
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -1.0141207   -1.1413782   -0.8868632
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9879342   -1.2147991   -0.7610694
Birth       COHORTS          INDIA                          >=155 cm             NA                -1.0599006   -1.1662738   -0.9535275
Birth       COHORTS          INDIA                          <151 cm              NA                -1.0010803   -1.0872599   -0.9149006
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.8611923   -0.9714579   -0.7509268
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7119981   -0.8121270   -0.6118692
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.7505110   -0.8161966   -0.6848255
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7456326   -0.8329174   -0.6583478
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7470875   -0.7887454   -0.7054296
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -0.8008711   -0.8242830   -0.7774592
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.7552687   -0.7889435   -0.7215939
Birth       Keneba           GAMBIA                         >=155 cm             NA                -1.2198757   -1.2902482   -1.1495032
Birth       Keneba           GAMBIA                         <151 cm              NA                -1.5898200   -1.9884972   -1.1911427
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -1.3148992   -1.5086786   -1.1211199
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -1.0212585   -1.4529536   -0.5895634
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -0.9354155   -1.1192406   -0.7515904
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8999767   -1.2349473   -0.5650062
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.3568956   -0.0332205    0.7470118
Birth       MAL-ED           BRAZIL                         <151 cm              NA                 0.6087179   -0.0039642    1.2213999
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                 0.7147794   -0.3078492    1.7374081
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.9531762   -1.5320128   -0.3743396
Birth       MAL-ED           INDIA                          <151 cm              NA                -0.8610449   -1.3680416   -0.3540482
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.7446026   -1.1525155   -0.3366897
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.1373544   -0.3929142    0.1182055
Birth       MAL-ED           PERU                           <151 cm              NA                -0.0450811   -0.2130649    0.1229028
Birth       MAL-ED           PERU                           [151-155) cm         NA                 0.1138805   -0.1481735    0.3759345
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6385488    0.3553651    0.9217325
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0712757    0.6575308    1.4850206
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.8220059    0.4500279    1.1939839
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.3547269   -1.5695246   -1.1399291
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4207419   -1.5499356   -1.2915482
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1241018   -1.3021009   -0.9461026
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -1.1505585   -1.3470782   -0.9540389
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.2794036   -1.3927377   -1.1660695
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.2199118   -1.3859539   -1.0538697
Birth       PROBIT           BELARUS                        >=155 cm             NA                -1.1454459   -1.3579660   -0.9329259
Birth       PROBIT           BELARUS                        <151 cm              NA                -1.2704196   -1.3444630   -1.1963763
Birth       PROBIT           BELARUS                        [151-155) cm         NA                -1.1735709   -1.3862396   -0.9609021
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2493753   -1.4307335   -1.0680172
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.3425323   -1.4491788   -1.2358857
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.2912485   -1.4624121   -1.1200849
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6498387   -0.9003419   -0.3993354
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -0.7254290   -0.8714689   -0.5793890
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.6736716   -0.8443410   -0.5030022
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4490062   -0.4833709   -0.4146416
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.8161261   -0.9525865   -0.6796657
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6031037   -0.6837787   -0.5224286
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.1534626   -0.0541267    0.3610520
6 months    COHORTS          GUATEMALA                      <151 cm              NA                 0.2183392    0.1278367    0.3088417
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1515700   -0.0002794    0.3034194
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5776135   -0.6774003   -0.4778267
6 months    COHORTS          INDIA                          <151 cm              NA                -0.7851288   -0.8650147   -0.7052429
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.6076439   -0.7096435   -0.5056443
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2934300   -0.3855519   -0.2013082
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -0.3188671   -0.3766588   -0.2610754
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2346020   -0.3145938   -0.1546101
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.4418617    0.1704958    0.7132275
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0450271   -0.2048945    0.1148403
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1980834   -0.4779427    0.0817758
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5152338   -0.5608073   -0.4696603
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -0.6105046   -0.6348658   -0.5861434
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.6050187   -0.6406731   -0.5693643
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.2272044   -0.2853497   -0.1690591
6 months    Keneba           GAMBIA                         <151 cm              NA                -0.3108006   -0.6574737    0.0358725
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.0351984   -0.1825115    0.1121148
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.4175384    0.3281354    0.5069415
6 months    LCNI-5           MALAWI                         <151 cm              NA                 0.6012676    0.4127663    0.7897690
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                 0.4421765    0.2886922    0.5956608
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2723777   -0.7287743    0.1840189
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.1356612   -0.2839876    0.0126653
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0872417   -0.3875813    0.2130979
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 1.0313516    0.8113146    1.2513886
6 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.7079403    0.3681558    1.0477249
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 1.0674427    0.6905867    1.4442986
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.6272554   -0.8727321   -0.3817787
6 months    MAL-ED           INDIA                          <151 cm              NA                -0.6536029   -0.8545298   -0.4526759
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.8107950   -1.0314465   -0.5901434
6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.3368307    0.0338893    0.6397722
6 months    MAL-ED           NEPAL                          <151 cm              NA                 0.0688829   -0.0994011    0.2371668
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                 0.0311619   -0.2583163    0.3206401
6 months    MAL-ED           PERU                           >=155 cm             NA                 1.1558546    0.8793313    1.4323780
6 months    MAL-ED           PERU                           <151 cm              NA                 0.9698436    0.8090443    1.1306428
6 months    MAL-ED           PERU                           [151-155) cm         NA                 1.1942235    0.9305123    1.4579347
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.5190717    0.3389975    0.6991459
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.7115953    0.2639923    1.1591984
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.6048395    0.1839134    1.0257655
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5248565    0.3576570    0.6920559
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.5819835    0.2968922    0.8670747
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4793303    0.1601371    0.7985235
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5887732   -0.7949034   -0.3826431
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4730877   -0.5889649   -0.3572106
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3269245   -0.5366070   -0.1172420
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1147114   -0.0644295    0.2938524
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0040658   -0.1004335    0.1085651
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.0012049   -0.1718296    0.1694199
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.5796509    0.5205180    0.6387839
6 months    PROBIT           BELARUS                        <151 cm              NA                 0.6162869    0.5290097    0.7035640
6 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.5192680    0.3829764    0.6555596
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0588193   -0.2502780    0.1326395
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.2925610   -0.3991751   -0.1859468
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1059004   -0.2858642    0.0740633
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6052756   -0.7907813   -0.4197699
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.7215704   -0.8768365   -0.5663043
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.5919159   -0.7348393   -0.4489925
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.0277100   -1.2916369   -0.7637831
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.9681055   -1.1274505   -0.8087605
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.1020866   -1.3265550   -0.8776182
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0679226    0.0020709    0.1337743
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2253152    0.0909486    0.3596817
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0170019   -0.1050374    0.1390411
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2903557    0.2597665    0.3209450
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2971208    0.1820070    0.4122346
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3168940    0.2412920    0.3924960
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2183900   -0.3818633   -0.0549168
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.3030404   -0.3720018   -0.2340790
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2455953   -0.3688266   -0.1223639
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4804444   -0.5645644   -0.3963245
24 months   COHORTS          INDIA                          <151 cm              NA                -0.6754893   -0.7438350   -0.6071437
24 months   COHORTS          INDIA                          [151-155) cm         NA                -0.5236689   -0.6143749   -0.4329629
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4759754   -0.5575049   -0.3944459
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -0.7169620   -0.7689910   -0.6649329
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5191452   -0.5868868   -0.4514037
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1712165   -1.2320108   -1.1104223
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -1.3516500   -1.3819733   -1.3213268
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.2501736   -1.2928385   -1.2075087
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.8204172   -0.8739142   -0.7669201
24 months   Keneba           GAMBIA                         <151 cm              NA                -0.9989741   -1.2535449   -0.7444033
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.6673726   -0.8106423   -0.5241029
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0311014   -0.1295255    0.0673226
24 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0772128   -0.2889452    0.1345196
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0724589   -0.2724539    0.1275361
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8006165   -1.2780937   -0.3231393
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.8289051   -0.9749823   -0.6828278
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.7575172   -1.0012921   -0.5137423
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.5516893    0.2465706    0.8568080
24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.1990072   -0.1195648    0.5175792
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.5490409    0.0617425    1.0363392
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.6919843   -0.9236689   -0.4602997
24 months   MAL-ED           INDIA                          <151 cm              NA                -1.0561672   -1.2284117   -0.8839228
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.9182843   -1.1458664   -0.6907022
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1729765   -0.4900779    0.1441249
24 months   MAL-ED           NEPAL                          <151 cm              NA                -0.4487682   -0.6021600   -0.2953763
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.2349792   -0.4632766   -0.0066817
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.1146051   -0.1317191    0.3609294
24 months   MAL-ED           PERU                           <151 cm              NA                 0.0806744   -0.0943198    0.2556686
24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.1402018   -0.1030160    0.3834196
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.4121788    0.2769584    0.5473992
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.3468282   -0.0853150    0.7789715
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.4098806    0.0483992    0.7713619
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1425997   -0.0131856    0.2983849
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1186338   -0.3919470    0.1546795
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.1500978   -0.1561777    0.4563733
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9039856   -1.1452798   -0.6626915
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9381243   -1.0605740   -0.8156745
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8525773   -1.0759577   -0.6291968
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3849257   -0.5912957   -0.1785556
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.7318674   -0.8565301   -0.6072047
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.5096725   -0.7100497   -0.3092953
24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.7033579    0.5850571    0.8216586
24 months   PROBIT           BELARUS                        <151 cm              NA                 0.6339130    0.4266026    0.8412233
24 months   PROBIT           BELARUS                        [151-155) cm         NA                 0.6494557    0.3612465    0.9376649
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.7366772   -0.9453945   -0.5279598
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.9875631   -1.0834129   -0.8917133
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.7991022   -0.9881606   -0.6100437
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1783514   -1.3048271   -1.0518757
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5407049   -2.0191515   -1.0622583
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9197107   -1.1466033   -0.6928181


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
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3894028    0.0990535    0.6797520
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.4155892    0.0698664    0.7613120
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm           0.0588204   -0.0782502    0.1958910
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1987083    0.0454952    0.3519214
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0385130   -0.1581539    0.0811280
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0336345   -0.1661923    0.0989233
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0537837   -0.0995836   -0.0079837
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0081812   -0.0591901    0.0428277
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3699443   -0.7748808    0.0349923
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0950235   -0.3009300    0.1108829
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0858430   -0.3843311    0.5560170
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1212817   -0.4286855    0.6712489
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.2518222   -0.4775643    0.9812088
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.3578838   -0.7339884    1.4497559
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm           0.0921313   -0.6889396    0.8732022
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.2085736   -0.5210540    0.9382013
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm           0.0922733   -0.2137695    0.3983161
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm           0.2512349   -0.1147897    0.6172594
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4327269   -0.0701398    0.9355936
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1834571   -0.2859062    0.6528204
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0660151   -0.3169849    0.1849547
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2306251   -0.0482231    0.5094733
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1288451   -0.3558425    0.0981523
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0693533   -0.3266445    0.1879379
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1249737   -0.3052022    0.0552548
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0281249   -0.1341579    0.0779081
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0931569   -0.3037224    0.1174086
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0418731   -0.2918699    0.2081236
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0755903   -0.2522836    0.1011030
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0238330   -0.1468234    0.0991575
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3671198   -0.5078799   -0.2263597
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1540974   -0.2417650   -0.0664298
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0648766   -0.1611145    0.2908676
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0018926   -0.2587586    0.2549733
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.2075153   -0.3354082   -0.0796223
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0300304   -0.1725368    0.1124760
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0254371   -0.1342247    0.0833505
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0588281   -0.0633438    0.1809999
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.4868888   -0.8024814   -0.1712963
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.6399451   -1.0320321   -0.2478581
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0952708   -0.1451643   -0.0453773
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0897849   -0.1463727   -0.0331972
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0835962   -0.4351057    0.2679132
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1920060    0.0338534    0.3501587
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1837292   -0.0249048    0.3923632
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0246381   -0.1528851    0.2021612
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.1367165   -0.3425759    0.6160089
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1851360   -0.3610364    0.7313084
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.3234113   -0.7294060    0.0825834
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0360911   -0.4017128    0.4738949
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0263474   -0.3453536    0.2926588
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.1835395   -0.5184990    0.1514200
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2679479   -0.6144910    0.0785953
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3056688   -0.7247987    0.1134610
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.1860111   -0.5065628    0.1345406
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0383689   -0.3447370    0.4214747
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.1925236   -0.2915771    0.6766243
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0857678   -0.3745389    0.5460745
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0571270   -0.2738062    0.3880602
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0455262   -0.4060367    0.3149844
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.1156855   -0.1214052    0.3527762
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2618487   -0.0339212    0.5576187
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1106457   -0.3197118    0.0984205
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1159163   -0.3639281    0.1320954
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0366359   -0.0596736    0.1329455
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0603829   -0.1891793    0.0684134
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2337417   -0.4529286   -0.0145548
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0470811   -0.3097416    0.2155794
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1162948   -0.3024226    0.0698329
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0133597   -0.1924389    0.2191583
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0596045   -0.2495213    0.3687302
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0743766   -0.4208983    0.2721450
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1573926    0.0072548    0.3075303
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0509208   -0.1899053    0.0880638
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0067650   -0.1122813    0.1258114
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0265382   -0.0550282    0.1081047
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0846504   -0.2621351    0.0928343
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0272052   -0.2322391    0.1778286
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.1950449   -0.3025696   -0.0875203
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0432245   -0.1661141    0.0796651
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2409866   -0.3376583   -0.1443148
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0431698   -0.1491368    0.0627972
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.1804335   -0.2501094   -0.1107575
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0789570   -0.1514765   -0.0064376
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1785570   -0.4387253    0.0816114
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1530446    0.0000363    0.3060528
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0461114   -0.2793539    0.1871312
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0413575   -0.2635106    0.1807956
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0282886   -0.5287195    0.4721424
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0430993   -0.4920432    0.5782419
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.3526821   -0.7932654    0.0879012
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0026484   -0.5814268    0.5761299
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.3641829   -0.6549111   -0.0734548
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2263000   -0.5507984    0.0981983
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2757917   -0.6254820    0.0738986
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0620027   -0.4529800    0.3289747
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0339307   -0.3365975    0.2687360
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0255967   -0.3194897    0.3706830
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.0653505   -0.5189157    0.3882146
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0022982   -0.3884862    0.3838898
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.2612334   -0.5793883    0.0569214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0074981   -0.3344201    0.3494164
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0341386   -0.3044676    0.2361904
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0514084   -0.2768255    0.3796423
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3469417   -0.5878552   -0.1060283
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1247468   -0.4114763    0.1619827
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0694449   -0.3162240    0.1773341
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0539022   -0.3189946    0.2111902
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2508859   -0.4802973   -0.0214746
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0624250   -0.3437034    0.2188535
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3623535   -0.8584085    0.1337014
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2586407   -0.0020846    0.5193660


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.3417320    0.0952404    0.5882237
Birth       COHORTS          INDIA                          >=155 cm             NA                 0.0825080   -0.0056595    0.1706756
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0307270   -0.1198126    0.0583585
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0309690   -0.0677865    0.0058486
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0162109   -0.0467028    0.0142809
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0679092   -0.3542233    0.4900416
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.0449076   -0.2640765    0.3538918
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.0146287   -0.5334218    0.5041644
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       MAL-ED           PERU                           >=155 cm             NA                 0.0943679   -0.1375221    0.3262580
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1197698   -0.0484957    0.2880353
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0048051   -0.1912394    0.2008496
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0929145   -0.2711108    0.0852819
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0017910   -0.0055905    0.0020085
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0567227   -0.2180002    0.1045548
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0253831   -0.1130216    0.0622554
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0416119   -0.0571464   -0.0260773
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0391378   -0.1561180    0.2343937
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.0991979   -0.1820967   -0.0162991
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0004133   -0.0829181    0.0820915
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.4674533   -0.7263325   -0.2085741
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0779857   -0.1187488   -0.0372226
6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0218053   -0.0025208    0.0461314
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0340166   -0.0231417    0.0911749
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.1347013   -0.2963319    0.5657346
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0592742   -0.1992283    0.0806799
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.0761595   -0.2986598    0.1463409
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.2263999   -0.5056834    0.0528835
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.1009956   -0.3454913    0.1435002
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0100782   -0.0782124    0.0983688
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0113649   -0.0987358    0.1214655
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1413695   -0.0491283    0.3318672
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0849492   -0.2489444    0.0790460
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0014477   -0.0054732    0.0025778
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1398878   -0.3075459    0.0277703
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0373549   -0.1468422    0.0721324
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0223274   -0.2150773    0.2597321
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0108531   -0.0313873    0.0530935
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0044909   -0.0098693    0.0188511
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0660135   -0.2182757    0.0862486
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0915079   -0.1605138   -0.0225020
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1339838   -0.2069564   -0.0610111
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.1258476   -0.1824970   -0.0691982
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0102455   -0.0119957    0.0324867
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0157702   -0.0824443    0.0509039
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0186759   -0.4645727    0.4272208
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.0890660   -0.2686974    0.0905654
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.2599405   -0.4711544   -0.0487266
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.2019358   -0.4923793    0.0885077
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0034070   -0.2240744    0.2172605
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0205370   -0.0909578    0.0498837
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0878021   -0.1947101    0.0191058
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0075934   -0.2257567    0.2105699
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2254245   -0.4125938   -0.0382552
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0042365   -0.0128504    0.0043775
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1547588   -0.3345174    0.0249998
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0070980   -0.0632549    0.0774508
