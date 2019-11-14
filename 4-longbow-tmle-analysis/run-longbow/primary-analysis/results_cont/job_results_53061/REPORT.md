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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_impsan

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
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             7      12
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              0      12
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         5      12
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          4059   26547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          15764   26547
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      6724   26547
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2650   16703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9762   16703
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4291   16703
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1306    8532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5029    8532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2197    8532


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

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/0d156871-8760-4869-8544-625359a2f7b8/8a80c2f2-0f5d-4f07-bf4e-f3b2608b433d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0d156871-8760-4869-8544-625359a2f7b8/8a80c2f2-0f5d-4f07-bf4e-f3b2608b433d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0d156871-8760-4869-8544-625359a2f7b8/8a80c2f2-0f5d-4f07-bf4e-f3b2608b433d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8113740   -1.3798156   -0.2429324
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.2187751   -1.3828352   -1.0547149
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8674134   -1.1071730   -0.6276538
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.2997157   -0.5709613   -0.0284702
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.9363255   -1.5398993   -0.3327517
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.9155120   -1.7228154   -0.1082086
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.8508595   -1.6064185   -0.0953004
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.3839534   -1.7879624   -0.9799443
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8438041   -1.3857210   -0.3018871
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3616667   -0.9392632    0.2159299
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0115385   -1.4603724   -0.5627046
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.9650000   -1.7501399   -0.1798601
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.5141789   -0.7848560   -0.2435018
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.0209568   -1.1783867   -0.8635270
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -0.9764871   -1.1920508   -0.7609234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.4693110   -0.6848067   -0.2538153
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.8973853   -1.9143833    0.1196127
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.9023580   -1.2998534   -0.5048626
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.9950456   -1.2836699   -0.7064212
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.2159891   -1.5508606   -0.8811176
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.2720216   -1.7771812   -0.7668620
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1549350   -1.2883677   -1.0215022
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7469022   -1.8703341   -1.6234703
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.5139478   -1.6821758   -1.3457199
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5567846   -0.7617694   -0.3517999
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.0712589   -1.1865430   -0.9559747
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8650495   -1.0520585   -0.6780404
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5949249   -0.7758395   -0.4140104
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.0397150   -1.1383260   -0.9411040
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7596369   -0.9202701   -0.5990036
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.6214059   -0.8158830   -0.4269289
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.0314819   -1.1192264   -0.9437374
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.8241523   -0.9716754   -0.6766293
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 1.3399053    1.1801109    1.4996998
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                 1.0041578    0.8998603    1.1084553
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 1.0132489    0.8178779    1.2086200
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4378850   -0.4652613   -0.4105087
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7044498   -0.8120232   -0.5968764
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6051331   -0.6667007   -0.5435654
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.5251509    0.2870656    0.7632362
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.0277858   -0.1277458    0.0721742
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.4111586    0.2207790    0.6015382
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.2684107   -0.3642868   -0.1725346
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.8359882   -0.9153500   -0.7566264
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5804949   -0.6794934   -0.4814964
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0722526   -0.0057965    0.1503018
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.4288451   -0.4846910   -0.3729993
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.1597565   -0.2323994   -0.0871135
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.6227708   -0.6808912   -0.5646504
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.4046746   -1.4341357   -1.3752136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.9612657   -1.0086546   -0.9138769
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8507444   -1.1805750   -0.5209137
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3741566   -1.5286159   -1.2196973
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9024698   -1.0912070   -0.7137326
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1711707   -0.0189391    0.3612806
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3092190   -0.5560524   -0.0623855
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1903252   -0.2099842    0.5906346
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.8962817   -1.1066609   -0.6859024
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4646886   -1.6461147   -1.2832624
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0348979   -1.2410134   -0.8287824
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0765587   -0.2890833    0.1359659
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7965865   -0.9441670   -0.6490060
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4303428   -0.6445478   -0.2161378
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1079846   -1.3238923   -0.8920769
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4557837   -1.6063519   -1.3052156
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2270993   -1.4462262   -1.0079725
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9689245   -1.1147461   -0.8231030
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5283572   -1.9652934   -1.0914210
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2885917   -1.6279666   -0.9492168
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1784751   -1.3269331   -1.0300172
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8469128   -2.1433988   -1.5504267
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4368841   -1.6908409   -1.1829273
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.0874404   -1.1652226   -1.0096583
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7704062   -1.9070800   -1.6337324
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4776081   -1.6889540   -1.2662622
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.4238364   -1.6475777   -1.2000951
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1414383   -2.2860835   -1.9967931
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7495266   -1.9796119   -1.5194413
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9259942   -1.1349311   -0.7170572
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6603918   -1.7712358   -1.5495478
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1512148   -1.3324873   -0.9699424
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6783944   -0.8421792   -0.5146097
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2904937   -1.3873493   -1.1936382
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.0124403   -1.1549507   -0.8699298
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8844351   -1.0493485   -0.7195218
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3528795   -1.4445862   -1.2611728
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0898331   -1.2376553   -0.9420109
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3464758   -0.4084376   -0.2845139
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9701234   -1.0856373   -0.8546094
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7780365   -0.8802340   -0.6758389
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8401904   -0.8933983   -0.7869825
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4916698   -1.7643339   -1.2190058
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2449999   -1.3806369   -1.1093628
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3515475   -1.6950883   -1.0080068
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6316507   -1.7994188   -1.4638825
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.5247689   -1.7793931   -1.2701447
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1331697    0.0399055    0.2264339
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.5093766   -0.6044792   -0.4142739
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.2632415   -0.3863109   -0.1401721
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.7889923   -0.8195177   -0.7584670
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5552030   -1.6645160   -1.4458900
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.1062461   -1.1743920   -1.0381002
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2234520   -1.4293041   -1.0175999
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9783552   -2.0602212   -1.8964892
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6005211   -1.7352433   -1.4657988
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4947002   -0.5882388   -0.4011616
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2262218   -1.3043339   -1.1481098
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.8996680   -0.9931004   -0.8062355
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7167411   -0.8059513   -0.6275309
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3795804   -1.4373673   -1.3217934
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0217244   -1.0981898   -0.9452591
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4671197   -1.5550583   -1.3791812
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1966233   -2.3669258   -2.0263209
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.8115637   -1.9494045   -1.6737229
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7580251   -0.8047144   -0.7113358
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.5746299   -1.6004912   -1.5487686
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1518372   -1.1885825   -1.1150918
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.4504770   -1.7667266   -1.1342274
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.2067863   -2.3622439   -2.0513288
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5599024   -1.7992468   -1.3205581
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0934901   -0.1426846    0.3296647
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0221709   -0.3143774    0.2700356
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.1077255   -0.5438922    0.3284412
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4564668   -1.7141178   -1.1988157
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1519603   -2.3382107   -1.9657100
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7727936   -1.9684466   -1.5771407
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7725312   -1.0140331   -0.5310294
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5929578   -1.7428184   -1.4430972
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.1332977   -1.3727713   -0.8938240
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.2650931   -1.5297245   -1.0004618
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9687315   -2.1203855   -1.8170775
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6156280   -1.8520547   -1.3792012
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5565277   -1.7098445   -1.4032109
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9010402   -2.3316851   -1.4703953
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8157817   -2.2507414   -1.3808220
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4297202   -2.5977959   -2.2616444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1853179   -3.4825583   -2.8880775
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7356713   -3.0263362   -2.4450064
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5291516   -1.7689279   -1.2893753
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.5159866   -2.6379457   -2.3940275
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9944135   -2.1979532   -1.7908737
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1556913   -1.3370254   -0.9743572
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.8104973   -1.9169905   -1.7040041
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.5139069   -1.6840499   -1.3437638
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8978509   -1.0596303   -0.7360716
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6451010   -1.7571369   -1.5330651
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3792862   -1.5396747   -1.2188977
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.5044092   -1.5611890   -1.4476294
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.3482678   -2.5920604   -2.1044752
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8636895   -1.9984061   -1.7289730
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1075997   -0.4149056    0.1997062
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.5085534   -1.6119647   -1.4051422
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5621203   -0.8363992   -0.2878415
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4760368   -1.5447505   -1.4073232
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2669074   -2.4779247   -2.0558900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.9635461   -2.1317461   -1.7953460
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.3623863   -2.5631133   -2.1616593
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.1385301   -3.2161666   -3.0608936
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9291887   -3.0743884   -2.7839889
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.5335060   -1.6306254   -1.4363866
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.4228076   -2.4997854   -2.3458299
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -2.1171321   -2.2171523   -2.0171119
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9548259   -2.0499869   -1.8596648
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6799774   -2.7415159   -2.6184390
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2750748   -2.3566226   -2.1935270
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6747107   -1.7729276   -1.5764938
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4226374   -2.6460062   -2.1992685
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0769418   -2.2403197   -1.9135640
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.4463901   -1.5066165   -1.3861637
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.2594464   -2.2912335   -2.2276594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8164085   -1.8621583   -1.7706587


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
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3274390    1.1683164    1.4865616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4765410   -0.5009545   -0.4521274
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1727476   -1.2008924   -1.1446028
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0733534   -1.2031913   -0.9435155
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3364066   -1.3594671   -1.3133462
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0196953   -2.0474028   -1.9919877


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4074010   -0.9970818    0.1822797
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0560394   -0.6767220    0.5646433
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.6366097   -1.3097554    0.0365359
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.6157963   -1.4729311    0.2413386
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5330939   -1.3892932    0.3231053
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0070554   -0.9309838    0.9450946
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.6498718   -1.3813563    0.0816128
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.6033333   -1.5780448    0.3713782
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.5067779   -0.8198292   -0.1937267
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.4623082   -0.8084398   -0.1161766
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.4280742   -1.4698904    0.6137420
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.4330470   -0.8872616    0.0211677
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.2209435   -0.6657365    0.2238495
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2769760   -0.8600787    0.3061266
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5919672   -0.7394678   -0.4444666
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3590128   -0.6230130   -0.0950127
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.5144742   -0.7501489   -0.2787995
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.3082648   -0.5874925   -0.0290372
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.4447901   -0.6504924   -0.2390877
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1647119   -0.4065910    0.0771672
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4100760   -0.6240148   -0.1961372
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2027464   -0.4466674    0.0411746
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.3357475   -0.4967391   -0.1747559
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3266564   -0.4498226   -0.2034902
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2665648   -0.3775834   -0.1555462
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1672480   -0.2346356   -0.0998605
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.5529367   -0.8112824   -0.2945911
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.1139923   -0.4190434    0.1910588
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.5675775   -0.6921128   -0.4430422
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3120842   -0.4496049   -0.1745635
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5010978   -0.5970117   -0.4051838
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2320091   -0.3386039   -0.1254142
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.7819039   -0.8436492   -0.7201585
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3384949   -0.4055003   -0.2714896
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.5234123   -0.8877292   -0.1590953
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0517254   -0.4320147    0.3285639
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4803897   -0.7923811   -0.1683983
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0191545   -0.4245527    0.4628617
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5684069   -0.8473097   -0.2895040
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1386162   -0.4338300    0.1565976
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7200278   -0.9790757   -0.4609798
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3537841   -0.6563120   -0.0512561
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3477991   -0.6122616   -0.0833367
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1191147   -0.4274320    0.1892026
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5594327   -1.0204851   -0.0983802
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3196672   -0.6885615    0.0492272
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6684377   -1.0003577   -0.3365176
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2584090   -0.5528492    0.0360313
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6829658   -0.8030114   -0.5629202
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3901677   -0.6273099   -0.1530254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7176019   -0.9843127   -0.4508911
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3256902   -0.6470999   -0.0042805
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7343976   -0.9710083   -0.4977870
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2252207   -0.5029833    0.0525420
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6120993   -0.8024282   -0.4217704
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3340458   -0.5511869   -0.1169047
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4684444   -0.6570826   -0.2798061
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2053980   -0.4270121    0.0162161
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6236476   -0.7548730   -0.4924222
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4315607   -0.5510327   -0.3120887
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6514794   -0.9293809   -0.3735779
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4048095   -0.5505393   -0.2590796
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.2801031   -0.6622888    0.1020826
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1732214   -0.6003724    0.2539297
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6425462   -0.7469240   -0.5381684
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3964112   -0.5127544   -0.2800679
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7662107   -0.8796991   -0.6527223
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3172538   -0.3919425   -0.2425651
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7549032   -0.9763318   -0.5334746
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3770691   -0.6229801   -0.1311580
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.7315216   -0.8530552   -0.6099880
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.4049677   -0.5370777   -0.2728578
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6628393   -0.7691092   -0.5565694
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3049833   -0.4225592   -0.1874074
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7295036   -0.9212843   -0.5377228
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3444440   -0.5078412   -0.1810467
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8166048   -0.8667239   -0.7664857
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3938121   -0.4514912   -0.3361330
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.7563093   -1.1092650   -0.4033537
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1094254   -0.5067413    0.2878905
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1156609   -0.4932837    0.2619618
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2012155   -0.6986261    0.2961951
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6954936   -1.0126760   -0.3783111
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3163269   -0.6405714    0.0079176
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8204266   -1.1057796   -0.5350736
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3607664   -0.7012912   -0.0202417
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.7036384   -1.0090617   -0.3982151
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3505348   -0.7060499    0.0049803
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3445124   -0.8027299    0.1137051
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2592540   -0.7211894    0.2026814
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7555977   -1.0975794   -0.4136160
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3059512   -0.6425002    0.0305979
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9868350   -1.2562977   -0.7173723
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4652619   -0.7799870   -0.1505368
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6548060   -0.8651582   -0.4444538
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3582155   -0.6069109   -0.1095202
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7472500   -0.9441910   -0.5503091
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4814353   -0.7094448   -0.2534257
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.8438586   -1.0942938   -0.5934233
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3592803   -0.5054276   -0.2131330
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.4009538   -1.7407395   -1.0611680
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4545207   -0.8584474   -0.0505939
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7908705   -1.0129430   -0.5687981
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.4875092   -0.6694346   -0.3055839
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7761438   -0.9913392   -0.5609485
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5668024   -0.8144756   -0.3191291
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8893016   -1.0132481   -0.7653552
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5836261   -0.7230438   -0.4442084
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.7251516   -0.8385679   -0.6117352
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3202489   -0.4456370   -0.1948608
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7479266   -0.9930425   -0.5028108
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4022311   -0.5928178   -0.2116445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.8130564   -0.8779714   -0.7481414
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3700185   -0.4465329   -0.2935040


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2665089   -0.8019359    0.2689182
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.3887218   -0.6902940   -0.0871495
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3793731   -0.9870253    0.2282791
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4916667   -1.0510427    0.0677093
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.3909538   -0.6301849   -0.1517227
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1014810   -0.2182888    0.0153267
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1414299   -0.3198417    0.0369820
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2888800   -0.3730255   -0.2047344
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.3742351   -0.5617158   -0.1867544
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.2975896   -0.4564843   -0.1386948
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2875104   -0.4587431   -0.1162777
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0124663   -0.0165804   -0.0083522
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0386559   -0.0509794   -0.0263325
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3916271   -0.6131470   -0.1701072
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3289117   -0.4098477   -0.2479758
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3213018   -0.3926526   -0.2499510
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5499768   -0.6005746   -0.4993790
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3547466   -0.6748768   -0.0346165
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1201500   -0.2441536    0.0038536
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3095197   -0.5050163   -0.1140232
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.4845006   -0.6911146   -0.2778866
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2205632   -0.4187911   -0.0223353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1044289   -0.1833190   -0.0255387
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1902698   -0.2943715   -0.0861682
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.3194488   -0.3662980   -0.2725996
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4643694   -0.6722781   -0.2564608
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4813879   -0.6723355   -0.2904403
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4111357   -0.5560266   -0.2662448
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3142432   -0.4634863   -0.1650001
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1959796   -0.2344918   -0.1574673
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0757399   -0.0985739   -0.0529059
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2083731   -0.5239950    0.1072488
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0173886   -0.0214800   -0.0132972
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0913154   -0.1053850   -0.0772458
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5881705   -0.7797153   -0.3966256
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4307148   -0.5100465   -0.3513832
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4238313   -0.5040139   -0.3436486
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1906554   -0.2471057   -0.1342051
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5783815   -0.6198174   -0.5369457
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.5284381   -0.8391889   -0.2176872
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0863895   -0.2377159    0.0649370
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4266527   -0.6548882   -0.1984172
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5393328   -0.7729366   -0.3057289
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4893845   -0.7223670   -0.2564019
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0908868   -0.1712490   -0.0105246
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2154434   -0.3318495   -0.0990372
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6899063   -0.9081093   -0.4717033
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4445686   -0.6058336   -0.2833037
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5434137   -0.6958063   -0.3910210
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0785549   -0.1018177   -0.0552921
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0246184   -0.0369523   -0.0122844
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1221255   -0.1561218   -0.0881291
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6339518   -0.8198647   -0.4480388
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5375660   -0.6192556   -0.4558765
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4592887   -0.5449296   -0.3736477
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2104713   -0.2780623   -0.1428802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5733052   -0.6281445   -0.5184659
