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
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1135    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             46    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       181    1362
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2966   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          10259   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4711   17936
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2651   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9787   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4296   16734
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1305    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5052    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2213    8570


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
![](/tmp/dc469d91-7427-4379-af8c-4339f4d227b0/7ca3c35b-d39b-4f38-a6ff-5ad1159219a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/dc469d91-7427-4379-af8c-4339f4d227b0/7ca3c35b-d39b-4f38-a6ff-5ad1159219a4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/dc469d91-7427-4379-af8c-4339f4d227b0/7ca3c35b-d39b-4f38-a6ff-5ad1159219a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9463041   -1.3424131   -0.5501952
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.9814757   -1.1642289   -0.7987225
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8894560   -1.2242498   -0.5546622
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.2437873   -0.1548773    0.6424520
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.4226348   -0.1965580    1.0418276
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1662054   -0.9570107    1.2894215
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.1799139   -1.8038174   -0.5560104
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.9739503   -1.5006460   -0.4472546
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.1432615   -1.5935394   -0.6929837
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0800000   -0.7933336    0.6333336
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.0315385   -1.5120177   -0.5510592
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.8700000   -1.3993357   -0.3406643
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1226017   -0.3619439    0.1167405
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0430917   -0.2156187    0.1294354
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1444422   -0.1238093    0.4126937
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0795000   -0.3395748    0.1805748
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.0844444   -2.0249330   -0.1439559
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -0.2890909   -0.6403401    0.0621583
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6524257    0.3795180    0.9253335
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.1927982    0.7853827    1.6002136
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.8266749    0.4551755    1.1981743
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6301142   -0.8746517   -0.3855766
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7309327   -0.8889605   -0.5729048
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6821027   -0.8209775   -0.5432279
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.3854595   -1.6009566   -1.1699623
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.4173793   -1.5469201   -1.2878386
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1450016   -1.3229416   -0.9670616
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.2190594   -1.3952229   -1.0428958
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.3340368   -1.4382322   -1.2298414
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.2588234   -1.4242482   -1.0933986
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -1.1570848   -1.3569805   -0.9571892
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.2803297   -1.3936496   -1.1670097
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.2252962   -1.3940802   -1.0565122
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.2190275   -1.2893665   -1.1486884
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4698874   -1.8701916   -1.0695832
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2760896   -1.4668986   -1.0852806
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -1.1412357   -1.3534493   -0.9290222
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.2577375   -1.3342561   -1.1812190
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -1.1609794   -1.3667513   -0.9552075
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4496220   -0.4839835   -0.4152605
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.8002703   -0.9393738   -0.6611668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6072549   -0.6875550   -0.5269549
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.4015403   -1.6581601   -1.1449204
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.0169480   -1.1436630   -0.8902330
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9906678   -1.2144279   -0.7669078
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.0498772   -1.1568840   -0.9428704
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.0011807   -1.0875066   -0.9148549
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.8638523   -0.9731690   -0.7545356
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7411498   -0.8418478   -0.6404517
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7434907   -0.8092049   -0.6777766
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7567019   -0.8457278   -0.6676760
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.7338047   -0.7754237   -0.6921858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.8026383   -0.8258509   -0.7794256
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.7512177   -0.7848642   -0.7175712
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3252039   -0.9014788    0.2510710
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1297675   -0.2785287    0.0189937
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0655768   -0.3790683    0.2479147
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0324541    0.8101364    1.2547719
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.8088027    0.4725686    1.1450368
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.0803913    0.7394110    1.4213715
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5872492   -0.8351063   -0.3393920
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6524760   -0.8579244   -0.4470275
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8560882   -1.0832772   -0.6288992
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.3273118    0.0183447    0.6362789
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0670165   -0.1023795    0.2364125
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0250297   -0.2647231    0.3147825
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1822121    0.9006254    1.4637989
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9754474    0.8137026    1.1371922
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.2660787    0.9947815    1.5373760
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5118697    0.3327423    0.6909972
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.7245728    0.2831816    1.1659640
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.6133880    0.1690478    1.0577282
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.4994215    0.3312943    0.6675488
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.5410104    0.2533353    0.8286854
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4824973    0.1692318    0.7957629
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.5996139   -0.7754923   -0.4237355
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7222725   -0.8681907   -0.5763542
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6089398   -0.7498437   -0.4680360
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0065706   -1.2671573   -0.7459839
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9563007   -1.1154448   -0.7971565
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.0763857   -1.3006604   -0.8521110
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5641036   -0.7689054   -0.3593018
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4819112   -0.5977135   -0.3661089
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2973187   -0.5003031   -0.0943344
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0179459   -0.2119816    0.1760899
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2923856   -0.3994559   -0.1853153
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0941531   -0.2762094    0.0879033
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1190973   -0.0585692    0.2967637
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0024790   -0.1059844    0.1010263
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0322312   -0.1386073    0.2030697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0669648    0.0011356    0.1327940
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2086726    0.0739760    0.3433691
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0213521   -0.0989798    0.1416840
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2261722   -0.2842853   -0.1680591
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2759326   -0.6246291    0.0727639
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0275542   -0.1734082    0.1182998
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.3321700    0.0358187    0.6285214
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0533999   -0.2125719    0.1057721
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1811949   -0.4534212    0.0910313
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5833689    0.5248245    0.6419133
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6307996    0.5388756    0.7227236
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5600238    0.4211539    0.6988937
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2919218    0.2613329    0.3225108
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2864097    0.1698625    0.4029569
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3168984    0.2416549    0.3921419
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1047398   -0.0947843    0.3042639
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2224127    0.1326973    0.3121282
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1383383   -0.0098004    0.2864771
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5713421   -0.6723308   -0.4703534
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7905989   -0.8707365   -0.7104613
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6170456   -0.7183689   -0.5157223
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.2989661   -0.3887336   -0.2091986
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3205578   -0.3782519   -0.2628637
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2359903   -0.3148173   -0.1571633
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4260766    0.3361857    0.5159674
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5942309    0.4054110    0.7830509
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4513998    0.2941828    0.6086168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5018453   -0.5480596   -0.4556311
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6161846   -0.6404747   -0.5918945
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.5972991   -0.6327081   -0.5618901
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.7696099   -1.2789197   -0.2603000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8373507   -0.9836710   -0.6910304
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7464019   -0.9994374   -0.4933663
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5823252    0.2738963    0.8907542
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1773472   -0.1337434    0.4884378
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.4881536    0.0538912    0.9224160
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.7051597   -0.9266656   -0.4836538
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.1009893   -1.2724599   -0.9295186
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8998236   -1.1162192   -0.6834280
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2367339   -0.5136128    0.0401450
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4510905   -0.6025782   -0.2996029
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3368131   -0.5764085   -0.0972177
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1749905   -0.0676736    0.4176547
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0877918   -0.0874564    0.2630400
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.2379207   -0.0055341    0.4813755
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4117919    0.2769054    0.5466784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.2967299   -0.1272807    0.7207404
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4138852    0.0391231    0.7886473
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1319675   -0.0230386    0.2869735
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2228679   -0.5262197    0.0804840
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0799041   -0.2242596    0.3840678
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9114956   -1.1484639   -0.6745272
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9562443   -1.0785021   -0.8339866
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8716450   -1.0937983   -0.6494918
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7424460   -0.9498056   -0.5350864
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9983501   -1.0953099   -0.9013903
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.8433037   -1.0336129   -0.6529945
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3428663   -0.5495825   -0.1361501
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7370307   -0.8614728   -0.6125885
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.4872679   -0.6842158   -0.2903201
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8201459   -0.8736647   -0.7666272
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.1086683   -1.3912502   -0.8260864
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6878580   -0.8302844   -0.5454317
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6918570    0.5755742    0.8081398
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.4928319    0.2673663    0.7182974
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6805906    0.3278719    1.0333093
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1930845   -1.3191598   -1.0670093
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5423900   -2.0202250   -1.0645551
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9537744   -1.1811033   -0.7264454
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2787214   -0.4466752   -0.1107676
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.3040441   -0.3724587   -0.2356295
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2358640   -0.3573774   -0.1143505
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4469114   -0.5326335   -0.3611892
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6870595   -0.7556761   -0.6184429
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5320515   -0.6236488   -0.4404541
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4597632   -0.5403985   -0.3791279
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7279368   -0.7798561   -0.6760175
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5096709   -0.5769441   -0.4423978
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0204509   -0.1196638    0.0787620
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0863821   -0.2966204    0.1238562
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0947361   -0.3043171    0.1148448
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1592966   -1.2189445   -1.0996487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3545155   -1.3846702   -1.3243607
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2431838   -1.2856707   -1.2006969


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9533493   -1.0984355   -0.8082631
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
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2360866   -1.3011735   -1.1709998
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1428961   -1.3532157   -0.9325766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4906181   -0.5214690   -0.4597672
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7780564   -0.7970843   -0.7590285
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0351716   -0.4716431    0.4013000
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0568482   -0.4623895    0.5760858
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.1788474   -0.5674827    0.9251776
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0775819   -1.2699571    1.1147932
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm           0.2059635   -0.6354051    1.0473322
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm           0.0366524   -0.7617505    0.8350553
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.9515385   -1.8115995   -0.0914774
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.7900000   -1.6782798    0.0982798
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0795100   -0.2165989    0.3756190
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.2670439   -0.0906531    0.6247409
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -1.0049444   -1.9807300   -0.0291589
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2095909   -0.6466434    0.2274616
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.5403724    0.0497131    1.0310317
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.1742491   -0.2894388    0.6379371
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1008185   -0.2742424    0.0726054
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0519886   -0.1836334    0.0796563
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0319199   -0.2835424    0.2197027
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2404579   -0.0381913    0.5191071
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1149774   -0.3192579    0.0893030
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0397641   -0.2818996    0.2023715
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1232449   -0.3525675    0.1060777
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0682114   -0.3298254    0.1934026
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2508599   -0.6573559    0.1556360
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.0570621   -0.2599968    0.1458726
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1165018   -0.2986972    0.0656936
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0197437   -0.1211981    0.0817107
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3506483   -0.4940049   -0.2072917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1576329   -0.2449499   -0.0703160
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3845923    0.0987322    0.6704523
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.4108724    0.0702977    0.7514471
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0486964   -0.0887573    0.1861502
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1860249    0.0328528    0.3391970
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0023410   -0.1224245    0.1177426
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0155522   -0.1499471    0.1188427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0688335   -0.1142208   -0.0234462
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0174130   -0.0680982    0.0332722
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1954364   -0.3990158    0.7898886
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2596271   -0.4010655    0.9203197
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2236514   -0.6282173    0.1809144
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0479372   -0.3595858    0.4554601
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0652268   -0.3885554    0.2581018
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2688390   -0.6071138    0.0694357
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2602953   -0.6134430    0.0928525
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3022821   -0.7274862    0.1229220
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.2067648   -0.5329388    0.1194092
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0838666   -0.3069533    0.4746865
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.2127031   -0.2641389    0.6895450
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.1015183   -0.3775042    0.5805407
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0415889   -0.2906914    0.3738691
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0169242   -0.3741781    0.3403297
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1226586   -0.3024591    0.0571419
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0093260   -0.1992709    0.1806189
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0502699   -0.2554333    0.3559732
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0698151   -0.4143377    0.2747075
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0821924   -0.1533556    0.3177404
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2667849   -0.0220503    0.5556200
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2744397   -0.4963307   -0.0525486
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0762072   -0.3428972    0.1904828
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1215763   -0.3273479    0.0841952
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0868661   -0.3334619    0.1597297
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1417078   -0.0084822    0.2918977
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0456127   -0.1828529    0.0916275
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0497604   -0.4033157    0.3037949
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1986180    0.0418780    0.3553580
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3855700   -0.7218015   -0.0493385
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.5133650   -0.9143261   -0.1124039
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0474307   -0.0533514    0.1482129
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0233451   -0.1512453    0.1045552
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0055121   -0.1260138    0.1149895
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0249766   -0.0562511    0.1062042
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1176729   -0.1006930    0.3360389
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0335985   -0.2144220    0.2816190
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2192568   -0.3484148   -0.0900988
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0457035   -0.1886972    0.0972902
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0215917   -0.1282406    0.0850572
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0629758   -0.0565429    0.1824945
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1681544   -0.0414017    0.3777104
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0253232   -0.1566340    0.2072804
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1143392   -0.1644828   -0.0641956
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0954538   -0.1527823   -0.0381252
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0677409   -0.5982615    0.4627797
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0232080   -0.5470853    0.5935013
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4049781   -0.8460532    0.0360971
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0941716   -0.6296814    0.4413381
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.3958296   -0.6763534   -0.1153058
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1946639   -0.5040994    0.1147716
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2143567   -0.5318038    0.1030905
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1000792   -0.4636492    0.2634908
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0871987   -0.3868798    0.2124823
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0629301   -0.2821278    0.4079880
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1150620   -0.5606209    0.3304968
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0020933   -0.3970125    0.4011992
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3548353   -0.6974425   -0.0122281
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0520634   -0.3919474    0.2878207
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0447488   -0.3112481    0.2217506
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0398505   -0.2851203    0.3648214
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2559041   -0.4841325   -0.0276756
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.1008577   -0.3827778    0.1810624
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3941644   -0.6354515   -0.1528773
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1444016   -0.4297751    0.1409718
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.2885224   -0.5762016   -0.0008431
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1322879   -0.0199654    0.2845412
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1990251   -0.4608113    0.0627611
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0112664   -0.3572456    0.3347129
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3493055   -0.8442106    0.1455996
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2393102   -0.0220611    0.5006814
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0253227   -0.2067321    0.1560868
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0428574   -0.1644159    0.2501308
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2401482   -0.3498747   -0.1304216
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0851401   -0.2108126    0.0405324
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2681736   -0.3641447   -0.1722025
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0499077   -0.1549157    0.0551003
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0659312   -0.2986100    0.1667475
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0742852   -0.3062228    0.1576523
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1952188   -0.2634283   -0.1270093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0838871   -0.1555912   -0.0121831


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0070451   -0.3950376    0.3809473
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1580159   -0.1672601    0.4832920
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.2121090   -0.3566748    0.7808928
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.6884615   -1.3222341   -0.0546890
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0796153   -0.1405105    0.2997410
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1135000   -0.2342373    0.0072373
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1058928   -0.0526223    0.2644079
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0451076   -0.1267482    0.0365330
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0355377   -0.1605948    0.2316703
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0870387   -0.2428443    0.0687669
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0863882   -0.2675826    0.0948062
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0170592   -0.0474824    0.0133641
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0016604   -0.0054286    0.0021077
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0409961   -0.0565398   -0.0254524
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3397488    0.0988784    0.5806192
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0724846   -0.0161529    0.1611221
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0015753   -0.0912099    0.0880593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0442517   -0.0806261   -0.0078772
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1875276   -0.3595645    0.7346196
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0603768   -0.2030607    0.0823071
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1161657   -0.3395526    0.1072211
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2168810   -0.5021778    0.0684157
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1273531   -0.3779418    0.1232356
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0172802   -0.0707067    0.1052671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0367998   -0.0763664    0.1499659
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0430166   -0.1429842    0.0569509
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0011880   -0.2330843    0.2354603
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1166998   -0.0724950    0.3058946
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1807612   -0.3514977   -0.0100247
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0893351   -0.2509837    0.0723136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0118109   -0.0301978    0.0538196
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0207731   -0.0035573    0.0451035
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3577617   -0.6354254   -0.0800980
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005742   -0.0049416    0.0037933
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0029248   -0.0114420    0.0172916
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0878606   -0.0993161    0.2750373
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1054693   -0.1894880   -0.0214507
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0051228   -0.0750847    0.0853303
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0254784   -0.0326179    0.0835748
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0913741   -0.1325087   -0.0502396
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0496826   -0.5254281    0.4260629
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1197020   -0.3036665    0.0642625
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2467651   -0.4469990   -0.0465311
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1381784   -0.3916841    0.1153273
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0637924   -0.2819970    0.1544123
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0201501   -0.0907165    0.0504163
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0771700   -0.1841882    0.0298483
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0000835   -0.2144487    0.2142818
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1489900   -0.3276016    0.0296216
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2674839   -0.4552815   -0.0796863
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0099743   -0.0123486    0.0322972
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0037875   -0.0137406    0.0061657
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0218311   -0.0487129    0.0923752
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0056822   -0.1615444    0.1501800
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1250409   -0.1959993   -0.0540826
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1501960   -0.2223629   -0.0780291
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0264208   -0.0943036    0.0414621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1377675   -0.1931092   -0.0824259
