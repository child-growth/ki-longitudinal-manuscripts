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
![](/tmp/21f889fb-07a4-44aa-b40d-6a3105bd3800/e1b51fec-d982-47c7-8342-cf212d7cca5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/21f889fb-07a4-44aa-b40d-6a3105bd3800/e1b51fec-d982-47c7-8342-cf212d7cca5f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/21f889fb-07a4-44aa-b40d-6a3105bd3800/e1b51fec-d982-47c7-8342-cf212d7cca5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.3045277   -0.7335200    0.1244645
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1303398   -0.2797488    0.0190692
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0383089   -0.3441439    0.2675262
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0163702    0.7920995    1.2406410
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.7828122    0.4469513    1.1186731
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.1057302    0.7652696    1.4461908
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5962754   -0.8394069   -0.3531440
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.6905884   -0.8874148   -0.4937620
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8432323   -1.0588843   -0.6275804
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.3447196    0.0529729    0.6364662
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0977605   -0.0690868    0.2646078
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0188080   -0.2593405    0.2969565
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1228348    0.8459972    1.3996725
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9864944    0.8253762    1.1476125
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1312761    0.8756003    1.3869520
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5034121    0.3239179    0.6829062
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.6823053    0.2332314    1.1313791
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4566319    0.0415737    0.8716900
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5121131    0.3480090    0.6762172
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6292084    0.3347248    0.9236920
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.4590284    0.1490307    0.7690262
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6043667   -0.7757123   -0.4330212
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.7076592   -0.8579279   -0.5573906
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6202400   -0.7604195   -0.4800605
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.0045526   -1.2630210   -0.7460842
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9539140   -1.1143176   -0.7935104
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.0591458   -1.2823972   -0.8358944
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5748526   -0.7795407   -0.3701644
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4599301   -0.5729638   -0.3468965
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3198868   -0.5254683   -0.1143052
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0815084   -0.2712218    0.1082050
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2943053   -0.4026806   -0.1859300
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.0963302   -0.2790755    0.0864151
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0811238   -0.0912795    0.2535270
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0142446   -0.0881924    0.1166816
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0259770   -0.1438726    0.1958266
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0507210   -0.0147283    0.1161703
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2336193    0.0984180    0.3688207
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0446527   -0.0758248    0.1651303
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2326461   -0.2905471   -0.1747451
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2457687   -0.5845743    0.0930369
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0196625   -0.1656022    0.1262771
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.2596006   -0.0290143    0.5482155
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0610422   -0.2196146    0.0975302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.2279910   -0.5005586    0.0445767
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5811568    0.5225665    0.6397472
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6729391    0.5884863    0.7573919
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5833820    0.4390388    0.7277253
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2822107    0.2512819    0.3131394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3260581    0.2100561    0.4420601
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3348302    0.2582093    0.4114510
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1339107   -0.0657042    0.3335257
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2298192    0.1398391    0.3197993
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1227469   -0.0252558    0.2707497
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5902068   -0.6930368   -0.4873768
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7717210   -0.8522977   -0.6911443
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6294687   -0.7317938   -0.5271437
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3204530   -0.4122572   -0.2286489
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3041592   -0.3614611   -0.2468573
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2453636   -0.3247874   -0.1659397
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4269166    0.3370637    0.5167694
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5800197    0.3926089    0.7674306
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4487376    0.2920094    0.6054659
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5486551   -0.5950507   -0.5022596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6015816   -0.6263370   -0.5768261
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.6127281   -0.6479751   -0.5774810
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.0771410   -1.6159536   -0.5383284
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8262722   -0.9721561   -0.6803883
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7610823   -0.9999145   -0.5222502
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5573744    0.2527174    0.8620314
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.2194491   -0.0980908    0.5369891
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5385428    0.0761751    1.0009105
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.7592370   -0.9751304   -0.5433436
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.1139926   -1.2828508   -0.9451344
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9303061   -1.1461311   -0.7144811
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.3126327   -0.5990645   -0.0262009
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4455566   -0.5914657   -0.2996475
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3208235   -0.5537732   -0.0878739
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0838364   -0.1566401    0.3243129
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0931614   -0.0738132    0.2601361
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1285547   -0.1086889    0.3657983
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4179850    0.2856920    0.5502781
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.3370670   -0.0977882    0.7719222
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4106901    0.0313390    0.7900413
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1285261   -0.0279378    0.2849901
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.3094725   -0.5706420   -0.0483029
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0353425   -0.2749786    0.3456637
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.8879445   -1.1380248   -0.6378642
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9373029   -1.0597231   -0.8148828
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8661228   -1.0949884   -0.6372572
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7476376   -0.9544165   -0.5408586
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9711091   -1.0671512   -0.8750671
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.7735090   -0.9627220   -0.5842961
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.4069577   -0.6073470   -0.2065684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7171405   -0.8401277   -0.5941533
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5347244   -0.7333665   -0.3360822
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8270343   -0.8802963   -0.7737723
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.8947680   -1.1368075   -0.6527285
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6647854   -0.8085254   -0.5210454
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6884550    0.5721708    0.8047392
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5983789    0.3829923    0.8137656
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6485124    0.3038043    0.9932205
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.2052494   -1.3326719   -1.0778268
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4969990   -1.9647439   -1.0292540
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.9249721   -1.1680333   -0.6819109
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2614942   -0.4276056   -0.0953829
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.3006457   -0.3689718   -0.2323196
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2394705   -0.3640797   -0.1148614
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4673099   -0.5531652   -0.3814545
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6712912   -0.7408232   -0.6017591
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5406628   -0.6320458   -0.4492798
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.5025999   -0.5831349   -0.4220649
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.7003497   -0.7520626   -0.6486368
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5296296   -0.5981436   -0.4611156
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0156423   -0.1151828    0.0838982
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0678851   -0.2782007    0.1424304
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.1128532   -0.3218563    0.0961499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.2454978   -1.3049336   -1.1860620
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3233916   -1.3538794   -1.2929039
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2706000   -1.3141867   -1.2270132


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1741879   -0.2804622    0.6288381
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2662188   -0.2677005    0.8001382
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2335580   -0.6377223    0.1706063
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0893599   -0.3186448    0.4973647
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.0943130   -0.4075973    0.2189714
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2469569   -0.5726315    0.0787177
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2469591   -0.5812957    0.0873775
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3259116   -0.7257032    0.0738801
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1363405   -0.4557555    0.1830746
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0084413   -0.3696703    0.3865529
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.1788932   -0.3048858    0.6626722
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0467802   -0.4994331    0.4058727
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1170953   -0.2201609    0.4543515
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0530846   -0.4044710    0.2983017
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.1032925   -0.2616605    0.0550755
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.0158732   -0.1888789    0.1571324
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0506387   -0.2540887    0.3553660
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.0545932   -0.3952661    0.2860798
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.1149224   -0.1190328    0.3488776
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2549658   -0.0364276    0.5463592
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2127969   -0.4317138    0.0061200
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0148218   -0.2775234    0.2478799
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.0668791   -0.2665517    0.1327935
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0551467   -0.2964485    0.1861551
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1828983    0.0327953    0.3330014
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0060683   -0.1429785    0.1308419
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0131226   -0.3565911    0.3303460
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.2129836    0.0564430    0.3695242
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3206428   -0.6485448    0.0072591
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4875916   -0.8847335   -0.0904497
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.0917823   -0.0030015    0.1865661
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0022252   -0.1360855    0.1405359
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0438475   -0.0760577    0.1637527
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0526195   -0.0297544    0.1349934
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.0959085   -0.1225823    0.3143993
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.0111638   -0.2591861    0.2368584
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1815142   -0.3122172   -0.0508111
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0392619   -0.1842726    0.1057488
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0162938   -0.0913442    0.1239318
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0750895   -0.0459495    0.1961284
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1531032   -0.0553572    0.3615636
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0218211   -0.1596788    0.2033210
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0529265   -0.1035212   -0.0023317
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0640730   -0.1211647   -0.0069812
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.2508689   -0.3106998    0.8124375
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.3160587   -0.2780857    0.9102031
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3379253   -0.7795362    0.1036857
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0188316   -0.5731913    0.5355280
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.3547556   -0.6298600   -0.0796511
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1710691   -0.4786292    0.1364910
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1329239   -0.4532272    0.1873795
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0081908   -0.3772881    0.3609064
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0093250   -0.2827350    0.3013850
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0447183   -0.2934451    0.3828817
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0809180   -0.5361113    0.3742753
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0072949   -0.4084484    0.3938586
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.4379986   -0.7425458   -0.1334514
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0931836   -0.4418886    0.2555215
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0493584   -0.3281151    0.2293982
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0218217   -0.3169959    0.3606394
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2234716   -0.4508303    0.0038872
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0258715   -0.3046859    0.2529429
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3101828   -0.5433391   -0.0770265
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1277667   -0.4086420    0.1531087
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0677337   -0.3145911    0.1791238
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1622489    0.0093655    0.3151324
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.0900761   -0.3477674    0.1676153
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0399426   -0.3704647    0.2905795
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2917496   -0.7778974    0.1943983
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.2802772    0.0038557    0.5566988
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0391515   -0.2187370    0.1404340
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0220237   -0.1855619    0.2296093
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2039813   -0.3140820   -0.0938806
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0733529   -0.1982798    0.0515740
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.1977498   -0.2929373   -0.1025624
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0270297   -0.1323877    0.0783282
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0522428   -0.2845570    0.1800713
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0972109   -0.3291369    0.1347151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0778939   -0.1445204   -0.0112673
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0251022   -0.0959358    0.0457315


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1647317   -0.2432657    0.5727291
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0446478   -0.1875779    0.0982824
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1025189   -0.3204350    0.1153972
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2336744   -0.5029351    0.0355863
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0664562   -0.3102049    0.1772926
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0256307   -0.0626266    0.1138881
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0049382   -0.1037641    0.1136405
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0382638   -0.1311469    0.0546194
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0008300   -0.2333203    0.2316604
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1359424   -0.0523042    0.3241891
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1264807   -0.2922400    0.0392786
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0513615   -0.2079580    0.1052349
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0280547   -0.0137393    0.0698487
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0272313    0.0030408    0.0514218
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2851923   -0.5556096   -0.0147749
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0016379   -0.0027995    0.0060752
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0106248   -0.0038095    0.0250590
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0586897   -0.1288964    0.2462758
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0866046   -0.1723947   -0.0008145
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0266097   -0.0554208    0.1086403
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0246265   -0.0335926    0.0828456
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0445644   -0.0862858   -0.0028430
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.2563156   -0.2479946    0.7606257
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1107472   -0.2910390    0.0695446
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1933294   -0.3909433    0.0042845
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0638147   -0.3251796    0.1975502
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0360641   -0.1777350    0.2498632
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0083696   -0.0787820    0.0620427
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0784327   -0.1865820    0.0297167
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0236345   -0.2500925    0.2028234
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1388616   -0.3153575    0.0376343
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2033925   -0.3848398   -0.0219452
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0168627   -0.0048912    0.0386165
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0014796   -0.0113225    0.0083633
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0248883   -0.0468556    0.0966321
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0229094   -0.1770450    0.1312262
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1046424   -0.1755452   -0.0337397
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.1073593   -0.1793465   -0.0353721
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0313096   -0.0991263    0.0365072
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0515664   -0.1061942    0.0030614
