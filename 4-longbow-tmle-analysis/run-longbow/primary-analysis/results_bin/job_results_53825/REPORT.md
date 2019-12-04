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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        parity    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      359    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       89    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      285    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       69    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      518    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      193    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       57     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       20     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      189     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1      131     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      232     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       39     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      217     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       27     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      161     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       24     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      783    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       38    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      732    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       39    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      724    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       41    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1               0      211    1989
0-24 months   ki1101329-Keneba           GAMBIA                         1               1       29    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2               0      193    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2               1       21    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+              0     1256    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+              1      279    1989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      151     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       52     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      134     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       46     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      199     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      104     686
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5790   13941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      216   13941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3991   13941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      186   13941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3569   13941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      189   13941
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               0      191    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       17    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2               0      164    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2               1       23    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      838    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      108    1341
0-24 months   ki1135781-COHORTS          INDIA                          1               0      757    4623
0-24 months   ki1135781-COHORTS          INDIA                          1               1       53    4623
0-24 months   ki1135781-COHORTS          INDIA                          2               0     1093    4623
0-24 months   ki1135781-COHORTS          INDIA                          2               1       91    4623
0-24 months   ki1135781-COHORTS          INDIA                          3+              0     2307    4623
0-24 months   ki1135781-COHORTS          INDIA                          3+              1      322    4623
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      586    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       91    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      572    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      110    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1327    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      359    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     9121   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      985   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     8216   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      711   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7194   26923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      696   26923
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      414    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       31    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      328    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       24    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      656    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       51    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        2     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       71     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      295     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       24     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      261     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      235     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      174     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       11     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      816    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      766    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        5    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      756    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        9    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1               0      225    1851
0-6 months    ki1101329-Keneba           GAMBIA                         1               1        9    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2               0      203    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2               1        2    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+              0     1370    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+              1       42    1851
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      189     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       14     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      173     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        7     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      288     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       15     686
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5881   13845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       79   13845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     4116   13845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       36   13845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3681   13845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       52   13845
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               0      152    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               1        0    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      2               0      146    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      2               1        3    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      744    1062
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+              1       17    1062
0-6 months    ki1135781-COHORTS          INDIA                          1               0      739    4443
0-6 months    ki1135781-COHORTS          INDIA                          1               1       20    4443
0-6 months    ki1135781-COHORTS          INDIA                          2               0     1114    4443
0-6 months    ki1135781-COHORTS          INDIA                          2               1       23    4443
0-6 months    ki1135781-COHORTS          INDIA                          3+              0     2473    4443
0-6 months    ki1135781-COHORTS          INDIA                          3+              1       74    4443
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      658    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       18    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      671    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2               1       11    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1643    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       43    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     9542   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      497   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     8619   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      284   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7591   26816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1      283   26816
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      340    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       77    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      257    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       64    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      478    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      173    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0        3     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1        4     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       61     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      192     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1      125     401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      194     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       33     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      201     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       23     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      144     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       19     614
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      637    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       36    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      613    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       38    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      624    1986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       38    1986
6-24 months   ki1101329-Keneba           GAMBIA                         1               0      203    1923
6-24 months   ki1101329-Keneba           GAMBIA                         1               1       24    1923
6-24 months   ki1101329-Keneba           GAMBIA                         2               0      179    1923
6-24 months   ki1101329-Keneba           GAMBIA                         2               1       19    1923
6-24 months   ki1101329-Keneba           GAMBIA                         3+              0     1231    1923
6-24 months   ki1101329-Keneba           GAMBIA                         3+              1      267    1923
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      121     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       46     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      107     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      170     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      101     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     4327   10812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      143   10812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3131   10812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      155   10812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2910   10812
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      146   10812
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               0      165    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       17    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      2               1       20    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      759    1211
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+              1       99    1211
6-24 months   ki1135781-COHORTS          INDIA                          1               0      714    4338
6-24 months   ki1135781-COHORTS          INDIA                          1               1       39    4338
6-24 months   ki1135781-COHORTS          INDIA                          2               0     1024    4338
6-24 months   ki1135781-COHORTS          INDIA                          2               1       81    4338
6-24 months   ki1135781-COHORTS          INDIA                          3+              0     2181    4338
6-24 months   ki1135781-COHORTS          INDIA                          3+              1      299    4338
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      525    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       83    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      519    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      106    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1228    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      347    2808
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6050   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      564   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     5373   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      468   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4355   17280
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      470   17280


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/a20f19a9-05ae-49cf-96be-2a30706f5946/f5c9bfee-aae9-4d7a-8184-aedaae2a7d7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a20f19a9-05ae-49cf-96be-2a30706f5946/f5c9bfee-aae9-4d7a-8184-aedaae2a7d7a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a20f19a9-05ae-49cf-96be-2a30706f5946/f5c9bfee-aae9-4d7a-8184-aedaae2a7d7a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a20f19a9-05ae-49cf-96be-2a30706f5946/f5c9bfee-aae9-4d7a-8184-aedaae2a7d7a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1909872   0.1440772   0.2378972
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2045782   0.1526877   0.2564687
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2557599   0.2067739   0.3047459
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1430133   0.1013869   0.1846397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1155070   0.0756058   0.1554081
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1291211   0.0806691   0.1775732
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0528443   0.0284232   0.0772654
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0489412   0.0300957   0.0677868
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0634689   0.0417532   0.0851847
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1453816   0.0943549   0.1964084
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0769214   0.0351382   0.1187045
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1695129   0.1447753   0.1942505
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2393001   0.1462176   0.3323826
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2514465   0.1399364   0.3629566
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2698806   0.2189380   0.3208231
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0366889   0.0301541   0.0432238
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0463615   0.0351889   0.0575341
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0658612   0.0534242   0.0782981
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0784059   0.0408413   0.1159704
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1134564   0.0660405   0.1608723
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1137027   0.0934408   0.1339645
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0697941   0.0474406   0.0921475
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0764304   0.0574206   0.0954402
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1199492   0.1056930   0.1342054
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0980806   0.0647407   0.1314206
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1416393   0.1056176   0.1776611
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2255480   0.1983935   0.2527024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0976638   0.0863262   0.1090015
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0797530   0.0712408   0.0882652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0759714   0.0670691   0.0848737
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0947753   0.0537213   0.1358294
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0755271   0.0395037   0.1115505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0649811   0.0319565   0.0980057
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0369004   0.0144396   0.0593611
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0368852   0.0132190   0.0605515
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0594595   0.0253581   0.0935608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0060901   0.0007671   0.0114131
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0064851   0.0008180   0.0121521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0117647   0.0041223   0.0194071
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0689655   0.0340824   0.1038487
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0388889   0.0106252   0.0671525
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0495050   0.0250626   0.0739473
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0133162   0.0095977   0.0170347
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0104784   0.0039986   0.0169582
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0111036   0.0072625   0.0149448
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0262161   0.0120034   0.0404288
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0177806   0.0102018   0.0253594
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0277790   0.0209116   0.0346464
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0159026   0.0065844   0.0252208
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0132371   0.0048298   0.0216444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0246505   0.0150786   0.0342223
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0543672   0.0456202   0.0631142
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0308321   0.0254425   0.0362217
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0237891   0.0199353   0.0276429
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1689903   0.1075619   0.2304186
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2268955   0.1748240   0.2789670
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2559958   0.2096362   0.3023554
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1465897   0.1002866   0.1928929
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1025963   0.0627082   0.1424844
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1154277   0.0664434   0.1644121
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0559670   0.0326095   0.0793244
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0588711   0.0342096   0.0835326
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0707053   0.0446646   0.0967461
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1332431   0.0853062   0.1811800
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0777195   0.0314431   0.1239959
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1592174   0.1400838   0.1783510
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2695695   0.1496039   0.3895351
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2855689   0.1438130   0.4273249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2902632   0.2326429   0.3478836
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0319410   0.0250050   0.0388771
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0479581   0.0373477   0.0585685
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0687728   0.0538341   0.0837115
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0940057   0.0511851   0.1368263
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1162892   0.0679114   0.1646669
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1153325   0.0939447   0.1367202
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0470249   0.0261379   0.0679120
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0687751   0.0492943   0.0882559
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1228560   0.1078386   0.1378733
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0962041   0.0618980   0.1305103
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1534922   0.1092889   0.1976954
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2289992   0.2006076   0.2573908
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0764234   0.0666863   0.0861605
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0844056   0.0736113   0.0952000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0856046   0.0751544   0.0960548


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500636   0.0412578   0.0588694
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1654098   0.1490771   0.1817424
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0423929   0.0390482   0.0457376
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1008003   0.0921209   0.1094798
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0888460   0.0849398   0.0927521
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0080611   0.0044503   0.0116719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120621   0.0102437   0.0138805
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310424
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0396778   0.0371765   0.0421791
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0563948   0.0462467   0.0665428
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1612064   0.1447669   0.1776460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410655   0.0373248   0.0448061
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0965883   0.0877969   0.1053797
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0711620   0.9159623   1.2526586
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3391470   1.1386654   1.5749268
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8076658   0.5152536   1.2660254
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9028608   0.5617792   1.4510284
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9261406   0.5075232   1.6900438
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2010559   0.6756784   2.1349435
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5290996   0.2770657   1.0103969
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1659858   0.7982690   1.7030888
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0507581   0.5827245   1.8947076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1277914   0.7315598   1.7386323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2636376   0.9366406   1.7047950
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.7951240   1.3849309   2.3268095
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4470398   0.7666566   2.7312415
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4501809   0.8697803   2.4178802
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0950841   0.7303947   1.6418645
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7186151   1.2217176   2.4176111
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4441108   0.9450336   2.2067532
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.2996174   1.6034975   3.2979410
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8166075   0.7021412   0.9497347
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7778868   0.6594891   0.9175404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7969067   0.5004242   1.2690439
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.6856329   0.3684866   1.2757386
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9995902   0.4127903   2.4205521
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.6113514   0.6982030   3.7187656
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.3094019   3.6648362
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.9317644   0.6501403   5.7398593
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.5638889   0.2326168   1.3669291
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7178218   0.3540321   1.4554277
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7868897   0.3992700   1.5508190
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8338414   0.5346365   1.3004939
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6782321   0.3403450   1.3515663
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.0596162   0.5839078   1.9228832
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8323843   0.3509107   1.9744728
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5500901   0.7673022   3.1314645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5671093   0.4516169   0.7121367
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4375632   0.3479065   0.5503248
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3426542   0.9880419   1.8245382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5148553   1.1087113   2.0697783
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6998876   0.4240743   1.1550870
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7874205   0.4638113   1.3368172
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0518899   0.5823690   1.8999507
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2633403   0.7239830   2.2045113
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.5832908   0.2908872   1.1696224
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1949392   0.8178065   1.7459872
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0593518   0.5439382   2.0631501
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0767659   0.6613268   1.7531798
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.5014581   1.1015598   2.0465312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 2.1531179   1.5839023   2.9268955
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2370438   0.6676234   2.2921267
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2268668   0.7503656   2.0059585
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.4625245   0.8637937   2.4762603
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.6125708   1.6482654   4.1410358
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.5954839   1.0091589   2.5224657
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.3803463   1.6317471   3.4723815
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1044474   0.9223756   1.3224592
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1201355   0.9404573   1.3341418


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0410023    0.0202987    0.0617058
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0144419   -0.0459932    0.0171094
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0027807   -0.0253897    0.0198284
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0200281   -0.0309971    0.0710534
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0551606   -0.0330685    0.1433896
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0057040   -0.0001867    0.0115948
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0319595   -0.0035277    0.0674468
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0310063    0.0091956    0.0528170
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0858274    0.0529628    0.1186920
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0088179   -0.0191717    0.0015360
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0242966   -0.0606613    0.0120681
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0059568   -0.0124634    0.0243770
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802    0.0066221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0164874   -0.0443355    0.0113608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0012541   -0.0044247    0.0019165
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0001175   -0.0133631    0.0135980
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0077505   -0.0010647    0.0165656
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0146894   -0.0228798   -0.0064989
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0570716    0.0162279    0.0979154
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0244399   -0.0597625    0.0108827
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0004278   -0.0207114    0.0215670
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0279634   -0.0204023    0.0763290
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0558542   -0.0599261    0.1716346
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0091245    0.0027731    0.0154758
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0182982   -0.0217676    0.0583640
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0495634    0.0286716    0.0704551
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0946790    0.0607101    0.1286479
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0104979    0.0016210    0.0193748


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1767419    0.0738453    0.2682067
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1123258   -0.3859948    0.1073065
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0555423   -0.6190157    0.3118229
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1210819   -0.2460688    0.3800526
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1873275   -0.1746528    0.4377602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1345512   -0.0156502    0.2625398
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2895793   -0.1142662    0.5470584
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3076008    0.0563058    0.4919787
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4666865    0.2581744    0.6165901
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0992489   -0.2219127    0.0111012
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3447369   -1.0051084    0.0981448
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1389914   -0.4142101    0.4757951
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445028   -0.5993898    0.6431289
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3141762   -0.9558762    0.1169895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1039716   -0.4005479    0.1298024
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0044606   -0.6648382    0.4046877
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3276732   -0.1559545    0.6089610
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3702162   -0.5924334   -0.1790085
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2524602    0.0281482    0.4249991
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2000811   -0.5244123    0.0552459
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0075856   -0.4478540    0.3197613
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1734630   -0.1839990    0.4230034
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1716354   -0.2720765    0.4605765
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2221929    0.0527035    0.3613575
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1629346   -0.2808970    0.4529783
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5131405    0.2483621    0.6846458
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4960051    0.2871555    0.6436659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1207746    0.0127522    0.2169775
