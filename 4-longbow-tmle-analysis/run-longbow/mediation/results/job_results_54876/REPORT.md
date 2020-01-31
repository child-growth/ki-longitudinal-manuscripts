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
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
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

agecat      studyid                    country                        mhtcm           n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  -------  ------  -----------------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241  haz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209  haz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209  haz              
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235  haz              
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236  haz              
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236  haz              
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272  haz              
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249  haz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  haz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           510    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1228  haz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       297    1228  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            74     379  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379  haz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       103     379  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537  haz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            330     603  haz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     603  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715  haz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996  haz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996  haz              
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877  haz              
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877  haz              
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231  haz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  haz              
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12533   13033  haz              
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13033  haz              
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       379   13033  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5888    7394  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            445    7394  haz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1061    7394  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     943  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            629     943  haz              
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     943  haz              
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819  haz              
6 months    ki1135781-COHORTS          INDIA                          <151 cm            790    1819  haz              
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       488    1819  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           561    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2708  haz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       779    2708  haz              
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836  haz              
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2660   16761  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9797   16761  haz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4304   16761  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212  haz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169  haz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169  haz              
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226  haz              
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228  haz              
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228  haz              
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201  haz              
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234  haz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  haz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            77     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     429  haz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     429  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     577  haz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     577  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514  haz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  haz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  haz              
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1338    1602  haz              
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1602  haz              
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1602  haz              
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3859    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             35    4005  haz              
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       111    4005  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          1084    1374  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             98    1374  haz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm       192    1374  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           126     994  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            659     994  haz              
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       209     994  haz              
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           552    1819  haz              
24 months   ki1135781-COHORTS          INDIA                          <151 cm            785    1819  haz              
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       482    1819  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           510    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1234    2445  haz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       701    2445  haz              
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           355     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             95     577  haz              
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       127     577  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1314    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5067    8599  haz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2218    8599  haz              


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
![](/tmp/7343e023-1596-4041-bdb3-2e39ee9d67d6/a9e3c1d4-0c44-412f-b7d7-c90038912734/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/7343e023-1596-4041-bdb3-2e39ee9d67d6/a9e3c1d4-0c44-412f-b7d7-c90038912734/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/7343e023-1596-4041-bdb3-2e39ee9d67d6/a9e3c1d4-0c44-412f-b7d7-c90038912734/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9539503   -1.2706251   -0.6372756
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3540627   -1.5054499   -1.2026756
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9233619   -1.1170009   -0.7297230
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1579249   -0.0302196    0.3460694
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.3196609   -0.5435506   -0.0957712
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1719479   -0.2137817    0.5576774
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9428276   -1.1602787   -0.7253765
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4715517   -1.6510422   -1.2920612
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0351131   -1.2320814   -0.8381448
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0289073   -0.2388611    0.1810466
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7920073   -0.9395417   -0.6444729
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4277584   -0.6433058   -0.2122110
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1004606   -1.3139700   -0.8869513
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4441692   -1.5928223   -1.2955161
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2099184   -1.4261328   -0.9937041
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9643601   -1.1097496   -0.8189705
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5144873   -1.9277416   -1.1012330
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2774289   -1.6283346   -0.9265232
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1680815   -1.3168716   -1.0192914
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8088188   -2.1075880   -1.5100495
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4229750   -1.6747556   -1.1711944
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1135454   -1.1956346   -1.0314562
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7229004   -1.8592106   -1.5865903
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4704259   -1.6762904   -1.2645613
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.4083732   -1.6336308   -1.1831156
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1405372   -2.2846211   -1.9964533
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7485532   -1.9767956   -1.5203109
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9840807   -1.1821223   -0.7860391
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6436430   -1.7517752   -1.5355107
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1537426   -1.3275378   -0.9799474
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6871430   -0.8523466   -0.5219394
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2885817   -1.3852531   -1.1919103
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.0063965   -1.1479445   -0.8648484
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8966198   -1.0561380   -0.7371015
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3447605   -1.4355707   -1.2539504
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0857020   -1.2293216   -0.9420823
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3707211   -0.4315125   -0.3099296
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9200202   -1.0301456   -0.8098947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7752203   -0.8756198   -0.6748207
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8426193   -0.8956456   -0.7895930
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4164520   -1.6697545   -1.1631495
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2587929   -1.3938998   -1.1236861
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3298741   -1.6822691   -0.9774792
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6389069   -1.8060522   -1.4717615
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.5077721   -1.7655353   -1.2500088
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1259662    0.0320285    0.2199040
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.3614345   -0.4380448   -0.2848243
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.0819210   -0.1969696    0.0331275
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8103940   -0.8404156   -0.7803725
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4160352   -1.5199277   -1.3121426
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.0452583   -1.1106060   -0.9799105
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2381618   -1.4424988   -1.0338247
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9703340   -2.0524573   -1.8882106
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6329993   -1.7744048   -1.4915939
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5276985   -0.6245618   -0.4308353
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.1992982   -1.2780849   -1.1205114
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9123889   -1.0090820   -0.8156957
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7681393   -0.8605636   -0.6757150
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3381031   -1.3953801   -1.2808260
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0318288   -1.1086150   -0.9550425
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4649934   -1.5527308   -1.3772561
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1888793   -2.3599825   -2.0177762
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.7914738   -1.9292923   -1.6536553
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.8781058   -0.9286131   -0.8275986
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.4913842   -1.5175194   -1.4652490
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1811779   -1.2189392   -1.1434167
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.5551820   -1.8973585   -1.2130054
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1873947   -2.3425057   -2.0322837
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.6049782   -1.8309678   -1.3789886
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.0855829   -0.1446376    0.3158033
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0595190   -0.3303313    0.2112932
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.0606565   -0.5035158    0.3822028
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4669095   -1.7198712   -1.2139477
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1396364   -2.3280887   -1.9511842
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7841675   -1.9706212   -1.5977138
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7245433   -0.9577251   -0.4913614
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5782323   -1.7277082   -1.4287564
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0866864   -1.3241666   -0.8492062
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3061741   -1.5574892   -1.0548591
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9577041   -2.1071955   -1.8082128
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6608335   -1.9003333   -1.4213337
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5584295   -1.7115833   -1.4052758
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9466989   -2.3975185   -1.4958793
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8851917   -2.2927584   -1.4776250
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.4212068   -2.5883021   -2.2541116
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1514855   -3.4503470   -2.8526240
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.6894492   -2.9849018   -2.3939966
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.5886052   -1.8336073   -1.3436032
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4990596   -2.6200304   -2.3780888
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -2.0085545   -2.2116312   -1.8054779
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1769486   -1.3504099   -1.0034873
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7994089   -1.9039122   -1.6949056
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.5203615   -1.6875158   -1.3532072
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9455561   -1.1054667   -0.7856456
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6378981   -1.7489571   -1.5268392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3823263   -1.5460085   -1.2186440
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.5118385   -1.5680505   -1.4556265
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.2975902   -2.5380676   -2.0571129
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8360498   -1.9691469   -1.7029526
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1096164   -0.4167052    0.1974724
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.4640215   -1.5799621   -1.3480808
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5724000   -0.8164572   -0.3283428
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.4963485   -1.5646396   -1.4280574
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.2025329   -2.4183938   -1.9866719
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.8950698   -2.0568103   -1.7333292
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.3780303   -2.5770918   -2.1789689
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.1384280   -3.2156712   -3.0611848
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.9584440   -3.1024008   -2.8144872
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.5775143   -1.6749475   -1.4800812
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.3937356   -2.4713156   -2.3161556
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -2.1203860   -2.2214574   -2.0193147
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9843549   -2.0821608   -1.8865489
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6567460   -2.7181511   -2.5953410
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2886449   -2.3734788   -2.2038109
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6660957   -1.7633541   -1.5688373
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4160196   -2.6344682   -2.1975710
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0904478   -2.2528575   -1.9280381
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.5780078   -1.6347810   -1.5212345
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.1982146   -2.2292043   -2.1672250
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8498212   -1.8959089   -1.8037335


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4001124   -0.7518200   -0.0484048
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0305884   -0.3411171    0.4022939
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4775859   -0.7687294   -0.1864423
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0140229   -0.4144434    0.4424892
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5287241   -0.8118331   -0.2456151
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.0922855   -0.3870931    0.2025221
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7631000   -1.0207919   -0.5054082
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3988511   -0.7005939   -0.0971083
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3437085   -0.6030432   -0.0843739
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1094578   -0.4127000    0.1937845
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5501272   -0.9883724   -0.1118821
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3130688   -0.6932807    0.0671431
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6407372   -0.9736681   -0.3078064
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2548935   -0.5458272    0.0360403
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.6093550   -0.7228785   -0.4958316
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3568805   -0.5981691   -0.1155919
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7321639   -0.9995017   -0.4648262
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3401800   -0.6607028   -0.0196571
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.6595622   -0.8828424   -0.4362820
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.1696618   -0.4305940    0.0912703
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6014387   -0.7928130   -0.4100644
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3192535   -0.5370501   -0.1014568
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4481407   -0.6301986   -0.2660829
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1890822   -0.4024839    0.0243196
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5492991   -0.6733243   -0.4252739
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4044992   -0.5201519   -0.2888465
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5738327   -0.8326396   -0.3150258
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4161736   -0.5611879   -0.2711594
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3090327   -0.7000775    0.0820120
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1778979   -0.6150189    0.2592231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.4874008   -0.5739868   -0.4008148
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.2078873   -0.3221385   -0.0936361
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6056412   -0.7127541   -0.4985282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.2348642   -0.3053528   -0.1643757
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7321722   -0.9525090   -0.5118354
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.3948376   -0.6434500   -0.1462251
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.6715996   -0.7969728   -0.5462264
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3846903   -0.5219674   -0.2474132
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5699638   -0.6786761   -0.4612514
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2636894   -0.3841046   -0.1432743
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7238859   -0.9170340   -0.5307379
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3264803   -0.4901441   -0.1628166
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6132784   -0.6669704   -0.5595863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.3030721   -0.3650579   -0.2410863
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.6322128   -1.0078394   -0.2565862
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0497962   -0.4606713    0.3610788
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1451019   -0.5020175    0.2118138
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.1462394   -0.6493247    0.3568459
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6727269   -0.9869690   -0.3584849
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.3172580   -0.6277730   -0.0067430
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8536890   -1.1308363   -0.5765417
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3621431   -0.6953994   -0.0288869
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6515300   -0.9449035   -0.3581565
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3546593   -0.7018045   -0.0075141
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3882694   -0.8647425    0.0882038
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3267621   -0.7630517    0.1095274
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7302787   -1.0730742   -0.3874831
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2682424   -0.6085501    0.0720653
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9104544   -1.1827098   -0.6381990
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4199493   -0.7367922   -0.1031064
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6224603   -0.8234303   -0.4214903
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3434129   -0.5827767   -0.1040491
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.6923420   -0.8859465   -0.4987375
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4367701   -0.6651724   -0.2083678
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.7857518   -1.0322733   -0.5392302
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3242113   -0.4673643   -0.1810583
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.3544051   -1.6904223   -1.0183878
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4627836   -0.8398830   -0.0856842
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7061844   -0.9322850   -0.4800837
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3987213   -0.5726858   -0.2247567
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7603977   -0.9736088   -0.5471865
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5804136   -0.8256216   -0.3352057
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8162213   -0.9409190   -0.6915236
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5428717   -0.6829898   -0.4027535
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6723912   -0.7882867   -0.5564957
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3042900   -0.4341116   -0.1744685
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7499239   -0.9892839   -0.5105640
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4243521   -0.6137798   -0.2349244
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6202069   -0.6802583   -0.5601554
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2718134   -0.3452169   -0.1984099


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2510428   -0.5596089    0.0575234
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1103492   -0.2335285    0.0128301
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2631299   -0.4635970   -0.0626627
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5326747   -0.7371156   -0.3282337
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2236417   -0.4186625   -0.0286208
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1083843   -0.1876014   -0.0291671
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2006634   -0.3048332   -0.0964936
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2933439   -0.3457047   -0.2409831
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4798326   -0.6887481   -0.2709171
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4233013   -0.6022403   -0.2443624
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4023871   -0.5487096   -0.2560647
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3020585   -0.4456502   -0.1584669
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1717343   -0.2081858   -0.1352828
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0733110   -0.0959057   -0.0507163
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2300465   -0.5540033    0.0939103
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0101852   -0.0139010   -0.0064693
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0699137   -0.0828718   -0.0569555
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5734607   -0.7640167   -0.3829048
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.3977165   -0.4808257   -0.3146074
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3724330   -0.4562180   -0.2886481
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1927817   -0.2495318   -0.1360316
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4357997   -0.4817328   -0.3898665
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.4232143   -0.7571210   -0.0893075
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0794685   -0.2288194    0.0698825
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4175595   -0.6410693   -0.1940498
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5830445   -0.8092247   -0.3568642
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4462968   -0.6698429   -0.2227507
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0847934   -0.1638733   -0.0057134
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2243539   -0.3405309   -0.1081770
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6304526   -0.8526571   -0.4082482
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4233114   -0.5770462   -0.2695765
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.4957084   -0.6456955   -0.3457213
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0711256   -0.0935769   -0.0486743
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0226017   -0.0347872   -0.0104161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1018138   -0.1342621   -0.0693655
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6183077   -0.8028040   -0.4338114
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4935577   -0.5755543   -0.4115611
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4297597   -0.5184149   -0.3411044
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2190863   -0.2861786   -0.1519940
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4357555   -0.4872660   -0.3842450
