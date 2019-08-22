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

unadjusted

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




# Results Detail

## Results Plots
![](/tmp/c01f6c15-292e-47de-a76f-813889f00860/846be725-daf9-40b6-bc33-e65200719a56/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c01f6c15-292e-47de-a76f-813889f00860/846be725-daf9-40b6-bc33-e65200719a56/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c01f6c15-292e-47de-a76f-813889f00860/846be725-daf9-40b6-bc33-e65200719a56/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9036000   -1.3554697   -0.4517303
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.1830769   -1.3406047   -1.0255491
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7700000   -0.9862090   -0.5537910
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.5480374   -0.7412211   -0.3548536
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -1.0630612   -1.4015102   -0.7246123
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.9064286   -1.3061652   -0.5066919
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.7356522   -1.0168746   -0.4544298
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.2229474   -1.4230595   -1.0228352
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9114035   -1.1801353   -0.6426717
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2622222   -0.5780780    0.0536335
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7680208   -0.9679771   -0.5680645
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.8265306   -1.1603413   -0.4927200
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.5829310   -0.8269928   -0.3388693
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.0559006   -1.2070462   -0.9047551
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.9692982   -1.1674188   -0.7711777
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.5979769   -0.7471724   -0.4487813
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.0058621   -1.4127205   -0.5990037
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.9692308   -1.2242354   -0.7142262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.7997368   -1.0504388   -0.5490348
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.5800000   -2.1865062   -0.9734938
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7575000   -1.2033106   -0.3116894
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1901695   -1.4844022   -0.8959368
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.6760606   -2.0046506   -1.3474706
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.7610526   -2.2018695   -1.3202358
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.1300000   -0.8017283    0.5417283
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.5613333   -0.9683502   -0.1543165
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.9150000   -1.8302637    0.0002637
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.1035919    0.0326448    0.1745390
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2927451   -0.7385385    0.1530483
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.1830208   -0.3681912    0.0021496
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 1.3392140    1.1792877    1.4991403
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.9912000    0.8818724    1.1005276
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 1.0146231    0.8235591    1.2056871
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4380763   -0.4654907   -0.4106620
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7016846   -0.8084231   -0.5949461
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6036299   -0.6653798   -0.5418799
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.4970000    0.2591716    0.7348284
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0302936   -0.1301444    0.0695572
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4000000    0.2104015    0.5895985
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2770189   -0.3722078   -0.1818299
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.8306291   -0.9097534   -0.7515048
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5801663   -0.6788543   -0.4814784
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0855714    0.0070369    0.1641059
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.4406731   -0.4962416   -0.3851047
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1516229   -0.2222195   -0.0810262
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1201448   -1.1665190   -1.0737707
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.7539685   -1.7775166   -1.7304204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.4155805   -1.4506673   -1.3804937
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9027083   -1.2101866   -0.5952301
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3687286   -1.5218007   -1.2156566
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9078962   -1.0958578   -0.7199345
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1719559   -0.0170693    0.3609811
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3202614   -0.5567037   -0.0838191
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1672973   -0.2166729    0.5512675
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9260909   -1.1415742   -0.7106076
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4768452   -1.6550522   -1.2986383
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0168382   -1.2128805   -0.8207960
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0236179   -0.2311792    0.1839434
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7932071   -0.9403043   -0.6461098
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4244180   -0.6377981   -0.2110379
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.0978736   -1.3073740   -0.8883731
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4542038   -1.6039806   -1.3044270
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2109649   -1.4253571   -0.9965727
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9652718   -1.1107910   -0.8197527
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5217742   -1.9318467   -1.1117017
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2724731   -1.6055378   -0.9394084
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1675850   -1.3153790   -1.0197910
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8572569   -2.1500549   -1.5644590
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4455128   -1.6971394   -1.1938862
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.0901471   -1.1710561   -1.0092380
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7537886   -1.8876205   -1.6199567
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4590572   -1.6662295   -1.2518850
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.4025676   -1.6246797   -1.1804554
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1374752   -2.2811141   -1.9938364
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7482524   -1.9768285   -1.5196763
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9389931   -1.1453862   -0.7325999
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6593248   -1.7690067   -1.5496429
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1505449   -1.3262048   -0.9748850
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6710714   -0.8368996   -0.5052432
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2966614   -1.3963373   -1.1969855
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9791905   -1.1234096   -0.8349714
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8709701   -1.0340590   -0.7078813
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3518491   -1.4434901   -1.2602082
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0866765   -1.2320154   -0.9413375
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3466265   -0.4085408   -0.2847123
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9769283   -1.0901882   -0.8636684
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7913228   -0.8919619   -0.6906836
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8398695   -0.8930361   -0.7867029
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4664677   -1.7150057   -1.2179297
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2563326   -1.3910094   -1.1216559
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3063426   -1.6388277   -0.9738574
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6556028   -1.8213129   -1.4898928
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4791358   -1.7263630   -1.2319086
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1331246    0.0398946    0.2263545
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5329339   -0.6286490   -0.4372188
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.2506332   -0.3686438   -0.1326227
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8106206   -0.8414410   -0.7798002
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5787269   -1.6873768   -1.4700769
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1160127   -1.1851268   -1.0468986
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2442735   -1.4473597   -1.0411874
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9797774   -2.0616005   -1.8979544
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6116751   -1.7466701   -1.4766802
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4903142   -0.5840207   -0.3966078
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2362025   -1.3143331   -1.1580719
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9046516   -0.9981116   -0.8111916
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7144207   -0.8037930   -0.6250484
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3835380   -1.4413343   -1.3257417
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0207959   -1.0954117   -0.9461801
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4646589   -1.5517069   -1.3776108
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1980916   -2.3670194   -2.0291638
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.8051042   -1.9409270   -1.6692813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7247820   -0.7722569   -0.6773070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.5557109   -1.5814782   -1.5299437
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1275906   -1.1640043   -1.0911770
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.4561364   -1.7565679   -1.1557048
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1718248   -2.3251928   -2.0184569
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5540566   -1.7853140   -1.3227992
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1260000   -0.1039519    0.3559519
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0336047   -0.3147465    0.2475372
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.1114516   -0.5306651    0.3077619
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4342453   -1.6884973   -1.1799932
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1188182   -2.3053482   -1.9322881
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7085714   -1.8994831   -1.5176598
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6947368   -0.9213696   -0.4681040
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5511628   -1.7010392   -1.4012864
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0532787   -1.2879589   -0.8185985
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3007609   -1.5554787   -1.0460430
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9636957   -2.1152167   -1.8121746
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6527500   -1.8867824   -1.4187176
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5323333   -1.6851446   -1.3795221
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9600000   -2.3843322   -1.5356678
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8820370   -2.2805705   -1.4835036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.3844444   -2.5488780   -2.2200109
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1618750   -3.4510231   -2.8727269
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7238542   -3.0112129   -2.4364955
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4857900   -1.7257604   -1.2458197
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4817295   -2.6030228   -2.3604362
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9575917   -2.1622345   -1.7529489
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1463934   -1.3263254   -0.9664615
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7935350   -1.9002077   -1.6868624
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.4950714   -1.6626101   -1.3275327
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9130000   -1.0718239   -0.7541761
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6337979   -1.7451143   -1.5224816
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3746457   -1.5335760   -1.2157153
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.4880600   -1.5446856   -1.4314345
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.3537361   -2.5804588   -2.1270135
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8595931   -1.9924312   -1.7267551
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1085255   -0.4156249    0.1985738
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.4552857   -1.5490520   -1.3615194
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5387237   -0.7826267   -0.2948207
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -2.2633813   -2.4072042   -2.1195584
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -3.0694118   -3.3607686   -2.7780549
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -2.6924242   -2.9810771   -2.4037714
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.2444882   -2.4488357   -2.0401407
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.0152194   -3.0927506   -2.9376882
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.7803828   -2.9237253   -2.6370403
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.3183333   -1.4154822   -1.2211844
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.2078726   -2.2845486   -2.1311966
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -1.9010788   -2.0006188   -1.8015389
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9184510   -2.0131354   -1.8237665
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6631037   -2.7239207   -2.6022867
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2518402   -2.3326113   -2.1710692
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6568732   -1.7537620   -1.5599845
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4058947   -2.6200783   -2.1917112
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0850394   -2.2445842   -1.9254945
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.4359665   -1.4958413   -1.3760918
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.2522893   -2.2840167   -2.2205619
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8072543   -1.8530383   -1.7614703


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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.2794769   -0.7580177    0.1990638
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1336000   -0.3673317    0.6345317
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.5150238   -0.9047259   -0.1253218
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.3583912   -0.8023612    0.0855788
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.4872952   -0.8324486   -0.1421418
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1757513   -0.5647280    0.2132253
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.5057986   -0.8796266   -0.1319706
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.5643084   -1.0238673   -0.1047495
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.4729696   -0.7600429   -0.1858962
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3863672   -0.7007203   -0.0720141
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.4078852   -0.8412362    0.0254658
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3712539   -0.6666970   -0.0758107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7802632   -1.4365415   -0.1239848
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0422368   -0.4692302    0.5537039
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.4858911   -0.8248839   -0.1468984
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.5708831   -1.1587912    0.0170249
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.4313333   -1.2167515    0.3540848
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.7850000   -1.9203090    0.3503090
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.3963370   -0.8477406    0.0550666
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2866127   -0.4849094   -0.0883161
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3480140   -0.5109478   -0.1850802
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3245909   -0.4437607   -0.2054210
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2636083   -0.3738110   -0.1534055
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1655536   -0.2331154   -0.0979917
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5272936   -0.7852326   -0.2693546
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0970000   -0.4011544    0.2071544
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.5536102   -0.6773906   -0.4298298
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3031475   -0.4402615   -0.1660334
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5262446   -0.6224502   -0.4300390
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2371943   -0.3427952   -0.1315934
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6338236   -0.6852505   -0.5823968
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2954357   -0.3519388   -0.2389325
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4660203   -0.8094936   -0.1225470
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0051878   -0.3655660    0.3551903
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4922174   -0.7949309   -0.1895038
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0046586   -0.4326348    0.4233176
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5507543   -0.8303804   -0.2711282
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0907473   -0.3820644    0.2005697
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7695892   -1.0239891   -0.5151893
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.4008001   -0.6984791   -0.1031211
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3563303   -0.6138638   -0.0987967
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1130913   -0.4128486    0.1866659
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5565024   -0.9916291   -0.1213756
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3072013   -0.6706678    0.0562652
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6896719   -1.0176562   -0.3616876
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2779278   -0.5697480    0.0138924
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6636415   -0.7639959   -0.5632872
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3689102   -0.6065434   -0.1312770
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7349077   -0.9994184   -0.4703969
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3456849   -0.6644024   -0.0269674
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7203317   -0.9540586   -0.4866048
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2115518   -0.4825768    0.0594731
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6255900   -0.8190694   -0.4321106
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3081190   -0.5278874   -0.0883507
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4808790   -0.6679513   -0.2938067
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2157063   -0.4341586    0.0027459
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6303017   -0.7593799   -0.5012235
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4446962   -0.5628555   -0.3265369
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6265982   -0.8807592   -0.3724371
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4164631   -0.5612544   -0.2716719
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3492602   -0.7207521    0.0222316
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1727932   -0.5871212    0.2415348
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6660584   -0.7669968   -0.5651200
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3837578   -0.4949296   -0.2725860
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7681063   -0.8810431   -0.6551695
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3053921   -0.3810668   -0.2297175
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7355039   -0.9544537   -0.5165542
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3674016   -0.6112614   -0.1235418
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.7458883   -0.8678936   -0.6238830
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4143374   -0.5466842   -0.2819906
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6691173   -0.7755496   -0.5626851
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3063752   -0.4228008   -0.1899496
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7334327   -0.9234695   -0.5433960
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3404453   -0.5017686   -0.1791220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8309290   -0.8817837   -0.7800743
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.4028087   -0.4608977   -0.3447196
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.7156885   -1.0530026   -0.3783743
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0979202   -0.4770496    0.2812092
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1596047   -0.5228107    0.2036013
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2374516   -0.7155916    0.2406883
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6845729   -0.9999101   -0.3692357
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2743261   -0.5922748    0.0436225
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8564259   -1.1281342   -0.5847177
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3585418   -0.6847890   -0.0322947
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6629348   -0.9593126   -0.3665570
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3519891   -0.6978971   -0.0060812
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.4276667   -0.8786757    0.0233423
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3497037   -0.7765294    0.0771220
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7774306   -1.1100640   -0.4447971
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3394097   -0.6704889   -0.0083306
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9959395   -1.2648220   -0.7270569
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4718016   -0.7871815   -0.1564218
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6471416   -0.8563175   -0.4379656
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3486780   -0.5945331   -0.1028229
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7207979   -0.9147473   -0.5268485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4616457   -0.6863319   -0.2369595
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8656761   -1.0993631   -0.6319891
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3715331   -0.5159367   -0.2271295
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.3467602   -1.6796036   -1.0139167
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4301982   -0.8086925   -0.0517039
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.8060305   -1.1309518   -0.4811092
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4290429   -0.7515418   -0.1065441
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7707312   -0.9892923   -0.5521700
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5358946   -0.7855042   -0.2862850
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8895393   -1.0133016   -0.7657769
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5827455   -0.7218358   -0.4436552
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7446527   -0.8571865   -0.6321190
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3333892   -0.4578445   -0.2089340
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7490215   -0.9841002   -0.5139428
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4281661   -0.6148262   -0.2415060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8163228   -0.8807957   -0.7518499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3712878   -0.4471629   -0.2954126


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1419285   -0.5645055    0.2806485
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1916909   -0.3312655   -0.0521162
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2843983   -0.5346560   -0.0341407
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4430685   -0.7484145   -0.1377224
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.3556922   -0.5727072   -0.1386771
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0942161   -0.1669677   -0.0214645
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1270400   -0.3015941    0.0475140
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2902151   -0.4903160   -0.0901143
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3992857   -0.9909826    0.1924112
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0526542   -0.0851347   -0.0201737
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0125784   -0.0166986   -0.0084582
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0392776   -0.0516088   -0.0269463
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3634762   -0.5845859   -0.1423665
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3203036   -0.4005971   -0.2400100
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3346206   -0.4063242   -0.2629170
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4548449   -0.4976074   -0.4120825
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3029694   -0.6021556   -0.0037832
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1209352   -0.2438412    0.0019708
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2887460   -0.4855124   -0.0919795
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5374414   -0.7394839   -0.3353989
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2293752   -0.4217073   -0.0370431
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1075294   -0.1865158   -0.0285430
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1925364   -0.2961831   -0.0888897
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.3167422   -0.3615387   -0.2719456
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4856382   -0.6918616   -0.2794149
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4683890   -0.6560889   -0.2806891
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4137854   -0.5602007   -0.2673701
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3277082   -0.4751142   -0.1803021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1958288   -0.2341927   -0.1574649
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0760608   -0.0988523   -0.0532693
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2535780   -0.5579337    0.0507776
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0173435   -0.0212931   -0.0133938
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0903638   -0.1046214   -0.0761063
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5673490   -0.7562731   -0.3784249
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4351008   -0.5146144   -0.3555873
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4261517   -0.5063735   -0.3459299
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1931163   -0.2491837   -0.1370488
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5891235   -0.6312061   -0.5470410
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.4869768   -0.7826386   -0.1913151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0841657   -0.2304228    0.0620914
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4096706   -0.6340398   -0.1853015
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5804825   -0.8011719   -0.3597930
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4493386   -0.6722557   -0.2264216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0896966   -0.1684576   -0.0109356
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2214434   -0.3366240   -0.1062628
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6950044   -0.9129056   -0.4771033
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4375302   -0.5975203   -0.2775401
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5165331   -0.6659943   -0.3670718
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0797337   -0.1029628   -0.0565046
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0236925   -0.0358939   -0.0114911
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1474124   -0.2207344   -0.0740903
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6233253   -0.8119911   -0.4346594
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5383022   -0.6199660   -0.4566383
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4714141   -0.5564685   -0.3863596
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2175635   -0.2841656   -0.1509614
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5767908   -0.6312197   -0.5223619
