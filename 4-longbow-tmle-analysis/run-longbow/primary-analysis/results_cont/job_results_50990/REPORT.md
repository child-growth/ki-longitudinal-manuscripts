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
![](/tmp/c7ecfff0-b2b4-4372-aaea-ba13ba0047f7/28b2f9eb-b3f5-4dbd-8ed4-f8c814c0ec59/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c7ecfff0-b2b4-4372-aaea-ba13ba0047f7/28b2f9eb-b3f5-4dbd-8ed4-f8c814c0ec59/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c7ecfff0-b2b4-4372-aaea-ba13ba0047f7/28b2f9eb-b3f5-4dbd-8ed4-f8c814c0ec59/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2932358   -1.6324669   -0.9540047
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.6445778   -2.2092033   -1.0799522
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.2898635   -1.4943805   -1.0853465
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.1656771   -0.4104052    0.0790510
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                 0.4294019    0.2781136    0.5806902
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                 0.1285213    0.0281110    0.2289317
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.4824481   -0.5429979   -0.4218984
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.5264055   -0.5798889   -0.4729221
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.5655655   -0.6184231   -0.5127078
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2877454   -0.5770648    0.0015740
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.1315278   -0.3213943    0.5844500
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                 0.2242194    0.1083484    0.3400904
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7935447   -0.9009071   -0.6861823
Birth       ki1135781-COHORTS          INDIA                          2                    NA                -0.5972706   -0.6831521   -0.5113891
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                -0.6752605   -0.7274929   -0.6230280
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3056068   -0.4412561   -0.1699576
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.1848446   -0.3168504   -0.0528388
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.2626257   -0.3231276   -0.2021239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8050689   -1.8555856   -1.7545521
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.5086036   -1.5516869   -1.4655203
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.4581496   -1.5067448   -1.4095545
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.3204757   -1.4893295   -1.1516219
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -1.3513811   -1.5354890   -1.1672732
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -1.5279601   -1.6308326   -1.4250876
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.6782290   -2.0476123   -1.3088456
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -1.8544711   -2.2045346   -1.5044076
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -1.9388459   -2.1309357   -1.7467561
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1779386   -1.3318754   -1.0240019
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.0410817   -1.2240593   -0.8581042
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.6640185   -0.8534138   -0.4746231
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5658737   -0.6677588   -0.4639886
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.5476572   -0.6765897   -0.4187247
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.6492825   -0.7451689   -0.5533960
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.6457058   -0.7488984   -0.5425132
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.5635273   -0.8029527   -0.3241020
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.9444349   -1.0244911   -0.8643787
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2984737   -1.6530993   -0.9438481
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.3696751   -1.7173969   -1.0219533
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.2426184   -1.3676860   -1.1175508
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.8439147   -0.9065444   -0.7812850
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.8842963   -0.9535182   -0.8150744
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -1.0200472   -1.0955042   -0.9445902
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.9026447   -2.1979549   -1.6073344
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -1.7360053   -2.1309762   -1.3410343
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -1.8326187   -1.9328643   -1.7323731
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.8304369   -0.9342340   -0.7266399
6 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.8695335   -0.9522330   -0.7868340
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                -1.1264414   -1.1759851   -1.0768977
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9173624   -1.0492828   -0.7854420
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.9796529   -1.1312138   -0.8280921
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -1.2867253   -1.3512291   -1.2222215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.3497318   -1.4042546   -1.2952091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.2357770   -1.2767786   -1.1947754
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -1.3110191   -1.3595674   -1.2624707
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.4824025   -1.6766732   -1.2881317
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -1.5740063   -1.7867716   -1.3612410
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -1.4267436   -1.5967537   -1.2567336
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.3122678   -1.5441535   -1.0803820
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -1.2191773   -1.4781286   -0.9602260
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -1.5963225   -1.6660838   -1.5265612
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7686491   -2.0323265   -1.5049718
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -1.8879864   -2.2550825   -1.5208904
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -1.8766414   -1.9956385   -1.7576443
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.1646897   -2.4316601   -1.8977192
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -2.2339768   -2.5194302   -1.9485234
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -2.5080563   -2.7961720   -2.2199407
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7803681   -2.9826809   -2.5780552
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -2.8546206   -3.1409724   -2.5682687
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -2.8998840   -3.0153278   -2.7844402
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.5804398   -1.7253845   -1.4354950
24 months   ki1135781-COHORTS          INDIA                          2                    NA                -1.7726997   -1.8816805   -1.6637189
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -2.2100528   -2.2685986   -2.1515071
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.8788489   -2.0450344   -1.7126634
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -2.2365793   -2.4192401   -2.0539186
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -2.6629725   -2.7312877   -2.5946572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8745293   -1.9412333   -1.8078253
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -1.9852248   -2.0431784   -1.9272712
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -2.1306818   -2.1974554   -2.0639082


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.3946524   -1.5833612   -1.2059436
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0495949   -0.0169135    0.1161033
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5010160   -0.5215903   -0.4804417
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6773241   -0.7124609   -0.6421873
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5749852   -1.5947616   -1.5552088
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8829491   -1.9941876   -1.7717105
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0871041   -1.1635539   -1.0106543
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5432778   -0.5926218   -0.4939338
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9239386   -0.9768148   -0.8710623
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3321522   -1.4103691   -1.2539352
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8907964   -0.9167695   -0.8648233
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -1.0455022   -1.0805318   -1.0104727
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3132090   -1.3363486   -1.2900693
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5861179   -1.6693668   -1.5028689
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5734415   -1.6295670   -1.5173160
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8835905   -1.9681499   -1.7990312
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.4026096   -2.5176913   -2.2875280
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8597376   -2.9241330   -2.7953421
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0277742   -2.0690209   -1.9865275
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3898650   -2.4346888   -2.3450412
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0126333   -2.0403442   -1.9849225


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.3513420   -1.1131252    0.4104413
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0033723   -0.2209387    0.2276833
Birth       ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                  0.5950790    0.3084755    0.8816825
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                  0.2941984    0.0300127    0.5583841
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0439574   -0.1247257    0.0368110
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0831174   -0.1634517   -0.0027830
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                  0.4192732   -0.1187424    0.9572888
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.5119648    0.1998785    0.8240511
Birth       ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                  0.1962741    0.0590714    0.3334767
Birth       ki1135781-COHORTS          INDIA                          3+                   1                  0.1182842   -0.0007838    0.2373523
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                  0.1207622   -0.0683252    0.3098497
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                  0.0429811   -0.1051898    0.1911520
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.2964653    0.2315905    0.3613400
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.3469192    0.2798987    0.4139397
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0309054   -0.2261387    0.1643280
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.2074844   -0.3845463   -0.0304225
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.1762421   -0.6855838    0.3330996
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.2606169   -0.6775776    0.1563438
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.1368569   -0.1026031    0.3763169
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.5139202    0.2699041    0.7579362
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0182165   -0.1458635    0.1822966
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0834087   -0.2225398    0.0557224
6 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0821785   -0.1782734    0.3426304
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2987291   -0.4294746   -0.1679836
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0712014   -0.5676976    0.4252949
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0558553   -0.3199239    0.4316346
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0403816   -0.1335691    0.0528058
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1761325   -0.2739243   -0.0783407
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                  0.1666394   -0.3265668    0.6598456
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0700259   -0.2418220    0.3818739
6 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0390966   -0.1710691    0.0928759
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.2960045   -0.4104673   -0.1815417
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0622905   -0.2623787    0.1377977
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.3693629   -0.5155343   -0.2231915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.1139548    0.0488892    0.1790205
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                  0.0387128   -0.0322709    0.1096965
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0916039   -0.3785551    0.1953474
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0556588   -0.2023590    0.3136767
24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0930905   -0.2535734    0.4397543
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2840547   -0.5254626   -0.0426469
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1193373   -0.5705147    0.3318400
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1079923   -0.3968296    0.1808450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0692871   -0.4570101    0.3184358
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.3433666   -0.7350169    0.0482836
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0742525   -0.4244435    0.2759385
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1195159   -0.3522353    0.1132034
24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.1922599   -0.3735986   -0.0109212
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.6296130   -0.7858896   -0.4733365
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.3577305   -0.6042656   -0.1111953
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.7841236   -0.9636135   -0.6046337
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.1106955   -0.1935476   -0.0278433
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2561525   -0.3469320   -0.1653729


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1014166   -0.3595689    0.1567356
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.2152720   -0.0275796    0.4581235
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0185678   -0.0749545    0.0378188
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.4174754    0.1318177    0.7031331
Birth       ki1135781-COHORTS          INDIA                          1                    NA                 0.1162206    0.0141993    0.2182418
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0565576   -0.0735233    0.1866386
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.2300837    0.1827872    0.2773801
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0813806   -0.1971767    0.0344155
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.2047201   -0.5504971    0.1410569
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0908346   -0.0497169    0.2313860
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0225960   -0.0691971    0.1143890
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2782327   -0.3855956   -0.1708699
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0336784   -0.3744101    0.3070532
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0468817   -0.1040970    0.0103337
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0869111   -0.2022375    0.3760597
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2150653   -0.3137228   -0.1164078
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2232099   -0.3502861   -0.0961337
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0365229   -0.0132165    0.0862623
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1037154   -0.2797308    0.0723000
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2611737   -0.4897684   -0.0325790
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1149414   -0.3674573    0.1375745
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2379200   -0.4737437   -0.0020962
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0793695   -0.2782879    0.1195489
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4473344   -0.5863122   -0.3083566
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5110162   -0.6726331   -0.3493992
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1381040   -0.1998042   -0.0764038
