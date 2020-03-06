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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        mhtcm           n_cell       n
----------  ---------------  -----------------------------  -------------  -------  ------
Birth       COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       COHORTS          GUATEMALA                      <151 cm            484     748
Birth       COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       COHORTS          INDIA                          >=155 cm           508    1676
Birth       COHORTS          INDIA                          <151 cm            712    1676
Birth       COHORTS          INDIA                          [151-155) cm       456    1676
Birth       COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       Keneba           GAMBIA                         >=155 cm          1135    1362
Birth       Keneba           GAMBIA                         <151 cm             46    1362
Birth       Keneba           GAMBIA                         [151-155) cm       181    1362
Birth       MAL-ED           BANGLADESH                     >=155 cm            21     209
Birth       MAL-ED           BANGLADESH                     <151 cm            134     209
Birth       MAL-ED           BANGLADESH                     [151-155) cm        54     209
Birth       MAL-ED           BRAZIL                         >=155 cm            32      61
Birth       MAL-ED           BRAZIL                         <151 cm             19      61
Birth       MAL-ED           BRAZIL                         [151-155) cm        10      61
Birth       MAL-ED           INDIA                          >=155 cm            11      41
Birth       MAL-ED           INDIA                          <151 cm             19      41
Birth       MAL-ED           INDIA                          [151-155) cm        11      41
Birth       MAL-ED           NEPAL                          >=155 cm             6      26
Birth       MAL-ED           NEPAL                          <151 cm             13      26
Birth       MAL-ED           NEPAL                          [151-155) cm         7      26
Birth       MAL-ED           PERU                           >=155 cm            47     221
Birth       MAL-ED           PERU                           <151 cm            127     221
Birth       MAL-ED           PERU                           [151-155) cm        47     221
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm            80     100
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              9     100
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm        11     100
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113
Birth       NIH-Birth        BANGLADESH                     >=155 cm           107     575
Birth       NIH-Birth        BANGLADESH                     <151 cm            333     575
Birth       NIH-Birth        BANGLADESH                     [151-155) cm       135     575
Birth       NIH-Crypto       BANGLADESH                     >=155 cm           129     704
Birth       NIH-Crypto       BANGLADESH                     <151 cm            404     704
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm       171     704
Birth       PROBIT           BELARUS                        >=155 cm         13136   13657
Birth       PROBIT           BELARUS                        <151 cm            124   13657
Birth       PROBIT           BELARUS                        [151-155) cm       397   13657
Birth       PROVIDE          BANGLADESH                     >=155 cm           108     510
Birth       PROVIDE          BANGLADESH                     <151 cm            281     510
Birth       PROVIDE          BANGLADESH                     [151-155) cm       121     510
Birth       SAS-CompFeed     INDIA                          >=155 cm           432     992
Birth       SAS-CompFeed     INDIA                          <151 cm            319     992
Birth       SAS-CompFeed     INDIA                          [151-155) cm       241     992
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060
Birth       ZVITAMBO         ZIMBABWE                       <151 cm            499    9060
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060
6 months    COHORTS          GUATEMALA                      >=155 cm           117     946
6 months    COHORTS          GUATEMALA                      <151 cm            632     946
6 months    COHORTS          GUATEMALA                      [151-155) cm       197     946
6 months    COHORTS          INDIA                          >=155 cm           541    1819
6 months    COHORTS          INDIA                          <151 cm            791    1819
6 months    COHORTS          INDIA                          [151-155) cm       487    1819
6 months    COHORTS          PHILIPPINES                    >=155 cm           560    2706
6 months    COHORTS          PHILIPPINES                    <151 cm           1368    2706
6 months    COHORTS          PHILIPPINES                    [151-155) cm       778    2706
6 months    Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
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
6 months    PROBIT           BELARUS                        >=155 cm         12530   13029
6 months    PROBIT           BELARUS                        <151 cm            121   13029
6 months    PROBIT           BELARUS                        [151-155) cm       378   13029
6 months    PROVIDE          BANGLADESH                     >=155 cm           128     602
6 months    PROVIDE          BANGLADESH                     <151 cm            329     602
6 months    PROVIDE          BANGLADESH                     [151-155) cm       145     602
6 months    SAS-CompFeed     INDIA                          >=155 cm           509    1226
6 months    SAS-CompFeed     INDIA                          <151 cm            421    1226
6 months    SAS-CompFeed     INDIA                          [151-155) cm       296    1226
6 months    SAS-FoodSuppl    INDIA                          >=155 cm            75     379
6 months    SAS-FoodSuppl    INDIA                          <151 cm            202     379
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm       102     379
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270
6 months    ZVITAMBO         ZIMBABWE                       <151 cm            440    7270
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270
24 months   COHORTS          GUATEMALA                      >=155 cm           128    1006
24 months   COHORTS          GUATEMALA                      <151 cm            668    1006
24 months   COHORTS          GUATEMALA                      [151-155) cm       210    1006
24 months   COHORTS          INDIA                          >=155 cm           549    1803
24 months   COHORTS          INDIA                          <151 cm            776    1803
24 months   COHORTS          INDIA                          [151-155) cm       478    1803
24 months   COHORTS          PHILIPPINES                    >=155 cm           507    2449
24 months   COHORTS          PHILIPPINES                    <151 cm           1239    2449
24 months   COHORTS          PHILIPPINES                    [151-155) cm       703    2449
24 months   Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   Keneba           GAMBIA                         <151 cm             60    1603
24 months   Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   LCNI-5           MALAWI                         >=155 cm           345     561
24 months   LCNI-5           MALAWI                         <151 cm             92     561
24 months   LCNI-5           MALAWI                         [151-155) cm       124     561
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
24 months   NIH-Birth        BANGLADESH                     >=155 cm            76     428
24 months   NIH-Birth        BANGLADESH                     <151 cm            252     428
24 months   NIH-Birth        BANGLADESH                     [151-155) cm       100     428
24 months   NIH-Crypto       BANGLADESH                     >=155 cm           100     514
24 months   NIH-Crypto       BANGLADESH                     <151 cm            287     514
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm       127     514
24 months   PROBIT           BELARUS                        >=155 cm          3796    3940
24 months   PROBIT           BELARUS                        <151 cm             34    3940
24 months   PROBIT           BELARUS                        [151-155) cm       110    3940
24 months   PROVIDE          BANGLADESH                     >=155 cm           122     578
24 months   PROVIDE          BANGLADESH                     <151 cm            316     578
24 months   PROVIDE          BANGLADESH                     [151-155) cm       140     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm           267     367
24 months   ZVITAMBO         ZIMBABWE                       <151 cm             34     367
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367


