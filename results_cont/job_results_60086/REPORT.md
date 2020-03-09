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
Birth       JiVitA-3         BANGLADESH                     >=155 cm          2966   17936
Birth       JiVitA-3         BANGLADESH                     <151 cm          10259   17936
Birth       JiVitA-3         BANGLADESH                     [151-155) cm      4711   17936
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
6 months    JiVitA-3         BANGLADESH                     >=155 cm          2651   16734
6 months    JiVitA-3         BANGLADESH                     <151 cm           9787   16734
6 months    JiVitA-3         BANGLADESH                     [151-155) cm      4296   16734
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
24 months   JiVitA-3         BANGLADESH                     >=155 cm          1305    8570
24 months   JiVitA-3         BANGLADESH                     <151 cm           5052    8570
24 months   JiVitA-3         BANGLADESH                     [151-155) cm      2213    8570
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
![](/tmp/9225827f-6719-454f-a0f3-0b80a3634f22/0b6790e7-3b76-421e-b4ed-d17bf4b156cb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9225827f-6719-454f-a0f3-0b80a3634f22/0b6790e7-3b76-421e-b4ed-d17bf4b156cb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/9225827f-6719-454f-a0f3-0b80a3634f22/0b6790e7-3b76-421e-b4ed-d17bf4b156cb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                -1.3833571   -1.6441469   -1.1225674
Birth       COHORTS          GUATEMALA                      <151 cm              NA                -1.0116069   -1.1393302   -0.8838836
Birth       COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9852052   -1.2137432   -0.7566673
Birth       COHORTS          INDIA                          >=155 cm             NA                -1.0507380   -1.1567501   -0.9447259
Birth       COHORTS          INDIA                          <151 cm              NA                -0.9996207   -1.0858185   -0.9134228
Birth       COHORTS          INDIA                          [151-155) cm         NA                -0.8682217   -0.9781092   -0.7583342
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7236360   -0.8240782   -0.6231939
Birth       COHORTS          PHILIPPINES                    <151 cm              NA                -0.7455473   -0.8111700   -0.6799245
Birth       COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7519103   -0.8394182   -0.6644023
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.7471199   -0.7881473   -0.7060925
Birth       JiVitA-3         BANGLADESH                     <151 cm              NA                -0.8008617   -0.8242328   -0.7774907
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.7547087   -0.7887670   -0.7206504
Birth       Keneba           GAMBIA                         >=155 cm             NA                -1.2194186   -1.2897813   -1.1490560
Birth       Keneba           GAMBIA                         <151 cm              NA                -1.4494413   -1.8437776   -1.0551050
Birth       Keneba           GAMBIA                         [151-155) cm         NA                -1.2772114   -1.4673917   -1.0870310
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                -1.0129510   -1.3827100   -0.6431920
Birth       MAL-ED           BANGLADESH                     <151 cm              NA                -0.9666359   -1.1500679   -0.7832039
Birth       MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.8801992   -1.2116972   -0.5487011
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.2700234   -0.1332948    0.6733416
Birth       MAL-ED           BRAZIL                         <151 cm              NA                 0.4766981   -0.1571304    1.1105266
Birth       MAL-ED           BRAZIL                         [151-155) cm         NA                 0.3694729   -0.7050222    1.4439679
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.9152963   -1.4649257   -0.3656670
Birth       MAL-ED           INDIA                          <151 cm              NA                -0.8692885   -1.3714820   -0.3670949
Birth       MAL-ED           INDIA                          [151-155) cm         NA                -0.6813759   -1.0626151   -0.3001368
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       MAL-ED           NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       MAL-ED           NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       MAL-ED           PERU                           >=155 cm             NA                -0.1597564   -0.3931883    0.0736756
Birth       MAL-ED           PERU                           <151 cm              NA                -0.0752651   -0.2466678    0.0961375
Birth       MAL-ED           PERU                           [151-155) cm         NA                 0.0702737   -0.1976431    0.3381904
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6230845    0.3498275    0.8963415
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0493559    0.6307323    1.4679794
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.7168798    0.3185584    1.1152012
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4073430   -1.6210936   -1.1935923
Birth       NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4114438   -1.5404380   -1.2824495
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1281303   -1.3044496   -0.9518109
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -1.1698189   -1.3710546   -0.9685832
Birth       NIH-Crypto       BANGLADESH                     <151 cm              NA                -1.2947445   -1.4091966   -1.1802924
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -1.2227271   -1.3873160   -1.0581381
Birth       PROBIT           BELARUS                        >=155 cm             NA                -1.1455707   -1.3585042   -0.9326371
Birth       PROBIT           BELARUS                        <151 cm              NA                -1.2920429   -1.3647075   -1.2193784
Birth       PROBIT           BELARUS                        [151-155) cm         NA                -1.1672692   -1.3752363   -0.9593021
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -1.2539474   -1.4297183   -1.0781764
Birth       PROVIDE          BANGLADESH                     <151 cm              NA                -1.3430770   -1.4481544   -1.2379996
Birth       PROVIDE          BANGLADESH                     [151-155) cm         NA                -1.2818176   -1.4524459   -1.1111894
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6498387   -0.9003419   -0.3993354
Birth       SAS-CompFeed     INDIA                          <151 cm              NA                -0.7254290   -0.8714689   -0.5793890
Birth       SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.6736716   -0.8443410   -0.5030022
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4490456   -0.4834097   -0.4146815
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.8165213   -0.9529063   -0.6801363
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6066838   -0.6873420   -0.5260256
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.1398572   -0.0673123    0.3470268
6 months    COHORTS          GUATEMALA                      <151 cm              NA                 0.2182293    0.1277946    0.3086639
6 months    COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1585668    0.0106724    0.3064611
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.5742246   -0.6740042   -0.4744449
6 months    COHORTS          INDIA                          <151 cm              NA                -0.7837694   -0.8635400   -0.7039988
6 months    COHORTS          INDIA                          [151-155) cm         NA                -0.6056691   -0.7071899   -0.5041483
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2954587   -0.3870219   -0.2038955
6 months    COHORTS          PHILIPPINES                    <151 cm              NA                -0.3176411   -0.3755084   -0.2597738
6 months    COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2360148   -0.3162492   -0.1557803
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.4838804    0.1937425    0.7740182
6 months    Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0573477   -0.2172506    0.1025551
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1782734   -0.4548510    0.0983042
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.5155299   -0.5612590   -0.4698009
6 months    JiVitA-3         BANGLADESH                     <151 cm              NA                -0.6113303   -0.6357693   -0.5868913
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         NA                -0.6066953   -0.6424446   -0.5709461
6 months    Keneba           GAMBIA                         >=155 cm             NA                -0.2255775   -0.2837130   -0.1674420
6 months    Keneba           GAMBIA                         <151 cm              NA                -0.2847371   -0.6303819    0.0609077
6 months    Keneba           GAMBIA                         [151-155) cm         NA                -0.0068545   -0.1550264    0.1413174
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.4216801    0.3321793    0.5111810
6 months    LCNI-5           MALAWI                         <151 cm              NA                 0.5623387    0.3705625    0.7541150
6 months    LCNI-5           MALAWI                         [151-155) cm         NA                 0.4342692    0.2767601    0.5917784
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                -0.1968826   -0.6637306    0.2699655
6 months    MAL-ED           BANGLADESH                     <151 cm              NA                -0.1331406   -0.2809895    0.0147083
6 months    MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.0982524   -0.3992605    0.2027558
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                 1.0299577    0.8104052    1.2495102
6 months    MAL-ED           BRAZIL                         <151 cm              NA                 0.7644462    0.4289321    1.0999602
6 months    MAL-ED           BRAZIL                         [151-155) cm         NA                 1.1353642    0.7653684    1.5053600
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.5952426   -0.8421367   -0.3483485
6 months    MAL-ED           INDIA                          <151 cm              NA                -0.6359478   -0.8369188   -0.4349767
6 months    MAL-ED           INDIA                          [151-155) cm         NA                -0.8155050   -1.0491181   -0.5818919
6 months    MAL-ED           NEPAL                          >=155 cm             NA                 0.3399755    0.0393137    0.6406373
6 months    MAL-ED           NEPAL                          <151 cm              NA                 0.0691731   -0.0985097    0.2368560
6 months    MAL-ED           NEPAL                          [151-155) cm         NA                 0.0130920   -0.2750405    0.3012245
6 months    MAL-ED           PERU                           >=155 cm             NA                 1.1616041    0.8825864    1.4406218
6 months    MAL-ED           PERU                           <151 cm              NA                 0.9878772    0.8266751    1.1490794
6 months    MAL-ED           PERU                           [151-155) cm         NA                 1.2161234    0.9382650    1.4939818
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.5161964    0.3367433    0.6956495
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.6744548    0.2372684    1.1116412
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.4997687    0.0642248    0.9353126
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5265431    0.3598680    0.6932183
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.5964456    0.3091367    0.8837545
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4719339    0.1494634    0.7944044
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5564169   -0.7607056   -0.3521281
6 months    NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4702463   -0.5858208   -0.3546718
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3150189   -0.5214639   -0.1085740
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                 0.1604031   -0.0164280    0.3372343
6 months    NIH-Crypto       BANGLADESH                     <151 cm              NA                 0.0063036   -0.0983818    0.1109889
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         NA                 0.0405887   -0.1272595    0.2084369
6 months    PROBIT           BELARUS                        >=155 cm             NA                 0.5796084    0.5205393    0.6386774
6 months    PROBIT           BELARUS                        <151 cm              NA                 0.6305712    0.5423490    0.7187933
6 months    PROBIT           BELARUS                        [151-155) cm         NA                 0.5169334    0.3836742    0.6501925
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0617519   -0.2532120    0.1297081
6 months    PROVIDE          BANGLADESH                     <151 cm              NA                -0.2904032   -0.3965170   -0.1842895
6 months    PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.1118426   -0.2888285    0.0651433
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.6052756   -0.7907813   -0.4197699
6 months    SAS-CompFeed     INDIA                          <151 cm              NA                -0.7215704   -0.8768365   -0.5663043
6 months    SAS-CompFeed     INDIA                          [151-155) cm         NA                -0.5919159   -0.7348393   -0.4489925
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.9960710   -1.2567990   -0.7353431
6 months    SAS-FoodSuppl    INDIA                          <151 cm              NA                -0.9618768   -1.1220324   -0.8017211
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         NA                -1.0581217   -1.2798134   -0.8364300
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0663830    0.0003925    0.1323735
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2311767    0.0953738    0.3669796
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0115740   -0.1100862    0.1332342
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2900464    0.2594520    0.3206408
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2902672    0.1744602    0.4060741
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3221300    0.2463291    0.3979309
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.2309847   -0.3951299   -0.0668395
24 months   COHORTS          GUATEMALA                      <151 cm              NA                -0.3039901   -0.3728934   -0.2350867
24 months   COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2430239   -0.3664735   -0.1195743
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.4764152   -0.5606184   -0.3922120
24 months   COHORTS          INDIA                          <151 cm              NA                -0.6794669   -0.7477396   -0.6111941
24 months   COHORTS          INDIA                          [151-155) cm         NA                -0.5221072   -0.6125778   -0.4316366
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4753705   -0.5568232   -0.3939177
24 months   COHORTS          PHILIPPINES                    <151 cm              NA                -0.7147519   -0.7667794   -0.6627245
24 months   COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5222704   -0.5903383   -0.4542026
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -1.1691204   -1.2291405   -1.1091002
24 months   JiVitA-3         BANGLADESH                     <151 cm              NA                -1.3528839   -1.3832819   -1.3224859
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         NA                -1.2502880   -1.2929315   -1.2076446
24 months   Keneba           GAMBIA                         >=155 cm             NA                -0.8198647   -0.8733627   -0.7663666
24 months   Keneba           GAMBIA                         <151 cm              NA                -1.0054608   -1.2585299   -0.7523917
24 months   Keneba           GAMBIA                         [151-155) cm         NA                -0.6943199   -0.8373714   -0.5512684
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0289445   -0.1277381    0.0698491
24 months   LCNI-5           MALAWI                         <151 cm              NA                -0.0513164   -0.2543782    0.1517454
24 months   LCNI-5           MALAWI                         [151-155) cm         NA                -0.0679632   -0.2683043    0.1323779
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                -0.8493537   -1.3285168   -0.3701907
24 months   MAL-ED           BANGLADESH                     <151 cm              NA                -0.8390010   -0.9847893   -0.6932127
24 months   MAL-ED           BANGLADESH                     [151-155) cm         NA                -0.7407965   -0.9958484   -0.4857447
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                 0.5830352    0.2719524    0.8941180
24 months   MAL-ED           BRAZIL                         <151 cm              NA                 0.1745708   -0.1614584    0.5105999
24 months   MAL-ED           BRAZIL                         [151-155) cm         NA                 0.5696272    0.0910259    1.0482285
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.6862428   -0.9052384   -0.4672472
24 months   MAL-ED           INDIA                          <151 cm              NA                -1.1137473   -1.2831510   -0.9443435
24 months   MAL-ED           INDIA                          [151-155) cm         NA                -0.9369802   -1.1560208   -0.7179396
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.1681872   -0.4725937    0.1362193
24 months   MAL-ED           NEPAL                          <151 cm              NA                -0.4568897   -0.6079407   -0.3058388
24 months   MAL-ED           NEPAL                          [151-155) cm         NA                -0.2487236   -0.4828764   -0.0145708
24 months   MAL-ED           PERU                           >=155 cm             NA                 0.1151052   -0.1203526    0.3505630
24 months   MAL-ED           PERU                           <151 cm              NA                 0.0803171   -0.0928574    0.2534916
24 months   MAL-ED           PERU                           [151-155) cm         NA                 0.2157661   -0.0417778    0.4733101
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.4112935    0.2760327    0.5465543
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              NA                 0.1607937   -0.2606097    0.5821971
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         NA                 0.2059932   -0.1739505    0.5859368
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1524089   -0.0047209    0.3095386
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2060759   -0.4911954    0.0790435
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.1258273   -0.1941124    0.4457671
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9119129   -1.1514314   -0.6723944
24 months   NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9393768   -1.0616522   -0.8171015
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8548806   -1.0805038   -0.6292575
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.3805061   -0.5857917   -0.1752205
24 months   NIH-Crypto       BANGLADESH                     <151 cm              NA                -0.7304547   -0.8557742   -0.6051352
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         NA                -0.5211383   -0.7249261   -0.3173505
24 months   PROBIT           BELARUS                        >=155 cm             NA                 0.7035511    0.5852534    0.8218489
24 months   PROBIT           BELARUS                        <151 cm              NA                 0.6512067    0.4448486    0.8575647
24 months   PROBIT           BELARUS                        [151-155) cm         NA                 0.6581734    0.3702962    0.9460507
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.7367872   -0.9436484   -0.5299259
24 months   PROVIDE          BANGLADESH                     <151 cm              NA                -0.9929460   -1.0895111   -0.8963809
24 months   PROVIDE          BANGLADESH                     [151-155) cm         NA                -0.8049361   -0.9952259   -0.6146462
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1871036   -1.3132489   -1.0609582
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.6407306   -2.1431221   -1.1383391
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9746322   -1.1981705   -0.7510940


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
Birth       COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3717502    0.0817039    0.6617966
Birth       COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.3981519    0.0516143    0.7446896
Birth       COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          INDIA                          <151 cm              >=155 cm           0.0511173   -0.0855143    0.1877489
Birth       COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1825163    0.0296152    0.3354174
Birth       COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0219112   -0.1417769    0.0979545
Birth       COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0282742   -0.1613060    0.1047576
Birth       JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0537418   -0.0988238   -0.0086599
Birth       JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0075888   -0.0583919    0.0432142
Birth       Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2300226   -0.6304913    0.1704460
Birth       Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0577927   -0.2601904    0.1446049
Birth       MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0463151   -0.3683228    0.4609530
Birth       MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1327518   -0.3652632    0.6307669
Birth       MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           BRAZIL                         <151 cm              >=155 cm           0.2066747   -0.5613848    0.9747342
Birth       MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.0994495   -1.0536252    1.2525242
Birth       MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           INDIA                          <151 cm              >=155 cm           0.0460079   -0.6995263    0.7915420
Birth       MAL-ED           INDIA                          [151-155) cm         >=155 cm           0.2339204   -0.4676821    0.9355229
Birth       MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           PERU                           <151 cm              >=155 cm           0.0844912   -0.2018040    0.3707865
Birth       MAL-ED           PERU                           [151-155) cm         >=155 cm           0.2300300   -0.1249086    0.5849686
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4262714   -0.0730815    0.9256242
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0937953   -0.3947735    0.5823641
Birth       NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0041008   -0.2534096    0.2452080
Birth       NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2792127    0.0035383    0.5548871
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1249256   -0.3564757    0.1066245
Birth       NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.0529082   -0.3132214    0.2074051
Birth       PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1464723   -0.3294627    0.0365182
Birth       PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0216985   -0.1300326    0.0866356
Birth       PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.0891297   -0.2935109    0.1152516
Birth       PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0278703   -0.2734176    0.2176771
Birth       SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.0755903   -0.2522836    0.1011030
Birth       SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm          -0.0238330   -0.1468234    0.0991575
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3674757   -0.5081716   -0.2267798
Birth       ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1576382   -0.2452982   -0.0699782
6 months    COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0783720   -0.1470422    0.3037863
6 months    COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0187095   -0.2356352    0.2730543
6 months    COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          INDIA                          <151 cm              >=155 cm          -0.2095449   -0.3372609   -0.0818288
6 months    COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0314445   -0.1738272    0.1109382
6 months    COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0221825   -0.1305367    0.0861717
6 months    COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0594439   -0.0625306    0.1814184
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.5412281   -0.8740215   -0.2084347
6 months    Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.6621538   -1.0682831   -0.2560244
6 months    JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.0958004   -0.1458807   -0.0457201
6 months    JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0911654   -0.1480946   -0.0342361
6 months    Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0591596   -0.4097232    0.2914041
6 months    Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.2187230    0.0596328    0.3778132
6 months    LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1406586   -0.0708352    0.3521525
6 months    LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0125891   -0.1690961    0.1942743
6 months    MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0637420   -0.4261226    0.5536066
6 months    MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.0986302   -0.4588288    0.6560893
6 months    MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.2655116   -0.6668827    0.1358595
6 months    MAL-ED           BRAZIL                         [151-155) cm         >=155 cm           0.1054064   -0.3249497    0.5357626
6 months    MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           INDIA                          <151 cm              >=155 cm          -0.0407052   -0.3584204    0.2770101
6 months    MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2202624   -0.5665925    0.1260678
6 months    MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2708024   -0.6140746    0.0724699
6 months    MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.3268835   -0.7425866    0.0888195
6 months    MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           PERU                           <151 cm              >=155 cm          -0.1737269   -0.4970504    0.1495967
6 months    MAL-ED           PERU                           [151-155) cm         >=155 cm           0.0545193   -0.3432559    0.4522945
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm           0.1582584   -0.3141379    0.6306547
6 months    MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0164277   -0.4886028    0.4557474
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0699025   -0.2617796    0.4015846
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0546093   -0.4178076    0.3085891
6 months    NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0861705   -0.1491048    0.3214459
6 months    NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2413979   -0.0498365    0.5326323
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.1540996   -0.3613860    0.0531869
6 months    NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1198144   -0.3639114    0.1242825
6 months    PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROBIT           BELARUS                        <151 cm              >=155 cm           0.0509628   -0.0470398    0.1489653
6 months    PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0626750   -0.1874408    0.0620908
6 months    PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2286513   -0.4473677   -0.0099349
6 months    PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0500907   -0.3106238    0.2104425
6 months    SAS-CompFeed     INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-CompFeed     INDIA                          <151 cm              >=155 cm          -0.1162948   -0.3024226    0.0698329
6 months    SAS-CompFeed     INDIA                          [151-155) cm         >=155 cm           0.0133597   -0.1924389    0.2191583
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    SAS-FoodSuppl    INDIA                          <151 cm              >=155 cm           0.0341943   -0.2727109    0.3410995
6 months    SAS-FoodSuppl    INDIA                          [151-155) cm         >=155 cm          -0.0620506   -0.4042769    0.2801756
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1647937    0.0133351    0.3162523
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0548090   -0.1938240    0.0842061
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0002207   -0.1195120    0.1199534
6 months    ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0320835   -0.0496882    0.1138552
24 months   COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0730054   -0.2510544    0.1050437
24 months   COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0120392   -0.2175743    0.1934960
24 months   COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          INDIA                          <151 cm              >=155 cm          -0.2030517   -0.3105543   -0.0955490
24 months   COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0456920   -0.1685369    0.0771530
24 months   COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2393815   -0.3360266   -0.1427364
24 months   COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0469000   -0.1530281    0.0592282
24 months   JiVitA-3         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   JiVitA-3         BANGLADESH                     <151 cm              >=155 cm          -0.1837635   -0.2528081   -0.1147189
24 months   JiVitA-3         BANGLADESH                     [151-155) cm         >=155 cm          -0.0811676   -0.1529564   -0.0093789
24 months   Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1855961   -0.4442476    0.0730554
24 months   Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1255448   -0.0273177    0.2784073
24 months   LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0223719   -0.2479274    0.2031836
24 months   LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0390187   -0.2615180    0.1834806
24 months   MAL-ED           BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BANGLADESH                     <151 cm              >=155 cm           0.0103527   -0.4915495    0.5122550
24 months   MAL-ED           BANGLADESH                     [151-155) cm         >=155 cm           0.1085572   -0.4347847    0.6518991
24 months   MAL-ED           BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           BRAZIL                         <151 cm              >=155 cm          -0.4084644   -0.8713460    0.0544171
24 months   MAL-ED           BRAZIL                         [151-155) cm         >=155 cm          -0.0134080   -0.5949174    0.5681014
24 months   MAL-ED           INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           INDIA                          <151 cm              >=155 cm          -0.4275044   -0.7056522   -0.1493567
24 months   MAL-ED           INDIA                          [151-155) cm         >=155 cm          -0.2507373   -0.5604357    0.0589610
24 months   MAL-ED           NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           NEPAL                          <151 cm              >=155 cm          -0.2887025   -0.6294953    0.0520902
24 months   MAL-ED           NEPAL                          [151-155) cm         >=155 cm          -0.0805364   -0.4655904    0.3045176
24 months   MAL-ED           PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           PERU                           <151 cm              >=155 cm          -0.0347881   -0.3283121    0.2587360
24 months   MAL-ED           PERU                           [151-155) cm         >=155 cm           0.1006610   -0.2486407    0.4499626
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           SOUTH AFRICA                   <151 cm              >=155 cm          -0.2504998   -0.6932895    0.1922898
24 months   MAL-ED           SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2053004   -0.6107097    0.2001090
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3584848   -0.6842497   -0.0327199
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0265815   -0.3826898    0.3295267
24 months   NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0274639   -0.2964096    0.2414818
24 months   NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0570323   -0.2717088    0.3857735
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   NIH-Crypto       BANGLADESH                     <151 cm              >=155 cm          -0.3499486   -0.5899277   -0.1099695
24 months   NIH-Crypto       BANGLADESH                     [151-155) cm         >=155 cm          -0.1406322   -0.4292222    0.1479578
24 months   PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0523444   -0.2981756    0.1934867
24 months   PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0453777   -0.3139407    0.2231853
24 months   PROVIDE          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   PROVIDE          BANGLADESH                     <151 cm              >=155 cm          -0.2561588   -0.4837104   -0.0286073
24 months   PROVIDE          BANGLADESH                     [151-155) cm         >=155 cm          -0.0681489   -0.3476969    0.2113991
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.4536270   -0.9726503    0.0653962
24 months   ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2124714   -0.0441703    0.4691130


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      >=155 cm             NA                 0.3215657    0.0757937    0.5673377
Birth       COHORTS          INDIA                          >=155 cm             NA                 0.0733454   -0.0145166    0.1612074
Birth       COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0190890   -0.1084391    0.0702611
Birth       JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0309365   -0.0671355    0.0052624
Birth       Keneba           GAMBIA                         >=155 cm             NA                -0.0166680   -0.0471047    0.0137687
Birth       MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0596017   -0.3058029    0.4250064
Birth       MAL-ED           BRAZIL                         >=155 cm             NA                 0.1317799   -0.1987026    0.4622624
Birth       MAL-ED           INDIA                          >=155 cm             NA                -0.0525085   -0.5395742    0.4345571
Birth       MAL-ED           NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       MAL-ED           PERU                           >=155 cm             NA                 0.1167699   -0.0974971    0.3310369
Birth       MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1352341   -0.0287098    0.2991779
Birth       NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0574212   -0.1371374    0.2519798
Birth       NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.0736541   -0.2563788    0.1090706
Birth       PROBIT           BELARUS                        >=155 cm             NA                -0.0016663   -0.0057242    0.0023917
Birth       PROVIDE          BANGLADESH                     >=155 cm             NA                -0.0521507   -0.2081049    0.1038035
Birth       SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0253831   -0.1130216    0.0622554
Birth       ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0415725   -0.0571174   -0.0260277
6 months    COHORTS          GUATEMALA                      >=155 cm             NA                 0.0527432   -0.1420142    0.2475006
6 months    COHORTS          INDIA                          >=155 cm             NA                -0.1025869   -0.1854831   -0.0196907
6 months    COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0016154   -0.0803578    0.0835885
6 months    Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.5094720   -0.7876276   -0.2313164
6 months    JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.0776896   -0.1186073   -0.0367718
6 months    Keneba           GAMBIA                         >=155 cm             NA                 0.0201784   -0.0041971    0.0445540
6 months    LCNI-5           MALAWI                         >=155 cm             NA                 0.0298749   -0.0276723    0.0874221
6 months    MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0592062   -0.3833063    0.5017188
6 months    MAL-ED           BRAZIL                         >=155 cm             NA                -0.0578804   -0.1971308    0.0813700
6 months    MAL-ED           INDIA                          >=155 cm             NA                -0.1081723   -0.3335989    0.1172543
6 months    MAL-ED           NEPAL                          >=155 cm             NA                -0.2295447   -0.5066732    0.0475838
6 months    MAL-ED           PERU                           >=155 cm             NA                -0.1067450   -0.3550173    0.1415273
6 months    MAL-ED           SOUTH AFRICA                   >=155 cm             NA                 0.0129535   -0.0747334    0.1006404
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0096782   -0.0997240    0.1190803
6 months    NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1090131   -0.0797478    0.2977740
6 months    NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.1306409   -0.2925865    0.0313046
6 months    PROBIT           BELARUS                        >=155 cm             NA                -0.0014051   -0.0054248    0.0026145
6 months    PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1369551   -0.3045167    0.0306064
6 months    SAS-CompFeed     INDIA                          >=155 cm             NA                -0.0373549   -0.1468422    0.0721324
6 months    SAS-FoodSuppl    INDIA                          >=155 cm             NA                -0.0093115   -0.2437030    0.2250799
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0123927   -0.0300426    0.0548280
6 months    ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0048002   -0.0095787    0.0191791
24 months   COHORTS          GUATEMALA                      >=155 cm             NA                -0.0534189   -0.2062364    0.0993987
24 months   COHORTS          INDIA                          >=155 cm             NA                -0.0955371   -0.1646133   -0.0264610
24 months   COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1345887   -0.2075134   -0.0616640
24 months   JiVitA-3         BANGLADESH                     >=155 cm             NA                -0.1279438   -0.1837819   -0.0721057
24 months   Keneba           GAMBIA                         >=155 cm             NA                 0.0096930   -0.0125875    0.0319735
24 months   LCNI-5           MALAWI                         >=155 cm             NA                -0.0179272   -0.0846895    0.0488351
24 months   MAL-ED           BANGLADESH                     >=155 cm             NA                 0.0300613   -0.4159238    0.4760463
24 months   MAL-ED           BRAZIL                         >=155 cm             NA                -0.1204119   -0.3139329    0.0731091
24 months   MAL-ED           INDIA                          >=155 cm             NA                -0.2656819   -0.4643803   -0.0669836
24 months   MAL-ED           NEPAL                          >=155 cm             NA                -0.2067251   -0.4853192    0.0718690
24 months   MAL-ED           PERU                           >=155 cm             NA                -0.0039070   -0.2164766    0.2086626
24 months   MAL-ED           SOUTH AFRICA                   >=155 cm             NA                -0.0196518   -0.0896015    0.0502980
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0976114   -0.2058880    0.0106653
24 months   NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0003339   -0.2162346    0.2169024
24 months   NIH-Crypto       BANGLADESH                     >=155 cm             NA                -0.2298441   -0.4159509   -0.0437372
24 months   PROBIT           BELARUS                        >=155 cm             NA                -0.0044297   -0.0131110    0.0042516
24 months   PROVIDE          BANGLADESH                     >=155 cm             NA                -0.1546488   -0.3328336    0.0235360
24 months   ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0158502   -0.0537289    0.0854292
