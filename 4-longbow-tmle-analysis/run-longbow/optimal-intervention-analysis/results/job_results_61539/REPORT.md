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

agecat      studyid          country                        mwtkg         n_cell       n
----------  ---------------  -----------------------------  -----------  -------  ------
Birth       JiVitA-3         BANGLADESH                     >=58 kg          500   22432
Birth       JiVitA-3         BANGLADESH                     <52 kg         20479   22432
Birth       JiVitA-3         BANGLADESH                     [52-58) kg      1453   22432
Birth       MAL-ED           BANGLADESH                     >=58 kg           38     222
Birth       MAL-ED           BANGLADESH                     <52 kg           143     222
Birth       MAL-ED           BANGLADESH                     [52-58) kg        41     222
Birth       MAL-ED           BRAZIL                         >=58 kg           34      64
Birth       MAL-ED           BRAZIL                         <52 kg            15      64
Birth       MAL-ED           BRAZIL                         [52-58) kg        15      64
Birth       MAL-ED           INDIA                          >=58 kg            6      43
Birth       MAL-ED           INDIA                          <52 kg            29      43
Birth       MAL-ED           INDIA                          [52-58) kg         8      43
Birth       MAL-ED           NEPAL                          >=58 kg            9      27
Birth       MAL-ED           NEPAL                          <52 kg             8      27
Birth       MAL-ED           NEPAL                          [52-58) kg        10      27
Birth       MAL-ED           PERU                           >=58 kg           83     226
Birth       MAL-ED           PERU                           <52 kg            84     226
Birth       MAL-ED           PERU                           [52-58) kg        59     226
Birth       MAL-ED           SOUTH AFRICA                   >=58 kg           69     101
Birth       MAL-ED           SOUTH AFRICA                   <52 kg            10     101
Birth       MAL-ED           SOUTH AFRICA                   [52-58) kg        22     101
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           47     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            45     122
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        30     122
Birth       NIH-Birth        BANGLADESH                     >=58 kg           80     608
Birth       NIH-Birth        BANGLADESH                     <52 kg           441     608
Birth       NIH-Birth        BANGLADESH                     [52-58) kg        87     608
Birth       NIH-Crypto       BANGLADESH                     >=58 kg          186     729
Birth       NIH-Crypto       BANGLADESH                     <52 kg           395     729
Birth       NIH-Crypto       BANGLADESH                     [52-58) kg       148     729
Birth       PROBIT           BELARUS                        >=58 kg        10277   13770
Birth       PROBIT           BELARUS                        <52 kg          1131   13770
Birth       PROBIT           BELARUS                        [52-58) kg      2362   13770
Birth       PROVIDE          BANGLADESH                     >=58 kg           91     517
Birth       PROVIDE          BANGLADESH                     <52 kg           330     517
Birth       PROVIDE          BANGLADESH                     [52-58) kg        96     517
Birth       SAS-CompFeed     INDIA                          >=58 kg           91    1236
Birth       SAS-CompFeed     INDIA                          <52 kg           949    1236
Birth       SAS-CompFeed     INDIA                          [52-58) kg       196    1236
Birth       ZVITAMBO         ZIMBABWE                       >=58 kg         5757   11031
Birth       ZVITAMBO         ZIMBABWE                       <52 kg          2365   11031
Birth       ZVITAMBO         ZIMBABWE                       [52-58) kg      2909   11031
6 months    JiVitA-3         BANGLADESH                     >=58 kg          407   16802
6 months    JiVitA-3         BANGLADESH                     <52 kg         15243   16802
6 months    JiVitA-3         BANGLADESH                     [52-58) kg      1152   16802
6 months    LCNI-5           MALAWI                         >=58 kg          114     837
6 months    LCNI-5           MALAWI                         <52 kg           504     837
6 months    LCNI-5           MALAWI                         [52-58) kg       219     837
6 months    MAL-ED           BANGLADESH                     >=58 kg           46     241
6 months    MAL-ED           BANGLADESH                     <52 kg           154     241
6 months    MAL-ED           BANGLADESH                     [52-58) kg        41     241
6 months    MAL-ED           BRAZIL                         >=58 kg          137     208
6 months    MAL-ED           BRAZIL                         <52 kg            37     208
6 months    MAL-ED           BRAZIL                         [52-58) kg        34     208
6 months    MAL-ED           INDIA                          >=58 kg           40     235
6 months    MAL-ED           INDIA                          <52 kg           146     235
6 months    MAL-ED           INDIA                          [52-58) kg        49     235
6 months    MAL-ED           NEPAL                          >=58 kg           79     236
6 months    MAL-ED           NEPAL                          <52 kg            75     236
6 months    MAL-ED           NEPAL                          [52-58) kg        82     236
6 months    MAL-ED           PERU                           >=58 kg          100     272
6 months    MAL-ED           PERU                           <52 kg           107     272
6 months    MAL-ED           PERU                           [52-58) kg        65     272
6 months    MAL-ED           SOUTH AFRICA                   >=58 kg          179     249
6 months    MAL-ED           SOUTH AFRICA                   <52 kg            29     249
6 months    MAL-ED           SOUTH AFRICA                   [52-58) kg        41     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           94     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            95     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        58     247
6 months    NIH-Birth        BANGLADESH                     >=58 kg           71     537
6 months    NIH-Birth        BANGLADESH                     <52 kg           385     537
6 months    NIH-Birth        BANGLADESH                     [52-58) kg        81     537
6 months    NIH-Crypto       BANGLADESH                     >=58 kg          184     715
6 months    NIH-Crypto       BANGLADESH                     <52 kg           383     715
6 months    NIH-Crypto       BANGLADESH                     [52-58) kg       148     715
6 months    PROBIT           BELARUS                        >=58 kg         9740   13066
6 months    PROBIT           BELARUS                        <52 kg          1083   13066
6 months    PROBIT           BELARUS                        [52-58) kg      2243   13066
6 months    PROVIDE          BANGLADESH                     >=58 kg          109     603
6 months    PROVIDE          BANGLADESH                     <52 kg           385     603
6 months    PROVIDE          BANGLADESH                     [52-58) kg       109     603
6 months    SAS-CompFeed     INDIA                          >=58 kg          103    1331
6 months    SAS-CompFeed     INDIA                          <52 kg          1014    1331
6 months    SAS-CompFeed     INDIA                          [52-58) kg       214    1331
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1255    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           325    1989
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       409    1989
6 months    ZVITAMBO         ZIMBABWE                       >=58 kg         4363    8254
6 months    ZVITAMBO         ZIMBABWE                       <52 kg          1726    8254
6 months    ZVITAMBO         ZIMBABWE                       [52-58) kg      2165    8254
24 months   JiVitA-3         BANGLADESH                     >=58 kg          197    8627
24 months   JiVitA-3         BANGLADESH                     <52 kg          7859    8627
24 months   JiVitA-3         BANGLADESH                     [52-58) kg       571    8627
24 months   LCNI-5           MALAWI                         >=58 kg           77     578
24 months   LCNI-5           MALAWI                         <52 kg           348     578
24 months   LCNI-5           MALAWI                         [52-58) kg       153     578
24 months   MAL-ED           BANGLADESH                     >=58 kg           40     212
24 months   MAL-ED           BANGLADESH                     <52 kg           135     212
24 months   MAL-ED           BANGLADESH                     [52-58) kg        37     212
24 months   MAL-ED           BRAZIL                         >=58 kg          109     168
24 months   MAL-ED           BRAZIL                         <52 kg            28     168
24 months   MAL-ED           BRAZIL                         [52-58) kg        31     168
24 months   MAL-ED           INDIA                          >=58 kg           38     226
24 months   MAL-ED           INDIA                          <52 kg           141     226
24 months   MAL-ED           INDIA                          [52-58) kg        47     226
24 months   MAL-ED           NEPAL                          >=58 kg           76     228
24 months   MAL-ED           NEPAL                          <52 kg            74     228
24 months   MAL-ED           NEPAL                          [52-58) kg        78     228
24 months   MAL-ED           PERU                           >=58 kg           77     201
24 months   MAL-ED           PERU                           <52 kg            75     201
24 months   MAL-ED           PERU                           [52-58) kg        49     201
24 months   MAL-ED           SOUTH AFRICA                   >=58 kg          168     234
24 months   MAL-ED           SOUTH AFRICA                   <52 kg            28     234
24 months   MAL-ED           SOUTH AFRICA                   [52-58) kg        38     234
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   >=58 kg           82     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   <52 kg            84     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   [52-58) kg        48     214
24 months   NIH-Birth        BANGLADESH                     >=58 kg           57     429
24 months   NIH-Birth        BANGLADESH                     <52 kg           308     429
24 months   NIH-Birth        BANGLADESH                     [52-58) kg        64     429
24 months   NIH-Crypto       BANGLADESH                     >=58 kg          138     514
24 months   NIH-Crypto       BANGLADESH                     <52 kg           273     514
24 months   NIH-Crypto       BANGLADESH                     [52-58) kg       103     514
24 months   PROBIT           BELARUS                        >=58 kg         3011    4013
24 months   PROBIT           BELARUS                        <52 kg           325    4013
24 months   PROBIT           BELARUS                        [52-58) kg       677    4013
24 months   PROVIDE          BANGLADESH                     >=58 kg          111     577
24 months   PROVIDE          BANGLADESH                     <52 kg           362     577
24 months   PROVIDE          BANGLADESH                     [52-58) kg       104     577
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       6
24 months   ZVITAMBO         ZIMBABWE                       >=58 kg          833    1588
24 months   ZVITAMBO         ZIMBABWE                       <52 kg           334    1588
24 months   ZVITAMBO         ZIMBABWE                       [52-58) kg       421    1588


