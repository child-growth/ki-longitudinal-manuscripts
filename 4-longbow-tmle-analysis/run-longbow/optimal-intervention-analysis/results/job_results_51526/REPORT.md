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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           47     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        43     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg          121     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            33     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        30     184
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg           36     198
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg           123     198
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg        39     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg           57     172
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg            52     172
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     172
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           99     276
Birth       ki0047075b-MAL-ED          PERU                           <52 kg           107     276
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        70     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          166     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            23     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        39     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           52     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            40     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        29     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           14     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           141     182
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg        27     182
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg            2      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg            23      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg         3      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg            4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg            20      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg         3      27
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5735   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2358   10990
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2897   10990
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
![](/tmp/4209d27e-3564-46b7-825e-813689c72d0b/dd85c72f-de8e-44ac-bf87-6fab595de968/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8415023   -1.1389967   -0.5440079
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.7633298   -1.0092345   -0.5174252
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6508983   -0.9684939   -0.3333026
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5043092   -0.7202442   -0.2883741
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.7297045   -0.9307065   -0.5287025
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.7728746   -1.0455315   -0.5002178
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5803263   -0.8578451   -0.3028075
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.4135097   -1.9750020   -0.8520175
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3809842    1.2199662    1.5420022
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3510879   -0.3827927   -0.3193830
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9572764   -1.1642689   -0.7502839
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0499345   -0.2444153    0.1445463
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9826483   -1.2293727   -0.7359240
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4255044   -0.6027552   -0.2482536
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1621075   -1.3512538   -0.9729612
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.0134724   -1.1845556   -0.8423892
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4016084   -1.6181968   -1.1850201
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7016586   -0.9277659   -0.4755512
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2754386   -1.4935390   -1.0573383
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7256983   -0.9056128   -0.5457838
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1252879   -1.2752813   -0.9752944
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4391223   -0.5030693   -0.3751753
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1618739    0.0608886    0.2628592
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6957079   -0.7321925   -0.6592232
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.3550091   -1.5480445   -1.1619737
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.4749363   -1.7055323   -1.2443403
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0164814   -0.4702619    0.4372990
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.4812954   -1.7784570   -1.1841337
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0176053   -1.2210229   -0.8141877
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5559314   -1.7804131   -1.3314496
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4775307   -1.6357265   -1.3193348
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.4613940   -2.6873412   -2.2354467
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.7110404   -2.0209356   -1.4011453
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0875653   -1.2751256   -0.9000049
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0619855   -1.2125252   -0.9114458
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0825149   -0.4170344    0.2520047
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2076640   -2.4049335   -2.0103945
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5609454   -1.7518913   -1.3699995


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3716484   -1.5489439   -1.1943528
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3264008    1.1675653    1.4852363
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4974449   -0.5203958   -0.4744941
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4006917   -1.4821813   -1.3192022
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8994195   -0.9257684   -0.8730707
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6584707   -1.7281551   -1.5887863
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418452   -0.1263708    0.2100613
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4241972   -2.5387692   -2.3096253
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8747405   -1.9558403   -1.7936407


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2040261   -0.4830222    0.0749699
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0236016   -0.1512625    0.1984657
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3691522   -0.6607992   -0.0775053
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2009815   -0.3969646   -0.0049984
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2089187   -0.3649048   -0.0529325
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0806816   -0.1310192    0.2923825
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3464505   -0.5896435   -0.1032576
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0418614   -0.4572394    0.5409621
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0545834   -0.0693573   -0.0398095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1463571   -0.1687514   -0.1239627
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2484013   -0.4580620   -0.0387405
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1031476   -0.0329403    0.2392356
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2321886   -0.4688233    0.0044462
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1355549   -0.2881271    0.0170172
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1651413   -0.3265207   -0.0037618
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0593288   -0.1693643    0.0507067
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0414870   -0.1451056    0.2280796
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6990332   -0.9007683   -0.4972981
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1319434   -0.3399786    0.0760917
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3591585   -0.5217918   -0.1965253
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0733905   -0.2040387    0.0572578
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1033542   -0.1413870   -0.0653215
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0474857   -0.0686410   -0.0263303
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2037117   -0.2294472   -0.1779761
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3034616   -0.4836859   -0.1232374
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.4681769   -0.6995032   -0.2368506
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0583267   -0.3400824    0.4567358
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3626206   -0.6375215   -0.0877196
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2576140   -0.4263516   -0.0888764
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1941681   -0.3888046    0.0004684
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1444992   -0.2354432   -0.0535553
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1444939   -0.3315361    0.0425483
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4697541   -0.7567442   -0.1827639
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4963584   -0.6685849   -0.3241318
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3675476   -0.5050691   -0.2300260
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0487593   -0.1308385    0.0333199
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2165332   -0.3562542   -0.0768123
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3137951   -0.4974654   -0.1301247
