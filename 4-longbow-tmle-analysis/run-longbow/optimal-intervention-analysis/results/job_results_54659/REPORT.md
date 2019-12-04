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
* W_mwtkg
* W_mbmi
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
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
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            304    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          2            258    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+           541    1103
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            202     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     2            182     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     3+           148     532
Birth       ki1101329-Keneba           GAMBIA                         1            146    1338
Birth       ki1101329-Keneba           GAMBIA                         2            142    1338
Birth       ki1101329-Keneba           GAMBIA                         3+          1050    1338
Birth       ki1113344-GMS-Nepal        NEPAL                          1            185     641
Birth       ki1113344-GMS-Nepal        NEPAL                          2            169     641
Birth       ki1113344-GMS-Nepal        NEPAL                          3+           287     641
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12916
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3473   12916
Birth       ki1135781-COHORTS          GUATEMALA                      1             94     756
Birth       ki1135781-COHORTS          GUATEMALA                      2            118     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+           544     756
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           5520   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           6303   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          6191   18014
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            392    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2            302    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           640    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             72     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           301     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            218     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            222     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           163     603
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     564
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           262     564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3392    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2587    8504
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2525    8504
6 months    ki1135781-COHORTS          GUATEMALA                      1            132     963
6 months    ki1135781-COHORTS          GUATEMALA                      2            139     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+           692     963
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6398   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           5685   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          4701   16784
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           155     579
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            130     487
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     487
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           227     487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            161     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            123     432
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           148     432
24 months   ki1135781-COHORTS          GUATEMALA                      1            167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2            151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+           758    1076
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3166    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           2909    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2528    8603


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/2b9b5568-54a5-402c-8d45-8dfd555f67c8/971391f2-3917-47c9-ba27-dbea3ee9395d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5542439   -0.7447156   -0.3637722
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.3738225   -1.5328637   -1.2147812
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -1.1970488   -1.3068929   -1.0872048
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.1606554   -1.3259478   -0.9953630
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2695396   -0.3413630   -0.1977162
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2363381   -1.4291400   -1.0435361
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.9929339   -1.0606575   -0.9252103
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5850585   -0.6603363   -0.5097806
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6708498   -0.7123909   -0.6293088
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7130495   -0.8540599   -0.5720391
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7219818   -0.9198235   -0.5241401
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.3727068   -0.5399141   -0.2054994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0782603   -0.1893303    0.0328097
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1855384   -0.4039362    0.0328594
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3743893   -0.6120644   -0.1367141
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3640580    0.3065047    0.4216113
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1378711   -0.3782581    0.1025159
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.5946638   -0.7087589   -0.4805687
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3228926   -0.4449962   -0.2007890
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5768951   -0.6193237   -0.5344665
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9988395   -1.1891286   -0.8085505
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.0710962   -1.2548424   -0.8873501
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.9931587   -1.1903051   -0.7960123
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -1.0400860   -1.2372297   -0.8429424
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3204006   -0.5261080   -0.1146932
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5195646   -0.6120487   -0.4270806
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4375697   -0.5609408   -0.3141986
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1954306   -1.2600398   -1.1308215


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.2984586   -1.3752758   -1.2216415
Birth       ki1101329-Keneba           GAMBIA                         observed             observed          -1.2037220   -1.2694226   -1.1380213
Birth       ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1164431   -1.2040134   -1.0288728
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5156349   -0.5414936   -0.4897762
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7778272   -0.7968313   -0.7588232
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.1990907   -0.2817968   -0.1163845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1873900   -0.2456638   -0.1291162
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6038416   -0.6899448   -0.5177384
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3106432    0.2849661    0.3363203
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5935161   -0.6130518   -0.5739805
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8928670   -0.9755153   -0.8102187
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1363107   -1.2252817   -1.0473398
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1817824   -1.2809226   -1.0826422
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2813755   -0.3354674   -0.2272835
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2978031   -1.3210763   -1.2745298


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1158014   -0.2009034   -0.0306994
Birth       ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0753638   -0.0674975    0.2182252
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0066731   -0.0930816    0.0797353
Birth       ki1113344-GMS-Nepal        NEPAL                          optimal              observed           0.0442124   -0.1011230    0.1895477
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2460953   -0.3147232   -0.1774675
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1741952    0.0093363    0.3390541
Birth       ki1135781-COHORTS          INDIA                          optimal              observed           0.0431259   -0.0135518    0.0998036
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1576666   -0.2188775   -0.0964557
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1069774   -0.1462759   -0.0676789
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0473411   -0.0506217    0.1453039
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.2901761   -0.4854207   -0.0949314
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1736161    0.0275080    0.3197242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1579782    0.0605461    0.2554103
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0018516   -0.2158431    0.2121398
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2294523   -0.4578872   -0.0010175
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0534148   -0.1063001   -0.0005294
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3319521    0.0975757    0.5663285
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.1121973   -0.2206799   -0.0037147
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0290493   -0.0872001    0.1452987
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0166210   -0.0551498    0.0219077
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.1059725   -0.0635520    0.2754970
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.2876884    0.1091425    0.4662343
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.1431521   -0.3279087    0.0416046
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1416964   -0.3149964    0.0316037
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0390251   -0.1562216    0.2342718
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1369082   -0.2236194   -0.0501970
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1723895   -0.2899728   -0.0548062
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1023725   -0.1632078   -0.0415371
