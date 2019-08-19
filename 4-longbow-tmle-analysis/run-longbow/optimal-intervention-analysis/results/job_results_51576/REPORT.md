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

**Outcome Variable:** whz

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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             41     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             44     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            81     166
Birth       ki1101329-Keneba           GAMBIA                         1            142    1292
Birth       ki1101329-Keneba           GAMBIA                         2            133    1292
Birth       ki1101329-Keneba           GAMBIA                         3+          1017    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3472   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           4604   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           5539   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          5549   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             84     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           217     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           159     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3285    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2514    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2464    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6390   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           232     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            160     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            121     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           141     422
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3158    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8595


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
![](/tmp/30ed6578-e27e-485b-bbc6-17730297ab84/7dd20cdc-68ef-4a7d-a83a-33f077b8dfc7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5351641   -0.9904736   -0.0798546
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.4233762    1.1866852    1.6600671
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3070226   -0.3821743   -0.2318710
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0637740   -1.2079443   -0.9196038
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9411260   -1.0100897   -0.8721622
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5713318   -0.6452992   -0.4973643
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6322466   -0.6727421   -0.5917511
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5757433   -0.6607003   -0.4907862
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.5974217   -0.8397404   -0.3551029
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2384848   -0.3977525   -0.0792171
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0853103   -0.0193659    0.1899866
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0247013   -0.2629155    0.2135130
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3304336   -0.5531211   -0.1077461
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3395949    0.2771984    0.4019913
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1084753   -0.1452525    0.3622031
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5767200   -0.6665119   -0.4869280
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2921431   -0.4058352   -0.1784509
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6397818   -0.6876655   -0.5918981
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.8730434   -1.0458446   -0.7002422
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.0273102   -1.1946897   -0.8599308
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1628551   -1.3487720   -0.9769382
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8518855   -1.0317908   -0.6719802
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5995547   -0.8544881   -0.3446214
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5256408   -0.6256748   -0.4256068
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4339286   -0.5636014   -0.3042557
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.2478956   -1.3255913   -1.1702000


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.2697590   -0.5399211    0.0004030
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7138545    1.6262621    1.8014469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5152877   -0.5411394   -0.4894359
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7238886   -0.7437224   -0.7040548
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -0.9946381   -1.1114079   -0.8778682
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1874118   -0.2456850   -0.1291387
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3048076    0.2787350    0.3308802
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932502   -0.6127743   -0.5737261
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1802133   -1.2803837   -1.0800428
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2971774   -1.3204904   -1.2738644


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.2654051    0.0366219    0.4941882
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.2904783    0.0701771    0.5107796
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2082650   -0.2799355   -0.1365945
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0016312   -0.1006347    0.1038971
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0086821   -0.0673893    0.0500252
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1713933   -0.2326326   -0.1101541
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0916420   -0.1301106   -0.0531734
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0899651   -0.1965938    0.0166636
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.3972164   -0.6400697   -0.1543631
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0301142   -0.1133871    0.1736156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0055924   -0.0972426    0.0860577
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1627106   -0.3953355    0.0699144
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2743651   -0.4892235   -0.0595067
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0347873   -0.0928119    0.0232373
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0856057   -0.1626345    0.3338459
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1301412   -0.2140159   -0.0462664
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0017002   -0.1104178    0.1070173
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed           0.0465316    0.0032621    0.0898011
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0148978   -0.1661922    0.1363965
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.2439024    0.0822521    0.4055528
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0312688   -0.1359391    0.1984766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3283278   -0.4956711   -0.1609844
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3181793    0.0713114    0.5650471
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1308321   -0.2251676   -0.0364965
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1760306   -0.2995585   -0.0525027
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0492818   -0.1225887    0.0240252
