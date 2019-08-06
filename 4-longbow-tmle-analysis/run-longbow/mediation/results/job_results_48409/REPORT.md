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
![](/tmp/0f7d58ac-4e32-4d94-b1fc-e540783a6128/39306c43-a376-4279-b6ca-f41c54d6a487/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0f7d58ac-4e32-4d94-b1fc-e540783a6128/39306c43-a376-4279-b6ca-f41c54d6a487/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0f7d58ac-4e32-4d94-b1fc-e540783a6128/39306c43-a376-4279-b6ca-f41c54d6a487/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9878939   -1.3097367   -0.6660512
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -1.3680705   -1.5204584   -1.2156827
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.9586905   -1.1526022   -0.7647788
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1601734   -0.0285683    0.3489152
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.2856991   -0.5185252   -0.0528729
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.1492852   -0.2350818    0.5336523
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.9052497   -1.1304490   -0.6800504
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.4709301   -1.6505186   -1.2913416
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.0131822   -1.2104087   -0.8159556
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.0161889   -0.2320911    0.1997132
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.7931183   -0.9411045   -0.6451321
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.4328700   -0.6502134   -0.2155265
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.1643924   -1.3678312   -0.9609536
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.4197820   -1.5651714   -1.2743927
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.1778642   -1.3931094   -0.9626189
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.9659217   -1.1116575   -0.8201860
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.5187108   -1.9374298   -1.0999917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.2001486   -1.5329227   -0.8673746
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -1.1741111   -1.3222839   -1.0259384
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -1.8443403   -2.1340294   -1.5546512
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -1.4736782   -1.7330043   -1.2143521
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -1.1202462   -1.2081917   -1.0323007
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -1.7067530   -1.8465093   -1.5669966
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -1.4721145   -1.6824905   -1.2617385
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -1.3913449   -1.6187563   -1.1639335
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -2.1265093   -2.2712240   -1.9817946
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.7331010   -1.9646392   -1.5015628
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9516087   -1.1550843   -0.7481332
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -1.6592093   -1.7686679   -1.5497507
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.1335728   -1.3136161   -0.9535296
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.6796888   -0.8458441   -0.5135335
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.2912979   -1.3909771   -1.1916187
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.9837873   -1.1286526   -0.8389220
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.8732100   -1.0342795   -0.7121404
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.3440617   -1.4352602   -1.2528633
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.0769653   -1.2217490   -0.9321816
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.3756688   -0.4365692   -0.3147683
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.8995319   -1.0126274   -0.7864363
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -0.7726780   -0.8704682   -0.6748878
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8451941   -0.8982293   -0.7921590
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -1.4098351   -1.6717330   -1.1479372
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.2542034   -1.3871225   -1.1212844
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -1.3549743   -1.7173317   -0.9926168
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -1.6407693   -1.8102495   -1.4712891
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -1.4869944   -1.7434988   -1.2304899
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.1283435    0.0347677    0.2219194
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                -0.4752935   -0.5604166   -0.3901705
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.1798136   -0.3242074   -0.0354197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.8307838   -0.8611755   -0.8003920
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4420612   -1.5467604   -1.3373621
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -1.0670159   -1.1344857   -0.9995460
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -1.2327815   -1.4374701   -1.0280929
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -1.9635020   -2.0459014   -1.8811026
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -1.6432337   -1.7858523   -1.5006152
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5213871   -0.6167716   -0.4260026
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -1.2066355   -1.2850925   -1.1281785
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.9098098   -1.0065024   -0.8131173
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.7612783   -0.8540103   -0.6685463
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -1.3455158   -1.4032808   -1.2877508
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -1.0305949   -1.1065849   -0.9546048
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.4644664   -1.5524066   -1.3765262
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.1826056   -2.3537702   -2.0114410
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -1.7946669   -1.9342810   -1.6550528
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.9045471   -0.9544287   -0.8546655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.4846689   -1.5107475   -1.4585903
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.1892512   -1.2263666   -1.1521359
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -1.5099202   -1.8214310   -1.1984094
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -2.1664038   -2.3200744   -2.0127333
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -1.5710663   -1.8014217   -1.3407109
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.1091811   -0.1231592    0.3415215
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                -0.0067900   -0.2737898    0.2602098
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                -0.2262481   -0.6346754    0.1821793
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -1.4340962   -1.6896411   -1.1785513
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -2.1161762   -2.3036170   -1.9287355
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -1.6944225   -1.8856186   -1.5032263
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.7229664   -0.9559110   -0.4900217
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -1.5545279   -1.7054454   -1.4036103
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -1.0601638   -1.2937419   -0.8265856
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -1.3794259   -1.6369930   -1.1218587
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                -1.9595973   -2.1095179   -1.8096766
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                -1.7228714   -1.9605801   -1.4851626
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -1.5370083   -1.6908471   -1.3831696
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                -1.8984641   -2.3563885   -1.4405397
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                -1.9105084   -2.3156510   -1.5053658
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -2.3898742   -2.5549269   -2.2248214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -3.1555192   -3.4496625   -2.8613758
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                -2.7315167   -3.0215830   -2.4414505
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -1.4976590   -1.7361259   -1.2591920
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -2.4848545   -2.6056038   -2.3641051
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -1.9419173   -2.1425379   -1.7412966
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -1.1755121   -1.3492131   -1.0018111
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -1.7826731   -1.8886887   -1.6766575
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -1.4971702   -1.6642968   -1.3300436
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.9431245   -1.1007812   -0.7854677
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -1.6218737   -1.7323345   -1.5114130
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -1.3780624   -1.5407161   -1.2154087
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -1.5015600   -1.5576452   -1.4454748
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -2.2204793   -2.4475990   -1.9933595
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -1.7950899   -1.9253851   -1.6647948
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.1090739   -0.4162701    0.1981223
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                -1.5221467   -1.6466950   -1.3975985
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                -0.5420634   -0.7963663   -0.2877604
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -2.2759046   -2.4183956   -2.1334136
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -2.9749378   -3.2936412   -2.6562345
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -2.6681003   -2.9622469   -2.3739536
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -2.2569573   -2.4534100   -2.0605047
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -3.0076039   -3.0852038   -2.9300041
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -2.7873644   -2.9357711   -2.6389577
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -1.3613953   -1.4589336   -1.2638570
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -2.1824645   -2.2600336   -2.1048954
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -1.9048423   -2.0058656   -1.8038190
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -1.9440471   -2.0410206   -1.8470737
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -2.6315607   -2.6927355   -2.5703860
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -2.2638805   -2.3485270   -2.1792340
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -1.6555109   -1.7527001   -1.5583216
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -2.3965057   -2.6120403   -2.1809712
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -2.0794817   -2.2418033   -1.9171600
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.5895645   -1.6470476   -1.5320813
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -2.1898169   -2.2208498   -2.1587840
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.8590362   -1.9041963   -1.8138761


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.3801766   -0.7357100   -0.0246432
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.0292034   -0.3489930    0.4073999
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.4458725   -0.7453337   -0.1464113
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.0108882   -0.4385394    0.4167630
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.5656804   -0.8539235   -0.2774373
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.1079324   -0.4073316    0.1914668
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.7769294   -1.0392381   -0.5146207
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.4166810   -0.7234605   -0.1099016
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.2553897   -0.5000700   -0.0107094
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.0134718   -0.3064457    0.2795022
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.5527890   -0.9961710   -0.1094071
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.2342269   -0.5989762    0.1305224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.6702292   -0.9954856   -0.3449728
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.2995671   -0.5980164   -0.0011178
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.5865067   -0.7048054   -0.4682080
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          -0.3518683   -0.6006771   -0.1030594
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          -0.7351644   -1.0048757   -0.4654530
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.3417561   -0.6664678   -0.0170443
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.7076005   -0.9375941   -0.4776070
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.1819641   -0.4530005    0.0890723
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6116091   -0.8054810   -0.4177371
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3040985   -0.5246053   -0.0835916
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.4708518   -0.6547218   -0.2869817
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.2037553   -0.4196072    0.0120965
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.5238631   -0.6507595   -0.3969667
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3970092   -0.5104029   -0.2836155
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.5646409   -0.8317331   -0.2975487
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.4090093   -0.5517515   -0.2662671
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.2857950   -0.6865206    0.1149306
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.1320201   -0.5763412    0.3123011
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.6036371   -0.6969025   -0.5103716
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.3081571   -0.4413218   -0.1749924
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6112775   -0.7192624   -0.5032925
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.2362321   -0.3088479   -0.1636163
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7307205   -0.9515800   -0.5098609
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.4104522   -0.6601339   -0.1607705
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.6852484   -0.8092218   -0.5612750
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.3884227   -0.5245708   -0.2522746
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.5842375   -0.6939358   -0.4745392
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.2693166   -0.3897634   -0.1488698
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7181391   -0.9108120   -0.5254663
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.3302005   -0.4954075   -0.1649934
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.5801218   -0.6336105   -0.5266331
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2847042   -0.3456953   -0.2237130
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          -0.6564836   -1.0042603   -0.3087069
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          -0.0611461   -0.4485230    0.3262309
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.1159711   -0.4644277    0.2324855
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          -0.3354292   -0.8023953    0.1315369
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.6820801   -0.9981999   -0.3659602
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2603263   -0.5779857    0.0573331
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.8315615   -1.1101184   -0.5530045
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.3371974   -0.6679310   -0.0064638
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.5801714   -0.8770745   -0.2832683
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          -0.3434455   -0.6924154    0.0055244
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.3614558   -0.8446022    0.1216906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.3735001   -0.8075459    0.0605457
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.7656450   -1.1028096   -0.4284805
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.3416426   -0.6751677   -0.0081175
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.9871955   -1.2537191   -0.7206719
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          -0.4442583   -0.7550661   -0.1334505
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.6071610   -0.8096459   -0.4046762
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.3216581   -0.5616123   -0.0817040
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.6787493   -0.8705388   -0.4869598
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.4349379   -0.6607255   -0.2091504
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.7189193   -0.9520140   -0.4858245
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          -0.2935300   -0.4336413   -0.1534187
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -1.4130729   -1.7579829   -1.0681628
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.4329895   -0.8073994   -0.0585796
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.6990332   -1.0479663   -0.3501002
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          -0.3921957   -0.7174254   -0.0669660
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.7506466   -0.9617920   -0.5395012
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          -0.5304071   -0.7763245   -0.2844897
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.8210693   -0.9459296   -0.6962089
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.5434470   -0.6836929   -0.4032011
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.6875136   -0.8025866   -0.5724405
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.3198334   -0.4490634   -0.1906033
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.7409949   -0.9776733   -0.5043165
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.4239708   -0.6135488   -0.2343927
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.6002524   -0.6606262   -0.5398787
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.2694717   -0.3422260   -0.1967174


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2177838   -0.5309263    0.0953587
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1091527   -0.2316618    0.0133565
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.3095872   -0.5150131   -0.1041612
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5448704   -0.7542304   -0.3355104
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.1628564   -0.3477687    0.0220559
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.1068795   -0.1860279   -0.0277311
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1860103   -0.2901165   -0.0819042
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.2866430   -0.3412098   -0.2320762
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.4968609   -0.7079104   -0.2858114
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.4557733   -0.6406598   -0.2708869
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4051680   -0.5520429   -0.2582930
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3254683   -0.4706641   -0.1802725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.1667865   -0.2033324   -0.1302406
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0707362   -0.0931273   -0.0483451
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2049463   -0.5383260    0.1284333
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0125624   -0.0164170   -0.0087079
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0702007   -0.0834061   -0.0569952
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.5788410   -0.7701563   -0.3875257
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4040279   -0.4856188   -0.3224371
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3792941   -0.4635365   -0.2950516
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.1933087   -0.2499322   -0.1366852
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4093584   -0.4551268   -0.3635900
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.4331930   -0.7392058   -0.1271801
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0673468   -0.2105796    0.0758859
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.4098197   -0.6349158   -0.1847237
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.5522529   -0.7794181   -0.3250877
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.3706736   -0.5951289   -0.1462184
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0850216   -0.1645561   -0.0054870
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.2160137   -0.3313802   -0.1006472
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.6831355   -0.9003107   -0.4659604
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.4084115   -0.5625648   -0.2542583
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.4864086   -0.6345257   -0.3382916
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0662337   -0.0880670   -0.0444004
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0231442   -0.0353936   -0.0108948
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.1348891   -0.2069681   -0.0628101
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.6108561   -0.7924629   -0.4292493
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4952402   -0.5773977   -0.4130828
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.4458179   -0.5339093   -0.3577264
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.2189259   -0.2860123   -0.1518394
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.4231928   -0.4752529   -0.3711328
