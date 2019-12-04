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
* hhwealth_quart
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
* delta_hhwealth_quart
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

agecat      studyid                    country                        mhtcm           n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------------  -------  ------  -----------------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241  whz              
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209  whz              
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209  whz              
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235  whz              
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236  whz              
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236  whz              
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272  whz              
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249  whz              
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247  whz              
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           509    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1226  whz              
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       296    1226  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            75     379  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379  whz              
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       102     379  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537  whz              
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           128     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            329     602  whz              
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       145     602  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715  whz              
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995  whz              
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995  whz              
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877  whz              
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877  whz              
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231  whz              
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231  whz              
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12531   13030  whz              
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13030  whz              
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       378   13030  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5780    7270  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            440    7270  whz              
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1050    7270  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     946  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            632     946  whz              
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     946  whz              
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819  whz              
6 months    ki1135781-COHORTS          INDIA                          <151 cm            791    1819  whz              
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       487    1819  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           560    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2706  whz              
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       778    2706  whz              
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836  whz              
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2651   16734  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9787   16734  whz              
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4296   16734  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212  whz              
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169  whz              
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169  whz              
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226  whz              
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228  whz              
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228  whz              
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201  whz              
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234  whz              
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214  whz              
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     428  whz              
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     428  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     578  whz              
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     578  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514  whz              
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6  whz              
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6  whz              
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603  whz              
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603  whz              
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603  whz              
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3798    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3942  whz              
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3942  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           267     367  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     367  whz              
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     367  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           128    1006  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            668    1006  whz              
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       210    1006  whz              
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           549    1803  whz              
24 months   ki1135781-COHORTS          INDIA                          <151 cm            776    1803  whz              
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       478    1803  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           507    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1239    2449  whz              
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       703    2449  whz              
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           345     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             92     561  whz              
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       124     561  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1305    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5052    8570  whz              
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2213    8570  whz              


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
![](/tmp/24ccd47b-aa20-43f7-a3c3-167988483814/c2da776e-6755-4b8d-9bfb-bd601189fca7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/24ccd47b-aa20-43f7-a3c3-167988483814/c2da776e-6755-4b8d-9bfb-bd601189fca7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/24ccd47b-aa20-43f7-a3c3-167988483814/c2da776e-6755-4b8d-9bfb-bd601189fca7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.2525383   -0.7365311    0.2314545
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.1355172   -0.2827155    0.0116811
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.0477906   -0.3556838    0.2601026
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 1.0193449    0.7983455    1.2403444
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.8009546    0.4540828    1.1478265
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 1.0915528    0.6860120    1.4970936
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.5867392   -0.8398745   -0.3336040
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -0.7035473   -0.9045286   -0.5025660
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.8151260   -1.0265310   -0.6037210
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2466839   -0.0355356    0.5289034
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                 0.0956439   -0.0738369    0.2651247
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                 0.0624394   -0.2086951    0.3335739
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 1.1499497    0.8767834    1.4231160
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.9823597    0.8215522    1.1431671
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 1.1658386    0.9053335    1.4263438
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.5128610    0.3337033    0.6920187
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.6461995    0.2047359    1.0876631
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4129522   -0.0117404    0.8376448
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.5268187    0.3593342    0.6943033
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.6090419    0.3178186    0.9002652
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.5191404    0.1985018    0.8397791
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.6117668   -0.7878370   -0.4356967
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                -0.6996750   -0.8438555   -0.5554945
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                -0.6081125   -0.7584674   -0.4577577
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.9743453   -1.2366037   -0.7120868
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                -0.9545721   -1.1143171   -0.7948272
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                -1.0885419   -1.3113301   -0.8657538
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.5587855   -0.7547306   -0.3628404
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.4842080   -0.5988675   -0.3695485
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.3011396   -0.5046282   -0.0976510
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0826839   -0.2707952    0.1054274
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.2839524   -0.3895643   -0.1783405
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.1058729   -0.2837319    0.0719860
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1056763   -0.0706274    0.2819800
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                 0.0043735   -0.0984735    0.1072205
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                 0.0286565   -0.1431600    0.2004730
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0564878   -0.0089463    0.1219219
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                 0.2373754    0.1008214    0.3739294
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0312330   -0.0898617    0.1523278
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.2288593   -0.2868473   -0.1708712
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.2526251   -0.6007802    0.0955300
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.0479009   -0.1931866    0.0973847
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                 0.2535165   -0.0420832    0.5491163
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                -0.0501500   -0.2083783    0.1080783
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                -0.2113168   -0.4883544    0.0657208
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.5812168    0.5227108    0.6397229
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.6830495    0.5963748    0.7697242
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.5886578    0.4473058    0.7300097
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.2822816    0.2517854    0.3127778
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                 0.3358897    0.2192797    0.4524998
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                 0.3413954    0.2655898    0.4172010
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.1178769   -0.0821311    0.3178849
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                 0.2242952    0.1343343    0.3142560
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                 0.1439697   -0.0055513    0.2934907
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.5907480   -0.6931910   -0.4883049
6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.7783079   -0.8587893   -0.6978265
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.6249590   -0.7265812   -0.5233367
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.3211128   -0.4135438   -0.2286818
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.3019209   -0.3591057   -0.2447362
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.2389010   -0.3180342   -0.1597679
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.4299073    0.3403136    0.5195009
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                 0.5885393    0.3999016    0.7771770
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                 0.4344865    0.2780687    0.5909044
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.5511181   -0.5969676   -0.5052686
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -0.6001108   -0.6246579   -0.5755637
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -0.6135840   -0.6486350   -0.5785330
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.9101591   -1.4359661   -0.3843522
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                -0.8182769   -0.9622846   -0.6742692
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                -0.7588480   -1.0049571   -0.5127389
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                 0.5670314    0.2643155    0.8697474
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                 0.2551330   -0.0667689    0.5770349
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                 0.5804232    0.1298192    1.0310272
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.7019336   -0.9323157   -0.4715516
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                -1.1002713   -1.2680449   -0.9324976
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                -0.9318157   -1.1493636   -0.7142678
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.2502646   -0.5388119    0.0382828
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                -0.4561124   -0.6030813   -0.3091434
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                -0.3185872   -0.5534614   -0.0837130
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0971009   -0.1324971    0.3266990
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                 0.0995317   -0.0714100    0.2704734
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                 0.1703400   -0.0661698    0.4068498
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.4085509    0.2721736    0.5449282
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                 0.3303601   -0.1588497    0.8195698
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                 0.4026664    0.0283809    0.7769519
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1175585   -0.0368505    0.2719676
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                -0.2412915   -0.5118252    0.0292421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                 0.0759390   -0.2381271    0.3900052
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.9196851   -1.1704047   -0.6689656
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                -0.9257825   -1.0469596   -0.8046054
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                -0.8562294   -1.0889685   -0.6234904
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.7677842   -0.9665048   -0.5690636
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                -0.9706620   -1.0660716   -0.8752524
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                -0.8000458   -0.9857484   -0.6143433
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.3914073   -0.5896510   -0.1931635
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                -0.7283197   -0.8519706   -0.6046688
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                -0.5205990   -0.7221334   -0.3190646
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.8263350   -0.8796189   -0.7730512
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                -0.8934339   -1.1501181   -0.6367497
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                -0.6677777   -0.8103586   -0.5251968
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.6899395    0.5737370    0.8061419
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                 0.5637141    0.3399980    0.7874301
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                 0.6427528    0.2943465    0.9911591
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -1.1883594   -1.3152775   -1.0614412
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                -1.4631177   -1.9142497   -1.0119856
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                -0.8097908   -1.0474793   -0.5721024
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2667794   -0.4373818   -0.0961770
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                -0.2992408   -0.3674444   -0.2310372
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                -0.2360652   -0.3605188   -0.1116116
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.4548622   -0.5411725   -0.3685520
24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                -0.6770735   -0.7466673   -0.6074797
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                -0.5393412   -0.6306584   -0.4480241
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.5117146   -0.5902869   -0.4331423
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                -0.6985452   -0.7500928   -0.6469977
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                -0.5233681   -0.5918592   -0.4548770
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0156554   -0.1153030    0.0839921
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                -0.0897012   -0.2991962    0.1197939
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                -0.1023159   -0.3100985    0.1054666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -1.2365364   -1.2943310   -1.1787418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                -1.3259098   -1.3563395   -1.2954800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                -1.2668345   -1.3104701   -1.2231990


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7034149   -0.8300527   -0.5767771
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0548591    0.9328922    1.1768259
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5291499    0.3751396    0.6831602
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1987071   -0.2815473   -0.1158669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2053991   -0.2588843   -0.1519138
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2948466    0.2673139    0.3223793
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4515550    0.3802638    0.5228463
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5932195   -0.6127714   -0.5736676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9519248   -1.0678488   -0.8360007
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.3916417    0.2704414    0.5128421
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8914360   -0.9741797   -0.8086923
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6880695    0.5737062    0.8024328
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1712534   -1.2800940   -1.0624128
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0468717   -0.1290135    0.0352701
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2970642   -1.3203662   -1.2737621


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.1170211   -0.3887820    0.6228241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.2047477   -0.3692067    0.7787020
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.2183903   -0.6289383    0.1921577
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0722078   -0.3897790    0.5341946
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.1168080   -0.4407417    0.2071257
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2283867   -0.5588977    0.1021242
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.1510400   -0.4775910    0.1755110
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.1842446   -0.5677417    0.1992526
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          -0.1675901   -0.4843009    0.1491207
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0158889   -0.3615174    0.3932952
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm           0.1333385   -0.3438164    0.6104934
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0999088   -0.5613425    0.3615248
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.0822231   -0.2538460    0.4182922
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0076783   -0.3701624    0.3548058
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          -0.0879082   -0.2682236    0.0924072
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm           0.0036543   -0.1855761    0.1928847
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm           0.0197731   -0.2877060    0.3272522
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          -0.1141967   -0.4579114    0.2295181
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm           0.0745775   -0.1511827    0.3003377
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.2576459   -0.0236941    0.5389860
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2012685   -0.4167070    0.0141699
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0231891   -0.2809711    0.2345930
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.1013028   -0.3053168    0.1027112
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.0770198   -0.3232219    0.1691823
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm           0.1808876    0.0295997    0.3321755
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0252548   -0.1627469    0.1122374
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0237658   -0.3765379    0.3290063
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1809584    0.0248089    0.3371078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          -0.3036666   -0.6391655    0.0318323
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          -0.4648334   -0.8688436   -0.0608231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm           0.1018327    0.0050227    0.1986427
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm           0.0074409   -0.1263465    0.1412284
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm           0.0536081   -0.0667758    0.1739921
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.0591138   -0.0223371    0.1405647
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm           0.1064183   -0.1128757    0.3257123
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0260928   -0.2236178    0.2758033
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.1875600   -0.3179364   -0.0571835
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0342110   -0.1784175    0.1099955
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm           0.0191919   -0.0889781    0.1273619
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm           0.0822118   -0.0391761    0.2035997
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm           0.1586321   -0.0505012    0.3677653
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm           0.0045793   -0.1762782    0.1854368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0489927   -0.0991077    0.0011223
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0624659   -0.1184597   -0.0064721
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm           0.0918822   -0.4535683    0.6373327
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm           0.1513111   -0.4314004    0.7340226
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          -0.3118984   -0.7550589    0.1312621
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm           0.0133917   -0.5290640    0.5558475
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          -0.3983376   -0.6850423   -0.1116330
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          -0.2298821   -0.5470148    0.0872506
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          -0.2058478   -0.5298463    0.1181507
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          -0.0683226   -0.4408525    0.3042073
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm           0.0024308   -0.2778387    0.2827002
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm           0.0732390   -0.2527476    0.3992256
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          -0.0781908   -0.5871120    0.4307304
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          -0.0058845   -0.4045025    0.3927335
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          -0.3588501   -0.6693747   -0.0483254
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          -0.0416195   -0.3917629    0.3085239
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          -0.0060974   -0.2843848    0.2721901
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm           0.0634557   -0.2782504    0.4051618
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          -0.2028778   -0.4223397    0.0165841
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          -0.0322617   -0.3027797    0.2382563
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          -0.3369124   -0.5695018   -0.1043231
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          -0.1291918   -0.4112277    0.1528442
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          -0.0670989   -0.3286983    0.1945005
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm           0.1585573    0.0068094    0.3103053
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          -0.1262254   -0.3911225    0.1386718
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          -0.0471866   -0.3830786    0.2887053
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          -0.2747583   -0.7450318    0.1955152
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm           0.3785685    0.1068546    0.6502825
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          -0.0324614   -0.2162121    0.1512892
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm           0.0307142   -0.1806425    0.2420708
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          -0.2222113   -0.3331543   -0.1112683
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          -0.0844790   -0.2101206    0.0411626
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          -0.1868306   -0.2802331   -0.0934281
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          -0.0116535   -0.1153059    0.0919989
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          -0.0740457   -0.3059958    0.1579043
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          -0.0866605   -0.3175899    0.1442689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm           0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          -0.0893733   -0.1548473   -0.0238994
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          -0.0302981   -0.0998188    0.0392226


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.1148619   -0.3422209    0.5719448
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.0472676   -0.1885174    0.0939822
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.1166756   -0.3426089    0.1092576
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1362531   -0.3960303    0.1235240
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                -0.0950906   -0.3360719    0.1458906
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                 0.0162889   -0.0713742    0.1039520
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0094026   -0.1014131    0.1202183
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0308637   -0.1284069    0.0666795
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0310373   -0.2670079    0.2049332
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.1113817   -0.0689855    0.2917489
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1160232   -0.2805584    0.0485120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.0759141   -0.2364608    0.0846327
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0222879   -0.0194945    0.0640702
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0234602   -0.0007755    0.0476960
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                -0.2791082   -0.5562188   -0.0019975
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                 0.0015779   -0.0027276    0.0058834
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0125650   -0.0016627    0.0267928
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0747235   -0.1132586    0.2627057
6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0860635   -0.1713715   -0.0007554
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0272695   -0.0554010    0.1099400
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0216478   -0.0360940    0.0793895
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0421014   -0.0832512   -0.0009515
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0908667   -0.4009791    0.5827124
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                -0.1044082   -0.2807148    0.0718984
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                -0.2499912   -0.4592512   -0.0407311
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                -0.1246477   -0.3881728    0.1388773
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                 0.0140973   -0.1903159    0.2185104
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                -0.0169092   -0.0885538    0.0547354
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0627610   -0.1695950    0.0440729
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0081061   -0.2192358    0.2354480
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.1236518   -0.2933849    0.0460813
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                -0.2189429   -0.3989288   -0.0389570
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0161634   -0.0058156    0.0381423
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0018700   -0.0118836    0.0081437
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0171060   -0.0531676    0.0873796
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0176242   -0.1761448    0.1408964
24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.1170901   -0.1886539   -0.0455262
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0982446   -0.1684317   -0.0280575
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                -0.0312162   -0.0991652    0.0367328
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0605277   -0.1135638   -0.0074917