The following strata were considered:

* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/324eafdc-71a9-4768-bc35-9ae16f93ba0c/b18292b1-7b29-4b22-b67e-162db890ebab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/324eafdc-71a9-4768-bc35-9ae16f93ba0c/b18292b1-7b29-4b22-b67e-162db890ebab/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/324eafdc-71a9-4768-bc35-9ae16f93ba0c/b18292b1-7b29-4b22-b67e-162db890ebab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -1.3768932   -1.6324924   -1.1212940
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -1.0206818   -1.1474138   -0.8939499
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9837888   -1.2056623   -0.7619153
Birth       COHORTS          INDIA                          >=155 cm             NA                -1.0561417   -1.1623658   -0.9499176
Birth       COHORTS          INDIA                          <151 cm              NA                -0.9953090   -1.0813546   -0.9092634
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.8616886   -0.9705100   -0.7528672
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7394805   -0.8394053   -0.6395558
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.7423183   -0.8078294   -0.6768073
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7458115   -0.8327924   -0.6588305
Birth       Keneba           GAMBIA                         >=155 cm             NA                -1.2221498   -1.2924870   -1.1518126
Birth       Keneba           GAMBIA                         <151 cm              NA                -1.4552174   -1.8214025   -1.0890322
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -1.2677901   -1.4584965   -1.0770837
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.9419048   -1.2911010   -0.5927085
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -0.9888806   -1.1713298   -0.8064314
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8696296   -1.1715852   -0.5676741
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.2950000   -0.0907100    0.6807100
Birth       MAL-ED           BRAZIL                         <151 cm              NA                 0.5352632   -0.0591135    1.1296399
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                 0.4900000   -0.4810107    1.4610107
Birth       MAL-ED           INDIA                          >=155 cm             NA                -1.0936364   -1.6195852   -0.5676875
Birth       MAL-ED           INDIA                          <151 cm              NA                -0.9436842   -1.4299262   -0.4574423
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.8836364   -1.2485483   -0.5187244
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.1691489   -0.4148697    0.0765718
Birth       MAL-ED           PERU                           <151 cm              NA                -0.0537008   -0.2207352    0.1133336
Birth       MAL-ED           PERU                           [151-155) cm         NA                 0.1121277   -0.1453759    0.3696312
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6420896    0.3725733    0.9116058
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0928571    0.7170480    1.4686663
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.7888000    0.4246406    1.1529594
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.3989720   -1.6093267   -1.1886172
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4223724   -1.5512981   -1.2934467
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1323333   -1.3096582   -0.9550085
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -1.1536434   -1.3476380   -0.9596488
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.2814233   -1.3942871   -1.1685594
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.2215789   -1.3873206   -1.0558373
Birth       PROBIT           BELARUS                        >=155 cm             NA                -1.1454419   -1.3579698   -0.9329140
Birth       PROBIT           BELARUS                        <151 cm              NA                -1.2682258   -1.3471276   -1.1893240
Birth       PROBIT           BELARUS                        [151-155) cm         NA                -1.1688413   -1.3775442   -0.9601384
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2425000   -1.4154378   -1.0695622
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.3448399   -1.4486473   -1.2410324
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.2728926   -1.4357079   -1.1100773
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6236111   -0.8705067   -0.3767155
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -0.7435737   -0.8987213   -0.5884261
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.6772614   -0.8180963   -0.5364265
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4491524   -0.4835187   -0.4147861
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7946092   -0.9310031   -0.6582153
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6049349   -0.6853805   -0.5244892
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.1147863   -0.0861746    0.3157473
6 months    COHORTS          GUATEMALA                      <151 cm              NA                 0.2211392    0.1314315    0.3108470
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1472589   -0.0009729    0.2954907
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5669686   -0.6670813   -0.4668559
6 months    COHORTS          INDIA                          <151 cm              NA                -0.7889128   -0.8686607   -0.7091648
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.6167556   -0.7178594   -0.5156519
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3043036   -0.3943855   -0.2142216
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -0.3202120   -0.3779627   -0.2624613
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2399486   -0.3184410   -0.1614562
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.3217130    0.0337050    0.6097210
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0581442   -0.2157850    0.0994965
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1721296   -0.4421044    0.0978452
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.2231939   -0.2813320   -0.1650558
6 months    Keneba           GAMBIA                         <151 cm              NA                -0.3429527   -0.6839762   -0.0019293
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.0520172   -0.1962052    0.0921707
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.4213645    0.3320307    0.5106983
6 months    LCNI-5           MALAWI                         <151 cm              NA                 0.5895420    0.4061824    0.7729016
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                 0.4380729    0.2850349    0.5911109
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.2410417   -0.6796703    0.1975870
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.1497329   -0.2975107   -0.0019551
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0661749   -0.3588761    0.2265264
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 1.0296763    0.8100033    1.2493493
6 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.7338889    0.4076511    1.0601267
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 1.1120270    0.7496711    1.4743829
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.5889394   -0.8364315   -0.3414473
6 months    MAL-ED           INDIA                          <151 cm              NA                -0.6959226   -0.8950039   -0.4968414
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.8083456   -1.0150188   -0.6016724
6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.3529675    0.0583106    0.6476244
6 months    MAL-ED           NEPAL                          <151 cm              NA                 0.0708460   -0.0964946    0.2381865
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                 0.0355291   -0.2460880    0.3171462
6 months    MAL-ED           PERU                           >=155 cm             NA                 1.1666092    0.8974247    1.4357937
6 months    MAL-ED           PERU                           <151 cm              NA                 0.9692251    0.8084489    1.1300012
6 months    MAL-ED           PERU                           [151-155) cm         NA                 1.1770175    0.9232920    1.4307431
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.5123886    0.3334129    0.6913643
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.6879032    0.2542715    1.1215349
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.4715054    0.0556918    0.8873190
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5253855    0.3591738    0.6915972
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6090278    0.3218945    0.8961611
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4996474    0.1876318    0.8116631
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5521267   -0.7509551   -0.3532984
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4783360   -0.5939451   -0.3627269
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2960705   -0.4971860   -0.0949551
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1267164   -0.0488945    0.3023274
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.0028710   -0.1061846    0.1004425
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0322353   -0.1363815    0.2008521
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.5797047    0.5206527    0.6387567
6 months    PROBIT           BELARUS                        <151 cm              NA                 0.6334298    0.5441969    0.7226626
6 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.5107540    0.3815538    0.6399541
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0669141   -0.2574374    0.1236093
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.2906839   -0.3964151   -0.1849527
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1063563   -0.2832922    0.0705796
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6011493   -0.7723888   -0.4299098
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.7237292   -0.8666895   -0.5807689
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.5986149   -0.7290404   -0.4681894
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -1.0190667   -1.2751834   -0.7629499
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.9601980   -1.1187655   -0.8016305
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.0848039   -1.3072229   -0.8623849
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0662369    0.0005096    0.1319643
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2123328    0.0778458    0.3468198
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0205933   -0.0988113    0.1399980
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2908270    0.2602451    0.3214089
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2880000    0.1721702    0.4038298
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3198429    0.2447344    0.3949514
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2676562   -0.4333909   -0.1019216
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.3035778   -0.3719465   -0.2352092
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2336190   -0.3552123   -0.1120258
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4382696   -0.5243597   -0.3521795
24 months   COHORTS          INDIA                          <151 cm              NA                -0.6916495   -0.7604494   -0.6228496
24 months   COHORTS          INDIA                          [151-155) cm         NA                -0.5311715   -0.6217856   -0.4405575
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4595858   -0.5393392   -0.3798324
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -0.7253592   -0.7772272   -0.6734912
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5150213   -0.5820924   -0.4479502
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.8209569   -0.8744146   -0.7674993
24 months   Keneba           GAMBIA                         <151 cm              NA                -0.9800694   -1.2283099   -0.7318290
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.6894101   -0.8301444   -0.5486759
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0236377   -0.1225042    0.0752289
24 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0782609   -0.2806264    0.1241047
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0882258   -0.2876641    0.1112125
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8436364   -1.3062249   -0.3810478
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.8370803   -0.9823006   -0.6918600
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.7632075   -1.0080651   -0.5183500
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.5708596    0.2686361    0.8730832
24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.1732558   -0.1374483    0.4839599
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.5323118    0.0889516    0.9756720
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.6796226   -0.8965447   -0.4627006
24 months   MAL-ED           INDIA                          <151 cm              NA                -1.1093636   -1.2788258   -0.9399015
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.9061111   -1.1193806   -0.6928416
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.2278947   -0.5066342    0.0508448
24 months   MAL-ED           NEPAL                          <151 cm              NA                -0.4513953   -0.5975937   -0.3051970
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.3047541   -0.5347640   -0.0747442
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.1312319   -0.1105641    0.3730279
24 months   MAL-ED           PERU                           <151 cm              NA                 0.0800507   -0.0942339    0.2543354
24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.1777083   -0.0527745    0.4081912
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.4104120    0.2754977    0.5453263
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.2938889   -0.1216715    0.7094493
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.3642593    0.0180290    0.7104895
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1399206   -0.0153732    0.2952144
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2422500   -0.5067574    0.0222574
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0788889   -0.2194342    0.3772120
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8870833   -1.1238601   -0.6503065
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9419676   -1.0639044   -0.8200308
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8536167   -1.0741020   -0.6331313
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3652000   -0.5706147   -0.1597853
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.7408711   -0.8651645   -0.6165777
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.5084252   -0.7054520   -0.3113984
24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.7035208    0.5851661    0.8218755
24 months   PROBIT           BELARUS                        <151 cm              NA                 0.5725000    0.3616395    0.7833605
24 months   PROBIT           BELARUS                        [151-155) cm         NA                 0.5864394    0.3056547    0.8672241
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.7185656   -0.9273671   -0.5097641
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.9923576   -1.0887181   -0.8959971
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.8142857   -1.0007649   -0.6278065
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1939700   -1.3191690   -1.0687711
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5061765   -1.9479390   -1.0644139
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9068182   -1.1313093   -0.6823271


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
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
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3562114    0.0709187    0.6415041
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.3931044    0.0546390    0.7315698
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm           0.0608327   -0.0758691    0.1975346
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1944531    0.0423819    0.3465243
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0028378   -0.1223228    0.1166471
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0063309   -0.1388097    0.1261479
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2330676   -0.6059468    0.1398116
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0456403   -0.2489043    0.1576237
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm          -0.0469758   -0.4409628    0.3470111
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0722751   -0.3893689    0.5339191
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.2402632   -0.4682959    0.9488222
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.1950000   -0.8498129    1.2398129
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm           0.1499522   -0.5663253    0.8662296
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.2100000   -0.4301429    0.8501429
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm           0.1154481   -0.1816700    0.4125663
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm           0.2812766   -0.0746542    0.6372074
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4507676   -0.0116948    0.9132300
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1467104   -0.3063360    0.5997569
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0234004   -0.2701208    0.2233200
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2666386   -0.0084854    0.5417627
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1277799   -0.3522173    0.0966576
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0679355   -0.3230908    0.1872197
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1227839   -0.2986151    0.0530473
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0233994   -0.1259721    0.0791733
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.1023399   -0.3040413    0.0993616
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0303926   -0.2679137    0.2071286
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1199626   -0.2847074    0.0447823
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0536503   -0.1923786    0.0850780
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3454568   -0.4861136   -0.2048000
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1557824   -0.2432612   -0.0683036
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1063529   -0.1137216    0.3264274
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0324726   -0.2172432    0.2821883
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.2219442   -0.3499375   -0.0939509
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0497871   -0.1920703    0.0924962
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0159084   -0.1229126    0.0910958
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0643550   -0.0551265    0.1838364
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3798572   -0.7081851   -0.0515293
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4938426   -0.8886020   -0.0990832
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1197588   -0.4657025    0.2261848
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1711767    0.0157090    0.3266444
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1681775   -0.0357865    0.3721414
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0167084   -0.1604953    0.1939121
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0913088   -0.3715448    0.5541623
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1748668   -0.3524558    0.7021894
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.2957874   -0.6890905    0.0975157
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0823507   -0.3413921    0.5060936
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.1069832   -0.4246083    0.2106419
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2194062   -0.5418440    0.1030316
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2821215   -0.6209807    0.0567376
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3174384   -0.7250299    0.0901532
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.1973841   -0.5109272    0.1161589
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0104083   -0.3595064    0.3803231
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.1755146   -0.2936002    0.6446295
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0408832   -0.4935788    0.4118124
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0836423   -0.2481285    0.4154131
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0257381   -0.3792633    0.3277872
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0737907   -0.1562053    0.3037868
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2560562   -0.0267514    0.5388638
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1295875   -0.3333346    0.0741597
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0944811   -0.3379372    0.1489749
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0537250   -0.0446292    0.1520793
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0689507   -0.1888228    0.0509213
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2237698   -0.4416648   -0.0058748
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0394423   -0.2994528    0.2205683
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1225799   -0.2704182    0.0252584
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0025344   -0.1810390    0.1861079
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0588686   -0.2423612    0.3600985
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0657373   -0.4049510    0.2734765
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1460958   -0.0035933    0.2957850
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0456436   -0.1819431    0.0906559
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0028270   -0.1226260    0.1169720
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0290159   -0.0520800    0.1101117
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0359216   -0.2152042    0.1433610
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0340372   -0.1715178    0.2395922
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.2533799   -0.3635840   -0.1431758
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0929020   -0.2178917    0.0320877
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2657734   -0.3609096   -0.1706371
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0554355   -0.1596427    0.0487717
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1591125   -0.4130437    0.0948187
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1315468   -0.0189984    0.2820920
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0546232   -0.2798484    0.1706021
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0645881   -0.2871869    0.1580107
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0065561   -0.4782915    0.4914036
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0804288   -0.4429672    0.6038248
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.3976038   -0.8310506    0.0358429
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0385478   -0.5751178    0.4980221
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4297410   -0.7050093   -0.1544727
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2264885   -0.5306908    0.0777139
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2235006   -0.5382540    0.0912527
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0768594   -0.4382459    0.2845272
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0511812   -0.3492423    0.2468800
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0464764   -0.2875709    0.3805238
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.1165231   -0.5534354    0.3203891
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0461528   -0.4177403    0.3254347
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3821706   -0.6888958   -0.0754455
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0610317   -0.3973543    0.2752908
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0548843   -0.3212146    0.2114461
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0334667   -0.2900717    0.3570050
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3756711   -0.6157628   -0.1355793
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1432252   -0.4278561    0.1414057
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1310208   -0.3833696    0.1213280
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.1170814   -0.3764293    0.1422665
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2737920   -0.5037559   -0.0438281
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0957201   -0.3756711    0.1842308
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3122064   -0.7713676    0.1469547
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2871519    0.0301090    0.5441947


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.3151018    0.0749657    0.5552378
Birth       COHORTS          INDIA                          >=155 cm             NA                 0.0787491   -0.0090337    0.1665320
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0032446   -0.0920753    0.0855861
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0139369   -0.0445650    0.0166913
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -0.0114445   -0.3556592    0.3327702
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.1068033   -0.1998856    0.4134922
Birth       MAL-ED           INDIA                          >=155 cm             NA                 0.1258315   -0.3314191    0.5830821
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       MAL-ED           PERU                           >=155 cm             NA                 0.1261625   -0.0969751    0.3493002
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1162290   -0.0399794    0.2724374
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0490502   -0.1425715    0.2406719
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0898296   -0.2657116    0.0860524
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0017950   -0.0054432    0.0018532
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0635980   -0.2164384    0.0892424
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0516107   -0.1321634    0.0289421
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0414657   -0.0569920   -0.0259394
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0778141   -0.1107731    0.2664013
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.1098429   -0.1929323   -0.0267534
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0104603   -0.0699574    0.0908779
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3473046   -0.6170442   -0.0775650
6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0177948   -0.0065672    0.0421569
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0301905   -0.0269819    0.0873629
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.1033653   -0.3097473    0.5164780
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0575990   -0.1967496    0.0815517
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.1144755   -0.3349708    0.1060198
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.2425367   -0.5143710    0.0292976
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.1117501   -0.3493086    0.1258083
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0167613   -0.0706383    0.1041609
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0108358   -0.0986092    0.1202809
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1047229   -0.0785053    0.2879512
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0969542   -0.2566726    0.0627642
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0015015   -0.0055266    0.0025237
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1317930   -0.2983027    0.0347167
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0414812   -0.1356077    0.0526453
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                 0.0136841   -0.2164409    0.2438091
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0125387   -0.0292715    0.0543490
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0040196   -0.0103387    0.0183780
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0167473   -0.1704716    0.1369769
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.1336827   -0.2048500   -0.0625154
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1503734   -0.2216537   -0.0790930
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0107853   -0.0113933    0.0329638
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0232340   -0.0903133    0.0438454
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0243439   -0.4051363    0.4538241
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.1082364   -0.2844017    0.0679289
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.2723021   -0.4683211   -0.0762832
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1470175   -0.4014260    0.1073910
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0200337   -0.2364671    0.1963997
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0187703   -0.0886882    0.0511476
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0851231   -0.1917840    0.0215377
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0244957   -0.2383692    0.1893778
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2451502   -0.4315326   -0.0587678
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0043994   -0.0128933    0.0040945
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1728704   -0.3518672    0.0061264
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0227166   -0.0459391    0.0913723
