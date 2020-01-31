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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2966   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          10259   17936
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4711   17936
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
![](/tmp/c45edf43-b566-4b80-92ca-bd690ab437e9/b9cef22e-65b2-4f40-a3e0-cf69206a4ac2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7336501   -1.0620096   -0.4052907
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0261037   -0.5720715    0.5198642
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9471019   -1.3583002   -0.5359035
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2441534   -1.1278236    0.6395168
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0093298   -0.2564057    0.2750652
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0755782   -0.3368357    0.1856792
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.0973609    0.7169961    1.4777257
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6830007   -0.8863896   -0.4796118
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1370623   -1.3162050   -0.9579196
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.2978768   -1.4697672   -1.1259863
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.2714479   -1.4654991   -1.0773966
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1986410   -1.3383634   -1.0589186
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2295545   -1.3942717   -1.0648374
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4454005   -0.4804282   -0.4103727
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0201559   -1.1935457   -0.8467661
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8687826   -0.9779725   -0.7595927
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7941973   -0.8787702   -0.7096243
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7386144   -0.7768976   -0.7003313
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0170032   -0.2702111    0.2362048
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0827603    0.7484728    1.4170477
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5030408   -0.7321574   -0.2739242
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3671668    0.0406551    0.6936784
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.1189284    0.8462800    1.3915768
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.6359732    0.2396424    1.0323040
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4786818    0.1506107    0.8067528
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5954130   -0.7181948   -0.4726313
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.2035571   -1.3714050   -1.0357093
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3493396   -0.5453170   -0.1533621
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0587143   -0.2603637    0.1429352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1493081   -0.0275700    0.3261862
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3699798    0.2574548    0.4825048
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0242450   -0.1656640    0.1171740
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3137213    0.0244815    0.6029612
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5235520    0.4176399    0.6294640
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3143024    0.2318308    0.3967741
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2090567    0.1184331    0.2996803
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6486229   -0.7492160   -0.5480298
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2194704   -0.3010143   -0.1379265
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5742141    0.3846071    0.7638211
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5055906   -0.5505261   -0.4606551
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7989786   -1.1098628   -0.4880945
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.3629056    0.0515733    0.6742379
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6873029   -0.9201344   -0.4544715
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3510783   -0.6108101   -0.0913465
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0705113   -0.1737886    0.3148112
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1300443   -0.1293790    0.3894676
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0076914   -0.2454358    0.2300529
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7812071   -0.9814465   -0.5809677
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7035761   -0.9132599   -0.4938923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3700902   -0.5848274   -0.1553531
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6721871   -0.8143112   -0.5300630
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5716545    0.3387598    0.8045492
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9306250   -1.1560833   -0.7051667
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2634648   -0.3994937   -0.1274359
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4333675   -0.5242363   -0.3424987
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4746404   -0.5551095   -0.3941714
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1632634   -0.3248149   -0.0017119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1673031   -1.2258159   -1.1087902


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9533493   -1.0984355   -0.8082631
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7780564   -0.7970843   -0.7590285
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5291499    0.3751396    0.6831602
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0547975   -0.0703378    0.1799328
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2196992   -0.5320764    0.0926781
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.4279069   -0.0388582    0.8946721
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0207030   -0.4120894    0.3706834
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5243081   -1.3137288    0.2651126
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0523162   -0.2883046    0.1836723
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1174218   -0.2391437    0.0043002
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3390423   -0.6996788    0.0215942
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0077790   -0.0268189    0.0423768
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2128595   -0.3746141   -0.0511048
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0082213   -0.1601866    0.1437441
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0279748   -0.1471683    0.2031180
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0374456   -0.1555175    0.0806262
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0866584   -0.0073763    0.1806931
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0452176   -0.0626389   -0.0277963
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0416356   -0.1911107    0.1078396
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1086100   -0.2016520   -0.0155680
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0514722   -0.0209374    0.1238817
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0394420   -0.0729509   -0.0059331
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1206732   -0.3560151    0.1146688
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1106829   -0.3910108    0.1696450
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2003741   -0.3952975   -0.0054507
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2567360   -0.5566850    0.0432130
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0640693   -0.3069107    0.1787721
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1068233   -0.4919187    0.2782721
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0575396   -0.2334086    0.3484877
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0472175   -0.1596486    0.0652136
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1981746    0.0571010    0.3392481
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0980642   -0.2640166    0.0678881
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1399928   -0.3164489    0.0364633
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1195459   -0.2733513    0.0342596
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2912041   -0.3936191   -0.1887890
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1811541   -0.3157851   -0.0465231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3393129   -0.6102191   -0.0684068
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0592427   -0.0368287    0.1553142
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0194558   -0.0965104    0.0575988
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0164563   -0.0719981    0.0390855
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0281885   -0.1126675    0.0562904
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0743729   -0.1435498   -0.0051960
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1226590   -0.2967752    0.0514571
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0876289   -0.1277090   -0.0475488
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0203138   -0.3046419    0.2640142
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0997177   -0.1406577    0.3400932
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2646218   -0.4757887   -0.0534549
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0238340   -0.2645096    0.2168416
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0406869   -0.1876790    0.2690527
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2615974    0.0292505    0.4939444
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0624889   -0.1169402    0.2419181
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1303719   -0.3095547    0.0488108
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1878599   -0.3679060   -0.0078138
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2402600   -0.4336036   -0.0469163
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1379846   -0.2705395   -0.0054296
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1164150   -0.0931594    0.3259895
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2406284   -0.4524263   -0.0288306
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0209387   -0.1447681    0.1028906
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1385848   -0.2130084   -0.0641612
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1353187   -0.2066856   -0.0639519
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1163918   -0.0190556    0.2518392
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1297611   -0.1840577   -0.0754645
