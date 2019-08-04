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
* impsan
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_impsan
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth
* delta_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  ------
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
```




# Results Detail

## Results Plots
![](/tmp/de49ef76-5cf4-48e1-a5c6-7d5eebd37310/118e7822-1931-4e63-b683-7b927ad1656f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/de49ef76-5cf4-48e1-a5c6-7d5eebd37310/118e7822-1931-4e63-b683-7b927ad1656f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/de49ef76-5cf4-48e1-a5c6-7d5eebd37310/118e7822-1931-4e63-b683-7b927ad1656f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.0385718   -1.3729718   -0.7041717
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3667518   -1.5189715   -1.2145320
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9121243   -1.1011807   -0.7230678
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1622629   -0.0282142    0.3527399
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3014439   -0.5310116   -0.0718762
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1331742   -0.2577704    0.5241188
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9501104   -1.1678484   -0.7323724
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4713687   -1.6486777   -1.2940597
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0341242   -1.2340961   -0.8341523
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0522812   -0.2685773    0.1640149
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7922998   -0.9397745   -0.6448251
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4281176   -0.6431667   -0.2130684
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1327596   -1.3509228   -0.9145965
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4475156   -1.5966421   -1.2983891
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2106986   -1.4268760   -0.9945212
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9594399   -1.1054752   -0.8134046
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.4882957   -1.9152957   -1.0612956
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.1898925   -1.5399080   -0.8398771
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1951801   -1.3428754   -1.0474848
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8945936   -2.1855132   -1.6036740
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.5118471   -1.7598380   -1.2638563
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1202462   -1.2081917   -1.0323007
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7067530   -1.8465093   -1.5669966
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4721145   -1.6824905   -1.2617385
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.4071796   -1.6317302   -1.1826291
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1346175   -2.2785749   -1.9906600
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7470043   -1.9773861   -1.5166226
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9354471   -1.1403796   -0.7305145
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6507748   -1.7603724   -1.5411772
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1366817   -1.3119753   -0.9613881
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6843368   -0.8534947   -0.5151790
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2869843   -1.3869301   -1.1870385
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9887860   -1.1329758   -0.8445961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8711338   -1.0346269   -0.7076407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3500759   -1.4418105   -1.2583414
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0800162   -1.2267244   -0.9333081
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3639610   -0.4253223   -0.3025997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9331471   -1.0460347   -0.8202594
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7775256   -0.8774012   -0.6776499
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8452962   -0.8984377   -0.7921546
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4403368   -1.7006694   -1.1800042
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2389260   -1.3740952   -1.1037567
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3289846   -1.6710678   -0.9869014
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6490106   -1.8176733   -1.4803479
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4804579   -1.7367695   -1.2241462
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1282674    0.0346431    0.2218917
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.4802392   -0.5674451   -0.3930333
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.1655648   -0.2973197   -0.0338100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8303340   -0.8606801   -0.7999879
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4635562   -1.5649033   -1.3622090
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.0646636   -1.1311500   -0.9981773
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2634728   -1.4774168   -1.0495288
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9658563   -2.0488620   -1.8828505
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6385253   -1.7806733   -1.4963772
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5291236   -0.6247715   -0.4334758
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2045706   -1.2833153   -1.1258258
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9109896   -1.0072772   -0.8147020
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7569705   -0.8505180   -0.6634230
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3459741   -1.4034759   -1.2884724
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0306363   -1.1078037   -0.9534689
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4649010   -1.5527884   -1.3770135
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1824508   -2.3549738   -2.0099278
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.7970149   -1.9344480   -1.6595818
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.9013863   -0.9518402   -0.8509325
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.4834801   -1.5094624   -1.4574978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1902394   -1.2277125   -1.1527664
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.4779064   -1.7732926   -1.1825202
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1544212   -2.3066588   -2.0021837
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.6057072   -1.8313573   -1.3800572
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1428968   -0.0897001    0.3754936
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.0486125   -0.2268687    0.3240938
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0180545   -0.4439480    0.4078390
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4245721   -1.6827855   -1.1663587
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1082360   -2.2963377   -1.9201343
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.6869379   -1.8841681   -1.4897076
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7112123   -0.9364610   -0.4859637
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5571278   -1.7077713   -1.4064843
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0749183   -1.3149273   -0.8349093
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3671651   -1.6081347   -1.1261954
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9421698   -2.0915851   -1.7927546
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6764180   -1.8944100   -1.4584260
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5479449   -1.7022706   -1.3936192
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.8599698   -2.3340552   -1.3858843
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8856022   -2.3351616   -1.4360428
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.3937019   -2.5587869   -2.2286169
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1648901   -3.4580745   -2.8717058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7764858   -3.0756559   -2.4773157
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5112668   -1.7484109   -1.2741227
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4822250   -2.6031668   -2.3612832
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9502681   -2.1532675   -1.7472687
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1615996   -1.3379693   -0.9852299
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7810026   -1.8865595   -1.6754458
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.5091074   -1.6747067   -1.3435081
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9258712   -1.0866782   -0.7650641
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6290221   -1.7398599   -1.5181843
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3723963   -1.5374511   -1.2073416
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.4943240   -1.5507280   -1.4379200
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.2903223   -2.5157763   -2.0648683
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8302850   -1.9630341   -1.6975359
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1094235   -0.4167438    0.1978968
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.5424615   -1.6570172   -1.4279058
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5305500   -0.7831533   -0.2779467
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -2.2763237   -2.4187165   -2.1339309
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -3.0007500   -3.3193225   -2.6821776
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -2.6722305   -2.9663920   -2.3780691
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.2413824   -2.4447435   -2.0380213
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.0054259   -3.0827299   -2.9281219
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.7867987   -2.9333557   -2.6402417
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.3663467   -1.4630417   -1.2696517
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.1786122   -2.2558472   -2.1013771
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -1.9055837   -2.0071894   -1.8039781
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9452971   -2.0415930   -1.8490013
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6329676   -2.6943691   -2.5715661
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2620450   -2.3454086   -2.1786815
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6591764   -1.7563354   -1.5620173
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.3926268   -2.6091286   -2.1761249
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0621020   -2.2272253   -1.8969787
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.5811353   -1.6376159   -1.5246547
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.1920925   -2.2231663   -2.1610187
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8590029   -1.9042243   -1.8137814


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3281800   -0.6951256    0.0387657
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1264475   -0.2588677    0.5117627
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4637068   -0.7623202   -0.1650934
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0290887   -0.4641832    0.4060058
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5212583   -0.8019287   -0.2405880
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0840138   -0.3792977    0.2112700
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7400186   -1.0019305   -0.4781068
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3758364   -0.6807821   -0.0708907
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3147560   -0.5817721   -0.0477398
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0779390   -0.3849261    0.2290481
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5288558   -0.9805994   -0.0771121
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2304526   -0.6100544    0.1491491
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6994135   -1.0244842   -0.3743429
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3166671   -0.6062117   -0.0271224
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5865067   -0.7048054   -0.4682080
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3518683   -0.6006771   -0.1030594
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7274378   -0.9944403   -0.4604354
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3398247   -0.6617850   -0.0178644
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7153278   -0.9470062   -0.4836493
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.2012346   -0.4699390    0.0674698
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6026475   -0.7995028   -0.4057922
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3044491   -0.5270968   -0.0818015
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4789421   -0.6664276   -0.2914566
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2088824   -0.4286109    0.0108460
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5691861   -0.6970445   -0.4413277
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4135646   -0.5299103   -0.2972189
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5950407   -0.8606795   -0.3294018
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3936298   -0.5386989   -0.2485608
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3200260   -0.7030744    0.0630224
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1514733   -0.5795768    0.2766303
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6085066   -0.7040529   -0.5129603
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.2938322   -0.4132120   -0.1744525
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6332222   -0.7379627   -0.5284816
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.2343296   -0.3060344   -0.1626248
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7023835   -0.9321083   -0.4726586
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3750525   -0.6318561   -0.1182488
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.6754469   -0.7998260   -0.5510679
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3818660   -0.5178969   -0.2458350
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5890036   -0.6991626   -0.4788446
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2736657   -0.3955290   -0.1518025
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7175499   -0.9113320   -0.5237677
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3321139   -0.4955441   -0.1686838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.5820938   -0.6360888   -0.5280987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2888531   -0.3502168   -0.2274893
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.6765148   -1.0080225   -0.3450072
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.1278008   -0.4987360    0.2431343
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.0942842   -0.4512892    0.2627207
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.1609512   -0.6426461    0.3207436
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6836639   -1.0037284   -0.3635993
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2623658   -0.5880844    0.0633529
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8459155   -1.1161282   -0.5757028
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3637060   -0.6921848   -0.0352272
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.5750048   -0.8548774   -0.2951321
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3092530   -0.6248968    0.0063909
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3120249   -0.8116593    0.1876095
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3376573   -0.8143902    0.1390756
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7711882   -1.1067559   -0.4356205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3827839   -0.7244093   -0.0411585
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9709582   -1.2367220   -0.7051945
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4390013   -0.7496994   -0.1283032
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6194030   -0.8227938   -0.4160123
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3475078   -0.5876258   -0.1073898
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.7031509   -0.8986460   -0.5076559
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4465252   -0.6768801   -0.2161702
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.7959983   -1.0278654   -0.5641312
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3359610   -0.4792914   -0.1926307
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.4330380   -1.7572768   -1.1087992
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4211265   -0.8037361   -0.0385170
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7244263   -1.0739729   -0.3748796
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3959068   -0.7223558   -0.0694578
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7640436   -0.9810347   -0.5470525
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5454164   -0.7955645   -0.2952682
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8122655   -0.9358303   -0.6887006
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5392370   -0.6789355   -0.3995386
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6876705   -0.8023023   -0.5730386
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3167479   -0.4445640   -0.1889318
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7334504   -0.9710613   -0.4958394
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4029256   -0.5945726   -0.2112786
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6109572   -0.6704891   -0.5514253
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2778676   -0.3499225   -0.2058126


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.1671059   -0.4922639    0.1580520
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1112422   -0.2350096    0.0125253
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2647265   -0.4633177   -0.0661353
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5087781   -0.7182927   -0.2992635
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1944891   -0.3977135    0.0087352
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1133613   -0.1934720   -0.0332507
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1649414   -0.2670532   -0.0628295
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2866430   -0.3412098   -0.2320762
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4810262   -0.6894902   -0.2725622
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4719350   -0.6582046   -0.2856654
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4005200   -0.5503330   -0.2507069
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3275445   -0.4753386   -0.1797504
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1784944   -0.2160635   -0.1409252
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0706342   -0.0932891   -0.0479793
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2309360   -0.5463659    0.0844938
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0124863   -0.0163435   -0.0086291
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0706504   -0.0837793   -0.0575215
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5481497   -0.7481396   -0.3481597
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3962914   -0.4781470   -0.3144359
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3836019   -0.4685615   -0.2986422
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1928742   -0.2493993   -0.1363490
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4125192   -0.4585541   -0.3664842
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.4652068   -0.7563616   -0.1740520
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1010624   -0.2457415    0.0436166
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4193438   -0.6478782   -0.1908094
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5640070   -0.7834684   -0.3445456
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.3829344   -0.5908066   -0.1750622
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0740850   -0.1545310    0.0063609
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2121860   -0.3270869   -0.0972850
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6695277   -0.8852253   -0.4538301
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4223240   -0.5782605   -0.2663875
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.5036619   -0.6549577   -0.3523661
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0734697   -0.0961262   -0.0508132
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0227946   -0.0351398   -0.0104494
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1344699   -0.2071564   -0.0617834
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6264311   -0.8145052   -0.4383570
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4902888   -0.5715332   -0.4090444
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4445679   -0.5320072   -0.3571285
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2152604   -0.2820425   -0.1484783
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4316220   -0.4825715   -0.3806725
