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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        64     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           105     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             46     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        25     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            45     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             94     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        56     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             93     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        47     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            56     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            156     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            74     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        23     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            52     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             28     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        30     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         4      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1098    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       174    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            498    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2589   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           8947   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4112   15648
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            310     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     581
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5650    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            432    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1021    7103
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3797    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           261     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        65     360
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
![](/tmp/acb3a54c-ff95-4f66-b51d-dc5be012d82e/8a55785b-bbf0-4f16-9792-5d200f1825d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/acb3a54c-ff95-4f66-b51d-dc5be012d82e/8a55785b-bbf0-4f16-9792-5d200f1825d5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/acb3a54c-ff95-4f66-b51d-dc5be012d82e/8a55785b-bbf0-4f16-9792-5d200f1825d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9983456   -1.3663876   -0.6303036
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.0003108   -1.1762241   -0.8243974
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.8982099   -1.1836708   -0.6127490
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.3000437    0.0690109    0.5310766
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.5713397    0.2353388    0.9073406
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.6099597    0.1071642    1.1127552
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9841471   -1.3049788   -0.6633154
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.0556468   -1.2841671   -0.8271265
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0953490   -1.3347169   -0.8559811
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7939057   -1.2051993   -0.3826120
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.9603148   -1.1455835   -0.7750461
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.9222061   -1.1923420   -0.6520702
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1968186   -0.4316742    0.0380370
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              NA                -0.0721544   -0.2243354    0.0800266
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.0533834   -0.2022125    0.3089793
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0119311   -0.1757844    0.1519222
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -0.1612573   -0.6867473    0.3642327
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.1281922   -0.3402984    0.5966829
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.6683337    0.4267853    0.9098821
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 1.1435271    0.5978815    1.6891728
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.9133365    0.3856999    1.4409730
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0406471   -0.3447991    0.2635049
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                 0.0261986   -0.4371760    0.4895732
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.4778296   -0.7580264   -0.1976327
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4685714   -2.1619946   -0.7751483
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6133333   -2.0477055   -1.1789612
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8983333   -1.6138650   -0.1828017
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 1.7437033    1.6520819    1.8353247
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              NA                 1.1931747    0.6457106    1.7406387
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                 1.6014623    1.3540534    1.8488713
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -1.1427001   -1.3550382   -0.9303620
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.2513129   -1.3236549   -1.1789709
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -1.1504362   -1.3519733   -0.9488991
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.4496697   -0.4840319   -0.4153075
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -0.7824965   -0.9201412   -0.6448519
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.6052903   -0.6857653   -0.5248154
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.3590280   -1.6097835   -1.1082725
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.0077848   -1.1344115   -0.8811581
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.9484208   -1.1702383   -0.7266033
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.0504737   -1.1580820   -0.9428653
Birth       ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.0033379   -1.0892892   -0.9173867
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.8608914   -0.9702186   -0.7515643
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7449230   -0.8452079   -0.6446380
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7431264   -0.8084950   -0.6777578
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.7583841   -0.8463214   -0.6704468
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.6827805   -0.7281594   -0.6374016
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.7478706   -0.7721148   -0.7236264
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.6982269   -0.7328178   -0.6636361
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2240024   -0.6277251    0.1797203
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1317205   -0.2806028    0.0171618
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0756861   -0.3848474    0.2334752
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0252371    0.8036679    1.2468063
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.7964117    0.4655838    1.1272395
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.1142769    0.7615253    1.4670285
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5889536   -0.8345552   -0.3433520
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6419104   -0.8411661   -0.4426546
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8589236   -1.0833890   -0.6344581
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.4176417    0.1047408    0.7305426
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0757452   -0.0920744    0.2435647
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0661890   -0.2229988    0.3553767
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1392851    0.8563133    1.4222569
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9619176    0.7981570    1.1256781
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1992570    0.9406570    1.4578569
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5087751    0.3289041    0.6886462
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.7895645    0.3042303    1.2748988
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.5727762    0.1464444    0.9991080
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5044650    0.3404469    0.6684831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6053241    0.3138742    0.8967741
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4504760    0.1375816    0.7633703
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.5996139   -0.7754923   -0.4237355
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7222725   -0.8681907   -0.5763542
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6089398   -0.7498437   -0.4680360
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0035570   -1.2644601   -0.7426539
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9684106   -1.1291114   -0.8077098
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.0826192   -1.3022429   -0.8629956
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5540475   -0.7558814   -0.3522136
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4627374   -0.5755354   -0.3499394
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2869891   -0.4923874   -0.0815908
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0463197   -0.2435927    0.1509533
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.3142123   -0.4242369   -0.2041878
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0881816   -0.2739803    0.0976170
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0704000   -0.1053554    0.2461553
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0067087   -0.1106894    0.0972720
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0088749   -0.1635614    0.1813113
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0681376    0.0023669    0.1339084
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2118213    0.0775669    0.3460756
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0154611   -0.1043539    0.1352762
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2271409   -0.2852700   -0.1690118
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.3036646   -0.6462690    0.0389399
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0515372   -0.1997294    0.0966550
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.2865806   -0.0069736    0.5801349
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0512442   -0.2110585    0.1085700
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1993452   -0.4750739    0.0763835
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5833776    0.5248268    0.6419284
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6254531    0.5382717    0.7126346
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5474303    0.4050869    0.6897737
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2901149    0.2590863    0.3211435
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.2845336    0.1659523    0.4031150
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3081292    0.2313516    0.3849068
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1217652   -0.0754200    0.3189504
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2239767    0.1340921    0.3138613
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1377345   -0.0111482    0.2866171
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5625088   -0.6628936   -0.4621240
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7910662   -0.8712510   -0.7108813
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6119175   -0.7139045   -0.5099306
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3000048   -0.3902851   -0.2097245
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3215493   -0.3792849   -0.2638138
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2361933   -0.3149786   -0.1574080
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4256181    0.3357448    0.5154913
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5898348    0.4017648    0.7779047
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4411248    0.2836576    0.5985920
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5008001   -0.5470535   -0.4545466
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6163332   -0.6406031   -0.5920634
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.5971494   -0.6325752   -0.5617236
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.7122844   -1.1926994   -0.2318694
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8400785   -0.9870789   -0.6930780
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.6851115   -0.9409708   -0.4292521
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5441925    0.2385873    0.8497976
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.2196709   -0.1044123    0.5437542
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.4501978    0.0279757    0.8724198
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6906738   -0.9252397   -0.4561079
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.0785610   -1.2531617   -0.9039603
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9803785   -1.2129089   -0.7478480
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2381224   -0.5333892    0.0571443
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4531252   -0.6004313   -0.3058191
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3082853   -0.5399230   -0.0766475
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1619069   -0.0834751    0.4072888
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.1025589   -0.0654198    0.2705376
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1958316   -0.0362094    0.4278727
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4301968    0.2975969    0.5627967
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.4268004   -0.0009403    0.8545412
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4829679    0.1186612    0.8472746
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1206503   -0.0340091    0.2753097
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2731072   -0.5492190    0.0030045
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0086047   -0.2901646    0.3073739
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8977244   -1.1408814   -0.6545675
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9511431   -1.0732936   -0.8289927
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8435560   -1.0704288   -0.6166832
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7052869   -0.9143413   -0.4962324
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9778616   -1.0749273   -0.8807958
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7999434   -0.9908452   -0.6090415
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3556826   -0.5695947   -0.1417706
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7384890   -0.8635269   -0.6134512
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5248288   -0.7242648   -0.3253927
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8197359   -0.8732143   -0.7662574
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.9867381   -1.2465757   -0.7269006
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6587406   -0.8020333   -0.5154478
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6906094    0.5742973    0.8069215
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5483389    0.3186740    0.7780038
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6718099    0.3420916    1.0015282
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.2110162   -1.3380653   -1.0839671
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5340967   -1.9886538   -1.0795395
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9430185   -1.1713162   -0.7147209
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2729245   -0.4405450   -0.1053041
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.3031347   -0.3716075   -0.2346618
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2350467   -0.3575946   -0.1124987
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4526788   -0.5386153   -0.3667424
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6894150   -0.7583287   -0.6205013
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5393790   -0.6309344   -0.4478236
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4597277   -0.5400794   -0.3793759
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7270230   -0.7789496   -0.6750964
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5117755   -0.5791048   -0.4444461
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0197764   -0.1190342    0.0794815
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0735617   -0.2791242    0.1320007
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0870877   -0.2934556    0.1192802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.1641680   -1.2240891   -1.1042469
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3546252   -1.3847883   -1.3244622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2445793   -1.2869360   -1.2022225


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 1.7101663    1.6251406    1.7951919
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1440966   -1.3546950   -0.9334981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4901203   -0.5209592   -0.4592815
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7243418   -0.7441385   -0.7045450
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2054148   -0.2588995   -0.1519302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2928354    0.2648888    0.3207820
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515431    0.3802415    0.5228446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1803611   -1.2905182   -1.0702040
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0469519   -0.1290932    0.0351895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0019652   -0.4102229    0.4062925
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1001357   -0.3653635    0.5656349
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm           0.2712959   -0.1360915    0.6786834
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.3099159   -0.2437576    0.8635895
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0714997   -0.4708998    0.3279003
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1112019   -0.5241502    0.3017465
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1664091   -0.6193777    0.2865595
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1283004   -0.6223010    0.3657002
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.1246642   -0.1556303    0.4049587
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.2502020   -0.0969601    0.5973641
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.1493262   -0.7004204    0.4017680
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.1401233   -0.3569580    0.6372046
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.4751934   -0.1224187    1.0728056
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.2450028   -0.3361726    0.8261782
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm           0.0668457   -0.5067362    0.6404277
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.4371825   -0.6594031   -0.2149618
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.1447619   -0.9630007    0.6734769
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.5702381   -0.4261661    1.5666422
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5505286   -1.1057963    0.0047391
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.1422410   -0.4063317    0.1218497
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1086128   -0.2904939    0.0732684
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0077361   -0.1110032    0.0955311
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3328268   -0.4747522   -0.1909014
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.1556206   -0.2430989   -0.0681424
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.3512432    0.0709953    0.6314911
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.4106072    0.0748959    0.7463185
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm           0.0471357   -0.0903928    0.1846643
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm           0.1895822    0.0360833    0.3430812
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0017966   -0.1176963    0.1212894
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0134612   -0.1468069    0.1198846
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0650901   -0.1152694   -0.0149109
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0154465   -0.0700956    0.0392027
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0922819   -0.3375068    0.5220706
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1483163   -0.3642958    0.6609283
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2288254   -0.6290157    0.1713649
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0890398   -0.3280751    0.5061547
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0529567   -0.3709138    0.2650003
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2699699   -0.6042332    0.0642933
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.3418965   -0.6972524    0.0134593
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3514527   -0.7792916    0.0763861
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1773676   -0.5066747    0.1519395
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0599718   -0.3257008    0.4456445
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.2807894   -0.2397426    0.8013214
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0640011   -0.4000090    0.5280112
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1008591   -0.2337790    0.4354973
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0539890   -0.4073526    0.2993746
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1226586   -0.3024591    0.0571419
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0093260   -0.1992709    0.1806189
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0351464   -0.2718411    0.3421339
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0790622   -0.4200949    0.2619704
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0913101   -0.1400187    0.3226389
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2670584   -0.0215794    0.5556962
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2678926   -0.4941104   -0.0416749
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0418619   -0.3130443    0.2293204
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0771087   -0.2817725    0.1275552
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0615250   -0.3081703    0.1851202
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1436836   -0.0062751    0.2936423
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0526765   -0.1894286    0.0840756
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0765237   -0.4240424    0.2709950
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1756037    0.0166126    0.3345947
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3378249   -0.6719683   -0.0036815
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4859258   -0.8871301   -0.0847216
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0420755   -0.0524282    0.1365793
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0359473   -0.1700024    0.0981078
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.0055813   -0.1281457    0.1169831
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0180143   -0.0648076    0.1008362
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1022115   -0.1137547    0.3181777
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0159692   -0.2299102    0.2618487
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2285574   -0.3571286   -0.0999862
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0494088   -0.1925232    0.0937056
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.0215445   -0.1286900    0.0856010
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0638115   -0.0560734    0.1836965
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1642167   -0.0444065    0.3728399
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0155067   -0.1666632    0.1976767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1155331   -0.1657247   -0.0653416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0963493   -0.1538425   -0.0388562
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.1277940   -0.6317172    0.3761291
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0271730   -0.5213590    0.5757049
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3245216   -0.7725195    0.1234763
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0939947   -0.6186216    0.4306322
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.3878872   -0.6818867   -0.0938877
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2897047   -0.6239689    0.0445596
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2150027   -0.5454163    0.1154108
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0701628   -0.4454551    0.3051294
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.0593480   -0.3574687    0.2387728
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0339248   -0.3025929    0.3704425
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0033963   -0.4523371    0.4455444
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0527711   -0.3341135    0.4396557
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3937575   -0.7107190   -0.0767961
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1120457   -0.4490414    0.2249501
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0534187   -0.3257255    0.2188881
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0541684   -0.2780129    0.3863498
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2725747   -0.5025427   -0.0426067
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0946565   -0.3771159    0.1878028
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3828064   -0.6314802   -0.1341326
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1691461   -0.4617647    0.1234725
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.1670023   -0.4323616    0.0983571
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1609953    0.0078681    0.3141225
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1422705   -0.4063920    0.1218511
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0187995   -0.3371974    0.2995983
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3230805   -0.7952219    0.1490608
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2679976    0.0067717    0.5292235
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0302101   -0.2113425    0.1509222
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0378779   -0.1698059    0.2455617
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2367362   -0.3468177   -0.1266547
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0867001   -0.2123978    0.0389975
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.2672954   -0.3630222   -0.1715685
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0520478   -0.1568993    0.0528037
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0537854   -0.2822186    0.1746479
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0673113   -0.2964900    0.1618674
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.1904573   -0.2588983   -0.1220162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0804113   -0.1521976   -0.0086250


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0258992   -0.3339864    0.3857848
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0831949   -0.0634637    0.2298534
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.0857503   -0.3777856    0.2062849
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1187889   -0.4959358    0.2583579
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.1307219   -0.0836936    0.3451375
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0226707   -0.1139312    0.0685899
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1266663   -0.0342694    0.2876020
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.1195347   -0.2722547    0.0331853
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0446429   -0.5548203    0.6441060
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0335370   -0.0750376    0.0079636
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0013964   -0.0051366    0.0023437
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0404506   -0.0559600   -0.0249412
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2972366    0.0615693    0.5329038
Birth       ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0730811   -0.0161227    0.1622848
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0021979   -0.0869604    0.0913562
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0415613   -0.0819204   -0.0012022
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0842064   -0.2977320    0.4661447
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0535146   -0.1953938    0.0883646
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1098407   -0.3316241    0.1119427
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3065965   -0.5965811   -0.0166120
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0829064   -0.3354944    0.1696816
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0202677   -0.0687192    0.1092547
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0125863   -0.0959267    0.1210993
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0430166   -0.1429842    0.0569509
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0018256   -0.2363457    0.2326945
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1151374   -0.0706390    0.3009138
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1616694   -0.3350618    0.0117229
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0406377   -0.2015316    0.1202561
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0106381   -0.0313761    0.0526523
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0217260   -0.0026356    0.0460877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3121723   -0.5873175   -0.0370271
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005829   -0.0049525    0.0037867
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0027205   -0.0118674    0.0173084
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0708352   -0.1142032    0.2558736
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1143027   -0.1977898   -0.0308155
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0061615   -0.0745141    0.0868371
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0259250   -0.0320443    0.0838943
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0924194   -0.1336009   -0.0512379
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1085410   -0.5569907    0.3399086
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0975653   -0.2811258    0.0859952
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2618926   -0.4762012   -0.0475839
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1383249   -0.4077997    0.1311498
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0420064   -0.2599090    0.1758963
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0205814   -0.0906535    0.0494908
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0705568   -0.1774084    0.0362947
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0138546   -0.2339381    0.2062288
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1812123   -0.3606829   -0.0017416
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2546675   -0.4494372   -0.0598979
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0095642   -0.0127662    0.0318946
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0036340   -0.0134648    0.0061967
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0306550   -0.0398234    0.1011335
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0114790   -0.1670060    0.1440480
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1192735   -0.1904322   -0.0481147
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1502315   -0.2221238   -0.0783392
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0271755   -0.0949022    0.0405512
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.1328962   -0.1884913   -0.0773011
