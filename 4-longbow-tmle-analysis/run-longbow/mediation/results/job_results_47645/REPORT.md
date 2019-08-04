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
![](/tmp/77f4e608-4d55-4d77-850a-0a6838bd5b17/416c28ab-0d9c-4665-a1a2-fcaa6479c7d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/77f4e608-4d55-4d77-850a-0a6838bd5b17/416c28ab-0d9c-4665-a1a2-fcaa6479c7d7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/77f4e608-4d55-4d77-850a-0a6838bd5b17/416c28ab-0d9c-4665-a1a2-fcaa6479c7d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.9652755   -1.2523810   -0.6781700
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.3550460   -1.5044537   -1.2056384
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.8769548   -1.1092311   -0.6446786
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0927446   -0.0879021    0.2733913
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0101989   -0.3270306    0.3066329
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1370778   -0.2396145    0.5137701
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.0411421   -1.3063809   -0.7759034
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.2437736   -1.3961723   -1.0913749
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.2817431   -1.5780740   -0.9854122
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3648785   -0.5423756   -0.1873814
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.8793529   -1.0872504   -0.6714554
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.5173507   -0.6865301   -0.3481713
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.1575701   -1.3253583   -0.9897819
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.4095884   -1.5766575   -1.2425192
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.2903263   -1.5259244   -1.0547283
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.9812970   -1.1331909   -0.8294031
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -1.4080591   -1.8048124   -1.0113057
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.2021886   -1.5496750   -0.8547022
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -1.2331298   -1.4315578   -1.0347019
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -1.5557932   -1.7536895   -1.3578968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -1.1949923   -1.4252058   -0.9647789
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.7356543   -0.9502115   -0.5210971
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -1.5143701   -1.6033615   -1.4253787
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -1.1361960   -1.2641623   -1.0082297
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.0923112   -1.3495769   -0.8350456
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.5363686   -1.6414357   -1.4313014
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.0779219   -1.2720250   -0.8838189
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.8312012   -1.0246503   -0.6377521
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.2433486   -1.3333571   -1.1533400
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.8546301   -1.0770596   -0.6322006
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0757861   -1.2176722   -0.9339000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.2679834   -1.3631245   -1.1728424
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.1406746   -1.3076068   -0.9737424
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.4739019   -0.5368218   -0.4109821
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.8101492   -0.9231282   -0.6971703
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.5773535   -0.6855581   -0.4691489
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.1191858    0.0199746    0.2183971
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0134830   -0.1303173    0.1572833
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.1420068    0.0339767    0.2500369
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.7768869   -0.8127217   -0.7410520
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.1387243   -1.1948159   -1.0826327
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.9656984   -1.0147665   -0.9166302
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.3518919   -1.5449057   -1.1588780
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -1.8256726   -1.9129333   -1.7384120
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.4366588   -1.5735555   -1.2997621
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -1.5444214   -1.7675856   -1.3212572
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -2.1800858   -2.3401848   -2.0199869
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.4800742   -1.7303030   -1.2298455
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0384023   -0.1710464    0.2478510
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0507180   -0.4989144    0.3974783
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.2511126   -0.1468758    0.6491010
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -1.4611163   -1.7549452   -1.1672873
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.9526629   -2.1071042   -1.7982215
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.8337704   -2.1477571   -1.5197836
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.9628701   -1.1634916   -0.7622486
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.6307423   -1.8565972   -1.4048874
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -1.2499973   -1.4337473   -1.0662473
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -1.4496519   -1.6273208   -1.2719829
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -1.9724853   -2.1643351   -1.7806355
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -1.7027734   -2.0307553   -1.3747916
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -1.4861446   -1.6450149   -1.3272744
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -2.2061817   -2.5592660   -1.8530975
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -1.8030675   -2.2347846   -1.3713504
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -2.4178593   -2.6254782   -2.2102404
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -2.8251828   -3.0531371   -2.5972285
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -2.6284058   -2.9074231   -2.3493885
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -1.7237536   -2.0147771   -1.4327301
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -2.3344892   -2.4504157   -2.2185628
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -1.8844185   -2.1512702   -1.6175669
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -1.0694301   -1.2497661   -0.8890942
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.8348997   -1.9351535   -1.7346459
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -1.2403573   -1.4496043   -1.0311102
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -1.0943403   -1.2524261   -0.9362545
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -1.5877407   -1.7015530   -1.4739284
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -1.3712918   -1.5725736   -1.1700101
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.1020516   -0.4171153    0.2130122
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.3679336   -0.7268377   -0.0090294
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.1858891   -0.6396382    0.2678599
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -2.2824509   -2.4696339   -2.0952678
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -2.7797236   -2.9546643   -2.6047830
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -2.4143752   -2.6228943   -2.2058560
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -1.5904690   -1.7827837   -1.3981543
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -2.0273332   -2.1332436   -1.9214229
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -1.6753541   -1.8354082   -1.5153001


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
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3897705   -0.7138941   -0.0656470
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0883207   -0.2824411    0.4590824
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1029435   -0.4673032    0.2614163
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0443332   -0.3743025    0.4629689
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.2026315   -0.5091847    0.1039217
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.2406010   -0.6379251    0.1567231
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5144744   -0.7854466   -0.2435022
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1524722   -0.3957563    0.0908119
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2520183   -0.4844625   -0.0195741
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1327563   -0.4191894    0.1536769
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4267621   -0.8506495   -0.0028746
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2208916   -0.6000286    0.1582454
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3226633   -0.6013057   -0.0440209
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0381375   -0.2635825    0.3398575
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.7787158   -0.9867975   -0.5706342
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.4005417   -0.7031260   -0.0979574
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.4440573   -0.7220461   -0.1660686
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0143893   -0.3078212    0.3365998
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.4121473   -0.6253223   -0.1989724
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0234289   -0.3179685    0.2711108
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.1921973   -0.3635664   -0.0208282
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0648885   -0.2842641    0.1544871
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3362473   -0.4639119   -0.2085826
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1034516   -0.2274399    0.0205368
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1057028   -0.2101875   -0.0012181
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0228210   -0.0477774    0.0934193
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3618375   -0.4269044   -0.2967705
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1888115   -0.2479490   -0.1296739
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4737808   -0.6857000   -0.2618616
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0847669   -0.3224574    0.1529235
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.6356644   -0.9099765   -0.3613523
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0643472   -0.2722120    0.4009064
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0891203   -0.5846603    0.4064196
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.2127103   -0.2364725    0.6618931
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4915466   -0.8235647   -0.1595285
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3726541   -0.8029263    0.0576181
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.6678722   -0.9706398   -0.3651047
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2871272   -0.5604634   -0.0137911
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.5228334   -0.7807111   -0.2649558
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.2531216   -0.6226744    0.1164312
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.7200371   -1.1078860   -0.3321881
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.3169229   -0.7773918    0.1435461
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.4073235   -0.7155857   -0.0990613
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.2105465   -0.5579929    0.1368998
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.6107356   -0.9226764   -0.2987948
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1606650   -0.5544189    0.2330890
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7654695   -0.9707060   -0.5602331
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.1709271   -0.4463950    0.1045408
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.4934004   -0.6881842   -0.2986166
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2769515   -0.5327561   -0.0211470
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2658820   -0.5631430    0.0313789
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0838376   -0.5282375    0.3605624
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.4972728   -0.7536658   -0.2408798
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1319243   -0.4117990    0.1479504
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.4368642   -0.6562381   -0.2174903
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.0848851   -0.3347246    0.1649543


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.2404022   -0.5036442    0.0228398
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0395315   -0.1423845    0.0633216
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.1736947   -0.4272296    0.0798401
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1961808   -0.3483321   -0.0440295
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1696787   -0.3021768   -0.0371805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0915042   -0.1786053   -0.0044031
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1269916   -0.2823110    0.0283277
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.6650374   -0.8651862   -0.4648887
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3150708   -0.5535596   -0.0765820
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.2536556   -0.4286627   -0.0786485
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1228922   -0.2484787    0.0026942
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0685746   -0.1051057   -0.0320435
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0047976   -0.0184995    0.0089043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1225327   -0.1468139   -0.0982515
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.3065788   -0.4867423   -0.1264154
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3986918   -0.6160683   -0.1813153
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0034430   -0.1220057    0.1288916
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3827997   -0.6549467   -0.1106526
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.3123492   -0.4816736   -0.1430248
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.3004476   -0.4560768   -0.1448184
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1358853   -0.2270027   -0.0447678
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1880286   -0.3570995   -0.0189576
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.4570409   -0.7260115   -0.1880703
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.5144935   -0.6813657   -0.3476212
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3351928   -0.4793172   -0.1910684
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0292226   -0.0885409    0.0300957
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1417464   -0.2749708   -0.0085220
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2842715   -0.4690145   -0.0995284
