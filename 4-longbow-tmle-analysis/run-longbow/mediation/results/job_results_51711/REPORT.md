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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_gagebrth
* W_birthwt
* W_birthlen
* vagbrth
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_vagbrth

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           154     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          137     208
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     208
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     208
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           40     235
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg           146     235
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        49     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           79     236
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            75     236
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg          100     272
6 months    ki0047075b-MAL-ED          PERU                           <52 kg           107     272
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        65     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          179     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            29     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        41     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1019    1330
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       212    1330
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          107     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4171    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1675    7942
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2096    7942
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           135     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        37     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          109     168
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     168
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     168
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           141     226
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     228
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            74     228
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        78     228
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           77     201
24 months   ki0047075b-MAL-ED          PERU                           <52 kg            75     201
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        49     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          168     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          183     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           132     436
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       121     436
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578


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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/4d65905f-b02f-499c-a224-c98d3a301250/46e4f16a-8118-4da3-a254-83247e430046/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4d65905f-b02f-499c-a224-c98d3a301250/46e4f16a-8118-4da3-a254-83247e430046/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4d65905f-b02f-499c-a224-c98d3a301250/46e4f16a-8118-4da3-a254-83247e430046/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9914174   -1.2845919   -0.6982429
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3486839   -1.5005342   -1.1968336
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8817087   -1.1107908   -0.6526266
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0697459   -0.1089842    0.2484760
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0516075   -0.3105731    0.4137882
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1387540   -0.2053664    0.4828743
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0214898   -1.2546397   -0.7883398
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2497702   -1.4011741   -1.0983664
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2722430   -1.5721407   -0.9723453
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3184160   -0.4896459   -0.1471861
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8114600   -1.0157898   -0.6071303
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.5165920   -0.6893038   -0.3438802
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.2058460   -1.3795101   -1.0321820
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4295705   -1.6064647   -1.2526762
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.2973253   -1.5637728   -1.0308778
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9764674   -1.1291542   -0.8237805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.3911647   -1.7755905   -1.0067390
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2213752   -1.5596816   -0.8830688
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2467738   -1.4446811   -1.0488664
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5648308   -1.7612005   -1.3684610
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.2124425   -1.4484467   -0.9764383
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7356543   -0.9502115   -0.5210971
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5143701   -1.6033615   -1.4253787
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1361960   -1.2641623   -1.0082297
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0819734   -1.3355404   -0.8284065
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5358463   -1.6406098   -1.4310828
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0866922   -1.2768304   -0.8965539
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.8114955   -0.9975152   -0.6254757
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2420629   -1.3306850   -1.1534408
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8477725   -1.0686029   -0.6269420
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0998149   -1.2434447   -0.9561851
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2603111   -1.3562926   -1.1643297
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1426683   -1.3185341   -0.9668025
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4706444   -0.5336364   -0.4076524
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8172741   -0.9281904   -0.7063578
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5841443   -0.6905851   -0.4777034
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1265522    0.0274419    0.2256625
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.0405697   -0.1880500    0.1069105
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.1270439    0.0163656    0.2377222
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.7773209   -0.8133168   -0.7413249
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.1344987   -1.1918730   -1.0771244
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9647642   -1.0136214   -0.9159070
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3264523   -1.5166775   -1.1362272
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8252354   -1.9124183   -1.7380525
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4479644   -1.5819402   -1.3139886
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5381201   -1.7738547   -1.3023855
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.1849155   -2.3449056   -2.0249255
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.5031679   -1.7641448   -1.2421910
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0492269   -0.1616776    0.2601314
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.1241303   -0.3229616    0.5712221
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.3402040   -0.0473689    0.7277769
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.4583165   -1.7585711   -1.1580619
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9504572   -2.1052528   -1.7956616
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8178890   -2.1439133   -1.4918647
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9810456   -1.1867880   -0.7753032
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6124972   -1.8303760   -1.3946184
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2421090   -1.4203277   -1.0638902
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4322931   -1.6164615   -1.2481246
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.9524564   -2.1371422   -1.7677707
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7297732   -2.0650431   -1.3945034
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.4823503   -1.6397660   -1.3249346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.1128120   -2.4953391   -1.7302848
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8272731   -2.2563137   -1.3982326
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4086390   -2.6173796   -2.1998984
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8159961   -3.0416206   -2.5903716
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.5958984   -2.8642371   -2.3275597
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7328309   -2.0156245   -1.4500374
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3325006   -2.4477206   -2.2172806
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8802897   -2.1534618   -1.6071175
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0666911   -1.2403938   -0.8929883
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8386080   -1.9388365   -1.7383795
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2484753   -1.4561714   -1.0407792
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0667814   -1.2234559   -0.9101070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.5887346   -1.7018408   -1.4756283
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3951851   -1.5984073   -1.1919629
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0889610   -0.4111085    0.2331865
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4239001   -0.7830253   -0.0647750
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.2183042   -0.5862458    0.1496374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -2.2723909   -2.4617590   -2.0830228
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.7813651   -2.9511528   -2.6115775
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -2.3961921   -2.6124213   -2.1799629
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5858983   -1.7719753   -1.3998212
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0329009   -2.1387701   -1.9270317
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6643747   -1.8241437   -1.5046057


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4006917   -1.4821813   -1.3192022
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8994195   -0.9257684   -0.8730707
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6584707   -1.7281551   -1.5887863
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4241972   -2.5387692   -2.3096253
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8747405   -1.9558403   -1.7936407


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3572665   -0.6884872   -0.0260458
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1097087   -0.2626094    0.4820268
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0181384   -0.4250073    0.3887306
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0690081   -0.3164170    0.4544331
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2282805   -0.5046992    0.0481382
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2507533   -0.6284838    0.1269773
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.4930440   -0.7544653   -0.2316228
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1981760   -0.4397694    0.0434174
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2237244   -0.4726450    0.0251962
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0914792   -0.4094624    0.2265040
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4146974   -0.8280052   -0.0013895
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2449078   -0.6171996    0.1273839
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3180570   -0.5951421   -0.0409719
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0343313   -0.2717352    0.3403978
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.7787158   -0.9867975   -0.5706342
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.4005417   -0.7031260   -0.0979574
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4538728   -0.7276983   -0.1800474
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0047187   -0.3213781    0.3119407
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.4305675   -0.6363976   -0.2247373
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0362770   -0.3246754    0.2521214
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.1604962   -0.3335581    0.0125657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0428533   -0.2700724    0.1843657
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3466297   -0.4722831   -0.2209763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1134999   -0.2359607    0.0089610
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1671220   -0.2787738   -0.0554701
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0004917   -0.0703810    0.0713643
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3571778   -0.4234961   -0.2908595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1874433   -0.2465012   -0.1283855
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4987830   -0.7081386   -0.2894275
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1215121   -0.3543472    0.1113231
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6467954   -0.9319498   -0.3616410
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0349522   -0.3163917    0.3862962
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0749034   -0.4192856    0.5690923
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.2909771   -0.1501389    0.7320931
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4921407   -0.8304363   -0.1538451
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3595725   -0.8039884    0.0848434
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6314516   -0.9297663   -0.3331370
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2610634   -0.5330506    0.0109238
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5201634   -0.7804318   -0.2598950
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2974802   -0.6801286    0.0851682
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6304616   -1.0450197   -0.2159036
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3449228   -0.8039624    0.1141168
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4073571   -0.7154661   -0.0992482
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1872594   -0.5276930    0.1531742
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5996697   -0.9033429   -0.2959964
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1474587   -0.5392756    0.2443582
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7719169   -0.9722444   -0.5715894
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1817842   -0.4523859    0.0888174
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5219532   -0.7154553   -0.3284510
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.3284037   -0.5852885   -0.0715189
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.3349391   -0.6654338   -0.0044445
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1293432   -0.5107196    0.2520331
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.5089742   -0.7622026   -0.2557458
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1238011   -0.4106433    0.1630411
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4470026   -0.6608373   -0.2331680
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0784765   -0.3237082    0.1667553


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2142603   -0.4834233    0.0549027
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0165328   -0.1169520    0.0838865
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1933471   -0.4178837    0.0311895
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2426433   -0.3885273   -0.0967594
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1214027   -0.2617045    0.0188991
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0963339   -0.1849396   -0.0077281
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1133477   -0.2678224    0.0411270
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6650374   -0.8651862   -0.4648887
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3254086   -0.5600434   -0.0907738
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.2733613   -0.4413984   -0.1053243
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0988634   -0.2261026    0.0283759
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0718321   -0.1082757   -0.0353885
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0121640   -0.0266410    0.0023129
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1220987   -0.1465975   -0.0975998
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3320184   -0.5093567   -0.1546801
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.4049931   -0.6330734   -0.1769127
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0073817   -0.1342329    0.1194695
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3855994   -0.6650208   -0.1061781
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2941737   -0.4653476   -0.1229998
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.3178064   -0.4831172   -0.1524956
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1396796   -0.2307797   -0.0485795
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1972489   -0.3678627   -0.0266351
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4479635   -0.7092110   -0.1867161
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5172325   -0.6783263   -0.3561388
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3627516   -0.5057400   -0.2197633
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0423132   -0.1078840    0.0232576
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1518063   -0.2863465   -0.0172661
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2888422   -0.4680948   -0.1095896
