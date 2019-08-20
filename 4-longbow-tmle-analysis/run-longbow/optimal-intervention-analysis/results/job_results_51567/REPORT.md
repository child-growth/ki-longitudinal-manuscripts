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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        64     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           105     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             46     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        25     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            45     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             94     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        56     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             93     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        47     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            56     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            156     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            74     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        23     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            52     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             28     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        30     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         4      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1098    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       174    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            498    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2589   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           8947   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4112   15648
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
![](/tmp/2091b227-d453-4669-a15d-fd798dd35b4c/4de8bc77-20fd-4b7a-9ad7-9ecd5d6619c8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9581936   -1.2646347   -0.6517526
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6868640    0.3071626    1.0665653
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2966876   -1.5644077   -1.0289675
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.8159298   -1.1413921   -0.4904675
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0095265   -0.2511291    0.2320762
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0112472   -0.2928088    0.3153033
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1687291    0.6469784    1.6904797
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2544143   -0.6351417    0.1263132
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9195256   -1.7320895   -0.1069617
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7426868    1.6510688    1.8343047
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2112239   -1.3783640   -1.0440839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4431879   -0.4774620   -0.4089138
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0247712   -1.1991828   -0.8503596
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8650734   -0.9741084   -0.7560385
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.8286354   -0.9157363   -0.7415346
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6735829   -0.7122670   -0.6348987
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0376339   -0.2703071    0.1950393
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.1100620    0.7487322    1.4713917
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5332933   -0.7646422   -0.3019443
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3680697    0.0505499    0.6855895
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3789820    1.1207882    1.6371759
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.7475778    0.2482602    1.2468953
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6064628    0.3049398    0.9079857
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5954130   -0.7181948   -0.4726313
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.8533348   -1.0475237   -0.6591459
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2668254   -0.4677638   -0.0658871
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1681073   -0.3621404    0.0259258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0768957   -0.0917494    0.2455409
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3357741    0.2241246    0.4474237
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0282322   -0.1750541    0.1185896
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3085433    0.0152317    0.6018550
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5441090    0.4457642    0.6424539
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2973703    0.2153669    0.3793738
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1627947    0.0367465    0.2888428
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5710061   -0.6709808   -0.4710314
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2396130   -0.3213535   -0.1578725
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5739080    0.3840117    0.7638043
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5012983   -0.5457889   -0.4568078
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9256358   -1.2128598   -0.6384117
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.7073591    0.3226324    1.0920858
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6929516   -0.9230426   -0.4628606
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2283895   -0.5106858    0.0539067
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0651783   -0.3077816    0.1774249
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0599610   -0.2369369    0.3568589
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0296072   -0.2250091    0.1657947
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.8413332   -1.0379794   -0.6446869
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8331396   -1.0312271   -0.6350522
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3502024   -0.5594906   -0.1409142
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6830563   -0.8250871   -0.5410256
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.3938335    0.1619761    0.6256909
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9196733   -1.1499716   -0.6893750
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2349884   -0.3620136   -0.1079632
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4138690   -0.5012591   -0.3264789
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5072249   -0.5852449   -0.4292049
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0904447   -0.1967484    0.0158591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1600682   -1.2191778   -1.1009585


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7101663    1.6251406    1.7951919
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1440966   -1.3546950   -0.9334981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4901203   -0.5209592   -0.4592815
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7243418   -0.7441385   -0.7045450
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.2054148   -0.2588995   -0.1519302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2928354    0.2648888    0.3207820
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515431    0.3802415    0.5228446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1803611   -1.2905182   -1.0702040
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0142527   -0.2993991    0.2708937
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.3036253   -0.6449135    0.0376629
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.2267901   -0.0037485    0.4573287
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0967648   -0.3895499    0.1960203
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0565702   -0.2683920    0.1552516
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0458490   -0.3422361    0.2505381
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3737291   -0.8518503    0.1043922
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0942325   -0.1581561    0.3466210
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.5044030   -1.2361130    0.2273071
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0325205   -0.0740827    0.0090417
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0671274   -0.0135442    0.1477990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0469324   -0.0627722   -0.0310926
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0370203   -0.1865832    0.1125427
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1123192   -0.2057657   -0.0188726
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0859103    0.0118698    0.1599509
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0507589   -0.0848157   -0.0167021
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1021621   -0.3165272    0.1122030
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1383395   -0.4580713    0.1813924
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1655011   -0.3598791    0.0288770
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2570245   -0.5494873    0.0354383
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3226034   -0.5581502   -0.0870565
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2185350   -0.6911725    0.2541026
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0894115   -0.3619952    0.1831722
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0472175   -0.1596486    0.0652136
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.1520478   -0.3152468    0.0111512
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1720847   -0.3420452   -0.0021242
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0398818   -0.2093870    0.1296233
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0471335   -0.1939482    0.0996812
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2569984   -0.3581647   -0.1558322
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1771826   -0.3148598   -0.0395054
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3341350   -0.6091330   -0.0591369
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0386857   -0.0507037    0.1280750
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0045349   -0.0808949    0.0718251
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0298058   -0.0750850    0.1346965
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1058053   -0.1890419   -0.0225687
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0542303   -0.1240102    0.0155496
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1223649   -0.2967359    0.0520060
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0919211   -0.1311477   -0.0526946
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.1048103   -0.1651253    0.3747459
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2607319   -0.5565533    0.0350895
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2596147   -0.4681579   -0.0510715
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1480578   -0.4047226    0.1086070
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1850788   -0.0386777    0.4088354
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.3496544    0.0844635    0.6148453
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0797006   -0.0728257    0.2322270
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0702459   -0.2459529    0.1054611
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0533595   -0.2251432    0.1184242
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2601478   -0.4505204   -0.0697752
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1271153   -0.2595642    0.0053335
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.2931419    0.0608652    0.5254186
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2606878   -0.4768646   -0.0445109
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0494152   -0.1662475    0.0674171
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1580833   -0.2305174   -0.0856492
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1027342   -0.1720728   -0.0333957
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0434928   -0.0348926    0.1218782
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1369960   -0.1917625   -0.0822295
