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
![](/tmp/5c4352b8-e708-4fef-8532-e28be10aaf14/c1ce34cb-58fd-4122-b039-ec19c89083fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5c4352b8-e708-4fef-8532-e28be10aaf14/c1ce34cb-58fd-4122-b039-ec19c89083fb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/5c4352b8-e708-4fef-8532-e28be10aaf14/c1ce34cb-58fd-4122-b039-ec19c89083fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3082934   -0.7893774    0.1727907
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1459818   -0.2933744    0.0014109
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0735438   -0.3706946    0.2236069
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.9899736    0.7632268    1.2167204
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.7874980    0.4616494    1.1133465
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.1584654    0.7645163    1.5524145
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5931334   -0.8387003   -0.3475664
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6864939   -0.8843887   -0.4885992
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8275999   -1.0428073   -0.6123924
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.4133065    0.1197338    0.7068792
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.1052149   -0.0630041    0.2734338
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0834560   -0.1970968    0.3640088
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1626873    0.8893746    1.4360000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9815655    0.8206884    1.1424427
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1867614    0.9258052    1.4477176
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5154268    0.3359900    0.6948636
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.7170686    0.2594136    1.1747236
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.5053355    0.0825917    0.9280792
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5125516    0.3443811    0.6807221
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.5545761    0.2537216    0.8554305
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4825463    0.1575018    0.8075907
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6043667   -0.7757123   -0.4330212
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7076592   -0.8579279   -0.5573906
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6202400   -0.7604195   -0.4800605
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0712597   -1.3401213   -0.8023981
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9741356   -1.1344586   -0.8138125
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.1050386   -1.3231784   -0.8868988
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5452971   -0.7473102   -0.3432841
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4605036   -0.5731540   -0.3478531
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.2987809   -0.5020162   -0.0955457
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0722292   -0.2609396    0.1164812
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2922306   -0.4002678   -0.1841933
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0968589   -0.2790536    0.0853358
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0788481   -0.0950966    0.2527929
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0147629   -0.0872896    0.1168154
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0158345   -0.1545359    0.1862049
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0527135   -0.0127621    0.1181891
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2388631    0.1040071    0.3737191
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0439931   -0.0775034    0.1654896
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2304270   -0.2883285   -0.1725256
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2499588   -0.5813337    0.0814161
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0174674   -0.1626580    0.1277233
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.2728160   -0.0175399    0.5631719
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0565839   -0.2151895    0.1020217
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.2117153   -0.4859826    0.0625520
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5810503    0.5224415    0.6396592
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6798692    0.5934539    0.7662845
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5909176    0.4533936    0.7284416
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2811035    0.2501722    0.3120349
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3332314    0.2129502    0.4535127
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3380788    0.2611065    0.4150512
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1386953   -0.0611602    0.3385508
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2332162    0.1432679    0.3231645
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1129815   -0.0381310    0.2640940
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5820570   -0.6842861   -0.4798279
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7765176   -0.8566438   -0.6963913
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6259888   -0.7281168   -0.5238608
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3189639   -0.4103107   -0.2276171
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3016394   -0.3587231   -0.2445557
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2396532   -0.3194343   -0.1598721
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4253690    0.3354509    0.5152870
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.6022346    0.4125229    0.7919463
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4616614    0.3055158    0.6178071
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5539185   -0.6000778   -0.5077592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6021050   -0.6266457   -0.5775642
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.6124326   -0.6474235   -0.5774418
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9107939   -1.4864761   -0.3351118
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8219060   -0.9680144   -0.6757975
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7477821   -0.9986615   -0.4969027
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5567301    0.2537167    0.8597434
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.1809852   -0.1322264    0.4941969
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5555946    0.0922096    1.0189795
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.6811665   -0.9022945   -0.4600386
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.1131732   -1.2830223   -0.9433240
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9115698   -1.1266974   -0.6964422
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2725916   -0.5544219    0.0092386
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4443890   -0.5916676   -0.2971104
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3113858   -0.5418161   -0.0809554
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0815965   -0.1493362    0.3125291
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0917966   -0.0750097    0.2586028
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1177719   -0.1114235    0.3469673
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4162201    0.2838911    0.5485492
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.3196607   -0.1377238    0.7770453
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4211229    0.0745422    0.7677035
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1068205   -0.0527294    0.2663704
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2444580   -0.5117312    0.0228153
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.0162193   -0.3357619    0.3033232
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8833255   -1.1336986   -0.6329523
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9354004   -1.0574602   -0.8133406
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8690168   -1.0961815   -0.6418521
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7906686   -0.9884707   -0.5928664
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9708953   -1.0660461   -0.8757445
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.8126548   -0.9990687   -0.6262410
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3978563   -0.5955070   -0.2002056
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7247451   -0.8484593   -0.6010310
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5216503   -0.7258457   -0.3174550
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8272399   -0.8804858   -0.7739939
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.9094871   -1.1533677   -0.6656066
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6633845   -0.8084168   -0.5183521
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6886495    0.5725581    0.8047408
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5945594    0.3732155    0.8159033
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6491883    0.3090428    0.9893339
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.2039848   -1.3310655   -1.0769040
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.5534219   -1.9973994   -1.1094444
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.8122008   -1.0492618   -0.5751398
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2624194   -0.4336571   -0.0911817
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.2962145   -0.3645572   -0.2278718
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2336051   -0.3615927   -0.1056176
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4608140   -0.5470207   -0.3746074
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6779735   -0.7471894   -0.6087577
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5338834   -0.6257763   -0.4419905
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.5034997   -0.5834997   -0.4234996
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.6962430   -0.7479311   -0.6445549
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5243921   -0.5916214   -0.4571627
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0151132   -0.1145657    0.0843393
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0652979   -0.2740154    0.1434195
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.0754980   -0.2861031    0.1351071
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.2417640   -1.3014925   -1.1820355
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3254341   -1.3556145   -1.2952536
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2667986   -1.3109602   -1.2226370


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1623116   -0.3406782    0.6653014
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2347495   -0.3303139    0.7998130
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2024757   -0.6000459    0.1950946
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.1684918   -0.2855781    0.6225616
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0933606   -0.4094678    0.2227467
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2344665   -0.5613842    0.0924512
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.3080917   -0.6460016    0.0298182
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3298505   -0.7348178    0.0751168
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1811217   -0.4980301    0.1357866
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0240741   -0.3538891    0.4020374
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.2016418   -0.2905143    0.6937978
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0100914   -0.4700141    0.4498313
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0420245   -0.3066791    0.3907281
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0300053   -0.3980269    0.3380162
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1032925   -0.2616605    0.0550755
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0158732   -0.1888789    0.1571324
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0971241   -0.2172593    0.4115076
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0337789   -0.3787123    0.3111546
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0847936   -0.1466099    0.3161971
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2465162   -0.0404858    0.5335183
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2200013   -0.4371873   -0.0028154
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0246297   -0.2855501    0.2362908
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0640852   -0.2646415    0.1364710
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0630136   -0.3061917    0.1801645
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1861497    0.0365298    0.3357696
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0087203   -0.1465298    0.1290891
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0195318   -0.3556602    0.3165967
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.2129596    0.0572392    0.3686801
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3293999   -0.6594984    0.0006985
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4845313   -0.8838798   -0.0851828
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0988189    0.0019494    0.1956884
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0098673   -0.1207680    0.1405026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0521279   -0.0719525    0.1762083
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0569753   -0.0257138    0.1396645
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0945209   -0.1238263    0.3128681
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0257138   -0.2758521    0.2244245
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1944606   -0.3244210   -0.0645001
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0439318   -0.1884310    0.1005674
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0173245   -0.0898686    0.1245177
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0793107   -0.0415324    0.2001538
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1768656   -0.0335961    0.3873274
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0362924   -0.1444360    0.2170208
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0481864   -0.0983883    0.0020155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0585141   -0.1151170   -0.0019112
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0888880   -0.5070737    0.6848496
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1630118   -0.4721707    0.7981944
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3757448   -0.8125869    0.0610972
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0011355   -0.5561239    0.5538530
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.4320066   -0.7115967   -0.1524165
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2304033   -0.5393052    0.0784986
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1717974   -0.4895660    0.1459713
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0387941   -0.4021497    0.3245614
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0102001   -0.2686027    0.2890029
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0361754   -0.2864492    0.3588000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0965594   -0.5782179    0.3850991
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm           0.0049027   -0.3649013    0.3747067
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3512784   -0.6655229   -0.0370340
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.1230398   -0.4814469    0.2353673
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0520749   -0.3319566    0.2278068
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0143087   -0.3247606    0.3533780
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.1802267   -0.3985846    0.0381312
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0219863   -0.2919141    0.2479416
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3268889   -0.5587307   -0.0950470
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1237941   -0.4070388    0.1594507
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0822473   -0.3309076    0.1664131
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1638554    0.0098715    0.3178393
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0940901   -0.3569237    0.1687435
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0394611   -0.3625485    0.2836263
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.3494371   -0.8122615    0.1133872
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.3917840    0.1222091    0.6613588
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0337951   -0.2181530    0.1505628
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0288143   -0.1849346    0.2425632
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2171595   -0.3277335   -0.1065855
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0730694   -0.1989841    0.0528453
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.1927433   -0.2874267   -0.0980600
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0208924   -0.1250549    0.0832700
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0501848   -0.2812532    0.1808836
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0603848   -0.2935726    0.1728030
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0836700   -0.1503550   -0.0169850
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0250346   -0.0968801    0.0468108


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1684974   -0.2856579    0.6226526
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0182511   -0.1640137    0.1275115
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1056610   -0.3257502    0.1144283
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3022613   -0.5745194   -0.0300033
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1063086   -0.3469819    0.1343647
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0136160   -0.0745979    0.1018299
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0044997   -0.1083264    0.1173257
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0382638   -0.1311469    0.0546194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0658771   -0.1763847    0.3081388
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1063870   -0.0791394    0.2919134
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1357599   -0.3005441    0.0290244
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0490859   -0.2072431    0.1090713
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0260622   -0.0157256    0.0678500
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0250122    0.0010012    0.0490232
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2984077   -0.5705890   -0.0262263
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0017444   -0.0026217    0.0061105
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0117319   -0.0027162    0.0261800
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0539051   -0.1339112    0.2417215
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0947544   -0.1799304   -0.0095785
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0251206   -0.0565935    0.1068347
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0261741   -0.0319360    0.0842841
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0393010   -0.0807137    0.0021118
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0899685   -0.4498984    0.6298353
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1101028   -0.2892645    0.0690589
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2713999   -0.4712849   -0.0715148
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1038557   -0.3617385    0.1540270
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0383040   -0.1657261    0.2423342
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0066048   -0.0789156    0.0657061
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0567270   -0.1682697    0.0548156
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0282536   -0.2556088    0.1991016
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0958305   -0.2649713    0.0733102
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2124939   -0.3915844   -0.0334034
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0170682   -0.0047183    0.0388547
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0016741   -0.0114128    0.0080646
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0236236   -0.0472392    0.0944865
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0219841   -0.1811901    0.1372218
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1111383   -0.1825600   -0.0397165
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1064595   -0.1778943   -0.0350247
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0318387   -0.0994940    0.0358166
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0553002   -0.1101067   -0.0004936
