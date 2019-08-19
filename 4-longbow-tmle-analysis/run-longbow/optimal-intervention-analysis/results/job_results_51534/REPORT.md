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

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             47     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             53     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            87     187
Birth       ki1101329-Keneba           GAMBIA                         1            156    1407
Birth       ki1101329-Keneba           GAMBIA                         2            146    1407
Birth       ki1101329-Keneba           GAMBIA                         3+          1105    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5972   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           4125   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3732   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1            112     852
Birth       ki1135781-COHORTS          GUATEMALA                      2            137     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+           603     852
Birth       ki1135781-COHORTS          INDIA                          1            696    4122
Birth       ki1135781-COHORTS          INDIA                          2           1037    4122
Birth       ki1135781-COHORTS          INDIA                          3+          2389    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1            675    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2            687    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1688    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           6271   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           6710   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6613   19594
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            304    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             84     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           217     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           160     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1995
6 months    ki1101329-Keneba           GAMBIA                         1            194    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1265    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3302    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2522    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2470    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     961
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+           690     961
6 months    ki1135781-COHORTS          INDIA                          1            740    4291
6 months    ki1135781-COHORTS          INDIA                          2           1096    4291
6 months    ki1135781-COHORTS          INDIA                          3+          2455    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2            606    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1528    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6388   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5700   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4715   16803
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           153     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           233     499
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            177     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            134     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           145     456
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+           749    1067
24 months   ki1135781-COHORTS          INDIA                          1            565    3383
24 months   ki1135781-COHORTS          INDIA                          2            850    3383
24 months   ki1135781-COHORTS          INDIA                          3+          1968    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1            524    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1377    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3165    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2923    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2536    8624


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
![](/tmp/f86e5c3a-1531-466a-9fa3-c48e9c4d17d0/c2a95b35-69b3-476e-bb51-37d8ecd28524/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.3502092   -1.5583087   -1.1421097
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.3172978    0.2006189    0.4339767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5257331   -0.5883084   -0.4631578
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.2609188    0.1469076    0.3749301
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.6095524   -0.6959543   -0.5231505
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2056893   -0.3378268   -0.0735518
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4576458   -1.5034201   -1.4118715
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.2606771   -1.4907135   -1.0306408
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.9039321   -2.2228986   -1.5849656
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8686622   -1.0489251   -0.6883992
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.5059177   -0.6089482   -0.4028873
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.7514173   -0.9913915   -0.5114431
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1562327   -1.3865968   -0.9258686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8802925   -0.9429875   -0.8175975
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6558581   -1.9739289   -1.3377873
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.9463067   -1.0437746   -0.8488387
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.9610979   -1.0945051   -0.8276908
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2382516   -1.2791482   -1.1973550
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.5778028   -1.7786629   -1.3769427
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1956221   -1.4524218   -0.9388224
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.6396285   -1.9062112   -1.3730458
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.1521317   -2.4081057   -1.8961578
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.8536981   -3.1011579   -2.6062383
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.5560471   -1.6920089   -1.4200853
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -2.0233413   -2.2201029   -1.8265797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.8564755   -1.9231200   -1.7898310


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.3946524   -1.5833612   -1.2059436
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0495949   -0.0169135    0.1161033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5010160   -0.5215903   -0.4804417
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5749852   -1.5947616   -1.5552088
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8829491   -1.9941876   -1.7717105
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5432778   -0.5926218   -0.4939338
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9239386   -0.9768148   -0.8710623
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.3321522   -1.4103691   -1.2539352
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8907964   -0.9167695   -0.8648233
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -1.0455022   -1.0805318   -1.0104727
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3132090   -1.3363486   -1.2900693
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5734415   -1.6295670   -1.5173160
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.8835905   -1.9681499   -1.7990312
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4026096   -2.5176913   -2.2875280
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -2.0277742   -2.0690209   -1.9865275
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0126333   -2.0403442   -1.9849225


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0444432   -0.1486025    0.0597161
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.2677029   -0.3774524   -0.1579535
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0247171   -0.0342659    0.0837001
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1311888   -0.2197874   -0.0425902
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0677717   -0.1467036    0.0111602
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0433599   -0.1682056    0.0814859
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1173394   -0.1600969   -0.0745819
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1411791   -0.3616215    0.0792632
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0209830   -0.2796258    0.3215918
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2184419   -0.3771623   -0.0597215
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0373600   -0.1254588    0.0507387
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1725212   -0.4082487    0.0632062
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1759195   -0.3987376    0.0468987
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0105039   -0.0684651    0.0474573
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1598755   -0.4666645    0.1469135
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0991956   -0.1905305   -0.0078606
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1794744   -0.3058533   -0.0530956
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0749573   -0.1106606   -0.0392540
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0083151   -0.1876798    0.1710497
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.3778194   -0.6300133   -0.1256255
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2439620   -0.5003959    0.0124719
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2504779   -0.4723846   -0.0285712
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0060394   -0.2452873    0.2332084
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4717271   -0.6020625   -0.3413917
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3665237   -0.5575625   -0.1754849
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1561578   -0.2186772   -0.0936385
