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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        sex       n_cell       n
----------  ---------------  -----------------------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Female        46      92
Birth       CMC-V-BCS-2002   INDIA                          Male          46      92
Birth       CMIN             BANGLADESH                     Female        11      26
Birth       CMIN             BANGLADESH                     Male          15      26
Birth       COHORTS          GUATEMALA                      Female       404     852
Birth       COHORTS          GUATEMALA                      Male         448     852
Birth       COHORTS          INDIA                          Female      3195    6640
Birth       COHORTS          INDIA                          Male        3445    6640
Birth       COHORTS          PHILIPPINES                    Female      1433    3050
Birth       COHORTS          PHILIPPINES                    Male        1617    3050
Birth       CONTENT          PERU                           Female         0       2
Birth       CONTENT          PERU                           Male           2       2
Birth       EE               PAKISTAN                       Female       122     240
Birth       EE               PAKISTAN                       Male         118     240
Birth       GMS-Nepal        NEPAL                          Female       328     696
Birth       GMS-Nepal        NEPAL                          Male         368     696
Birth       IRC              INDIA                          Female       173     388
Birth       IRC              INDIA                          Male         215     388
Birth       JiVitA-3         BANGLADESH                     Female     11043   22455
Birth       JiVitA-3         BANGLADESH                     Male       11412   22455
Birth       JiVitA-4         BANGLADESH                     Female      1389    2823
Birth       JiVitA-4         BANGLADESH                     Male        1434    2823
Birth       Keneba           GAMBIA                         Female       740    1543
Birth       Keneba           GAMBIA                         Male         803    1543
Birth       MAL-ED           BANGLADESH                     Female       118     231
Birth       MAL-ED           BANGLADESH                     Male         113     231
Birth       MAL-ED           BRAZIL                         Female        34      65
Birth       MAL-ED           BRAZIL                         Male          31      65
Birth       MAL-ED           INDIA                          Female        23      47
Birth       MAL-ED           INDIA                          Male          24      47
Birth       MAL-ED           NEPAL                          Female        17      27
Birth       MAL-ED           NEPAL                          Male          10      27
Birth       MAL-ED           PERU                           Female       116     233
Birth       MAL-ED           PERU                           Male         117     233
Birth       MAL-ED           SOUTH AFRICA                   Female        58     123
Birth       MAL-ED           SOUTH AFRICA                   Male          65     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female        70     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male          55     125
Birth       NIH-Birth        BANGLADESH                     Female       286     608
Birth       NIH-Birth        BANGLADESH                     Male         322     608
Birth       NIH-Crypto       BANGLADESH                     Female       368     732
Birth       NIH-Crypto       BANGLADESH                     Male         364     732
Birth       PROBIT           BELARUS                        Female      6711   13893
Birth       PROBIT           BELARUS                        Male        7182   13893
Birth       PROVIDE          BANGLADESH                     Female       256     539
Birth       PROVIDE          BANGLADESH                     Male         283     539
Birth       ResPak           PAKISTAN                       Female        20      42
Birth       ResPak           PAKISTAN                       Male          22      42
Birth       SAS-CompFeed     INDIA                          Female       585    1252
Birth       SAS-CompFeed     INDIA                          Male         667    1252
Birth       ZVITAMBO         ZIMBABWE                       Female      6753   13875
Birth       ZVITAMBO         ZIMBABWE                       Male        7122   13875
6 months    CMC-V-BCS-2002   INDIA                          Female       186     369
6 months    CMC-V-BCS-2002   INDIA                          Male         183     369
6 months    CMIN             BANGLADESH                     Female       106     243
6 months    CMIN             BANGLADESH                     Male         137     243
6 months    COHORTS          GUATEMALA                      Female       456     961
6 months    COHORTS          GUATEMALA                      Male         505     961
6 months    COHORTS          INDIA                          Female      3287    6860
6 months    COHORTS          INDIA                          Male        3573    6860
6 months    COHORTS          PHILIPPINES                    Female      1276    2708
6 months    COHORTS          PHILIPPINES                    Male        1432    2708
6 months    CONTENT          PERU                           Female       109     215
6 months    CONTENT          PERU                           Male         106     215
6 months    EE               PAKISTAN                       Female       182     373
6 months    EE               PAKISTAN                       Male         191     373
6 months    GMS-Nepal        NEPAL                          Female       273     564
6 months    GMS-Nepal        NEPAL                          Male         291     564
6 months    Guatemala BSC    GUATEMALA                      Female       153     299
6 months    Guatemala BSC    GUATEMALA                      Male         146     299
6 months    IRC              INDIA                          Female       183     407
6 months    IRC              INDIA                          Male         224     407
6 months    JiVitA-3         BANGLADESH                     Female      8249   16811
6 months    JiVitA-3         BANGLADESH                     Male        8562   16811
6 months    JiVitA-4         BANGLADESH                     Female      2407    4831
6 months    JiVitA-4         BANGLADESH                     Male        2424    4831
6 months    Keneba           GAMBIA                         Female      1011    2089
6 months    Keneba           GAMBIA                         Male        1078    2089
6 months    LCNI-5           MALAWI                         Female       420     839
6 months    LCNI-5           MALAWI                         Male         419     839
6 months    MAL-ED           BANGLADESH                     Female       123     241
6 months    MAL-ED           BANGLADESH                     Male         118     241
6 months    MAL-ED           BRAZIL                         Female       103     209
6 months    MAL-ED           BRAZIL                         Male         106     209
6 months    MAL-ED           INDIA                          Female       130     236
6 months    MAL-ED           INDIA                          Male         106     236
6 months    MAL-ED           NEPAL                          Female       110     236
6 months    MAL-ED           NEPAL                          Male         126     236
6 months    MAL-ED           PERU                           Female       126     273
6 months    MAL-ED           PERU                           Male         147     273
6 months    MAL-ED           SOUTH AFRICA                   Female       126     254
6 months    MAL-ED           SOUTH AFRICA                   Male         128     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       126     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         121     247
6 months    NIH-Birth        BANGLADESH                     Female       245     537
6 months    NIH-Birth        BANGLADESH                     Male         292     537
6 months    NIH-Crypto       BANGLADESH                     Female       362     715
6 months    NIH-Crypto       BANGLADESH                     Male         353     715
6 months    PROBIT           BELARUS                        Female      7619   15760
6 months    PROBIT           BELARUS                        Male        8141   15760
6 months    PROVIDE          BANGLADESH                     Female       288     604
6 months    PROVIDE          BANGLADESH                     Male         316     604
6 months    ResPak           PAKISTAN                       Female       115     239
6 months    ResPak           PAKISTAN                       Male         124     239
6 months    SAS-CompFeed     INDIA                          Female       609    1336
6 months    SAS-CompFeed     INDIA                          Male         727    1336
6 months    SAS-FoodSuppl    INDIA                          Female       201     380
6 months    SAS-FoodSuppl    INDIA                          Male         179     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female      1003    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male        1026    2029
6 months    ZVITAMBO         ZIMBABWE                       Female      4201    8669
6 months    ZVITAMBO         ZIMBABWE                       Male        4468    8669
24 months   CMC-V-BCS-2002   INDIA                          Female       186     371
24 months   CMC-V-BCS-2002   INDIA                          Male         185     371
24 months   CMIN             BANGLADESH                     Female       104     242
24 months   CMIN             BANGLADESH                     Male         138     242
24 months   COHORTS          GUATEMALA                      Female       512    1070
24 months   COHORTS          GUATEMALA                      Male         558    1070
24 months   COHORTS          INDIA                          Female      2543    5337
24 months   COHORTS          INDIA                          Male        2794    5337
24 months   COHORTS          PHILIPPINES                    Female      1158    2445
24 months   COHORTS          PHILIPPINES                    Male        1287    2445
24 months   CONTENT          PERU                           Female        81     164
24 months   CONTENT          PERU                           Male          83     164
24 months   EE               PAKISTAN                       Female        79     167
24 months   EE               PAKISTAN                       Male          88     167
24 months   GMS-Nepal        NEPAL                          Female       228     488
24 months   GMS-Nepal        NEPAL                          Male         260     488
24 months   IRC              INDIA                          Female       185     409
24 months   IRC              INDIA                          Male         224     409
24 months   JiVitA-3         BANGLADESH                     Female      4168    8632
24 months   JiVitA-3         BANGLADESH                     Male        4464    8632
24 months   JiVitA-4         BANGLADESH                     Female      2376    4752
24 months   JiVitA-4         BANGLADESH                     Male        2376    4752
24 months   Keneba           GAMBIA                         Female       822    1725
24 months   Keneba           GAMBIA                         Male         903    1725
24 months   LCNI-5           MALAWI                         Female       294     579
24 months   LCNI-5           MALAWI                         Male         285     579
24 months   MAL-ED           BANGLADESH                     Female       104     212
24 months   MAL-ED           BANGLADESH                     Male         108     212
24 months   MAL-ED           BRAZIL                         Female        79     169
24 months   MAL-ED           BRAZIL                         Male          90     169
24 months   MAL-ED           INDIA                          Female       122     227
24 months   MAL-ED           INDIA                          Male         105     227
24 months   MAL-ED           NEPAL                          Female       106     228
24 months   MAL-ED           NEPAL                          Male         122     228
24 months   MAL-ED           PERU                           Female        91     201
24 months   MAL-ED           PERU                           Male         110     201
24 months   MAL-ED           SOUTH AFRICA                   Female       118     238
24 months   MAL-ED           SOUTH AFRICA                   Male         120     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female       106     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male         108     214
24 months   NIH-Birth        BANGLADESH                     Female       195     429
24 months   NIH-Birth        BANGLADESH                     Male         234     429
24 months   NIH-Crypto       BANGLADESH                     Female       260     514
24 months   NIH-Crypto       BANGLADESH                     Male         254     514
24 months   PROBIT           BELARUS                        Female      1955    4035
24 months   PROBIT           BELARUS                        Male        2080    4035
24 months   PROVIDE          BANGLADESH                     Female       279     578
24 months   PROVIDE          BANGLADESH                     Male         299     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           3       6
24 months   ZVITAMBO         ZIMBABWE                       Female       808    1640
24 months   ZVITAMBO         ZIMBABWE                       Male         832    1640


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/89082e7b-8c61-495c-b0f3-10d36fb0356d/92791bf9-f9ff-42ec-83c9-339ca707d259/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.8111351   -1.0960498   -0.5262204
Birth       CMIN             BANGLADESH                     optimal              observed          -1.2745194   -2.4022140   -0.1468247
Birth       COHORTS          GUATEMALA                      optimal              observed           0.1959313    0.0771849    0.3146778
Birth       COHORTS          INDIA                          optimal              observed          -0.6307095   -0.6706540   -0.5907650
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.1655820   -0.2225291   -0.1086349
Birth       EE               PAKISTAN                       optimal              observed          -2.0745353   -2.3326359   -1.8164347
Birth       GMS-Nepal        NEPAL                          optimal              observed          -1.0618373   -1.1762823   -0.9473922
Birth       IRC              INDIA                          optimal              observed          -0.2302907   -0.4790082    0.0184267
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -1.5626592   -1.5865630   -1.5387555
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -1.5070333   -1.5745523   -1.4395144
Birth       Keneba           GAMBIA                         optimal              observed          -0.0544466   -0.1471033    0.0382100
Birth       MAL-ED           BANGLADESH                     optimal              observed          -1.0870863   -1.2755669   -0.8986058
Birth       MAL-ED           BRAZIL                         optimal              observed          -0.7871502   -1.2238193   -0.3504811
Birth       MAL-ED           INDIA                          optimal              observed          -1.0237499   -1.4723058   -0.5751941
Birth       MAL-ED           NEPAL                          optimal              observed          -0.5544798   -1.2240410    0.1150814
Birth       MAL-ED           PERU                           optimal              observed          -1.0678822   -1.2289967   -0.9067677
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.5261923   -0.7722103   -0.2801742
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.4476009   -1.8060964   -1.0891054
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.8865529   -1.0140445   -0.7590614
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.8866767   -0.9875467   -0.7858066
Birth       PROBIT           BELARUS                        optimal              observed           1.3394231    1.1803130    1.4985332
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.8350544   -0.9424588   -0.7276500
Birth       ResPak           PAKISTAN                       optimal              observed          -0.6046779   -1.3140576    0.1047018
Birth       SAS-CompFeed     INDIA                          optimal              observed          -1.4174969   -1.5152638   -1.3197299
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4459104   -0.4756758   -0.4161450
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -1.2573316   -1.4438732   -1.0707901
6 months    CMIN             BANGLADESH                     optimal              observed          -1.7296735   -1.9159591   -1.5433879
6 months    COHORTS          GUATEMALA                      optimal              observed          -1.7057031   -1.7995163   -1.6118899
6 months    COHORTS          INDIA                          optimal              observed          -0.9404322   -0.9787722   -0.9020922
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.9995283   -1.0580090   -0.9410475
6 months    CONTENT          PERU                           optimal              observed          -0.5341674   -0.7068097   -0.3615251
6 months    EE               PAKISTAN                       optimal              observed          -1.9806855   -2.1379611   -1.8234099
6 months    GMS-Nepal        NEPAL                          optimal              observed          -1.3095483   -1.4123137   -1.2067828
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -1.4450463   -1.5861940   -1.3038986
6 months    IRC              INDIA                          optimal              observed          -1.1166454   -1.3210524   -0.9122383
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -1.2153736   -1.2434851   -1.1872622
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -1.2654020   -1.3140855   -1.2167185
6 months    Keneba           GAMBIA                         optimal              observed          -0.8608797   -0.9252975   -0.7964619
6 months    LCNI-5           MALAWI                         optimal              observed          -1.4614481   -1.5512440   -1.3716521
6 months    MAL-ED           BANGLADESH                     optimal              observed          -1.0529818   -1.2027358   -0.9032279
6 months    MAL-ED           BRAZIL                         optimal              observed           0.1501373   -0.0433780    0.3436526
6 months    MAL-ED           INDIA                          optimal              observed          -1.0951990   -1.2357142   -0.9546838
6 months    MAL-ED           NEPAL                          optimal              observed          -0.5924743   -0.7419678   -0.4429808
6 months    MAL-ED           PERU                           optimal              observed          -1.0922582   -1.2361287   -0.9483877
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.9944213   -1.1711025   -0.8177400
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2635916   -1.4336844   -1.0934988
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -1.3300231   -1.4501904   -1.2098559
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -1.1476064   -1.2476294   -1.0475834
6 months    PROBIT           BELARUS                        optimal              observed           0.2032862    0.1186698    0.2879026
6 months    PROVIDE          BANGLADESH                     optimal              observed          -1.0383122   -1.1385507   -0.9380737
6 months    ResPak           PAKISTAN                       optimal              observed          -1.5809568   -1.8773704   -1.2845432
6 months    SAS-CompFeed     INDIA                          optimal              observed          -1.4892038   -1.5676877   -1.4107199
6 months    SAS-FoodSuppl    INDIA                          optimal              observed          -2.0310742   -2.1929692   -1.8691792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4386686   -0.5050410   -0.3722963
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7622784   -0.7973303   -0.7272265
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -2.4386949   -2.5648553   -2.3125344
24 months   CMIN             BANGLADESH                     optimal              observed          -2.4535235   -2.6322953   -2.2747518
24 months   COHORTS          GUATEMALA                      optimal              observed          -2.9419382   -3.0319653   -2.8519110
24 months   COHORTS          INDIA                          optimal              observed          -2.1653701   -2.2113233   -2.1194169
24 months   COHORTS          PHILIPPINES                    optimal              observed          -2.3783834   -2.4428632   -2.3139037
24 months   CONTENT          PERU                           optimal              observed          -0.8052981   -1.0220519   -0.5885443
24 months   EE               PAKISTAN                       optimal              observed          -2.5894800   -2.7947607   -2.3841993
24 months   GMS-Nepal        NEPAL                          optimal              observed          -1.9896757   -2.1084709   -1.8708805
24 months   IRC              INDIA                          optimal              observed          -1.7494428   -1.8851905   -1.6136951
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -1.9836136   -2.0198572   -1.9473700
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -1.7521899   -1.7983570   -1.7060227
24 months   Keneba           GAMBIA                         optimal              observed          -1.5408437   -1.6117742   -1.4699132
24 months   LCNI-5           MALAWI                         optimal              observed          -1.7707635   -1.8741808   -1.6673463
24 months   MAL-ED           BANGLADESH                     optimal              observed          -1.9185775   -2.0996782   -1.7374768
24 months   MAL-ED           BRAZIL                         optimal              observed           0.2174917    0.0035545    0.4314290
24 months   MAL-ED           INDIA                          optimal              observed          -1.7292447   -1.8924874   -1.5660019
24 months   MAL-ED           NEPAL                          optimal              observed          -1.2491317   -1.4252085   -1.0730550
24 months   MAL-ED           PERU                           optimal              observed          -1.5657204   -1.7417402   -1.3897006
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -1.4520021   -1.6345488   -1.2694555
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.5215380   -2.7111049   -2.3319710
24 months   NIH-Birth        BANGLADESH                     optimal              observed          -2.2364163   -2.3790960   -2.0937366
24 months   NIH-Crypto       BANGLADESH                     optimal              observed          -1.5465181   -1.6625105   -1.4305257
24 months   PROBIT           BELARUS                        optimal              observed          -0.0739971   -0.2821443    0.1341502
24 months   PROVIDE          BANGLADESH                     optimal              observed          -1.6938858   -1.8189660   -1.5688057
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -1.4465812   -1.5247866   -1.3683759


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          observed             observed          -0.9611957   -1.1776967   -0.7446946
Birth       CMIN             BANGLADESH                     observed             observed          -1.8811538   -2.5124807   -1.2498270
Birth       COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       COHORTS          INDIA                          observed             observed          -0.6698961   -0.6980556   -0.6417365
Birth       COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       EE               PAKISTAN                       observed             observed          -1.8608750   -2.0482045   -1.6735455
Birth       GMS-Nepal        NEPAL                          observed             observed          -1.0851580   -1.1651811   -1.0051350
Birth       IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       JiVitA-3         BANGLADESH                     observed             observed          -1.5894148   -1.6086362   -1.5701935
Birth       JiVitA-4         BANGLADESH                     observed             observed          -1.5232908   -1.5723277   -1.4742539
Birth       Keneba           GAMBIA                         observed             observed           0.0308036   -0.0328378    0.0944451
Birth       MAL-ED           BANGLADESH                     observed             observed          -1.1180952   -1.2525408   -0.9836496
Birth       MAL-ED           BRAZIL                         observed             observed          -0.6760000   -0.9521457   -0.3998543
Birth       MAL-ED           INDIA                          observed             observed          -1.2036170   -1.4976814   -0.9095527
Birth       MAL-ED           NEPAL                          observed             observed          -0.8533333   -1.2104864   -0.4961803
Birth       MAL-ED           PERU                           observed             observed          -0.8827897   -1.0001058   -0.7654736
Birth       MAL-ED           SOUTH AFRICA                   observed             observed          -0.6317073   -0.8249555   -0.4384591
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.1556000   -1.3655361   -0.9456639
Birth       NIH-Birth        BANGLADESH                     observed             observed          -0.9310197   -1.0197391   -0.8423003
Birth       NIH-Crypto       BANGLADESH                     observed             observed          -0.9094945   -0.9809370   -0.8380521
Birth       PROBIT           BELARUS                        observed             observed           1.3114417    1.1524752    1.4704082
Birth       PROVIDE          BANGLADESH                     observed             observed          -0.8851020   -0.9601332   -0.8100709
Birth       ResPak           PAKISTAN                       observed             observed          -0.9800000   -1.4086438   -0.5513562
Birth       SAS-CompFeed     INDIA                          observed             observed          -1.4314217   -1.5099245   -1.3529189
Birth       ZVITAMBO         ZIMBABWE                       observed             observed          -0.5002724   -0.5208163   -0.4797285
6 months    CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    CMIN             BANGLADESH                     observed             observed          -1.7844376   -1.9222926   -1.6465825
6 months    COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    COHORTS          INDIA                          observed             observed          -0.9968455   -1.0246180   -0.9690730
6 months    COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    CONTENT          PERU                           observed             observed          -0.2785256   -0.4098735   -0.1471776
6 months    EE               PAKISTAN                       observed             observed          -2.0835567   -2.2027557   -1.9643578
6 months    GMS-Nepal        NEPAL                          observed             observed          -1.3508392   -1.4290633   -1.2726152
6 months    Guatemala BSC    GUATEMALA                      observed             observed          -1.5619008   -1.6727702   -1.4510313
6 months    IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    JiVitA-3         BANGLADESH                     observed             observed          -1.3130932   -1.3362359   -1.2899505
6 months    JiVitA-4         BANGLADESH                     observed             observed          -1.3447940   -1.3820261   -1.3075620
6 months    Keneba           GAMBIA                         observed             observed          -0.9041369   -0.9513363   -0.8569376
6 months    LCNI-5           MALAWI                         observed             observed          -1.6601907   -1.7297701   -1.5906113
6 months    MAL-ED           BANGLADESH                     observed             observed          -1.2049931   -1.3222136   -1.0877726
6 months    MAL-ED           BRAZIL                         observed             observed           0.0475758   -0.0963508    0.1915023
6 months    MAL-ED           INDIA                          observed             observed          -1.2115254   -1.3298727   -1.0931782
6 months    MAL-ED           NEPAL                          observed             observed          -0.5615819   -0.6741832   -0.4489807
6 months    MAL-ED           PERU                           observed             observed          -1.3236661   -1.4316775   -1.2156546
6 months    MAL-ED           SOUTH AFRICA                   observed             observed          -1.0633202   -1.1909180   -0.9357224
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3687449   -1.4907629   -1.2467270
6 months    NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    NIH-Crypto       BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    PROBIT           BELARUS                        observed             observed           0.0980074    0.0062724    0.1897424
6 months    PROVIDE          BANGLADESH                     observed             observed          -1.0916915   -1.1661176   -1.0172654
6 months    ResPak           PAKISTAN                       observed             observed          -1.4314086   -1.6374838   -1.2253335
6 months    SAS-CompFeed     INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    SAS-FoodSuppl    INDIA                          observed             observed          -1.8986842   -2.0118892   -1.7854792
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5434389   -0.5924056   -0.4944722
6 months    ZVITAMBO         ZIMBABWE                       observed             observed          -0.8679450   -0.8935071   -0.8423828
24 months   CMC-V-BCS-2002   INDIA                          observed             observed          -2.5588679   -2.6583730   -2.4593629
24 months   CMIN             BANGLADESH                     observed             observed          -2.5109504   -2.6361514   -2.3857494
24 months   COHORTS          GUATEMALA                      observed             observed          -2.9923738   -3.0565851   -2.9281626
24 months   COHORTS          INDIA                          observed             observed          -2.1198201   -2.1524299   -2.0872104
24 months   COHORTS          PHILIPPINES                    observed             observed          -2.4141145   -2.4590818   -2.3691473
24 months   CONTENT          PERU                           observed             observed          -0.6868598   -0.8388476   -0.5348719
24 months   EE               PAKISTAN                       observed             observed          -2.6699900   -2.8138051   -2.5261749
24 months   GMS-Nepal        NEPAL                          observed             observed          -1.8874180   -1.9728588   -1.8019773
24 months   IRC              INDIA                          observed             observed          -1.7987775   -1.8923914   -1.7051636
24 months   JiVitA-3         BANGLADESH                     observed             observed          -2.0136481   -2.0413552   -1.9859409
24 months   JiVitA-4         BANGLADESH                     observed             observed          -1.7807218   -1.8162478   -1.7451958
24 months   Keneba           GAMBIA                         observed             observed          -1.5774356   -1.6272400   -1.5276311
24 months   LCNI-5           MALAWI                         observed             observed          -1.8861485   -1.9671802   -1.8051169
24 months   MAL-ED           BANGLADESH                     observed             observed          -1.9783962   -2.1050210   -1.8517715
24 months   MAL-ED           BRAZIL                         observed             observed           0.0061144   -0.1625850    0.1748138
24 months   MAL-ED           INDIA                          observed             observed          -1.8861894   -2.0110006   -1.7613783
24 months   MAL-ED           NEPAL                          observed             observed          -1.3075877   -1.4270718   -1.1881037
24 months   MAL-ED           PERU                           observed             observed          -1.7524710   -1.8736426   -1.6312994
24 months   MAL-ED           SOUTH AFRICA                   observed             observed          -1.6450595   -1.7797240   -1.5103950
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6455607   -2.7807256   -2.5103959
24 months   NIH-Birth        BANGLADESH                     observed             observed          -2.2190579   -2.3217459   -2.1163699
24 months   NIH-Crypto       BANGLADESH                     observed             observed          -1.4412646   -1.5249156   -1.3576135
24 months   PROBIT           BELARUS                        observed             observed          -0.1442891   -0.4253755    0.1367972
24 months   PROVIDE          BANGLADESH                     observed             observed          -1.6024221   -1.6857420   -1.5191023
24 months   ZVITAMBO         ZIMBABWE                       observed             observed          -1.6055701   -1.6625562   -1.5485840


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1500606   -0.3708517    0.0707306
Birth       CMIN             BANGLADESH                     optimal              observed          -0.6066345   -1.4172499    0.2039809
Birth       COHORTS          GUATEMALA                      optimal              observed          -0.0662013   -0.1458964    0.0134938
Birth       COHORTS          INDIA                          optimal              observed          -0.0391866   -0.0683988   -0.0099744
Birth       COHORTS          PHILIPPINES                    optimal              observed          -0.0834672   -0.1249699   -0.0419645
Birth       EE               PAKISTAN                       optimal              observed           0.2136603    0.0261926    0.4011280
Birth       GMS-Nepal        NEPAL                          optimal              observed          -0.0233208   -0.0986912    0.0520497
Birth       IRC              INDIA                          optimal              observed          -0.0777505   -0.2591083    0.1036073
Birth       JiVitA-3         BANGLADESH                     optimal              observed          -0.0267556   -0.0425289   -0.0109822
Birth       JiVitA-4         BANGLADESH                     optimal              observed          -0.0162575   -0.0662868    0.0337718
Birth       Keneba           GAMBIA                         optimal              observed           0.0852502    0.0217857    0.1487148
Birth       MAL-ED           BANGLADESH                     optimal              observed          -0.0310089   -0.1688803    0.1068625
Birth       MAL-ED           BRAZIL                         optimal              observed           0.1111502   -0.1566498    0.3789502
Birth       MAL-ED           INDIA                          optimal              observed          -0.1798671   -0.5051911    0.1454569
Birth       MAL-ED           NEPAL                          optimal              observed          -0.2988536   -0.8293447    0.2316376
Birth       MAL-ED           PERU                           optimal              observed           0.1850925    0.0668823    0.3033027
Birth       MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1055151   -0.2902466    0.0792164
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.2920009    0.0559408    0.5280609
Birth       NIH-Birth        BANGLADESH                     optimal              observed          -0.0444668   -0.1387992    0.0498656
Birth       NIH-Crypto       BANGLADESH                     optimal              observed          -0.0228179   -0.0942571    0.0486214
Birth       PROBIT           BELARUS                        optimal              observed          -0.0279814   -0.0506993   -0.0052634
Birth       PROVIDE          BANGLADESH                     optimal              observed          -0.0500476   -0.1289507    0.0288555
Birth       ResPak           PAKISTAN                       optimal              observed          -0.3753221   -0.8513347    0.1006904
Birth       SAS-CompFeed     INDIA                          optimal              observed          -0.0139249   -0.0617851    0.0339354
Birth       ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0543620   -0.0754776   -0.0332464
6 months    CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1661192   -0.3065886   -0.0256497
6 months    CMIN             BANGLADESH                     optimal              observed          -0.0547641   -0.2097838    0.1002557
6 months    COHORTS          GUATEMALA                      optimal              observed          -0.1100305   -0.1813742   -0.0386869
6 months    COHORTS          INDIA                          optimal              observed          -0.0564133   -0.0852779   -0.0275487
6 months    COHORTS          PHILIPPINES                    optimal              observed          -0.1410441   -0.1853022   -0.0967860
6 months    CONTENT          PERU                           optimal              observed           0.2556419    0.1234934    0.3877904
6 months    EE               PAKISTAN                       optimal              observed          -0.1028712   -0.2248628    0.0191203
6 months    GMS-Nepal        NEPAL                          optimal              observed          -0.0412910   -0.1218391    0.0392571
6 months    Guatemala BSC    GUATEMALA                      optimal              observed          -0.1168545   -0.2262469   -0.0074620
6 months    IRC              INDIA                          optimal              observed          -0.1177609   -0.2655551    0.0300334
6 months    JiVitA-3         BANGLADESH                     optimal              observed          -0.0977196   -0.1154412   -0.0799979
6 months    JiVitA-4         BANGLADESH                     optimal              observed          -0.0793920   -0.1129983   -0.0457858
6 months    Keneba           GAMBIA                         optimal              observed          -0.0432573   -0.0918866    0.0053721
6 months    LCNI-5           MALAWI                         optimal              observed          -0.1987426   -0.2683230   -0.1291622
6 months    MAL-ED           BANGLADESH                     optimal              observed          -0.1520113   -0.2683176   -0.0357050
6 months    MAL-ED           BRAZIL                         optimal              observed          -0.1025615   -0.2503208    0.0451978
6 months    MAL-ED           INDIA                          optimal              observed          -0.1163264   -0.2273531   -0.0052998
6 months    MAL-ED           NEPAL                          optimal              observed           0.0308924   -0.0883820    0.1501668
6 months    MAL-ED           PERU                           optimal              observed          -0.2314078   -0.3475103   -0.1153054
6 months    MAL-ED           SOUTH AFRICA                   optimal              observed          -0.0688990   -0.1991199    0.0613220
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1051533   -0.2258848    0.0155781
6 months    NIH-Birth        BANGLADESH                     optimal              observed          -0.0773589   -0.1735544    0.0188365
6 months    NIH-Crypto       BANGLADESH                     optimal              observed          -0.0510719   -0.1218381    0.0196943
6 months    PROBIT           BELARUS                        optimal              observed          -0.1052788   -0.1352309   -0.0753267
6 months    PROVIDE          BANGLADESH                     optimal              observed          -0.0533793   -0.1310471    0.0242885
6 months    ResPak           PAKISTAN                       optimal              observed           0.1495481   -0.0538898    0.3529861
6 months    SAS-CompFeed     INDIA                          optimal              observed           0.0873475    0.0231158    0.1515793
6 months    SAS-FoodSuppl    INDIA                          optimal              observed           0.1323900    0.0174303    0.2473497
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1047703   -0.1542583   -0.0552823
6 months    ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1056666   -0.1319659   -0.0793673
24 months   CMC-V-BCS-2002   INDIA                          optimal              observed          -0.1201731   -0.2198304   -0.0205158
24 months   CMIN             BANGLADESH                     optimal              observed          -0.0574269   -0.1646241    0.0497703
24 months   COHORTS          GUATEMALA                      optimal              observed          -0.0504357   -0.1174473    0.0165760
24 months   COHORTS          INDIA                          optimal              observed           0.0455500    0.0126305    0.0784695
24 months   COHORTS          PHILIPPINES                    optimal              observed          -0.0357311   -0.0831056    0.0116434
24 months   CONTENT          PERU                           optimal              observed           0.1184384   -0.0353514    0.2722282
24 months   EE               PAKISTAN                       optimal              observed          -0.0805100   -0.2353374    0.0743174
24 months   GMS-Nepal        NEPAL                          optimal              observed           0.1022576    0.0145879    0.1899274
24 months   IRC              INDIA                          optimal              observed          -0.0493347   -0.1523283    0.0536589
24 months   JiVitA-3         BANGLADESH                     optimal              observed          -0.0300345   -0.0535875   -0.0064814
24 months   JiVitA-4         BANGLADESH                     optimal              observed          -0.0285319   -0.0590839    0.0020200
24 months   Keneba           GAMBIA                         optimal              observed          -0.0365919   -0.0888026    0.0156188
24 months   LCNI-5           MALAWI                         optimal              observed          -0.1153850   -0.1956283   -0.0351417
24 months   MAL-ED           BANGLADESH                     optimal              observed          -0.0598187   -0.1905511    0.0709137
24 months   MAL-ED           BRAZIL                         optimal              observed          -0.2113773   -0.3903626   -0.0323921
24 months   MAL-ED           INDIA                          optimal              observed          -0.1569448   -0.2748597   -0.0390298
24 months   MAL-ED           NEPAL                          optimal              observed          -0.0584560   -0.1697306    0.0528187
24 months   MAL-ED           PERU                           optimal              observed          -0.1867506   -0.3196781   -0.0538230
24 months   MAL-ED           SOUTH AFRICA                   optimal              observed          -0.1930574   -0.3294207   -0.0566941
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1240228   -0.2614777    0.0134321
24 months   NIH-Birth        BANGLADESH                     optimal              observed           0.0173584   -0.0773825    0.1120993
24 months   NIH-Crypto       BANGLADESH                     optimal              observed           0.1052535    0.0207999    0.1897071
24 months   PROBIT           BELARUS                        optimal              observed          -0.0702921   -0.2548731    0.1142890
24 months   PROVIDE          BANGLADESH                     optimal              observed           0.0914637    0.0089682    0.1739592
24 months   ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1589889   -0.2168276   -0.1011501
