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

**Intervention Variable:** mwtkg

**Adjustment Set:**

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           46     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           144     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          117     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            31     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        28     176
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     195
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           121     195
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        38     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           56     167
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            48     167
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     167
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           97     269
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           104     269
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        68     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          165     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        38     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           51     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            37     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        28     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           12     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           124     162
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        26     162
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            17      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         2      23
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10233   13707
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1124   13707
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2350   13707
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5455   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2142   10285
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2688   10285
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           99    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1016    1328
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       213    1328
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           384     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          106     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           369     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       106     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           324    1988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1988
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9740   13065
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13065
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2242   13065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4156    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1671    7916
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2089    7916
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           308     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        64     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           361     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         2957    3949
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           322    3949
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       670    3949
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          167     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           129     413
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       117     413
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           73     562
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           337     562
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       152     562


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
![](/tmp/d39475f3-7b17-4ed1-b477-7eae2c671542/f9d627ec-38de-4a4d-9d08-bf4cf0dc9adb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d39475f3-7b17-4ed1-b477-7eae2c671542/f9d627ec-38de-4a4d-9d08-bf4cf0dc9adb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/d39475f3-7b17-4ed1-b477-7eae2c671542/f9d627ec-38de-4a4d-9d08-bf4cf0dc9adb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.6427969   -0.9123273   -0.3732664
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -1.0571692   -1.2396410   -0.8746975
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -1.0204929   -1.3845803   -0.6564055
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.4808595    0.2632329    0.6984861
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.3672660   -0.1123013    0.8468334
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0583147   -0.3540375    0.4706669
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.7519432   -1.1245466   -0.3793398
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.1014491   -1.2838437   -0.9190546
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -1.1341065   -1.4140651   -0.8541480
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.7272241   -0.9785705   -0.4758777
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -1.0329796   -1.2891532   -0.7768061
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.9823672   -1.2006937   -0.7640408
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0787965   -0.1143230    0.2719160
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1861201   -0.3491700   -0.0230702
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.0056744   -0.2669614    0.2556126
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.0320898   -0.1292647    0.1934442
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.3967822   -0.8753013    0.0817369
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.0650151   -0.5601877    0.4301575
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5720576    0.2742967    0.8698185
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 1.0351090    0.6781855    1.3920325
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.8236787    0.3796881    1.2676693
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0191998   -0.6621877    0.6237880
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.2869716   -0.5919010    0.0179579
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0892779   -0.5745952    0.3960394
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -1.1153932   -1.3287973   -0.9019892
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               NA                -1.2596933   -1.4858918   -1.0334949
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -1.2146553   -1.4177697   -1.0115408
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.3638529   -0.4043330   -0.3233729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.7035193   -0.7666588   -0.6403798
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.5670910   -0.6238228   -0.5103593
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0273376   -0.3761230    0.3214479
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.2436663   -0.3982609   -0.0890718
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.0904730   -0.2748015    0.4557474
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 1.0203335    0.8079694    1.2326977
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.8973262    0.5023355    1.2923170
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.7524503    0.3393937    1.1655068
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4240502   -0.6740650   -0.1740353
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.8405489   -1.0193697   -0.6617282
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.4914502   -0.7356290   -0.2472714
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.3755251    0.1416480    0.6094022
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.2187690   -0.4518917    0.0143538
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.1756083   -0.0335945    0.3848111
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 1.2950490    1.0854416    1.5046565
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.9465199    0.7488534    1.1441864
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.9075199    0.6472417    1.1677980
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.6427352    0.4609409    0.8245294
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0293242   -0.4435243    0.5021726
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.4088833   -0.0203177    0.8380842
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.5615877    0.3395603    0.7836151
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                 0.4121003    0.1841056    0.6400950
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.6053983    0.3723050    0.8384916
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.3824161   -0.7542844   -0.0105478
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.7225968   -0.8451347   -0.6000590
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.5251681   -0.6979974   -0.3523388
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1891142   -0.3933728    0.0151444
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.5152226   -0.6201315   -0.4103137
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.2642210   -0.5309306    0.0024885
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.2563312    0.0238466    0.4888159
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.4120702   -0.5128391   -0.3113013
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0644471   -0.2761128    0.1472186
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.2356707    0.0563469    0.4149946
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1362357   -0.2446514   -0.0278200
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.1259688   -0.0431544    0.2950920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.1227261    0.0553449    0.1901073
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0334277   -0.1689572    0.1021017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0059563   -0.1177478    0.1296604
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.6094045    0.5515441    0.6672649
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.4443391    0.3406161    0.5480620
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5335787    0.4600539    0.6071036
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.4189154    0.3824517    0.4553791
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0202416   -0.0407568    0.0812400
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                 0.2505992    0.1981716    0.3030267
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.7177549    0.5417048    0.8938051
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                 0.3790830    0.2845460    0.4736200
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.4902136    0.3523968    0.6280304
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.5146230   -0.8094466   -0.2197994
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.9707250   -1.1164716   -0.8249785
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.5953495   -0.8972934   -0.2934055
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.5781176    0.3119203    0.8443149
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.2455671   -0.1936000    0.6847341
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0394929   -0.5530948    0.6320806
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.5249209   -0.8005192   -0.2493226
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -1.0870229   -1.2380343   -0.9360116
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.9360150   -1.1303866   -0.7416433
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0974675   -0.3075952    0.1126601
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.6375654   -0.8303953   -0.4447355
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.3347687   -0.5083799   -0.1611575
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.2818376    0.1162979    0.4473773
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0903737   -0.2975179    0.1167705
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.2139788   -0.0925495    0.5205071
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                 0.4822922    0.3423781    0.6222064
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.1044229   -0.2518278    0.4606737
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.3268339    0.0306285    0.6230393
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2216386    0.0203376    0.4229396
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1369717   -0.3357519    0.0618085
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                 0.0975434   -0.1694954    0.3645823
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.5136719   -0.7530665   -0.2742774
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -1.0344046   -1.1516090   -0.9172003
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.5894547   -0.8223018   -0.3566075
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4083006   -0.6211318   -0.1954693
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -1.1212843   -1.2154925   -1.0270760
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.6243010   -0.8299539   -0.4186480
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2429426   -0.4437893   -0.0420958
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.8385329   -0.9592265   -0.7178393
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.4747916   -0.6916970   -0.2578861
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.7243213    0.6070194    0.8416232
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.5035870    0.2845368    0.7226371
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.5886954    0.4404667    0.7369241
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -1.2137315   -1.3820890   -1.0453739
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -1.2843795   -1.4582814   -1.1104776
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -1.0331551   -1.2222013   -0.8441088
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                 0.2354774   -0.0161523    0.4871071
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.1585531   -0.2628844   -0.0542218
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                 0.0764172   -0.0818896    0.2347240


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.2353086   -0.4984656    0.0278483
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1441825   -1.3547365   -0.9336286
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.4819806   -0.5108811   -0.4530800
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9644952    0.7999744    1.1290160
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6674586   -0.8042294   -0.5306877
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0780261    0.0247830    0.1312691
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5834072    0.5254491    0.6413653
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.2953392    0.2687669    0.3219114
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4518399    0.3806212    0.5230586
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4282738    0.2252365    0.6313111
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6877387    0.5737746    0.8017027
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1865133   -1.2873598   -1.0856668
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0467082   -0.1287046    0.0352882


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4143724   -0.7404451   -0.0882997
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.3776960   -0.8314219    0.0760298
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1135934   -0.6437652    0.4165783
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.4225448   -0.8918479    0.0467583
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.3495059   -0.7648415    0.0658297
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.3821633   -0.8479175    0.0835909
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.3057555   -0.6646149    0.0531039
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2551431   -0.5885922    0.0783060
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.2649166   -0.5193474   -0.0104858
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0844709   -0.4110660    0.2421241
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.4288720   -0.9340989    0.0763550
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0971049   -0.6176858    0.4234760
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.4630514   -0.0044271    0.9305299
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.2516211   -0.2840933    0.7873354
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.2677717   -0.8953010    0.3597575
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.0700781   -1.0721567    0.9320005
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1443001   -0.2525067   -0.0360935
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0992621   -0.1586503   -0.0398738
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3396664   -0.4147037   -0.2646290
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.2032381   -0.2729165   -0.1335597
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.2163288   -0.5981860    0.1655284
6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1178106   -0.3887870    0.6244082
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1230073   -0.5713763    0.3253618
6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.2678833   -0.7327757    0.1970092
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.4164988   -0.7257462   -0.1072514
6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0674000   -0.4206993    0.2858993
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5942941   -0.9252970   -0.2632911
6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1999168   -0.5151572    0.1153236
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3485291   -0.6367697   -0.0602886
6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.3875291   -0.7222683   -0.0527900
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.6134110   -1.1207368   -0.1060852
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.2338519   -0.7003203    0.2326165
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1494874   -0.4722667    0.1732918
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0438106   -0.2771647    0.3647860
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.3401807   -0.6358149   -0.0445465
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1427520   -0.4610180    0.1755140
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.3261084   -0.5557150   -0.0965018
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0751068   -0.4121186    0.2619049
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.6684014   -0.9225411   -0.4142617
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.3207783   -0.6365415   -0.0050151
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.3719065   -0.5819148   -0.1618981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.1097019   -0.3558764    0.1364725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.1561538   -0.3075681   -0.0047395
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1167698   -0.2577543    0.0242148
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.1650654   -0.2463514   -0.0837794
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0758258   -0.1284127   -0.0232388
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.3986738   -0.4696707   -0.3276769
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.1683162   -0.2321599   -0.1044726
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3386719   -0.5386684   -0.1386755
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.2275414   -0.4511984   -0.0038844
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.4561020   -0.7846807   -0.1275234
24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0807264   -0.5028575    0.3414046
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.3325505   -0.8479361    0.1828351
24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.5386247   -1.1884104    0.1111609
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.5621020   -0.8778468   -0.2463573
24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.4110941   -0.7482905   -0.0738976
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.5400979   -0.8266330   -0.2535628
24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.2373012   -0.5096361    0.0350338
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.3722113   -0.6366645   -0.1077581
24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0678588   -0.4181374    0.2824198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.3778693   -0.7599343    0.0041957
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.1554584   -0.4829705    0.1720538
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.3586103   -0.6424182   -0.0748024
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.1240952   -0.4580761    0.2098858
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.5207327   -0.7844621   -0.2570033
24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0757827   -0.4085166    0.2569512
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.7129837   -0.9456574   -0.4803100
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.2160004   -0.5125609    0.0805601
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.5955903   -0.8306070   -0.3605736
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.2318490   -0.5284336    0.0647355
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.2207343   -0.4128788   -0.0285899
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.1356259   -0.2791495    0.0078977
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0706480   -0.3131976    0.1719016
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.1805764   -0.0725013    0.4336541
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.3940305   -0.6662307   -0.1218303
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           -0.1590602   -0.4578024    0.1396819


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3296495   -0.5847126   -0.0745864
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0976208   -0.2287961    0.0335544
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.3179542   -0.6498481    0.0139396
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.1854705   -0.3838550    0.0129140
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1448932   -0.2997544    0.0099681
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0666915   -0.1681061    0.0347231
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                 0.2229424   -0.0097162    0.4556010
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2161088   -0.8562357    0.4240180
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0287893   -0.0449417   -0.0126370
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1181276   -0.1457285   -0.0905267
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1124584   -0.4242625    0.1993457
6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0558383   -0.1755048    0.0638282
6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.2747442   -0.5201370   -0.0293513
6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2644799   -0.4544289   -0.0745309
6 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.2386703   -0.4063202   -0.0710205
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.1136923   -0.2140388   -0.0133459
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0445364   -0.2204559    0.1313831
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.2850425   -0.5594709   -0.0106140
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.2497959   -0.4471007   -0.0524912
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4643203   -0.6743776   -0.2542631
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.2059085   -0.3605606   -0.0512563
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0447000   -0.0861488   -0.0032513
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0259973   -0.0375465   -0.0144481
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1235762   -0.1495378   -0.0976146
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2659150   -0.4325752   -0.0992549
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.3062025   -0.5713315   -0.0410735
24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.1498438   -0.3090131    0.0093255
24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.4276455   -0.6838011   -0.1714899
24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.2789798   -0.4454725   -0.1124871
24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1619371   -0.3071637   -0.0167105
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0726769   -0.1510365    0.0056828
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1715452   -0.3307913   -0.0122990
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.3979071   -0.6265190   -0.1692952
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.4781986   -0.6675550   -0.2888421
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.3674076   -0.5353431   -0.1994721
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0365826   -0.0699060   -0.0032592
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                 0.0272182   -0.0988738    0.1533101
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.2821856   -0.5157792   -0.0485920
