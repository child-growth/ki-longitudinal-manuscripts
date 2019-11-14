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
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mwtkg         n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           38     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     <52 kg           143     222
Birth       ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        41     222
Birth       ki0047075b-MAL-ED          BRAZIL                         >=58 kg           34      64
Birth       ki0047075b-MAL-ED          BRAZIL                         <52 kg            15      64
Birth       ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        15      64
Birth       ki0047075b-MAL-ED          INDIA                          >=58 kg            6      43
Birth       ki0047075b-MAL-ED          INDIA                          <52 kg            29      43
Birth       ki0047075b-MAL-ED          INDIA                          [52-58) kg         8      43
Birth       ki0047075b-MAL-ED          NEPAL                          >=58 kg            9      27
Birth       ki0047075b-MAL-ED          NEPAL                          <52 kg             8      27
Birth       ki0047075b-MAL-ED          NEPAL                          [52-58) kg        10      27
Birth       ki0047075b-MAL-ED          PERU                           >=58 kg           83     226
Birth       ki0047075b-MAL-ED          PERU                           <52 kg            84     226
Birth       ki0047075b-MAL-ED          PERU                           [52-58) kg        59     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg           69     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            10     101
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        22     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           91    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          <52 kg           949    1236
Birth       ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       196    1236
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           80     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     <52 kg           441     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        87     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           91     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     <52 kg           330     517
Birth       ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        96     517
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          186     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           395     729
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     729
Birth       ki1119695-PROBIT           BELARUS                        >=58 kg        10274   13767
Birth       ki1119695-PROBIT           BELARUS                        <52 kg          1131   13767
Birth       ki1119695-PROBIT           BELARUS                        [52-58) kg      2362   13767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          655   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         24241   26638
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1742   26638
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg          103    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg          1014    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       214    1331
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          109     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           385     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       109     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          184     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           383     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       148     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ki1119695-PROBIT           BELARUS                        >=58 kg         9742   13068
6 months    ki1119695-PROBIT           BELARUS                        <52 kg          1083   13068
6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      2243   13068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg          114     837
6 months    ki1148112-LCNI-5           MALAWI                         <52 kg           504     837
6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          406   16744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15187   16744
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1151   16744
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          111     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           362     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       104     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          138     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           273     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       103     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   ki1119695-PROBIT           BELARUS                        <52 kg           325    4013
24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588
24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           77     578
24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           348     578
24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg       153     578
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7796    8560
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       567    8560


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
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
## Warning: `lang_tail()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning: `mut_node_cdr()` is deprecated as of rlang 0.2.0.
## This warning is displayed once per session.
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/02edf386-bb0e-4fd1-bf3d-2725d9f4abfd/74452f8e-1629-4390-9066-a624068d8b43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7299523   -1.0133248   -0.4465797
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4652216   -0.8581590   -0.0722841
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9038979   -1.6860729   -0.1217229
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6503868   -1.1060077   -0.1947659
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.5741265   -0.7845684   -0.3636846
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.6080413   -0.8867348   -0.3293478
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2650518   -1.6887753   -0.8413283
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0405824   -1.2002608   -0.8809041
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6864156   -0.9446935   -0.4281376
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4289971   -0.6022872   -0.2557069
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7989176   -0.9410704   -0.6567648
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3971568    1.2354570    1.5588566
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3551905   -0.3867806   -0.3236005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.8912151   -1.0161349   -0.7662953
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9568368   -1.2205903   -0.6930833
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0083470   -0.2824740    0.2991680
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1226636   -1.3755261   -0.8698010
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2677607   -0.4328933   -0.1026280
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1407716   -1.3272396   -0.9543037
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9774821   -1.1472132   -0.8077510
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.1256159   -1.3562778   -0.8949540
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8479329   -1.0009989   -0.6948668
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.1591426   -1.4158320   -0.9024532
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7309370   -0.9337823   -0.5280918
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0484356   -1.1821832   -0.9146880
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4505313   -0.5145119   -0.3865507
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1670912    0.0682342    0.2659482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6738185   -0.7096329   -0.6380042
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.3244048   -1.5104379   -1.1383717
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2036700   -1.2910353   -1.1163047
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.6128097   -1.8899901   -1.3356293
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1947704   -0.2640429    0.6535836
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5757436   -1.8527203   -1.2987669
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.1337055   -1.3399656   -0.9274455
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5851410   -1.7694228   -1.4008592
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4885961   -1.6469045   -1.3302877
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5422812   -2.7978000   -2.2867624
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.8407755   -2.1443322   -1.5372188
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.0063953   -1.2215483   -0.7912422
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0823849   -1.2306195   -0.9341504
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0750752   -0.4344284    0.2842781
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4127545   -1.4916909   -1.3338182
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6694739   -1.8510875   -1.4878603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.9279777   -2.0375033   -1.8184521


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.5707921   -0.7685593   -0.3730248
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4220793   -1.5007856   -1.3433730
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3272020    1.1683762    1.4860279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4966839   -0.5196015   -0.4737663
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.1731789   -1.2012047   -1.1451532
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0532131   -0.0914567    0.1978830
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2058014   -1.3242792   -1.0873236
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3285478   -1.4371840   -1.2199116
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0733534   -1.2031913   -0.9435155
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4003907   -1.4819787   -1.3188027
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8785195   -0.9045379   -0.8525011
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6584707   -1.7281551   -1.5887863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3359824   -1.3590645   -1.3129004
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0069048   -0.1627841    0.1765936
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8831195   -2.0084753   -1.7577636
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6474145   -1.7842298   -1.5105993
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6451636   -2.7802323   -2.5100948
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6070497   -1.6645093   -1.5495902
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8854671   -1.9666281   -1.8043062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0193528   -2.0469684   -1.9917372


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3479306   -0.6130057   -0.0828555
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2232159   -0.5053044    0.0588726
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3263347   -1.0823651    0.4296958
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2029465   -0.6457096    0.2398165
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3310062   -0.4937126   -0.1682998
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0372492   -0.1713849    0.2458833
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1285764   -0.2179837    0.4751366
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3814968   -0.5262261   -0.2367676
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2446042   -0.4840542   -0.0051541
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4635174   -0.6241721   -0.3028628
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1099987   -0.2363825    0.0163850
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0699548   -0.0810897   -0.0588200
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1414933   -0.1637359   -0.1192508
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2819638   -0.4030405   -0.1608871
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2486542   -0.4897271   -0.0075813
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0448662   -0.2174636    0.3071959
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.0831379   -0.3076630    0.1413873
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2932986   -0.4406064   -0.1459908
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1877761   -0.3360319   -0.0395204
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0958713   -0.2129969    0.0212543
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2431290   -0.4332942   -0.0529638
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5524578   -0.6825768   -0.4223388
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2482395   -0.4843510   -0.0121279
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3585931   -0.5458944   -0.1712918
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1502427   -0.2690005   -0.0314850
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0919452   -0.1298750   -0.0540155
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0527030   -0.0674538   -0.0379522
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2047010   -0.2297563   -0.1796457
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3340659   -0.5074184   -0.1607135
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1323124   -0.2148915   -0.0497334
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3661054   -0.6280112   -0.1041996
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1878656   -0.6076518    0.2319206
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3073759   -0.5667303   -0.0480214
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1781585   -0.3486464   -0.0076705
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1693366   -0.3352682   -0.0034050
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1588184   -0.2521936   -0.0654432
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1028824   -0.3102630    0.1044982
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3782824   -0.6590176   -0.0975472
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.5938647   -0.7946646   -0.3930648
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3588796   -0.4940045   -0.2237548
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0561990   -0.1660509    0.0536529
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1942952   -0.2501122   -0.1384783
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2159933   -0.3897673   -0.0422192
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0913751   -0.1940320    0.0112818
