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

**Outcome Variable:** whz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            21     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            134     209
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        54     209
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm            32      61
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             19      61
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        10      61
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            11      41
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             19      41
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        11      41
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm             6      26
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             13      26
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm         7      26
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            47     221
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            127     221
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        47     221
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm            80     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              9     100
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        11     100
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            67     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        25     113
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           432     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm            319     992
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       241     992
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm           107     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm            333     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       135     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           108     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     <151 cm            281     510
Birth       ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       121     510
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           129     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            404     704
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       171     704
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1135    1362
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             46    1362
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       181    1362
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            499    9060
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9060
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          3718   21986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          12451   21986
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      5817   21986
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
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            329     602
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     602
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
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            440    7270
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2641   16676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9752   16676
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4283   16676
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3798    3942
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3942
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3942
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           267     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     367
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1297    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5016    8505
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2192    8505


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
![](/tmp/65d0bb93-e4e9-443d-a4f1-8fab4dda0e19/e7916f5b-31fa-466e-80e5-d4c05fc28715/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7533489   -1.0715321   -0.4351656
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0533862   -0.8015251    0.6947528
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9554013   -1.4380083   -0.4727943
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0428974   -0.9443226    0.8585279
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.1370183   -0.1294732    0.4035098
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0820152   -0.3444031    0.1803727
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0799046    0.6796621    1.4801471
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6830007   -0.8863896   -0.4796118
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1313054   -1.3094703   -0.9531404
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4274117   -1.5876390   -1.2671844
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2543707   -1.4536163   -1.0551252
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.2223518   -1.3617707   -1.0829329
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2287838   -1.3967824   -1.0607852
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4488106   -0.4842894   -0.4133318
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9806950   -1.1641311   -0.7972589
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8647099   -0.9742159   -0.7552039
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7603871   -0.8464400   -0.6743343
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7125536   -0.7472548   -0.6778525
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0868326   -0.2131557    0.3868209
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0367314    0.6728369    1.4006259
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4554055   -0.6639233   -0.2468877
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3510582    0.0501290    0.6519875
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2117470    0.9297164    1.4937775
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4497636    0.0983965    0.8011308
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.5969026    0.3012181    0.8925870
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5954130   -0.7181948   -0.4726313
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.0592812   -1.2583212   -0.8602412
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2502242   -0.4420002   -0.0584483
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0296044   -0.2262437    0.1670349
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0772428   -0.1025454    0.2570310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2941922    0.1756164    0.4127681
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0134033   -0.1621852    0.1353786
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.2886653   -0.0086521    0.5859828
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5997176    0.5028371    0.6965981
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2745190    0.1926430    0.3563951
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2215126    0.1318062    0.3112191
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6645670   -0.7680592   -0.5610748
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2289308   -0.3087701   -0.1490914
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5792505    0.3933201    0.7651808
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5103686   -0.5548948   -0.4658423
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8403138   -1.1055149   -0.5751126
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5056116    0.1042811    0.9069422
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6962137   -0.9217721   -0.4706553
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2635417   -0.5241585   -0.0029248
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1460876   -0.1038651    0.3960403
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2178613    0.0077278    0.4279949
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0647719   -0.3160670    0.1865232
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6670516   -0.8662995   -0.4678038
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6980575   -0.9088666   -0.4872485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3528305   -0.5646773   -0.1409837
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6783657   -0.8222771   -0.5344544
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.4850115    0.2771125    0.6929105
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9433383   -1.1721992   -0.7144774
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2646361   -0.3967299   -0.1325424
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.3952979   -0.4824699   -0.3081258
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5031104   -0.5832927   -0.4229282
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0204198   -0.1200458    0.0792063
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1822498   -1.2391747   -1.1253249


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9526794   -1.0978709   -0.8074880
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4018033    0.0834093    0.7201973
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9678049   -1.2522118   -0.6833979
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7684615   -1.1257770   -0.4111460
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0429864   -0.1658406    0.0798678
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.1930000   -0.4278634    0.0418634
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7583186    0.5636385    0.9529987
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6752218   -0.8548888   -0.4955547
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.3060980   -1.3843247   -1.2278714
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2434730   -1.3276901   -1.1592559
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2360866   -1.3011735   -1.1709998
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1428961   -1.3532157   -0.9325766
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4906181   -0.5214690   -0.4597672
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7504562   -0.7683419   -0.7325705
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7036879   -0.8303672   -0.5770087
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0588909    0.9369064    1.1808755
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5297055    0.3757432    0.6836678
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.2053991   -0.2588843   -0.1519138
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2948466    0.2673139    0.3223793
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5927216   -0.6123027   -0.5731405
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3975641    0.2766504    0.5184778
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0539486   -0.0712465    0.1791437
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1712534   -1.2800940   -1.0624128
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2986831   -1.3220580   -1.2753083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1993305   -0.5035670    0.1049059
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4551894   -0.1666095    1.0769884
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0124036   -0.4595365    0.4347293
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7255642   -1.5275420    0.0764137
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1800047   -0.4144754    0.0544659
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1109848   -0.2343480    0.0123784
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3215860   -0.6997848    0.0566128
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0077790   -0.0268189    0.0423768
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2186164   -0.3794734   -0.0577593
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1213137   -0.0229881    0.2656154
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0108977   -0.1683456    0.1901411
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0137348   -0.1308006    0.1033310
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0858877   -0.0002190    0.1719943
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0418075   -0.0603441   -0.0232709
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0810965   -0.2419779    0.0797849
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1126827   -0.2064810   -0.0188844
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0176620   -0.0547826    0.0901067
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0379026   -0.0678535   -0.0079517
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2252281   -0.4922960    0.0418398
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0650089   -0.3804399    0.2504220
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2482825   -0.4303138   -0.0662512
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2400130   -0.5176785    0.0376525
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1528560   -0.4048613    0.0991493
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0799419   -0.2544950    0.4143787
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0606813   -0.3285866    0.2072241
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0472175   -0.1596486    0.0652136
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0538986   -0.1115776    0.2193748
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1971795   -0.3604498   -0.0339093
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1691026   -0.3421708    0.0039655
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0474806   -0.2064011    0.1114399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2154165   -0.3222631   -0.1085700
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1919957   -0.3314859   -0.0525056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3142570   -0.5928118   -0.0357021
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0169229   -0.1089073    0.0750615
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0203276   -0.0560087    0.0966639
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0289122   -0.0781372    0.0203127
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0122444   -0.0983140    0.0738252
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0649125   -0.1331495    0.0033244
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1276955   -0.2980020    0.0426111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0823530   -0.1220051   -0.0427009
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0201251   -0.2274512    0.2677014
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0463809   -0.3590588    0.2662970
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2563527   -0.4608531   -0.0518523
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1129057   -0.3566372    0.1308258
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0256398   -0.2512084    0.1999287
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1797028   -0.0149660    0.3743715
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1187205   -0.0848691    0.3223101
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2445274   -0.4194751   -0.0695797
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1933785   -0.3743574   -0.0123995
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2575197   -0.4495635   -0.0654759
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1318059   -0.2660023    0.0023904
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2030580   -0.0025848    0.4087008
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2279151   -0.4419999   -0.0138303
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0197674   -0.1398651    0.1003302
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1766544   -0.2489529   -0.1043559
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1068487   -0.1780256   -0.0356718
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0264519   -0.0942181    0.0413144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1164333   -0.1694013   -0.0634653
