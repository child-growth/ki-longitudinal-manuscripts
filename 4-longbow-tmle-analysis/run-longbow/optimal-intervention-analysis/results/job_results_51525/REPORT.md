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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        65     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           107     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        28     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            46     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             95     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        57     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             96     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        49     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            58     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            161     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           173     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            76     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        24     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            59     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             33     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        38     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         6      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1186    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       192    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13206   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            125   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       398   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7704    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            558    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1405    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            545     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           530    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm            763    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       481    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2900   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11735   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4901   19536
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/9570d2bd-7d0a-4577-a364-e212d8b262a2/70b30a86-c8fa-4b6b-8d11-71abccb3fe65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0928319   -1.4177206   -0.7679432
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.5474372   -0.7414235   -0.3534509
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7590662   -1.0413214   -0.4768110
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2898783   -0.6221167    0.0423600
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6532059   -0.9069045   -0.3995073
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6030550   -0.7528439   -0.4532661
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8020525   -1.3050445   -0.2990604
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1853770   -1.4932405   -0.8775135
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1983665   -1.0509757    0.6542426
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1095953    0.0387334    0.1804572
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.2732568    1.1171977    1.4293159
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4384833   -0.4659022   -0.4110645
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.6168103    0.4274580    0.8061626
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2759936   -0.3718225   -0.1801648
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0769235   -0.0011358    0.1549829
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1381028   -1.1841032   -1.0921024
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.1044871   -1.3709069   -0.8380672
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0752532   -0.2769124    0.4274189
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9187044   -1.1400463   -0.6973624
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0341929   -0.2461182    0.1777324
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1343523   -1.3577279   -0.9109768
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8865431   -1.0217578   -0.7513284
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1704746   -1.3630161   -0.9779330
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0720647   -1.1591389   -0.9849906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4110850   -1.6370572   -1.1851127
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9858417   -1.2016997   -0.7699836
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6765915   -0.8459814   -0.5072017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8935686   -1.0588382   -0.7282989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3469853   -0.4090035   -0.2849671
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8402440   -0.8934069   -0.7870812
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.3698068   -1.7503902   -0.9892234
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1332884    0.0399696    0.2266072
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8100048   -0.8408309   -0.7791787
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2446821   -1.4491999   -1.0401643
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4915146   -0.5856237   -0.3974056
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7100688   -0.7989349   -0.6212026
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4685629   -1.5563492   -1.3807766
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7372250   -0.7837277   -0.6907222
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4327486   -1.7422692   -1.1232281
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0821082   -0.1627737    0.3269901
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2695741   -1.5025523   -1.0365958
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7599671   -0.9987549   -0.5211793
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.2976857   -1.5535023   -1.0418691
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4367531   -1.6304312   -1.2430750
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3734176   -2.5389682   -2.2078669
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5405488   -1.7901337   -1.2909639
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1402287   -1.3295213   -0.9509360
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9107768   -1.0695348   -0.7520189
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4880991   -1.5447960   -1.4314021
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1075791   -0.4148495    0.1996913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.3026088   -2.4683994   -2.1368182
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.2523439   -2.4560895   -2.0485983
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3194588   -1.4165441   -1.2223735
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9158252   -2.0108738   -1.8207767
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6603463   -1.7576500   -1.5630426
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4419775   -1.5015860   -1.3823691


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0509377   -0.0152181    0.1170935
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3266356    1.1675034    1.4857678
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4773539   -0.5018158   -0.4528920
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5749898   -1.5947766   -1.5552029
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.9009844   -0.9286528   -0.8733161
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5677937   -1.6196515   -1.5159358
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4107937   -2.5337436   -2.2878437
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8678134   -2.9347113   -2.8009156
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.8566355   -1.9110340   -1.8022370
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8744367   -1.9556750   -1.7931984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127573   -2.0405350   -1.9849796


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0473034   -0.2494886    0.3440955
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1922911   -0.3326544   -0.0519277
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2609843   -0.5123492   -0.0096194
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4154124   -0.7355062   -0.0953185
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2854173   -0.5081934   -0.0626412
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0891380   -0.1616167   -0.0166593
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1247244   -0.5432182    0.2937694
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2950076   -0.5090893   -0.0809259
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3309192   -1.0858131    0.4239747
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0586576   -0.0917297   -0.0255856
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0533788    0.0303134    0.0764442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0388705   -0.0512104   -0.0265307
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.4832865   -0.6625566   -0.3040164
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3213288   -0.4022000   -0.2404577
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3259727   -0.3973010   -0.2546444
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4368869   -0.4794509   -0.3943230
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1011907   -0.3554179    0.1530365
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0242325   -0.3183220    0.2698570
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2961325   -0.4995031   -0.0927620
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5268664   -0.7328768   -0.3208560
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1928964   -0.3975589    0.0117661
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1862581   -0.2849943   -0.0875219
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1896469   -0.3437052   -0.0355886
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3348245   -0.3814113   -0.2882377
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.4771208   -0.6867960   -0.2674457
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4215404   -0.6152088   -0.2278720
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4082653   -0.5579338   -0.2585968
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3051098   -0.4547596   -0.1554599
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1954700   -0.2339268   -0.1570133
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0756863   -0.0984819   -0.0528907
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1901138   -0.5360516    0.1558239
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0175073   -0.0215815   -0.0134331
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0909796   -0.1052661   -0.0766932
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5669404   -0.7572461   -0.3766346
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4339004   -0.5137636   -0.3540373
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4305036   -0.5103981   -0.3506091
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1892122   -0.2457516   -0.1326728
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5766805   -0.6177976   -0.5355634
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5103646   -0.8146720   -0.2060571
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0402739   -0.2049937    0.1244460
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5743419   -0.7860216   -0.3626621
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5152522   -0.7411661   -0.2893382
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4524138   -0.6764846   -0.2283431
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1852768   -0.3437151   -0.0268386
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2324703   -0.3550893   -0.1098513
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6402457   -0.8653762   -0.4151152
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4436949   -0.6127447   -0.2746452
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5187562   -0.6683941   -0.3691184
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0796946   -0.1029834   -0.0564059
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0246389   -0.0369866   -0.0122912
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1081848   -0.2091131   -0.0072565
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6154696   -0.8035500   -0.4273892
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5371767   -0.6188253   -0.4555281
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4740398   -0.5595306   -0.3885490
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2140904   -0.2811222   -0.1470586
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5707797   -0.6249492   -0.5166103
