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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/de404a7b-2a31-4d45-926d-539138823e70/5c634d10-0942-4ed1-ae91-7aaf12550715/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9451287   -1.3763801   -0.5138773
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6242690   -1.1742787   -0.0742592
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0629722   -1.6127562   -0.5131882
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3950605   -1.0494205    0.2592994
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5707432   -0.8476015   -0.2938849
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4726778   -0.6857013   -0.2596544
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9921522   -1.2758547   -0.7084496
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1523110   -1.2880483   -1.0165738
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5565615   -0.7643416   -0.3487814
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6402891   -0.8161654   -0.4644128
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6345273   -0.8296034   -0.4394511
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1048925    0.0338216    0.1759634
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.2312369    1.0846429    1.3778308
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4332226   -0.4620883   -0.4043568
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.5011427    0.3175986    0.6846868
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2739324   -0.3696360   -0.1782288
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0720068   -0.0062283    0.1502418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1436825   -1.1874054   -1.0999597
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1810547   -1.4193184   -0.9427910
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1414934   -0.1753912    0.4583779
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9034444   -1.1202608   -0.6866279
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0303298   -0.2389552    0.1782957
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1313022   -1.3573041   -0.9053003
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8733128   -1.0160690   -0.7305567
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1931133   -1.3872514   -0.9989752
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0720647   -1.1591389   -0.9849906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4026553   -1.6246947   -1.1806159
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9430157   -1.1480915   -0.7379399
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6697906   -0.8351293   -0.5044519
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8867980   -1.0519468   -0.7216492
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3452404   -0.4072698   -0.2832110
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8402776   -0.8934752   -0.7870799
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4083205   -1.7835884   -1.0330526
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1331814    0.0398611    0.2265018
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7923491   -0.8251094   -0.7595888
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2489227   -1.4561886   -1.0416569
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4898112   -0.5838079   -0.3958144
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7143147   -0.8037442   -0.6248852
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4676703   -1.5556569   -1.3796836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7379562   -0.7844710   -0.6914414
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.5520346   -1.8509506   -1.2531186
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1222995   -0.4192171    0.1746181
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4682502   -1.7330684   -1.2034321
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7398597   -0.9740123   -0.5057070
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3112680   -1.5730798   -1.0494561
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.5337482   -1.7278750   -1.3396214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4056425   -2.5740942   -2.2371907
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5942539   -1.8460877   -1.3424201
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1643491   -1.3476016   -0.9810965
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9249984   -1.0855363   -0.7644605
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.5038508   -1.5605358   -1.4471658
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0863304   -0.3933018    0.2206410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4764764   -1.5452154   -1.4077375
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.3760930   -2.5760252   -2.1761608
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.5346866   -1.6321042   -1.4372689
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9437239   -2.0389406   -1.8485072
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6690649   -1.7665704   -1.5715595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4409163   -1.5006921   -1.3811405


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5893474   -1.6086366   -1.5700581
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0137632   -2.0415122   -1.9860142


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1327542   -0.5357164    0.2702081
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0641685   -0.5485214    0.4201844
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1672604   -0.6822118    0.3476911
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4582728   -1.0862839    0.1697383
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3343895   -0.5763025   -0.0924765
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0981142   -0.2126788    0.0164503
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1443233   -0.3203273    0.0316808
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2915039   -0.3772880   -0.2057199
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3744582   -0.5641998   -0.1847167
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2522254   -0.4061027   -0.0983481
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2743891   -0.4461365   -0.1026416
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0574920   -0.0904855   -0.0244986
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0962021    0.0546968    0.1377074
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0433184   -0.0588528   -0.0277840
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3676189   -0.5405170   -0.1947208
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3233900   -0.4041863   -0.2425938
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3210559   -0.3925571   -0.2495548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4456648   -0.4857329   -0.4055967
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0239384   -0.2513064    0.2034297
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0939176   -0.3597106    0.1718753
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3025131   -0.5024163   -0.1026099
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5312522   -0.7341604   -0.3283440
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1928002   -0.3974684    0.0118681
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1994315   -0.3025144   -0.0963486
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1756317   -0.3319981   -0.0192652
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3348245   -0.3814113   -0.2882377
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.4855505   -0.6918910   -0.2792101
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4643664   -0.6525482   -0.2761845
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4197395   -0.5661405   -0.2733385
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3118803   -0.4611137   -0.1626470
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1972150   -0.2357268   -0.1587032
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0756528   -0.0984760   -0.0528295
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1516001   -0.4959547    0.1927544
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0174003   -0.0214924   -0.0133082
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0879586   -0.1060188   -0.0698983
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5626997   -0.7549448   -0.3704546
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4356039   -0.5153830   -0.3558248
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4262577   -0.5066703   -0.3458450
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1901049   -0.2467783   -0.1334314
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5759493   -0.6170999   -0.5347986
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4263616   -0.7169243   -0.1357989
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1284139   -0.0833111    0.3401389
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4162188   -0.6493741   -0.1830635
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5677281   -0.7936225   -0.3418336
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4412030   -0.6708845   -0.2115216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1094748   -0.2707115    0.0517619
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2399183   -0.3596023   -0.1202343
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6248040   -0.8529032   -0.3967047
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4359109   -0.5989137   -0.2729081
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5162662   -0.6673184   -0.3652140
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0791133   -0.1023604   -0.0558661
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0458877   -0.0626965   -0.0290788
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1216859   -0.1556363   -0.0877354
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6202450   -0.8054204   -0.4350696
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5363855   -0.6182708   -0.4545001
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4703906   -0.5559577   -0.3848235
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2161170   -0.2833093   -0.1489248
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5728469   -0.6271436   -0.5185502
