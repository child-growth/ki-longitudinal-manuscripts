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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          500   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         20479   22432
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1453   22432
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          407   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <52 kg         15243   16802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg      1152   16802
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=58 kg          197    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <52 kg          7859    8627
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [52-58) kg       571    8627


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/db66f951-31b1-46c6-8ddf-bd4aaf8298e8/3042970c-74ec-4c68-9536-cde8a197dcd3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8609409   -1.1904218   -0.5314600
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4205738   -0.7991423   -0.0420053
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.8740157   -1.5980099   -0.1500215
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7314121   -1.3055910   -0.1572332
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6130149   -0.8316090   -0.3944209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4343375   -0.6615272   -0.2071479
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.8091022   -1.0799454   -0.5382590
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.8952268   -1.0595790   -0.7308746
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9001377   -1.1517587   -0.6485167
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4539474   -0.6392845   -0.2686103
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.7599676   -0.9113274   -0.6086077
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3869186    1.2279530    1.5458841
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3519177   -0.3835828   -0.3202525
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.3330656   -1.4220499   -1.2440814
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8602636   -1.1004022   -0.6201250
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0853158   -0.0979493    0.2685809
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.0256155   -1.2682550   -0.7829761
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3598578   -0.5307183   -0.1889972
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1910011   -1.3833345   -0.9986677
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.9713038   -1.1219286   -0.8206790
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2743703   -1.4880997   -1.0606409
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7372208   -0.8943019   -0.5801396
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.2486702   -1.4590352   -1.0383052
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7420832   -0.9282790   -0.5558874
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0886191   -1.2389822   -0.9382559
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4407032   -0.5042644   -0.3771420
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1495967    0.0526189    0.2465745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6704725   -0.7063499   -0.6345952
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.3481279   -1.5418450   -1.1544109
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0744192   -1.1729121   -0.9759263
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.7036026   -1.9659267   -1.4412785
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.0337449   -0.3266191    0.3941089
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.5640539   -1.8676656   -1.2604423
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -1.0481139   -1.2480208   -0.8482070
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.5823279   -1.8433656   -1.3212903
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.4959949   -1.6538095   -1.3381803
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.2946499   -2.5077499   -2.0815499
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.7225866   -2.0317092   -1.4134640
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1054546   -1.2955712   -0.9153380
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.0632200   -1.2051342   -0.9213057
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1136141   -0.4504307    0.2232025
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.3986472   -1.4771305   -1.3201638
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.5778914   -1.7673897   -1.3883931
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.7384089   -1.8558943   -1.6209234


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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5896135   -1.6088760   -1.5703510
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0497516   -0.0948051    0.1943083
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4003907   -1.4819787   -1.3188027
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424765   -0.5918460   -0.4931071
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1143882    0.0212298    0.2075466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8785195   -0.9045379   -0.8525011
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6584707   -1.7281551   -1.5887863
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3134847   -1.3366230   -1.2903464
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0059127   -0.1637934    0.1756188
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1312742   -0.4286264    0.1660780
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.6070497   -1.6645093   -1.5495902
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8854671   -1.9666281   -1.8043062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0134183   -2.0410747   -1.9857620


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2169420   -0.5183453    0.0844614
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2678637   -0.5488026    0.0130752
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3562168   -1.0563127    0.3438790
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1219213   -0.6443406    0.4004981
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2921178   -0.4639162   -0.1203194
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1364546   -0.2889765    0.0160673
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3273732   -0.5858320   -0.0689145
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5268524   -0.6710808   -0.3826240
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.0308820   -0.2672125    0.2054484
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4385671   -0.6079511   -0.2691831
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1489488   -0.2827229   -0.0151747
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0597166   -0.0723827   -0.0470504
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1447662   -0.1671083   -0.1224242
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2565479   -0.3426117   -0.1704841
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.3447295   -0.5782111   -0.1112478
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0355642   -0.1407602    0.0696317
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.1803419   -0.4131818    0.0524980
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2017241   -0.3521748   -0.0512735
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1331012   -0.2894730    0.0232705
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1014405   -0.1865463   -0.0163347
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0943746   -0.2711012    0.0823519
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6631699   -0.8197604   -0.5065794
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1587119   -0.3604015    0.0429777
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3474469   -0.5172572   -0.1776366
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1100593   -0.2405685    0.0204500
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1017733   -0.1393032   -0.0642434
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0352085   -0.0520185   -0.0183985
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2080470   -0.2331949   -0.1828990
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3103428   -0.4911018   -0.1295838
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2390655   -0.3323941   -0.1457369
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2747937   -0.5270035   -0.0225839
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0278322   -0.3366775    0.2810131
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3204151   -0.6025588   -0.0382714
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2594738   -0.4268145   -0.0921331
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1701430   -0.3970877    0.0568016
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1472281   -0.2384770   -0.0559791
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3509108   -0.5350453   -0.1667763
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4964713   -0.7821661   -0.2107765
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4948053   -0.6693126   -0.3202980
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3780446   -0.5071530   -0.2489363
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0176601   -0.0981958    0.0628757
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2084026   -0.2639035   -0.1529017
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.3075757   -0.4901470   -0.1250045
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2750095   -0.3874154   -0.1626035