The following strata were considered:

* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Error in self$observed_likelihood$get_likelihood(tmle_task, node, fold_number) : 
##   cached likelihood value is out of sync with updates
## lf_uuid: f2be19a8-62bb-11ea-9fd2-ac1f6b41467c
## task_uuid: 40d70f38139f226c23b974acc1c40f2f
## node: Y fold_number: validation
## cached_step: 0
## update_step: 1
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/8492db0d-a07b-4814-ba5c-f2f6f8a33c41/86270808-2fb2-4dc4-b8c6-e93b2f5b3dfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.4570312   -1.5515502   -1.3625122
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.7914295   -1.0766713   -0.5061876
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.4841995   -0.8787074   -0.0896917
Birth       MAL-ED           INDIA                          optimal              observed          -0.8842728   -1.6100084   -0.1585372
Birth       MAL-ED           NEPAL                          optimal              observed          -0.8352977   -1.3994494   -0.2711460
Birth       MAL-ED           PERU                           optimal              observed          -0.5943197   -0.8030116   -0.3856277
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5703778   -0.8123930   -0.3283626
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.3052188   -1.7536157   -0.8568218
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.5763193   -0.8066102   -0.3460285
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.7751082   -0.9267167   -0.6234997
Birth       PROBIT           BELARUS                        optimal              observed           1.3874794    1.2265245    1.5484343
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.4151837   -0.5925748   -0.2377926
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.0405824   -1.2002608   -0.8809041
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3551404   -0.3865944   -0.3236865
6 months    LCNI-5           MALAWI                         optimal              observed          -1.3265743   -1.5130091   -1.1401395
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.9928325   -1.2742551   -0.7114099
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1658143   -0.1377483    0.4693768
6 months    MAL-ED           INDIA                          optimal              observed          -1.0615615   -1.3173078   -0.8058151
6 months    MAL-ED           NEPAL                          optimal              observed          -0.3978788   -0.5803001   -0.2154575
6 months    MAL-ED           PERU                           optimal              observed          -1.1078310   -1.2987142   -0.9169478
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9681476   -1.1177046   -0.8185906
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2953963   -1.5111998   -1.0795928
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.0654197   -1.3317412   -0.7990981
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1205236   -1.2888876   -0.9521597
6 months    PROBIT           BELARUS                        optimal              observed           0.1657624    0.0734111    0.2581136
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.7896808   -0.9820516   -0.5973101
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.8479329   -1.0009989   -0.6948668
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4452615   -0.5091782   -0.3813448
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.6760894   -0.7120064   -0.6401724
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.8440722   -1.9675197   -1.7206248
24 months   LCNI-5           MALAWI                         optimal              observed          -1.6543736   -1.8358234   -1.4729238
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.6585511   -1.8880631   -1.4290392
24 months   MAL-ED           BRAZIL                         optimal              observed           0.1900483   -0.2588632    0.6389597
24 months   MAL-ED           INDIA                          optimal              observed          -1.5278349   -1.8214184   -1.2342513
24 months   MAL-ED           NEPAL                          optimal              observed          -1.0409674   -1.2304824   -0.8514524
24 months   MAL-ED           PERU                           optimal              observed          -1.6019050   -1.7900168   -1.4137932
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.4963156   -1.6549142   -1.3377170
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3640269   -2.5886602   -2.1393937
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -1.7868289   -2.0879670   -1.4856907
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.0902109   -1.2384962   -0.9419256
24 months   PROBIT           BELARUS                        optimal              observed          -0.0921915   -0.4324498    0.2480669
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.0499947   -1.2423632   -0.8576262
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4129968   -1.4919315   -1.3340622


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5896135   -1.6088760   -1.5703510
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.0778829   -1.2122580   -0.9435077
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6884375   -0.9678371   -0.4090379
Birth       MAL-ED           INDIA                          observed             observed          -1.2302326   -1.5393614   -0.9211037
Birth       MAL-ED           NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           observed             observed          -0.9051327   -1.0238686   -0.7863969
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.5707921   -0.7685593   -0.3730248
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1364754   -1.3478823   -0.9250686
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9089163   -0.9806324   -0.8372002
Birth       PROBIT           BELARUS                        observed             observed           1.3117829    1.1524074    1.4711583
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8925145   -0.9687201   -0.8163089
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4220793   -1.5007856   -1.3433730
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.4966839   -0.5196015   -0.4737663
6 months    LCNI-5           MALAWI                         observed             observed          -1.6584707   -1.7281551   -1.5887863
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0497516   -0.0948051    0.1943083
6 months    MAL-ED           INDIA                          observed             observed          -1.2059574   -1.3243030   -1.0876119
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3241023   -1.4325083   -1.2156964
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0727443   -1.2024880   -0.9430006
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.1064864    0.0157994    0.1971734
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0895301   -1.1639589   -1.0151013
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4003907   -1.4819787   -1.3188027
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424765   -0.5918460   -0.4931071
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8785195   -0.9045379   -0.8525011
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0134183   -2.0410747   -1.9857620
24 months   LCNI-5           MALAWI                         observed             observed          -1.8854671   -1.9666281   -1.8043062
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0059127   -0.1637934    0.1756188
24 months   MAL-ED           INDIA                          observed             observed          -1.8844690   -2.0097879   -1.7591502
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6432229   -1.7795844   -1.5068615
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1439152   -0.4247957    0.1369654
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6002600   -1.6836163   -1.5169036
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6070497   -1.6645093   -1.5495902


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.1325823   -0.2238641   -0.0413006
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.2864534   -0.5546568   -0.0182500
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.2042380   -0.4937438    0.0852678
Birth       MAL-ED           INDIA                          optimal              observed          -0.3459598   -1.0485789    0.3566593
Birth       MAL-ED           NEPAL                          optimal              observed          -0.0180356   -0.5401886    0.5041173
Birth       MAL-ED           PERU                           optimal              observed          -0.3108131   -0.4716173   -0.1500088
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0004143   -0.2038034    0.2029749
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1687433   -0.1804524    0.5179391
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.3547004   -0.5716125   -0.1377883
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.1338082   -0.2676328    0.0000165
Birth       PROBIT           BELARUS                        optimal              observed          -0.0756965   -0.0874992   -0.0638938
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.4773308   -0.6408515   -0.3138101
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.3814968   -0.5262261   -0.2367676
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1415435   -0.1636649   -0.1194221
6 months    LCNI-5           MALAWI                         optimal              observed          -0.3318964   -0.5056036   -0.1581893
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.2121606   -0.4691307    0.0448096
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.1160627   -0.3922106    0.1600853
6 months    MAL-ED           INDIA                          optimal              observed          -0.1443960   -0.3773782    0.0885863
6 months    MAL-ED           NEPAL                          optimal              observed          -0.1637031   -0.3179997   -0.0094066
6 months    MAL-ED           PERU                           optimal              observed          -0.2162713   -0.3682281   -0.0643145
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1045967   -0.1891976   -0.0199959
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0733486   -0.2533777    0.1066805
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.3419624   -0.5860903   -0.0978345
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0781547   -0.2252797    0.0689703
6 months    PROBIT           BELARUS                        optimal              observed          -0.0592759   -0.0730296   -0.0455223
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.2998493   -0.4739961   -0.1257025
6 months    SAS-CompFeed     INDIA                          optimal              observed          -0.5524578   -0.6825768   -0.4223388
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0972151   -0.1351969   -0.0592332
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2024301   -0.2275563   -0.1773039
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.1693461   -0.2888388   -0.0498535
24 months   LCNI-5           MALAWI                         optimal              observed          -0.2310935   -0.4052623   -0.0569248
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.3198451   -0.5456080   -0.0940822
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.1841356   -0.5945315    0.2262604
24 months   MAL-ED           INDIA                          optimal              observed          -0.3566342   -0.6293063   -0.0839620
24 months   MAL-ED           NEPAL                          optimal              observed          -0.2666203   -0.4295068   -0.1037339
24 months   MAL-ED           PERU                           optimal              observed          -0.1505660   -0.3231643    0.0220324
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1469073   -0.2424256   -0.0513889
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2815338   -0.4659690   -0.0970986
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -0.4322290   -0.7100126   -0.1544454
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -0.3510537   -0.4855500   -0.2165575
24 months   PROBIT           BELARUS                        optimal              observed          -0.0517237   -0.1591930    0.0557455
24 months   PROVIDE          BANGLADESH                     optimal              observed          -0.5502653   -0.7292063   -0.3713242
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1940529   -0.2500599   -0.1380460
