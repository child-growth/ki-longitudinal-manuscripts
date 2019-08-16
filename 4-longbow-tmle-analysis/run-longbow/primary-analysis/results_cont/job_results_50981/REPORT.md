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

agecat      studyid                    country                        mhtcm           n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        65     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           107     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        28     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            46     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             95     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        57     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             96     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        49     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            58     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            161     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           173     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            76     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        24     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            59     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             33     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        38     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         6      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1186    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       192    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13206   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            125   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       398   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7704    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            558    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1405    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            545     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           530    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm            763    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       481    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2900   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11735   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4901   19536
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           510    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       297    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            74     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       103     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12533   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       379   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5672    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            432    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1022    7126
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            629     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm            790    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       488    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           561    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       779    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2660   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9797   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4304   16761
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            77     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            314     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1338    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3859    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             35    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       111    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           278     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           127     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            661     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       209     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           552    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm            785    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       482    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           510    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1234    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       701    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           355     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             95     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       127     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1314    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5067    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2218    8599


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/86abe9fe-69e0-4953-b730-5ee10e94c8b6/fcb368ca-75d0-4455-94a1-f3f8df76b834/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/86abe9fe-69e0-4953-b730-5ee10e94c8b6/fcb368ca-75d0-4455-94a1-f3f8df76b834/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/86abe9fe-69e0-4953-b730-5ee10e94c8b6/fcb368ca-75d0-4455-94a1-f3f8df76b834/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8392035   -1.3154202   -0.3629867
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.1847842   -1.3421056   -1.0274628
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7767080   -0.9925985   -0.5608174
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.5354699   -0.7295977   -0.3413421
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -1.0121687   -1.3518337   -0.6725037
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.7965789   -1.2171037   -0.3760541
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.7477572   -1.0237518   -0.4717627
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.2195188   -1.4246706   -1.0143670
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9038749   -1.1860620   -0.6216878
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2243872   -0.5677863    0.1190120
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7531556   -0.9563550   -0.5499563
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.8045848   -1.1511264   -0.4580432
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.6365063   -0.8733076   -0.3997050
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.0698169   -1.2209985   -0.9186353
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.0032312   -1.2035446   -0.8029179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.5952578   -0.7459737   -0.4445419
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.9437559   -1.3499889   -0.5375228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.8744727   -1.1393100   -0.6096353
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.8283350   -1.0770666   -0.5796035
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.6414576   -2.2509463   -1.0319689
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.9707650   -1.4530852   -0.4884447
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1971851   -1.5139850   -0.8803852
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.6925820   -2.0287196   -1.3564444
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.7600845   -2.1542865   -1.3658825
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1300000   -0.8017283    0.5417283
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.5613333   -0.9683502   -0.1543165
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.9150000   -1.8302637    0.0002637
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.1090249    0.0381630    0.1798867
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2462022   -0.7052507    0.2128463
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.1595650   -0.3469655    0.0278355
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 1.3390894    1.1792023    1.4989765
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                 1.0072326    0.8991109    1.1153542
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 1.0037222    0.8101421    1.1973024
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4384892   -0.4659129   -0.4110655
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7033082   -0.8110559   -0.5955604
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6026039   -0.6644557   -0.5407521
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.4903556    0.2505740    0.7301372
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0310507   -0.1309837    0.0688823
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.3841423    0.1929712    0.5753134
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2669520   -0.3625923   -0.1713117
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.8347444   -0.9140291   -0.7554597
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5843732   -0.6834700   -0.4852764
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0756679   -0.0022176    0.1535533
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.4358721   -0.4917312   -0.3800131
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1508617   -0.2225860   -0.0791374
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1320812   -1.1780770   -1.0860855
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.7493768   -1.7729226   -1.7258310
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.4218855   -1.4570446   -1.3867264
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.0090697   -1.3221135   -0.6960259
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3782831   -1.5327853   -1.2237809
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9454390   -1.1376924   -0.7531856
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1835964   -0.0059990    0.3731919
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.2326567   -0.4721650    0.0068516
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.2760768   -0.1186962    0.6708499
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9088359   -1.1269105   -0.6907612
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4712850   -1.6521207   -1.2904492
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0278973   -1.2285056   -0.8272891
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0746020   -0.2953871    0.1461831
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7942338   -0.9422615   -0.6462062
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4280526   -0.6437710   -0.2123342
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.0983009   -1.3174416   -0.8791603
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4530901   -1.6042098   -1.3019704
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2057290   -1.4266440   -0.9848140
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9644278   -1.1102171   -0.8186385
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5063335   -1.9344147   -1.0782524
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2544952   -1.5992193   -0.9097712
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1546224   -1.3033173   -1.0059275
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8168859   -2.1146870   -1.5190848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4095910   -1.6662834   -1.1528986
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.0874404   -1.1652226   -1.0096583
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7704062   -1.9070800   -1.6337324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4776081   -1.6889540   -1.2662622
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.3817887   -1.6029869   -1.1605905
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1246801   -2.2694427   -1.9799175
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7308421   -1.9605630   -1.5011212
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9269020   -1.1361431   -0.7176608
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6637743   -1.7748582   -1.5526903
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1408526   -1.3229539   -0.9587513
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6752026   -0.8433345   -0.5070708
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2962647   -1.3961669   -1.1963625
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9786308   -1.1240034   -0.8332582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8752424   -1.0392405   -0.7112443
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3494853   -1.4412901   -1.2576804
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0683591   -1.2159008   -0.9208174
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3462936   -0.4083374   -0.2842499
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9703127   -1.0854459   -0.8551794
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7822089   -0.8843850   -0.6800328
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8394856   -0.8926614   -0.7863097
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.3901983   -1.6610416   -1.1193549
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2438769   -1.3792104   -1.1085434
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3349215   -1.6860566   -0.9837865
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6414838   -1.8104246   -1.4725431
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.5077575   -1.7562755   -1.2592395
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1332657    0.0399339    0.2265975
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5023565   -0.5985590   -0.4061541
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.2778380   -0.4009026   -0.1547734
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8101737   -0.8410033   -0.7793441
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5807802   -1.6904225   -1.4711378
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1175298   -1.1870200   -1.0480396
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2028506   -1.4096996   -0.9960016
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9743585   -2.0562553   -1.8924617
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.5902619   -1.7290118   -1.4515120
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4918434   -0.5855797   -0.3981070
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2331664   -1.3115377   -1.1547952
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9032352   -0.9972844   -0.8091859
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7098540   -0.7990647   -0.6206433
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3799328   -1.4377043   -1.3221612
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0180161   -1.0937765   -0.9422557
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4649755   -1.5529429   -1.3770081
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1740559   -2.3410770   -2.0070347
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.7872460   -1.9256353   -1.6488566
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7347412   -0.7814969   -0.6879855
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.5525788   -1.5784113   -1.5267463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1283025   -1.1650487   -1.0915562
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.5335066   -1.8585810   -1.2084321
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1722790   -2.3268055   -2.0177525
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5704819   -1.8037868   -1.3371769
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1242417   -0.1075582    0.3560417
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0640194   -0.3564682    0.2284295
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.1517372   -0.5946951    0.2912206
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4128074   -1.6682876   -1.1573272
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1109291   -2.2990473   -1.9228109
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7370382   -1.9317996   -1.5422767
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6616037   -0.8914897   -0.4317177
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5493441   -1.6995350   -1.3991532
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0382255   -1.2770728   -0.7993783
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3155329   -1.5850630   -1.0460027
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9616110   -2.1135177   -1.8097043
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6524700   -1.8931956   -1.4117444
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5323750   -1.6856365   -1.3791135
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9309832   -2.3676525   -1.4943140
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8212507   -2.2437330   -1.3987684
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.3754318   -2.5408986   -2.2099650
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.0886255   -3.3946717   -2.7825792
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.6754910   -2.9621890   -2.3887930
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4527935   -1.6978732   -1.2077138
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4750188   -2.5968471   -2.3531904
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9655427   -2.1692522   -1.7618332
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1227443   -1.3149147   -0.9305739
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7946047   -1.9015621   -1.6876473
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.4818336   -1.6580598   -1.3056075
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9078766   -1.0662840   -0.7494691
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6299991   -1.7421523   -1.5178460
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3664498   -1.5277116   -1.2051881
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.4883340   -1.5450259   -1.4316422
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.3336179   -2.5868837   -2.0803520
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8561981   -1.9917397   -1.7206566
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1073282   -0.4143597    0.1997032
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.4816863   -1.5816096   -1.3817630
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5415895   -0.8042283   -0.2789506
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -2.2640792   -2.4084130   -2.1197455
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.9933437   -3.3294681   -2.6572193
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -2.6344362   -2.9446589   -2.3242135
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.2553810   -2.4592829   -2.0514791
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.0147224   -3.0921685   -2.9372763
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.7817442   -2.9251335   -2.6383549
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.3166666   -1.4136716   -1.2196616
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.2012193   -2.2781396   -2.1242989
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -1.8940784   -1.9936442   -1.7945127
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9189539   -2.0131788   -1.8247290
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6605727   -2.7217982   -2.5993473
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2508229   -2.3322054   -2.1694403
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6568625   -1.7541314   -1.5595936
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4035796   -2.6192975   -2.1878618
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0765025   -2.2395820   -1.9134231
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.4382762   -1.4981582   -1.3783942
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.2513576   -2.2830292   -2.2196861
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8082200   -1.8539712   -1.7624688


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0509377   -0.0152181    0.1170935
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3266356    1.1675034    1.4857678
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4773539   -0.5018158   -0.4528920
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5749898   -1.5947766   -1.5552029
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.9009844   -0.9286528   -0.8733161
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5677937   -1.6196515   -1.5159358
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4107937   -2.5337436   -2.2878437
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8678134   -2.9347113   -2.8009156
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.8566355   -1.9110340   -1.8022370
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8744367   -1.9556750   -1.7931984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0127573   -2.0405350   -1.9849796


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3455808   -0.8470063    0.1558448
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0624955   -0.4614053    0.5863963
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4766989   -0.8684281   -0.0849696
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2611090   -0.7267948    0.2045768
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.4717616   -0.8164851   -0.1270381
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1561177   -0.5514077    0.2391723
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.5287685   -0.9296788   -0.1278582
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.5801976   -1.0677113   -0.0926839
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.4333106   -0.7139647   -0.1526564
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3667249   -0.6772843   -0.0561654
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3484981   -0.7819645    0.0849683
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2792149   -0.5834871    0.0250573
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.8131226   -1.4719382   -0.1543070
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1424299   -0.6877116    0.4028518
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.4953970   -0.8858957   -0.1048982
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.5628994   -1.1245997   -0.0011991
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.4313333   -1.2167515    0.3540848
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.7850000   -1.9203090    0.3503090
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3552271   -0.8197407    0.1092865
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2685899   -0.4692804   -0.0678994
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3318568   -0.5026553   -0.1610582
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3353671   -0.4572038   -0.2135305
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2648190   -0.3760065   -0.1536316
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1641147   -0.2317676   -0.0964618
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5214063   -0.7811703   -0.2616424
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1062133   -0.4130839    0.2006574
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.5677924   -0.6921997   -0.4433852
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3174212   -0.4548963   -0.1799461
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5115400   -0.6072988   -0.4157812
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2265296   -0.3324039   -0.1206553
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6172955   -0.6682408   -0.5663503
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2898043   -0.3458637   -0.2337448
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3692134   -0.7182755   -0.0201513
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0636307   -0.3031458    0.4304071
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4162531   -0.7231122   -0.1093940
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0924804   -0.3448046    0.5297653
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5624491   -0.8468038   -0.2780945
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1190615   -0.4159531    0.1778302
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7196318   -0.9858069   -0.4534567
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3534506   -0.6620282   -0.0448730
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3547892   -0.6214621   -0.0881162
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1074280   -0.4191272    0.2042712
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5419058   -0.9944305   -0.0893811
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2900675   -0.6649762    0.0848412
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6622635   -0.9946873   -0.3298397
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2549686   -0.5532996    0.0433624
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6829658   -0.8030114   -0.5629202
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3901677   -0.6273099   -0.1530254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7428914   -1.0079192   -0.4778636
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3490534   -0.6684294   -0.0296773
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7368723   -0.9738292   -0.4999153
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2139506   -0.4924721    0.0645709
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6210621   -0.8168022   -0.4253220
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3034282   -0.5258551   -0.0810013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4742429   -0.6624570   -0.2860287
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1931167   -0.4137913    0.0275579
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6240191   -0.7549799   -0.4930582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4359153   -0.5553843   -0.3164463
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5507127   -0.8268320   -0.2745934
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4043913   -0.5497926   -0.2589901
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3065623   -0.6963510    0.0832264
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1728360   -0.6032422    0.2575703
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6356223   -0.7405252   -0.5307193
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4111037   -0.5290049   -0.2932025
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7706065   -0.8845064   -0.6567065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3073561   -0.3833970   -0.2313152
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7715079   -0.9937543   -0.5492614
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3874113   -0.6359183   -0.1389043
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.7413231   -0.8635508   -0.6190954
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4113918   -0.5441817   -0.2786019
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6700788   -0.7763110   -0.5638465
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3081621   -0.4252575   -0.1910667
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7090804   -0.8982187   -0.5199420
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3222705   -0.4861355   -0.1584055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8178376   -0.8679966   -0.7676786
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3935613   -0.4513522   -0.3357704
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.6387725   -0.9996879   -0.2778570
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0369753   -0.4366223    0.3626717
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1882611   -0.5623767    0.1858545
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2759789   -0.7765872    0.2246293
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6981217   -1.0155826   -0.3806608
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3242308   -0.6460164   -0.0024451
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8877404   -1.1628719   -0.6126089
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3766218   -0.7091115   -0.0441321
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6460781   -0.9556331   -0.3365232
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3369371   -0.6985751    0.0247009
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3986082   -0.8615794    0.0643629
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2888757   -0.7384908    0.1607395
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7131937   -1.0614208   -0.3649665
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3000592   -0.6317413    0.0316229
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -1.0222253   -1.2961657   -0.7482849
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.5127492   -0.8322124   -0.1932859
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6718604   -0.8922119   -0.4515090
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3590894   -0.6206475   -0.0975312
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7221226   -0.9162336   -0.5280115
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4585733   -0.6847645   -0.2323820
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8452838   -1.1047962   -0.5857714
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3678641   -0.5149154   -0.2208128
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.3743581   -1.7142713   -1.0344449
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4342613   -0.8314215   -0.0371011
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7292645   -1.0952116   -0.3633174
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3703569   -0.7140276   -0.0266863
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7593414   -0.9772495   -0.5414334
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5263632   -0.7753339   -0.2773924
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8845526   -1.0083649   -0.7607403
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5774118   -0.7163946   -0.4384290
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7416188   -0.8540871   -0.6291505
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3318690   -0.4564498   -0.2072881
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7467172   -0.9836340   -0.5098003
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4196400   -0.6095836   -0.2296965
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8130814   -0.8774925   -0.7486704
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3699438   -0.4458569   -0.2940307


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2063250   -0.6527718    0.2401219
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.2042584   -0.3462655   -0.0622513
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2722933   -0.5188485   -0.0257381
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4809035   -0.8117069   -0.1501002
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.3021169   -0.5137278   -0.0905059
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0969352   -0.1706947   -0.0231757
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0984418   -0.2722311    0.0753475
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2831996   -0.5077587   -0.0586404
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3992857   -0.9909826    0.1924112
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0580872   -0.0910212   -0.0251532
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0124538   -0.0166650   -0.0082425
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0388647   -0.0511989   -0.0265305
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3568318   -0.5797805   -0.1338831
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3303705   -0.4111491   -0.2495919
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3247170   -0.3959249   -0.2535092
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4429085   -0.4852880   -0.4005290
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1966080   -0.5012059    0.1079899
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1325757   -0.2560220   -0.0091294
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3060010   -0.5067977   -0.1052043
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4864573   -0.7000789   -0.2728358
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2289478   -0.4298987   -0.0279970
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1083734   -0.1878750   -0.0288719
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2054990   -0.3112798   -0.0997182
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.3194488   -0.3662980   -0.2725996
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.5064171   -0.7127861   -0.3000481
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4804801   -0.6716350   -0.2893252
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4096542   -0.5582051   -0.2611034
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3234359   -0.4720692   -0.1748027
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1961617   -0.2346831   -0.1576403
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0764448   -0.0992921   -0.0535974
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2249991   -0.5478655    0.0978673
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0174846   -0.0215812   -0.0133880
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0908107   -0.1050976   -0.0765238
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6087719   -0.8017277   -0.4158160
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4335717   -0.5131191   -0.3540243
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4307184   -0.5109268   -0.3505100
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1927996   -0.2493985   -0.1362008
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5791643   -0.6206248   -0.5377038
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.4096066   -0.7283294   -0.0908839
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0824074   -0.2304705    0.0656557
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4311085   -0.6570681   -0.2051489
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6136156   -0.8382761   -0.3889551
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4345666   -0.6708892   -0.1982441
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0896549   -0.1688434   -0.0104664
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2304561   -0.3471416   -0.1137705
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.7280010   -0.9517584   -0.5042435
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4611794   -0.6328120   -0.2895467
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5216565   -0.6708728   -0.3724402
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0794597   -0.1027715   -0.0561478
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0248898   -0.0370575   -0.0127222
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1467144   -0.2217545   -0.0716743
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6124325   -0.8006137   -0.4242512
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5399689   -0.6214991   -0.4584387
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4709111   -0.5557486   -0.3860737
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2175742   -0.2844710   -0.1506775
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5744811   -0.6288925   -0.5200697
