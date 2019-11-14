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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        54     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm            32      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             19      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        10      61
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            11      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             19      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        11      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             6      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             13      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         7      26
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            47     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            127     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        47     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm            80     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              9     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        11     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           432     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm            319     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       241     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           107     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm            333     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       135     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           108     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm            281     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       121     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            404     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       171     704
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             8      13
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              0      13
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         5      13
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            499    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3718   21986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          12451   21986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5817   21986
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           509    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       296    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            75     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       102     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            329     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     602
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12531   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       378   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            440    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            632     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm            791    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       487    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           560    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       778    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2641   16676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9752   16676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4283   16676
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3798    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           267     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           128    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            668    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       210    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           549    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm            776    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       478    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           507    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1239    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       703    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           345     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             92     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       124     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1297    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5016    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2192    8505


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
![](/tmp/462f9175-bcbb-4a37-96ee-c6116163502c/e388b6c9-174e-432f-8526-e1819d96df84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/462f9175-bcbb-4a37-96ee-c6116163502c/e388b6c9-174e-432f-8526-e1819d96df84/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/462f9175-bcbb-4a37-96ee-c6116163502c/e388b6c9-174e-432f-8526-e1819d96df84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9980050   -1.4085140   -0.5874959
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.9721415   -1.1554585   -0.7888245
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8691681   -1.2057928   -0.5325433
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.3510366   -0.0438522    0.7459255
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.5493566   -0.0561573    1.1548706
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5341010   -0.7348952    1.8030971
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.0248402   -1.5792639   -0.4704166
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.9233409   -1.4216977   -0.4249842
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.7109135   -1.1406302   -0.2811969
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1622284   -0.4158657    0.0914090
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0537615   -0.2227214    0.1151985
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1072559   -0.1608290    0.3753408
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6529103    0.3798374    0.9259833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.0690089    0.6735138    1.4645040
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.7964419    0.4253267    1.1675572
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6301142   -0.8746517   -0.3855766
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7309327   -0.8889605   -0.5729048
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6821027   -0.8209775   -0.5432279
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.3854595   -1.5965536   -1.1743654
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4212743   -1.5504198   -1.2921287
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1228257   -1.3014989   -0.9441526
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.2284884   -1.4042533   -1.0527236
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.3393720   -1.4434004   -1.2353436
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.2671943   -1.4324901   -1.1018986
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -1.1695691   -1.3664824   -0.9726558
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.2789706   -1.3921015   -1.1658396
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.2322094   -1.4005447   -1.0638740
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -1.1413714   -1.3534492   -0.9292935
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.2525672   -1.3270775   -1.1780568
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -1.1537423   -1.3572428   -0.9502419
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4497292   -0.4840934   -0.4153650
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.8005485   -0.9394768   -0.6616203
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6047452   -0.6850693   -0.5244211
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.4443156   -1.7029213   -1.1857100
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.0225011   -1.1491334   -0.8958688
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9969455   -1.2204457   -0.7734452
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.0471797   -1.1544464   -0.9399129
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.0018863   -1.0884199   -0.9153526
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.8704162   -0.9796845   -0.7611479
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7402494   -0.8405845   -0.6399144
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7418512   -0.8072285   -0.6764739
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7591677   -0.8470734   -0.6712620
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7146306   -0.7502697   -0.6789916
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.7704931   -0.7928335   -0.7481528
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.7298072   -0.7599773   -0.6996372
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2851538   -0.7460798    0.1757722
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1390112   -0.2862327    0.0082103
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0840795   -0.3822813    0.2141222
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0303134    0.8102348    1.2503921
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.7280163    0.3998005    1.0562321
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.0691836    0.6887171    1.4496501
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5909686   -0.8561000   -0.3258373
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6813974   -0.8838502   -0.4789446
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8323292   -1.0534374   -0.6112210
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.3166740    0.0100478    0.6233003
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0633558   -0.1053189    0.2320305
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0152817   -0.2718717    0.3024351
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1259728    0.8428832    1.4090623
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9652400    0.8031794    1.1273006
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1930418    0.9396636    1.4464201
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5114945    0.3311236    0.6918654
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.7472664    0.2641219    1.2304109
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4846475    0.0235311    0.9457640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5301179    0.3627879    0.6974479
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6462856    0.3543483    0.9382229
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.5011814    0.1770201    0.8253427
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.5996139   -0.7754923   -0.4237355
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7222725   -0.8681907   -0.5763542
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6089398   -0.7498437   -0.4680360
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0035870   -1.2666840   -0.7404900
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9865389   -1.1485177   -0.8245600
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.1200281   -1.3435154   -0.8965407
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5648941   -0.7636582   -0.3661299
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4763662   -0.5928593   -0.3598730
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2827591   -0.4877989   -0.0777192
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0386892   -0.2318247    0.1544463
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.3024062   -0.4093478   -0.1954646
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.1184683   -0.2999627    0.0630260
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1218318   -0.0578993    0.3015628
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0013876   -0.1026018    0.1053769
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0301918   -0.1410018    0.2013853
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0684126    0.0026196    0.1342057
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2144116    0.0814500    0.3473732
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0170832   -0.1023400    0.1365063
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2264874   -0.2846278   -0.1683469
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3382237   -0.6938151    0.0173678
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0277286   -0.1739262    0.1184690
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.2912845   -0.0103408    0.5929097
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0535406   -0.2120248    0.1049436
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1708707   -0.4447425    0.1030011
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5833911    0.5248686    0.6419137
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6483498    0.5592780    0.7374217
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5587926    0.4180219    0.6995634
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2919270    0.2613350    0.3225190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2873141    0.1704458    0.4041825
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3124924    0.2369770    0.3880079
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1161452   -0.0801278    0.3124182
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2241594    0.1344559    0.3138630
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1491578   -0.0020936    0.3004092
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5702256   -0.6707513   -0.4697000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7891941   -0.8692563   -0.7091319
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6131268   -0.7145640   -0.5116896
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2943651   -0.3845875   -0.2041426
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3225602   -0.3803066   -0.2648139
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2355535   -0.3144009   -0.1567061
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4221069    0.3324978    0.5117160
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5778661    0.3909509    0.7647813
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4371320    0.2794197    0.5948444
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5010905   -0.5473924   -0.4547887
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6160288   -0.6403951   -0.5916626
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.5963523   -0.6315611   -0.5611436
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.7964362   -1.2993192   -0.2935532
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8399783   -0.9854469   -0.6945096
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7720208   -1.0242896   -0.5197520
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5641764    0.2593694    0.8689834
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1905954   -0.1215090    0.5026998
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5159010    0.0493194    0.9824825
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6750350   -0.8980350   -0.4520350
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.0903275   -1.2656062   -0.9150489
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9479029   -1.1698521   -0.7259537
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1054711   -0.4009666    0.1900243
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4431521   -0.5938255   -0.2924788
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.2906554   -0.5173925   -0.0639183
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1255645   -0.1214270    0.3725560
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0903840   -0.0774250    0.2581929
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1571780   -0.0814341    0.3957902
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4125985    0.2772704    0.5479265
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.3058649   -0.1312502    0.7429801
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.3636168   -0.0163740    0.7436077
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1271487   -0.0282939    0.2825913
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2636397   -0.5452562    0.0179768
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0622076   -0.2475330    0.3719482
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9172584   -1.1593292   -0.6751876
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9493786   -1.0717087   -0.8270486
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8592262   -1.0821611   -0.6362912
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7002017   -0.9102890   -0.4901143
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9888579   -1.0861567   -0.8915590
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.8115502   -1.0050520   -0.6180484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3659754   -0.5723974   -0.1595534
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7355214   -0.8603854   -0.6106573
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.4912705   -0.6911378   -0.2914031
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8199149   -0.8734120   -0.7664179
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.0497923   -1.3121693   -0.7874153
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6812252   -0.8236765   -0.5387738
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6920047    0.5758496    0.8081598
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5477988    0.3201419    0.7754556
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6756745    0.3495986    1.0017504
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1879256   -1.3134690   -1.0623822
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.3298971   -1.8252605   -0.8345337
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9134407   -1.1399480   -0.6869333
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2861176   -0.4533615   -0.1188738
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.3046769   -0.3729986   -0.2363552
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2441395   -0.3660733   -0.1222057
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4464306   -0.5321226   -0.3607386
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6873389   -0.7561105   -0.6185673
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5320434   -0.6237064   -0.4403803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4548761   -0.5356896   -0.3740625
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7266451   -0.7786487   -0.6746415
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5104078   -0.5776268   -0.4431888
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0166335   -0.1162350    0.0829680
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0805097   -0.2919902    0.1309708
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0858670   -0.2957027    0.1239687
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1622552   -1.2222344   -1.1022760
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3560323   -1.3861371   -1.3259275
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2426977   -1.2853373   -1.2000581


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9526794   -1.0978709   -0.8074880
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6752218   -0.8548888   -0.4955547
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2434730   -1.3276901   -1.1592559
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1428961   -1.3532157   -0.9325766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4906181   -0.5214690   -0.4597672
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7504562   -0.7683419   -0.7325705
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2053991   -0.2588843   -0.1519138
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948466    0.2673139    0.3223793
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5927216   -0.6123027   -0.5731405
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1712534   -1.2800940   -1.0624128
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2986831   -1.3220580   -1.2753083


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0258635   -0.4233938    0.4751207
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1288369   -0.4014973    0.6591710
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.1983200   -0.5248006    0.9214406
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1830643   -1.1414694    1.5075981
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.1014993   -0.6492326    0.8522312
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.3139267   -0.3906156    1.0184690
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.1084669   -0.1968390    0.4137728
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.2694843   -0.1000537    0.6390223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4160986   -0.0655032    0.8977003
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1435316   -0.3189784    0.6060416
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1008185   -0.2742424    0.0726054
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0519886   -0.1836334    0.0796563
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0358148   -0.2835148    0.2118853
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2626338   -0.0140665    0.5393341
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1108835   -0.3151146    0.0933475
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0387059   -0.2802802    0.2028684
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1094015   -0.3357790    0.1169760
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0626403   -0.3214054    0.1961248
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1111958   -0.2892613    0.0668696
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0123710   -0.1149703    0.0902283
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3508193   -0.4940129   -0.2076257
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1550160   -0.2423451   -0.0676869
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.4218145    0.1341979    0.7094312
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.4473702    0.1052182    0.7895221
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0452934   -0.0923242    0.1829110
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1767635    0.0235307    0.3299962
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0016018   -0.1211479    0.1179443
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0189183   -0.1522733    0.1144368
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0558625   -0.0959028   -0.0158222
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0151766   -0.0596799    0.0293266
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1461426   -0.3378964    0.6301815
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2010743   -0.3481962    0.7503447
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3022972   -0.6977288    0.0931345
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0388702   -0.4003126    0.4780530
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0904287   -0.4248134    0.2439559
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2413606   -0.5869594    0.1042383
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2533182   -0.6026648    0.0960283
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3013924   -0.7214996    0.1187149
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1607327   -0.4870545    0.1655891
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0670691   -0.3133513    0.4474894
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.2357719   -0.2835023    0.7550460
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0268470   -0.5268519    0.4731580
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1161677   -0.2194824    0.4518178
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0289365   -0.3930888    0.3352158
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1226586   -0.3024591    0.0571419
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0093260   -0.1992709    0.1806189
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0170482   -0.2941156    0.3282120
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.1164410   -0.4618272    0.2289452
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0885279   -0.1413914    0.3184472
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2821350   -0.0042538    0.5685238
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2637170   -0.4846811   -0.0427529
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0797792   -0.3448275    0.1852691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1204442   -0.3286409    0.0877525
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0916400   -0.3405404    0.1572605
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1459990   -0.0025612    0.2945591
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0513295   -0.1877346    0.0850756
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1117363   -0.4721277    0.2486550
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1987587    0.0416362    0.3558813
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3448250   -0.6854102   -0.0042399
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4621551   -0.8685236   -0.0557867
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0649587   -0.0329372    0.1628546
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0245985   -0.1563974    0.1072003
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0046129   -0.1254198    0.1161940
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0205654   -0.0609175    0.1020483
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1080142   -0.1070657    0.3230941
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0330126   -0.2139288    0.2799540
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2189685   -0.3477473   -0.0901896
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0429012   -0.1855413    0.0997389
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0281952   -0.1352747    0.0788843
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0588116   -0.0610564    0.1786795
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1557592   -0.0518493    0.3633677
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0150252   -0.1673323    0.1973826
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1149383   -0.1652010   -0.0646755
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0952618   -0.1526784   -0.0378451
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0435421   -0.5674299    0.4803457
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0244154   -0.5394180    0.5882487
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3735810   -0.8152396    0.0680777
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0482754   -0.6092759    0.5127250
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.4152926   -0.6998945   -0.1306906
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2728679   -0.5872719    0.0415361
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.3376810   -0.6711693   -0.0041927
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1851843   -0.5599910    0.1896225
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0351805   -0.3342692    0.2639082
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0316136   -0.3120500    0.3752771
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1067335   -0.5647842    0.3513171
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0489816   -0.4530764    0.3551132
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3907884   -0.7134862   -0.0680907
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0649411   -0.4115203    0.2816381
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0321202   -0.3034250    0.2391845
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0580322   -0.2708008    0.3868652
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2886562   -0.5193341   -0.0579783
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1113485   -0.3966422    0.1739452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3695459   -0.6108350   -0.1282568
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1252950   -0.4131168    0.1625267
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2298773   -0.4977309    0.0379763
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1386898   -0.0136399    0.2910195
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1442059   -0.4030270    0.1146152
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0163302   -0.3332988    0.3006385
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.1419715   -0.6535415    0.3695986
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2744850    0.0147560    0.5342140
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0185593   -0.1993488    0.1622303
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0419782   -0.1649290    0.2488853
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2409083   -0.3506508   -0.1311658
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0856128   -0.2112627    0.0400372
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2717690   -0.3680132   -0.1755248
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0555317   -0.1607061    0.0496427
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0638762   -0.2969022    0.1691498
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0692335   -0.3019091    0.1634421
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1937771   -0.2620538   -0.1255004
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0804425   -0.1525967   -0.0082883


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0453255   -0.3566238    0.4472749
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0507667   -0.2604353    0.3619686
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0570354   -0.4250562    0.5391270
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1192420   -0.1112679    0.3497518
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1054083   -0.0537817    0.2645982
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0451076   -0.1267482    0.0365330
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0355378   -0.1570479    0.2281234
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0776096   -0.2331200    0.0779008
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0739039   -0.2522556    0.1044477
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0015248   -0.0053378    0.0022883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0408889   -0.0564291   -0.0253487
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3825242    0.1394977    0.6255507
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0697871   -0.0191188    0.1586929
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0024756   -0.0916644    0.0867132
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0358256   -0.0676948   -0.0039563
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1467582   -0.2880549    0.5815714
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0585909   -0.1972520    0.0800701
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1127193   -0.3493956    0.1239570
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2056289   -0.4883213    0.0770636
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0670818   -0.3176920    0.1835284
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0182110   -0.0733420    0.1097640
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0061035   -0.1038561    0.1160630
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0430166   -0.1429842    0.0569509
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0017955   -0.2394807    0.2358896
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1174903   -0.0661376    0.3011181
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1600179   -0.3294303    0.0093945
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0920695   -0.2561300    0.0719910
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0103631   -0.0315665    0.0522926
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0210883   -0.0032585    0.0454351
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3168761   -0.5992344   -0.0345178
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005964   -0.0049808    0.0037879
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0029196   -0.0114439    0.0172831
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0764552   -0.1077552    0.2606656
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1065858   -0.1902226   -0.0229490
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0005217   -0.0801088    0.0811523
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0294481   -0.0286271    0.0875233
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0916310   -0.1328505   -0.0504115
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0237525   -0.4930226    0.4455176
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1049456   -0.2861831    0.0762919
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2775314   -0.4803120   -0.0747508
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2709762   -0.5437136    0.0017612
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0051167   -0.2240633    0.2138299
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0150344   -0.0855519    0.0554832
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0732001   -0.1802726    0.0338724
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0056793   -0.2132189    0.2245776
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1912343   -0.3718315   -0.0106372
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2443748   -0.4318325   -0.0569171
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0097433   -0.0125708    0.0320573
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0039352   -0.0138123    0.0059420
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0166722   -0.0527372    0.0860816
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0017141   -0.1535711    0.1569992
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1255217   -0.1964369   -0.0546065
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1550831   -0.2274621   -0.0827040
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0302382   -0.0979956    0.0375193
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1364279   -0.1919555   -0.0809004
