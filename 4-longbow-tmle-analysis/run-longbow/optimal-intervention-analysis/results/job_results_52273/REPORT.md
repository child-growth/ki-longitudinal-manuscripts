---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
      A: ['parity_cat']
      Y: ['haz']
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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/ef2e2b22-8408-4c5d-b852-c317a1d10028/aab90c50-1ea2-4572-892f-53818c83b11f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0414001   -1.3875387   -0.6952614
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5332372   -1.1904742    0.1239997
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2662842   -1.9920647   -0.5405037
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3823573   -1.0290707    0.2643561
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5139100   -0.7853452   -0.2424748
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4715615   -0.6852841   -0.2578389
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.0294116   -1.3281992   -0.7306241
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1696516   -1.3036691   -1.0356340
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5716138   -0.7705152   -0.3727124
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6775160   -0.8570286   -0.4980035
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6363828   -0.8311724   -0.4415931
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1092207    0.0380276    0.1804139
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3395887    1.1820782    1.4970992
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4389709   -0.4663403   -0.4116014
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3341311    0.1057427    0.5625194
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3054202   -0.4010103   -0.2098301
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0584493   -0.0201958    0.1370945
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7286061   -0.7824866   -0.6747256
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1748667   -1.4305138   -0.9192197
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0694284   -0.3594960    0.2206391
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9414723   -1.1754044   -0.7075403
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0368799   -0.2492422    0.1754824
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1050355   -1.3168663   -0.8932048
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9644312   -1.1104268   -0.8184357
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1849977   -1.3335167   -1.0364788
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0804815   -1.1794670   -0.9814959
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4032786   -1.6252560   -1.1813012
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9364522   -1.1385763   -0.7343280
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6931015   -0.8549851   -0.5312180
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8750092   -1.0401589   -0.7098595
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3515527   -0.4134950   -0.2896105
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8398931   -0.8930894   -0.7866969
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.3554986   -1.6945191   -1.0164780
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1217206    0.0268340    0.2166073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7909132   -0.8214348   -0.7603916
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.1541705   -1.3512921   -0.9570489
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4935686   -0.5880114   -0.3991257
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7337701   -0.8241685   -0.6433718
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4666285   -1.5538117   -1.3794454
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.8121716   -0.8588730   -0.7654702
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6304747   -1.9277178   -1.3332316
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0304789   -0.2153858    0.2763436
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4898554   -1.7573794   -1.2223313
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7391414   -0.9681985   -0.5100843
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.4178328   -1.6747247   -1.1609409
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.6091299   -1.7586059   -1.4596538
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4618861   -2.6357968   -2.2879755
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5549787   -1.7972496   -1.3127079
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1842219   -1.3625918   -1.0058521
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9323382   -1.0944637   -0.7702127
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5039920   -1.5606974   -1.4472867
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1286751   -0.4272488    0.1698987
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4809259   -1.5496687   -1.4121830
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.3309555   -2.5667613   -2.0951497
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.5459024   -1.6427416   -1.4490632
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9705420   -2.0666769   -1.8744071
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6668925   -1.7642392   -1.5695458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.5019960   -1.5612844   -1.4427077


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5707921   -0.7685593   -0.3730248
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4438150   -1.5337502   -1.3538797
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0474004   -0.0188757    0.1136765
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3274390    1.1683164    1.4865616
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4765410   -0.5009545   -0.4521274
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1727476   -1.2008924   -1.1446028
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0733534   -1.2031913   -0.9435155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8803077   -0.9076731   -0.8529423
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3364066   -1.3594671   -1.3133462
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5829641   -1.6348134   -1.5311148
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.5981623   -1.6603107   -1.5360139
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.9963380   -3.0630990   -2.9295770
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0710720   -2.1255079   -2.0166362
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8851820   -1.9664818   -1.8038822
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0196953   -2.0474028   -1.9919877


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0364828   -0.3540081    0.2810424
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1552003   -0.7545745    0.4441739
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0360516   -0.5714428    0.6435461
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4709760   -1.0946348    0.1526827
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3912227   -0.6316616   -0.1507838
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0992306   -0.2141261    0.0156649
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1070638   -0.2961301    0.0820025
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2741634   -0.3547217   -0.1936051
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3594059   -0.5410245   -0.1777873
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2149985   -0.3735926   -0.0564044
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2725336   -0.4438755   -0.1011916
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0618203   -0.0951622   -0.0284784
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0121498   -0.0179790   -0.0063205
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0375701   -0.0498452   -0.0252949
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2006072   -0.4101768    0.0089623
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2919022   -0.3723966   -0.2114079
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3074985   -0.3793806   -0.2356164
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4441415   -0.4912569   -0.3970260
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0306243   -0.2750574    0.2138089
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1204491   -0.1336061    0.3745044
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2643291   -0.4772662   -0.0513920
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5241794   -0.7299878   -0.3183710
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2235123   -0.4184534   -0.0285711
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1089222   -0.1882971   -0.0295472
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1837472   -0.2871709   -0.0803235
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3264078   -0.3802415   -0.2725741
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.4849272   -0.6910771   -0.2787774
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4709299   -0.6532326   -0.2886272
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3964286   -0.5398699   -0.2529873
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3236691   -0.4729495   -0.1743887
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1909026   -0.2293063   -0.1524989
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0760372   -0.0988522   -0.0532222
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.2044221   -0.5149443    0.1061002
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0059395   -0.0147682    0.0028891
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0893945   -0.1034127   -0.0753762
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6574520   -0.8422314   -0.4726726
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4318465   -0.5120567   -0.3516363
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4068022   -0.4878543   -0.3257502
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1911466   -0.2473354   -0.1349578
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5242350   -0.5660288   -0.4824412
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3484404   -0.6420153   -0.0548654
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0233783   -0.1839303    0.1371736
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3932641   -0.6330541   -0.1534741
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5727226   -0.7954213   -0.3500240
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3366448   -0.5614197   -0.1118699
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0382847   -0.1261460    0.0495767
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1832774   -0.3089075   -0.0576474
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6640792   -0.8836153   -0.4445431
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4160380   -0.5747921   -0.2572840
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5089264   -0.6612706   -0.3565822
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0789721   -0.1022163   -0.0557278
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0035430   -0.0221077    0.0150216
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1172364   -0.1506892   -0.0837836
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6653825   -0.8889671   -0.4417980
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5251696   -0.6064276   -0.4439116
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4435725   -0.5300671   -0.3570779
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2182895   -0.2854042   -0.1511748
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5176992   -0.5717921   -0.4636063
