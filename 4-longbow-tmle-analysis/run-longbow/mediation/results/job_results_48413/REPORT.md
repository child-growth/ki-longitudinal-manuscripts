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
![](/tmp/243064b5-94e2-4201-b985-f2ae99cfd2ec/efd6a45d-bef3-40dd-b796-bb20d6f3ae56/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/243064b5-94e2-4201-b985-f2ae99cfd2ec/efd6a45d-bef3-40dd-b796-bb20d6f3ae56/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/243064b5-94e2-4201-b985-f2ae99cfd2ec/efd6a45d-bef3-40dd-b796-bb20d6f3ae56/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2509125   -0.7160225    0.2141974
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1231362   -0.2707414    0.0244690
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0652544   -0.3722461    0.2417374
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0155441    0.7906952    1.2403931
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.7699814    0.4284031    1.1115597
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.1348626    0.7960275    1.4736978
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5429485   -0.7884914   -0.2974056
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6700595   -0.8683774   -0.4717415
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.7841847   -0.9971401   -0.5712292
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2906482    0.0046513    0.5766450
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.1018760   -0.0663221    0.2700741
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.0085715   -0.2981035    0.2809604
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1470576    0.8687927    1.4253226
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9856141    0.8248980    1.1463303
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1619444    0.9041789    1.4197100
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4935912    0.3136919    0.6734906
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.7675491    0.3251407    1.2099574
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.5980331    0.1576076    1.0384585
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5195799    0.3544058    0.6847539
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6380527    0.3452655    0.9308399
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.5352748    0.2214305    0.8491192
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6043667   -0.7757123   -0.4330212
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7076592   -0.8579279   -0.5573906
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6202400   -0.7604195   -0.4800605
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.9977490   -1.2570042   -0.7384938
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9614612   -1.1210748   -0.8018476
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.0653984   -1.2877306   -0.8430662
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5366758   -0.7406430   -0.3327087
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4612392   -0.5742788   -0.3481996
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3002373   -0.5050740   -0.0954006
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0957596   -0.2832609    0.0917417
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2920696   -0.4004041   -0.1837351
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0902100   -0.2730512    0.0926313
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1136193   -0.0594625    0.2867010
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.0001201   -0.1031956    0.1029554
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0398483   -0.1324544    0.2121510
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0498153   -0.0156913    0.1153219
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2396285    0.1039286    0.3753283
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0365560   -0.0845704    0.1576823
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2316671   -0.2896627   -0.1736715
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2303055   -0.5738714    0.1132604
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0185135   -0.1608215    0.1237946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.3471029    0.0434764    0.6507295
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0497514   -0.2087235    0.1092208
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.1796216   -0.4526566    0.0934135
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5811424    0.5225482    0.6397366
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.7017210    0.6148156    0.7886264
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5824230    0.4446950    0.7201509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2823784    0.2514535    0.3133034
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3420150    0.2228779    0.4611520
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3313648    0.2542596    0.4084701
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1393233   -0.0621034    0.3407499
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2389400    0.1485842    0.3292959
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1063390   -0.0425626    0.2552407
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5930493   -0.6955961   -0.4905025
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7731905   -0.8542236   -0.6921574
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6255887   -0.7282102   -0.5229672
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3187247   -0.4100432   -0.2274061
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3027391   -0.3596559   -0.2458223
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2503804   -0.3297850   -0.1709758
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4202123    0.3304731    0.5099514
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5841548    0.3911519    0.7771577
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4354426    0.2791499    0.5917353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5581242   -0.6046696   -0.5115788
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6021819   -0.6267753   -0.5775885
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.6135642   -0.6485622   -0.5785663
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.7872430   -1.3454538   -0.2290323
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8212025   -0.9677283   -0.6746767
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7275266   -0.9779714   -0.4770819
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5387527    0.2375044    0.8400011
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1829755   -0.1318985    0.4978495
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5035095    0.0342446    0.9727745
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6633311   -0.8809749   -0.4456874
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.1070899   -1.2770402   -0.9371396
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8975814   -1.1117920   -0.6833708
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2213823   -0.5072410    0.0644764
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4461051   -0.5929095   -0.2993007
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.2831196   -0.5206553   -0.0455840
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0968760   -0.1465706    0.3403227
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.1015903   -0.0653804    0.2685609
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1461655   -0.0928426    0.3851736
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4128484    0.2799437    0.5457531
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.3457708   -0.1257777    0.8173193
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4130230    0.0524698    0.7735763
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1397667   -0.0149692    0.2945027
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.1945920   -0.4666227    0.0774387
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.1311552   -0.1653583    0.4276686
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8916431   -1.1448095   -0.6384767
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9264868   -1.0478462   -0.8051274
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8565795   -1.0887846   -0.6243745
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7640200   -0.9696731   -0.5583669
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9746348   -1.0704023   -0.8788673
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.8016324   -0.9868057   -0.6164590
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3954554   -0.5895191   -0.2013918
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7220543   -0.8451905   -0.5989181
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5260073   -0.7286577   -0.3233568
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8270750   -0.8803799   -0.7737700
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.8966099   -1.1437117   -0.6495082
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6754975   -0.8196332   -0.5313619
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6888062    0.5725266    0.8050859
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5852118    0.3706300    0.7997936
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6702887    0.3354178    1.0051595
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.2031674   -1.3308956   -1.0754392
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4204799   -1.8842511   -0.9567086
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.8782334   -1.1206518   -0.6358150
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2748750   -0.4431394   -0.1066106
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.2991697   -0.3675968   -0.2307427
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2326075   -0.3580725   -0.1071425
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4537823   -0.5400922   -0.3674724
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6792045   -0.7482808   -0.6101281
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5375764   -0.6286487   -0.4465040
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.5060474   -0.5863575   -0.4257374
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.6959105   -0.7475925   -0.6442286
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5330334   -0.6006087   -0.4654581
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0141375   -0.1139695    0.0856945
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0985093   -0.3107346    0.1137161
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.1064928   -0.3160145    0.1030288
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.2442201   -1.3040517   -1.1843886
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3233767   -1.3534129   -1.2933405
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2673140   -1.3106962   -1.2239318


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1277764   -0.3626444    0.6181971
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1856582   -0.3768587    0.7481751
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2455628   -0.6560918    0.1649663
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1193185   -0.2884945    0.5271315
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1271110   -0.4440863    0.1898644
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2412362   -0.5653694    0.0828970
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1887721   -0.5195348    0.1419905
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.2992197   -0.7030321    0.1045927
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1614435   -0.4825976    0.1597106
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0148868   -0.3648550    0.3946286
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.2739578   -0.2057828    0.7536985
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.1044418   -0.3694870    0.5783706
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1184728   -0.2180039    0.4549495
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm           0.0156950   -0.3391238    0.3705137
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1032925   -0.2616605    0.0550755
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0158732   -0.1888789    0.1571324
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0362878   -0.2685273    0.3411029
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0676494   -0.4085614    0.2732626
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0754366   -0.1576508    0.3085241
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2364386   -0.0532127    0.5260898
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1963100   -0.4126997    0.0200796
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm           0.0055496   -0.2554337    0.2665330
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1137394   -0.3152058    0.0877271
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0737710   -0.3179060    0.1703640
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1898132    0.0390157    0.3406106
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0132594   -0.1508973    0.1243786
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm           0.0013616   -0.3468818    0.3496050
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.2131537    0.0600642    0.3662431
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3968543   -0.7387338   -0.0549747
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.5267245   -0.9340142   -0.1194348
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.1205786    0.0220647    0.2190926
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0012806   -0.1293461    0.1319072
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0596366   -0.0633297    0.1826029
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0489864   -0.0337850    0.1317578
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0996168   -0.1200374    0.3192710
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0329842   -0.2824747    0.2165062
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1801412   -0.3109105   -0.0493719
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0325394   -0.1775740    0.1124952
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0159856   -0.0910983    0.1230695
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0683443   -0.0523116    0.1890002
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1639425   -0.0497079    0.3775929
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0152304   -0.1657329    0.1961937
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0440577   -0.0946871    0.0065717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0554400   -0.1124121    0.0015320
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.0339595   -0.6179463    0.5500273
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0597164   -0.5591939    0.6786267
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3557773   -0.7913650    0.0798105
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0352432   -0.5936125    0.5231260
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.4437588   -0.7205478   -0.1669698
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2342503   -0.5402073    0.0717068
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2247229   -0.5459325    0.0964868
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0617374   -0.4328021    0.3093273
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0047142   -0.2873745    0.2968029
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0492894   -0.2902222    0.3888010
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0670776   -0.5574678    0.4233125
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0001746   -0.3831833    0.3835325
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3343587   -0.6486074   -0.0201100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0086116   -0.3437805    0.3265573
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0348437   -0.3153706    0.2456832
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0350636   -0.3090527    0.3791798
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2106148   -0.4370403    0.0158107
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0376124   -0.3125899    0.2373652
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3265989   -0.5550232   -0.0981746
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1305518   -0.4102642    0.1491605
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0695350   -0.3215554    0.1824854
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1515775   -0.0017856    0.3049405
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1035944   -0.3592551    0.1520663
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0185175   -0.3388898    0.3018548
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2173125   -0.6989784    0.2643534
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.3249340    0.0484346    0.6014333
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0242947   -0.2059211    0.1573317
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0422676   -0.1676368    0.2521719
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2254222   -0.3360054   -0.1148390
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0837941   -0.2091821    0.0415939
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.1898631   -0.2847965   -0.0949297
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0269860   -0.1315512    0.0775793
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0843717   -0.3186084    0.1498650
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0923553   -0.3242542    0.1395436
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0791566   -0.1459047   -0.0124085
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0230939   -0.0941853    0.0479976


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1111166   -0.3308176    0.5530507
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0438217   -0.1880877    0.1004444
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1558458   -0.3755525    0.0638608
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1796030   -0.4449720    0.0857661
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0906790   -0.3361177    0.1547598
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0354516   -0.0534977    0.1244009
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0025286   -0.1113825    0.1063253
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0382638   -0.1311469    0.0546194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0076336   -0.2406733    0.2254062
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0977657   -0.0894706    0.2850020
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1122295   -0.2757766    0.0513175
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0838570   -0.2414289    0.0737149
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0289604   -0.0130122    0.0709330
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0262523    0.0020471    0.0504574
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.3726946   -0.6568457   -0.0885434
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0016523   -0.0026758    0.0059804
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0104570   -0.0039735    0.0248875
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0532771   -0.1360258    0.2425801
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0837621   -0.1692147    0.0016904
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0248813   -0.0567127    0.1064754
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0313308   -0.0268590    0.0895206
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0350953   -0.0769858    0.0067952
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0335824   -0.5572059    0.4900410
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0921255   -0.2688711    0.0846200
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2892352   -0.4867383   -0.0917322
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1550651   -0.4162163    0.1060861
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0230245   -0.1919882    0.2380371
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0032330   -0.0739660    0.0674999
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0896733   -0.1974240    0.0180775
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0199360   -0.2494781    0.2096061
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1224791   -0.2981810    0.0532227
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2148948   -0.3910453   -0.0387443
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0169033   -0.0050282    0.0388348
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0018308   -0.0114889    0.0078273
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0228063   -0.0489011    0.0945136
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0095286   -0.1657848    0.1467276
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1181700   -0.1895823   -0.0467577
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1039117   -0.1755839   -0.0322395
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0328143   -0.1006393    0.0350106
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0528440   -0.1077469    0.0020588
