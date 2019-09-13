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
![](/tmp/cb69ef60-43da-4f7a-9780-2019821e3ee2/3fedd5f4-4549-4658-bdcc-6f9b9f4d6000/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cb69ef60-43da-4f7a-9780-2019821e3ee2/3fedd5f4-4549-4658-bdcc-6f9b9f4d6000/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cb69ef60-43da-4f7a-9780-2019821e3ee2/3fedd5f4-4549-4658-bdcc-6f9b9f4d6000/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.8901504   -1.2075618   -0.5727391
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3647587   -1.5187535   -1.2107639
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9108806   -1.1007568   -0.7210044
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1589362   -0.0320200    0.3498924
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.2873353   -0.5129279   -0.0617427
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1433482   -0.2386082    0.5253045
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9546743   -1.1750990   -0.7342497
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4789084   -1.6574359   -1.3003810
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0594496   -1.2606866   -0.8582126
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0154065   -0.2282923    0.1974794
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7808879   -0.9290000   -0.6327758
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4019966   -0.6156723   -0.1883208
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1107089   -1.3232950   -0.8981228
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4544225   -1.6050796   -1.3037653
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.2316495   -1.4516039   -1.0116951
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9646657   -1.1102515   -0.8190800
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5174626   -1.9432766   -1.0916486
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2895344   -1.6330471   -0.9460217
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1781232   -1.3260194   -1.0302269
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.7484590   -2.0401971   -1.4567209
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4597122   -1.7120650   -1.2073594
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1202462   -1.2081917   -1.0323007
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7067530   -1.8465093   -1.5669966
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4721145   -1.6824905   -1.2617385
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.3546531   -1.5802447   -1.1290615
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1322183   -2.2760688   -1.9883678
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7145382   -1.9464176   -1.4826588
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9602035   -1.1651998   -0.7552071
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6564513   -1.7665837   -1.5463188
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1432313   -1.3174294   -0.9690333
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6866830   -0.8517343   -0.5216318
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2932153   -1.3918176   -1.1946129
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9946951   -1.1382165   -0.8511737
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9028522   -1.0619052   -0.7437991
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3462236   -1.4380663   -1.2543809
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0848775   -1.2326472   -0.9371078
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3733133   -0.4342225   -0.3124041
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.9070926   -1.0179168   -0.7962683
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7807696   -0.8792779   -0.6822613
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8449787   -0.8980891   -0.7918684
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4475738   -1.6978386   -1.1973090
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2431093   -1.3779586   -1.1082600
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3529625   -1.7066082   -0.9993168
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6442769   -1.8119635   -1.4765903
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4800869   -1.7304585   -1.2297153
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1260663    0.0320740    0.2200586
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.3626049   -0.4411502   -0.2840597
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.0945448   -0.2098343    0.0207447
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8308703   -0.8612099   -0.8005308
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4449633   -1.5488803   -1.3410463
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.0640290   -1.1315644   -0.9964936
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2195990   -1.4214239   -1.0177741
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9600450   -2.0427155   -1.8773745
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6516052   -1.7949635   -1.5082469
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5164046   -0.6116491   -0.4211601
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2103455   -1.2888069   -1.1318842
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9107501   -1.0073320   -0.8141682
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7537144   -0.8473574   -0.6600713
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3450991   -1.4026189   -1.2875793
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0298310   -1.1075198   -0.9521422
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4648566   -1.5526554   -1.3770578
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1861668   -2.3560668   -2.0162667
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.8028185   -1.9406594   -1.6649775
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.8997186   -0.9509359   -0.8485012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.4841295   -1.5101308   -1.4581282
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1878039   -1.2251672   -1.1504406
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.5792438   -1.9565904   -1.2018972
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1517795   -2.3026493   -2.0009097
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5467919   -1.7601449   -1.3334389
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1134360   -0.1158942    0.3427662
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0086508   -0.2866383    0.2693366
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.1688154   -0.5822553    0.2446245
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4942272   -1.7501003   -1.2383541
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1272190   -2.3138083   -1.9406296
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.7500230   -1.9426431   -1.5574028
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7128274   -0.9428994   -0.4827554
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5534298   -1.7042531   -1.4026065
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0751136   -1.3202348   -0.8299924
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3121625   -1.5546831   -1.0696420
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9466324   -2.0969768   -1.7962881
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.6407500   -1.8724513   -1.4090488
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5386531   -1.6929724   -1.3843338
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.9141754   -2.3756445   -1.4527064
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.8882976   -2.2949019   -1.4816934
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.3914660   -2.5559961   -2.2269360
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1808664   -3.4940278   -2.8677050
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7554111   -3.0484253   -2.4623969
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4994808   -1.7353086   -1.2636531
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4830920   -2.6041780   -2.3620059
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9404497   -2.1446144   -1.7362851
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1708216   -1.3449983   -0.9966450
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7801010   -1.8850550   -1.6751470
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.5061314   -1.6714350   -1.3408279
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9570946   -1.1218998   -0.7922894
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6136026   -1.7231800   -1.5040251
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3809253   -1.5452141   -1.2166365
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.4995025   -1.5556209   -1.4433842
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.2635717   -2.4813084   -2.0458350
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.8054970   -1.9375558   -1.6734383
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1091349   -0.4157154    0.1974457
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.4978319   -1.6173498   -1.3783140
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5032247   -0.7503125   -0.2561370
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -2.2710764   -2.4143145   -2.1278384
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -3.0014884   -3.3226548   -2.6803220
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -2.6597520   -2.9521859   -2.3673181
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.2732639   -2.4756008   -2.0709271
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.0073587   -3.0843748   -2.9303425
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.7857073   -2.9306218   -2.6407928
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.3605259   -1.4587915   -1.2622604
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.1769254   -2.2539772   -2.0998736
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -1.9034751   -2.0058140   -1.8011361
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9508178   -2.0465853   -1.8550503
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6341107   -2.6955066   -2.5727147
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2658426   -2.3502253   -2.1814600
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6622640   -1.7601260   -1.5644020
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.4029739   -2.6182187   -2.1877290
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0583631   -2.2180081   -1.8987181
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.5868413   -1.6435086   -1.5301741
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.1900651   -2.2212886   -2.1588416
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8628079   -1.9080402   -1.8175755


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.4746083   -0.8275061   -0.1217105
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0207302   -0.3906768    0.3492165
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4462715   -0.7418147   -0.1507284
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0155880   -0.4413169    0.4101408
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5242341   -0.8077882   -0.2406800
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1047752   -0.4041424    0.1945920
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7654815   -1.0247996   -0.5061634
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3865901   -0.6878311   -0.0853491
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.3437136   -0.6047328   -0.0826943
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.1209406   -0.4267928    0.1849116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5527969   -1.0029017   -0.1026920
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3248686   -0.6980695    0.0483322
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5703358   -0.8943435   -0.2463281
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2815890   -0.5737208    0.0105427
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5865067   -0.7048054   -0.4682080
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3518683   -0.6006771   -0.1030594
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7775651   -1.0456240   -0.5095062
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3598851   -0.6835713   -0.0361989
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.6962478   -0.9288469   -0.4636487
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.1830279   -0.4512923    0.0852366
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6065322   -0.7967376   -0.4163269
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3080121   -0.5255670   -0.0904571
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4433714   -0.6270596   -0.2596833
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1820254   -0.3983878    0.0343371
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5337793   -0.6585978   -0.4089608
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.4074563   -0.5217689   -0.2931437
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.6025951   -0.8584410   -0.3467492
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3981306   -0.5429761   -0.2532851
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.2913144   -0.6838330    0.1012041
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1271244   -0.5613337    0.3070849
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.4886712   -0.5772254   -0.4001171
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.2206110   -0.3326563   -0.1085658
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6140930   -0.7212916   -0.5068943
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.2331586   -0.3057907   -0.1605266
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7404459   -0.9588590   -0.5220329
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4320062   -0.6794975   -0.1845148
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.6939409   -0.8177495   -0.5701323
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3943455   -0.5303330   -0.2583579
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5913847   -0.7016947   -0.4810747
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2761166   -0.3986049   -0.1536283
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7213102   -0.9128145   -0.5298059
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3379619   -0.5015063   -0.1744174
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.5844109   -0.6390018   -0.5298200
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2880853   -0.3504418   -0.2257289
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.5725357   -0.9790754   -0.1659960
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0324519   -0.4014024    0.4663063
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1220869   -0.4791082    0.2349345
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.2822514   -0.7534571    0.1889543
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6329918   -0.9488633   -0.3171202
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2557958   -0.5755314    0.0639398
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8406024   -1.1158372   -0.5653677
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3622862   -0.6992594   -0.0253130
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.6344699   -0.9168665   -0.3520733
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3285875   -0.6566359   -0.0005390
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3755223   -0.8628326    0.1117880
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3496445   -0.7849430    0.0856540
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7894003   -1.1430021   -0.4357986
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3639451   -0.7002965   -0.0275936
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9836111   -1.2484559   -0.7187663
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4409689   -0.7517061   -0.1302317
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6092794   -0.8107699   -0.4077888
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3353098   -0.5736716   -0.0969480
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.6565079   -0.8532273   -0.4597886
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4238307   -0.6559149   -0.1917464
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.7640692   -0.9879429   -0.5401955
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.3059945   -0.4478260   -0.1641630
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.3886971   -1.7122466   -1.0651475
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3940899   -0.7768296   -0.0113502
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.7304120   -1.0819268   -0.3788973
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3886756   -0.7144597   -0.0628914
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7340947   -0.9497072   -0.5184822
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5124434   -0.7605158   -0.2643710
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8163995   -0.9413386   -0.6914604
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5429491   -0.6847278   -0.4011705
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6832929   -0.7974354   -0.5691503
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3150248   -0.4430249   -0.1870248
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7407099   -0.9780268   -0.5033929
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3960991   -0.5839259   -0.2082724
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6032238   -0.6628925   -0.5435551
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2759665   -0.3482842   -0.2036488


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3155273   -0.6241409   -0.0069137
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1079155   -0.2319320    0.0161011
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2601625   -0.4617317   -0.0585934
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5456529   -0.7522976   -0.3390081
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.2165399   -0.4117961   -0.0212837
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1081355   -0.1872149   -0.0290560
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1819983   -0.2834796   -0.0805169
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2866430   -0.3412098   -0.2320762
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.5335527   -0.7437262   -0.3233792
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4471786   -0.6339359   -0.2604212
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.3981738   -0.5429586   -0.2533890
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2958262   -0.4394218   -0.1522305
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1691421   -0.2057090   -0.1325751
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0709516   -0.0935828   -0.0483204
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2069581   -0.5319530    0.1180367
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0102852   -0.0141741   -0.0063962
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0701141   -0.0832834   -0.0569447
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5920235   -0.7811503   -0.4028966
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4090104   -0.4904136   -0.3276073
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3868580   -0.4720690   -0.3016470
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1929186   -0.2495141   -0.1363230
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4141869   -0.4610287   -0.3673452
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3638694   -0.7318237    0.0040849
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0716017   -0.2145830    0.0713796
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3496888   -0.5747434   -0.1246341
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5623919   -0.7862758   -0.3385080
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.4379370   -0.6473062   -0.2285677
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0833768   -0.1635604   -0.0031932
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2144218   -0.3293348   -0.0995088
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6813136   -0.8961620   -0.4664652
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4131020   -0.5673540   -0.2588500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.4724384   -0.6270741   -0.3178028
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0682912   -0.0902143   -0.0463680
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0230832   -0.0349089   -0.0112575
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1397172   -0.2128082   -0.0666262
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5945495   -0.7811038   -0.4079952
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4961096   -0.5790226   -0.4131966
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4390472   -0.5258867   -0.3522077
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2121728   -0.2794356   -0.1449100
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4259160   -0.4769043   -0.3749276
