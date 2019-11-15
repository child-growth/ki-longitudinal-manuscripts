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

agecat      studyid                    country                        mhtcm           n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        55     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm            32      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             20      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        12      64
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            12      43
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             20      43
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        11      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             6      27
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             13      27
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         8      27
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            48     226
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            131     226
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        47     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm            80     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             10     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        11     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            72     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        29     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           467    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm            385    1135
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       283    1135
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           111     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm            356     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       141     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           110     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm            286     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       121     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            418     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       177     729
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1187    1431
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1431
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       193    1431
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13206   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            125   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       398   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7732    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            560    9705
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1413    9705
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            545     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           530    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm            763    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       481    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3317   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          13436   22356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5603   22356
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            330     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     603
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            445    7394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     577
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
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             98    1374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           126     994
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            659     994
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       209     994
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0b2acaf4-2a67-432a-827c-0277ecab0f52/7c4e4c31-e0d0-49e2-85e2-0a7b2dda948d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0b2acaf4-2a67-432a-827c-0277ecab0f52/7c4e4c31-e0d0-49e2-85e2-0a7b2dda948d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0b2acaf4-2a67-432a-827c-0277ecab0f52/7c4e4c31-e0d0-49e2-85e2-0a7b2dda948d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8531876   -1.4391971   -0.2671781
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.2115050   -1.3758969   -1.0471130
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8194601   -1.0697541   -0.5691662
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.3893539   -0.6482380   -0.1304699
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -1.0485545   -1.6279114   -0.4691976
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.9468490   -1.8258612   -0.0678369
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6609838   -1.4172515    0.0952838
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.3453878   -1.7289080   -0.9618675
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.6835944   -1.3026852   -0.0645037
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4559755   -0.7182927   -0.1936583
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.0130274   -1.1729093   -0.8531455
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.9283552   -1.1412396   -0.7154707
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.4715325   -0.6859903   -0.2570746
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.8282594   -1.8500039    0.1934851
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.8963186   -1.3424370   -0.4502001
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.9797806   -1.2642525   -0.6953087
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.2283982   -1.5682678   -0.8885286
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.3836886   -1.8600437   -0.9073334
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1549350   -1.2883677   -1.0215022
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7469022   -1.8703341   -1.6234703
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.5139478   -1.6821758   -1.3457199
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5463989   -0.7553210   -0.3374769
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0704185   -1.1856680   -0.9551690
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8693957   -1.0530104   -0.6857809
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6530890   -0.8326029   -0.4735751
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.0494237   -1.1479644   -0.9508829
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7861139   -0.9424917   -0.6297361
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.6243607   -0.8217499   -0.4269715
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.0329118   -1.1205402   -0.9452834
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.8255897   -0.9735598   -0.6776196
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.1046986    0.0336049    0.1757923
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3574313   -0.8301923    0.1153296
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.1742621   -0.3618580    0.0133337
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 1.3398467    1.1799842    1.4997093
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.9960507    0.8931308    1.0989707
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.9984967    0.8090280    1.1879654
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4373043   -0.4646799   -0.4099288
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.6979429   -0.8056837   -0.5902020
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6015211   -0.6631781   -0.5398641
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.4906706    0.2488005    0.7325407
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0311866   -0.1309974    0.0686241
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4051447    0.2208959    0.5893934
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2735577   -0.3696615   -0.1774540
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.8341554   -0.9134464   -0.7548644
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5811354   -0.6805611   -0.4817098
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0778796   -0.0005001    0.1562594
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.4347241   -0.4904761   -0.3789721
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1544275   -0.2264209   -0.0824341
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1387916   -1.1824271   -1.0951561
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.7668245   -1.7893298   -1.7443193
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.4314665   -1.4651859   -1.3977471
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8981987   -1.2413683   -0.5550291
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3708889   -1.5240081   -1.2177697
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9019330   -1.0916828   -0.7121833
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1783494   -0.0122811    0.3689799
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3108326   -0.5500363   -0.0716288
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1644661   -0.2234955    0.5524277
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.8669497   -1.0788825   -0.6550169
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4490118   -1.6278996   -1.2701240
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0461293   -1.2502627   -0.8419959
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0501718   -0.2587471    0.1584035
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7990771   -0.9467034   -0.6514508
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4313681   -0.6462090   -0.2165272
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.0812477   -1.3032090   -0.8592864
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4426821   -1.5932017   -1.2921624
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2136864   -1.4270572   -1.0003155
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9656495   -1.1109079   -0.8203911
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5221977   -1.9398783   -1.1045171
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2448680   -1.5980057   -0.8917303
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1834833   -1.3328872   -1.0340794
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8516039   -2.1486868   -1.5545209
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4537511   -1.7086263   -1.1988759
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.0874404   -1.1652226   -1.0096583
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7704062   -1.9070800   -1.6337324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4776081   -1.6889540   -1.2662622
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.4396202   -1.6662028   -1.2130376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1392032   -2.2829018   -1.9955046
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7582722   -1.9880214   -1.5285231
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9338522   -1.1457994   -0.7219051
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6577049   -1.7681164   -1.5472933
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1536767   -1.3321197   -0.9752337
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6662639   -0.8314331   -0.5010946
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2872188   -1.3841965   -1.1902411
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9925515   -1.1345288   -0.8505742
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8913583   -1.0548412   -0.7278754
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3556432   -1.4473748   -1.2639115
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0977056   -1.2435831   -0.9518282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3462199   -0.4082749   -0.2841649
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9674265   -1.0823998   -0.8524533
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7890565   -0.8908766   -0.6872365
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8402572   -0.8934297   -0.7870848
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4898633   -1.7591611   -1.2205656
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2527272   -1.3882126   -1.1172418
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3283193   -1.6772928   -0.9793459
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6424894   -1.8109869   -1.4739920
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4982436   -1.7498308   -1.2466564
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1331057    0.0397977    0.2264138
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5133211   -0.6073783   -0.4192640
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.2623806   -0.3857048   -0.1390565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7893397   -0.8198649   -0.7588145
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5535669   -1.6635390   -1.4435948
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1015215   -1.1698581   -1.0331850
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2292652   -1.4371930   -1.0213375
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9801508   -2.0621299   -1.8981718
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6099311   -1.7484019   -1.4714603
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4896147   -0.5833686   -0.3958607
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2357593   -1.3139158   -1.1576028
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9012279   -0.9951557   -0.8073001
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7144162   -0.8037468   -0.6250855
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3808858   -1.4385699   -1.3232017
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0143398   -1.0900874   -0.9385922
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4643174   -1.5522208   -1.3764140
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1957278   -2.3665482   -2.0249074
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.7896279   -1.9285577   -1.6506981
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7352160   -0.7819459   -0.6884860
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.5527453   -1.5785737   -1.5269170
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1281702   -1.1649540   -1.0913865
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.6058213   -1.9089837   -1.3026588
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.2083672   -2.3631046   -2.0536297
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.6181738   -1.8390051   -1.3973425
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0931735   -0.1418395    0.3281864
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0090530   -0.3024733    0.2843674
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0055595   -0.4422826    0.4311636
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4530857   -1.7182282   -1.1879433
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1355954   -2.3249106   -1.9462801
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.8005110   -1.9939181   -1.6071039
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7471556   -0.9751491   -0.5191620
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5890059   -1.7394664   -1.4385455
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0970610   -1.3324644   -0.8616577
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.2743082   -1.5442724   -1.0043440
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9444130   -2.0991351   -1.7896910
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6018713   -1.8414794   -1.3622632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5592470   -1.7117791   -1.4067149
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9658765   -2.4064598   -1.5252933
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.9662617   -2.4067266   -1.5257967
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4300478   -2.5976803   -2.2624153
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1945873   -3.4869710   -2.9022036
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7459025   -3.0375791   -2.4542260
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5232623   -1.7699338   -1.2765909
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5125687   -2.6350621   -2.3900753
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -2.0049118   -2.2079371   -1.8018865
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1456774   -1.3289276   -0.9624271
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.8040672   -1.9109946   -1.6971398
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.4883219   -1.6602360   -1.3164078
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8989726   -1.0621816   -0.7357635
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6438268   -1.7558071   -1.5318464
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3787512   -1.5391142   -1.2183882
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.5043418   -1.5610142   -1.4476694
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.4200373   -2.6695657   -2.1705090
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8779398   -2.0129508   -1.7429288
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1081542   -0.4153012    0.1989928
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.4508033   -1.5487202   -1.3528864
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5840329   -0.8456397   -0.3224261
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4754830   -1.5442560   -1.4067101
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2728544   -2.4821520   -2.0635569
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9590835   -2.1268240   -1.7913430
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.3621322   -2.5635642   -2.1607001
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.1404104   -3.2179745   -3.0628463
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9261854   -3.0712721   -2.7810988
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.5327753   -1.6300837   -1.4354669
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.4210696   -2.4977898   -2.3443493
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -2.1137996   -2.2135859   -2.0140132
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9468682   -2.0416022   -1.8521343
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6835286   -2.7448987   -2.6221585
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2745504   -2.3562940   -2.1928068
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6679115   -1.7650423   -1.5707807
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4194647   -2.6359257   -2.2030037
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.1012639   -2.2620283   -1.9404995
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.4394691   -1.4992578   -1.3796805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.2522150   -2.2838549   -2.2205751
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8091638   -1.8548881   -1.7634394


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5707921   -0.7685593   -0.3730248
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9089163   -0.9806324   -0.8372002
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0474004   -0.0188757    0.1136765
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3274390    1.1683164    1.4865616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4765410   -0.5009545   -0.4521274
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893474   -1.6086366   -1.5700581
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8803077   -0.9076731   -0.8529423
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5829641   -1.6348134   -1.5311148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5981623   -1.6603107   -1.5360139
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9963380   -3.0630990   -2.9295770
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0710720   -2.1255079   -2.0166362
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0137632   -2.0415122   -1.9860142


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3583173   -0.9676251    0.2509904
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0337275   -0.6050133    0.6724683
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.6592005   -1.3017722   -0.0166288
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.5574951   -1.4753639    0.3603737
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6844039   -1.5446132    0.1758054
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0226106   -1.0363102    0.9910891
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.5570519   -0.8636231   -0.2504807
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.4723796   -0.8117693   -0.1329900
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3567270   -1.4018853    0.6884314
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.4247861   -0.9212416    0.0716694
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.2486176   -0.6940651    0.1968299
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4039080   -0.9590178    0.1512018
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5919672   -0.7394678   -0.4444666
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3590128   -0.6230130   -0.0950127
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5240195   -0.7631387   -0.2849003
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3229967   -0.6022542   -0.0437392
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.3963347   -0.6009399   -0.1917295
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1330249   -0.3709032    0.1048534
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4085511   -0.6251303   -0.1919719
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2012290   -0.4477035    0.0452456
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.4621299   -0.9403483    0.0160884
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2789607   -0.4800641   -0.0778573
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3437960   -0.5049419   -0.1826502
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3413500   -0.4573621   -0.2253380
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2606385   -0.3718237   -0.1494534
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1642168   -0.2316659   -0.0967676
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5218573   -0.7837677   -0.2599469
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0855259   -0.3882189    0.2171670
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.5605977   -0.6853791   -0.4358163
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3075777   -0.4456368   -0.1695185
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5126038   -0.6087311   -0.4164764
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2323071   -0.3387337   -0.1258806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6280329   -0.6758835   -0.5801823
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2926749   -0.3449659   -0.2403839
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4726902   -0.8483301   -0.0970503
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0037344   -0.3958556    0.3883868
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4891820   -0.7952879   -0.1830761
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0138833   -0.4473214    0.4195548
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5820621   -0.8610396   -0.3030846
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1791796   -0.4744453    0.1160861
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7489053   -1.0046429   -0.4931678
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3811963   -0.6806551   -0.0817376
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3614344   -0.6294762   -0.0933926
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1324387   -0.4406548    0.1757774
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5565483   -0.9989580   -0.1141386
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2792185   -0.6609814    0.1025443
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6681205   -1.0010726   -0.3351684
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2702678   -0.5666204    0.0260849
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6829658   -0.8030114   -0.5629202
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3901677   -0.6273099   -0.1530254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.6995830   -0.9689712   -0.4301948
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3186520   -0.6417291    0.0044251
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7238526   -0.9629235   -0.4847817
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2198245   -0.4969080    0.0572590
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6209550   -0.8125426   -0.4293673
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3262876   -0.5442169   -0.1083583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4642848   -0.6514222   -0.2771475
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2063473   -0.4253455    0.0126509
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6212066   -0.7519361   -0.4904771
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4428366   -0.5619873   -0.3236859
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6496061   -0.9241800   -0.3750322
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4124700   -0.5580518   -0.2668881
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3141701   -0.7019947    0.0736545
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1699243   -0.6003975    0.2605490
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6464268   -0.7504432   -0.5424105
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3954864   -0.5115762   -0.2793965
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7642272   -0.8783672   -0.6500872
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3121818   -0.3870672   -0.2372965
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7508856   -0.9739798   -0.5277914
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3806659   -0.6298922   -0.1314396
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.7461446   -0.8682324   -0.6240568
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4116132   -0.5443310   -0.2788955
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6664696   -0.7727752   -0.5601640
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2999236   -0.4170891   -0.1827581
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7314104   -0.9240442   -0.5387766
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3253105   -0.4900180   -0.1606030
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8175294   -0.8676517   -0.7674071
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3929543   -0.4506765   -0.3352320
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.6025459   -0.9437972   -0.2612946
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0123525   -0.3863873    0.3616822
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1022264   -0.4782741    0.2738213
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0987329   -0.5961144    0.3986486
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6825097   -1.0097020   -0.3553173
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3474253   -0.6769182   -0.0179324
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8418503   -1.1151803   -0.5685203
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3499054   -0.6782337   -0.0215772
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6701048   -0.9815018   -0.3587078
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3275630   -0.6889000    0.0337739
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.4066295   -0.8736872    0.0604282
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.4070146   -0.8718086    0.0577793
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7645395   -1.1021081   -0.4269709
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3158548   -0.6529486    0.0212391
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9893063   -1.2649349   -0.7136778
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4816495   -0.8008418   -0.1624571
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6583898   -0.8706284   -0.4461512
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3426445   -0.5938900   -0.0913990
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7448542   -0.9427584   -0.5469500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4797786   -0.7087372   -0.2508201
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.9156955   -1.1716096   -0.6597814
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3735980   -0.5200295   -0.2271665
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.3426491   -1.6791036   -1.0061946
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4758787   -0.8788707   -0.0728867
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7973714   -1.0178606   -0.5768822
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4836005   -0.6651057   -0.3020953
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7782782   -0.9941392   -0.5624173
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5640533   -0.8123275   -0.3157790
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8882942   -1.0121136   -0.7644749
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5810243   -0.7203875   -0.4416611
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7366604   -0.8496196   -0.6237012
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3276821   -0.4528636   -0.2025007
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7515532   -0.9888335   -0.5142729
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4333524   -0.6213331   -0.2453717
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8127458   -0.8770414   -0.7484503
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3696946   -0.4454356   -0.2939536


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2246953   -0.7768321    0.3274415
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.2990836   -0.5827923   -0.0153748
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5692487   -1.2076036    0.0691062
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4491572   -0.6815283   -0.2167862
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0992596   -0.2145323    0.0160130
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1566948   -0.3327734    0.0193838
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2888800   -0.3730255   -0.2047344
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3846208   -0.5755777   -0.1936638
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.2394255   -0.3967967   -0.0820544
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2845556   -0.4585659   -0.1105454
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0572982   -0.0903360   -0.0242604
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0124077   -0.0165577   -0.0082578
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0392366   -0.0515463   -0.0269269
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3571468   -0.5820699   -0.1322237
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3237647   -0.4049624   -0.2425670
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3269288   -0.3985301   -0.2553275
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4505558   -0.4903393   -0.4107722
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3067944   -0.6393477    0.0257589
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1307737   -0.2561903   -0.0053570
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3390078   -0.5374206   -0.1405949
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5114101   -0.7141182   -0.3087021
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2428547   -0.4456189   -0.0400904
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1070949   -0.1860682   -0.0281215
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1852616   -0.2897304   -0.0807928
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.3194488   -0.3662980   -0.2725996
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4485856   -0.6596621   -0.2375091
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4735298   -0.6666941   -0.2803655
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4232663   -0.5695874   -0.2769451
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3073200   -0.4551936   -0.1594464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1962354   -0.2346922   -0.1577786
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0756731   -0.0984780   -0.0528682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2316013   -0.5519699    0.0887673
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0173246   -0.0213986   -0.0132507
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0909680   -0.1050520   -0.0768839
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5823573   -0.7763376   -0.3883770
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4358004   -0.5153802   -0.3562206
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4261562   -0.5064478   -0.3458645
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1934577   -0.2503745   -0.1365410
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5786895   -0.6201307   -0.5372483
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3725749   -0.6720613   -0.0730886
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0870591   -0.2364470    0.0623289
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4313833   -0.6674631   -0.1953036
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5604321   -0.7819046   -0.3389597
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4781627   -0.7156101   -0.2407154
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0839759   -0.1629357   -0.0050161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2155130   -0.3315986   -0.0994273
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6957955   -0.9204148   -0.4711763
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4545826   -0.6176218   -0.2915435
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5422920   -0.6957141   -0.3888699
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0786223   -0.1017893   -0.0554553
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0240639   -0.0362568   -0.0118709
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1226793   -0.1567047   -0.0886539
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6342059   -0.8208010   -0.4476108
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5382967   -0.6200863   -0.4565070
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4672463   -0.5524128   -0.3820798
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2172705   -0.2841132   -0.1504277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5742941   -0.6285797   -0.5200084
