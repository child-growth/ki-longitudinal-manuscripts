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

agecat        studyid                    country                        parity    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      359    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       89    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      285    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       69    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      518    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      193    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0       57     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1       20     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       55     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       37     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      134     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       94     397
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
0-24 months   ki1101329-Keneba           GAMBIA                         1               0      212    1988
0-24 months   ki1101329-Keneba           GAMBIA                         1               1       28    1988
0-24 months   ki1101329-Keneba           GAMBIA                         2               0      193    1988
0-24 months   ki1101329-Keneba           GAMBIA                         2               1       21    1988
0-24 months   ki1101329-Keneba           GAMBIA                         3+              0     1255    1988
0-24 months   ki1101329-Keneba           GAMBIA                         3+              1      279    1988
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      124     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      110     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       45     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      175     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      101     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5790   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      213   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3993   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      181   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3569   13934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      188   13934
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     9103   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      978   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     8218   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      710   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7200   26902
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      693   26902
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      414    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       31    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      328    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       24    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      656    1504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       51    1504
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       71     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        6     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       86     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        5     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      209     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       19     396
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
0-6 months    ki1101329-Keneba           GAMBIA                         1               0      223    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1               1        8    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2               0      200    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2               1        2    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+              0     1347    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+              1       42    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      162     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        9     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      150     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        5     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      266     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       10     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5878   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       79   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     4113   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       36   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3681   13839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       52   13839
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     9523   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      491   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     8621   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      283   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     7597   26795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1      280   26795
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               0      340    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1               1       77    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               0      257    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2               1       64    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              0      478    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+              1      173    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               0       61     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1               1       16     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               0       56     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2               1       35     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      136     394
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       90     394
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      122     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      107     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       45     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      171     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      100     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0     4272   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      140   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3100   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1      150   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2885   10692
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      145   10692
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6044   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      561   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     5373   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      468   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4355   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      470   17271


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

* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/db54867e-0ae0-4a7b-8ab0-3b467cf7f3c1/1d8dcf8f-fd3c-46ba-ab5a-e9cec43b5890/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db54867e-0ae0-4a7b-8ab0-3b467cf7f3c1/1d8dcf8f-fd3c-46ba-ab5a-e9cec43b5890/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db54867e-0ae0-4a7b-8ab0-3b467cf7f3c1/1d8dcf8f-fd3c-46ba-ab5a-e9cec43b5890/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db54867e-0ae0-4a7b-8ab0-3b467cf7f3c1/1d8dcf8f-fd3c-46ba-ab5a-e9cec43b5890/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1865892   0.1301678   0.2430107
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2221185   0.1587888   0.2854481
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2542407   0.2012202   0.3072612
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1953808   0.0787026   0.3120589
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4042238   0.2654922   0.5429553
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4004162   0.3277128   0.4731196
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1305673   0.0736889   0.1874458
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1267114   0.0616133   0.1918095
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0917814   0.0542725   0.1292904
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0507918   0.0281311   0.0734526
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0493878   0.0299957   0.0687799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0591610   0.0390120   0.0793100
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1678141   0.1142523   0.2213760
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0838918   0.0357786   0.1320051
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1715628   0.1460028   0.1971228
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2581479   0.1429962   0.3732997
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2863106   0.1464270   0.4261942
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2967865   0.2326270   0.3609460
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0363989   0.0297263   0.0430715
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0428693   0.0333281   0.0524105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0585273   0.0467371   0.0703175
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0789569   0.0413081   0.1166056
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1175374   0.0698028   0.1652719
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1137294   0.0934551   0.1340038
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0713991   0.0484400   0.0943582
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0767208   0.0573793   0.0960623
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1195856   0.1053999   0.1337714
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1032654   0.0664026   0.1401282
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1473035   0.1046171   0.1899899
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2249029   0.1972434   0.2525623
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0939916   0.0839110   0.1040721
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0817056   0.0720477   0.0913635
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0750628   0.0667251   0.0834004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0947753   0.0537213   0.1358294
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0755271   0.0395037   0.1115505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0649811   0.0319565   0.0980057
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0779221   0.0179753   0.1378689
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.0549451   0.0080670   0.1018231
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.0833333   0.0474126   0.1192540
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0369004   0.0144396   0.0593611
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0368852   0.0132190   0.0605515
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0594595   0.0253581   0.0935608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0060901   0.0007671   0.0114131
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0064851   0.0008180   0.0121521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0117647   0.0041223   0.0194071
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0526316   0.0191355   0.0861276
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0322581   0.0044198   0.0600963
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0362319   0.0141678   0.0582960
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0135720   0.0096049   0.0175391
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0102673   0.0038744   0.0166601
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0096227   0.0065253   0.0127200
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0295722   0.0112779   0.0478666
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0176907   0.0100554   0.0253260
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0284594   0.0215067   0.0354121
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0157353   0.0067232   0.0247474
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0131239   0.0048905   0.0213573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0248124   0.0150640   0.0345608
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0545397   0.0462937   0.0627857
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0311354   0.0248869   0.0373839
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0253563   0.0207243   0.0299883
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1425231   0.0938079   0.1912383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2455296   0.1927443   0.2983150
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2454228   0.2014364   0.2894091
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1432225   0.0612737   0.2251713
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3432120   0.1853844   0.5010396
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4281482   0.3478590   0.5084373
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1357199   0.0914413   0.1799986
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1052637   0.0642831   0.1462443
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1219929   0.0724606   0.1715252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0591654   0.0337891   0.0845417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0548331   0.0326662   0.0769999
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0738539   0.0469599   0.1007478
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1271824   0.0812978   0.1730671
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0815653   0.0351952   0.1279353
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1591172   0.1399547   0.1782796
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2516806   0.1416652   0.3616960
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3019184   0.1463201   0.4575167
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2768733   0.2209178   0.3328288
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0345718   0.0264543   0.0426893
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0441258   0.0336757   0.0545758
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0651776   0.0504343   0.0799210
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0945546   0.0516050   0.1375042
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1179841   0.0693992   0.1665690
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1151804   0.0938033   0.1365574
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0449820   0.0251483   0.0648157
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0669315   0.0484635   0.0853995
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1241005   0.1087189   0.1394820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0949248   0.0616596   0.1281900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1577729   0.1123686   0.2031771
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2287722   0.2006130   0.2569314
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0776243   0.0675389   0.0877096
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0834515   0.0731113   0.0937917
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0847701   0.0747019   0.0948384


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3803526   0.3325374   0.4281678
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0500636   0.0412578   0.0588694
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1649899   0.1486698   0.1813101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0417683   0.0384465   0.0450902
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1103654   0.0935883   0.1271425
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1008003   0.0921209   0.1094798
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885064   0.0846302   0.0923827
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0757576   0.0496627   0.1018525
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0080611   0.0044503   0.0116719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120673   0.0102481   0.0138865
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0263336   0.0216247   0.0310424
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393357   0.0368510   0.0418204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3578680   0.3104738   0.4052622
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0563948   0.0462467   0.0665428
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1612064   0.1447669   0.1776460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406846   0.0369398   0.0444295
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1123039   0.0945135   0.1300943
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0965883   0.0877969   0.1053797
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1904142   0.9814029   1.4439390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3625690   1.1014228   1.6856326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.0689023   1.0393769   4.1181950
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.0494144   1.0987551   3.8225983
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9704678   0.4951119   1.9022117
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7029431   0.3869716   1.2769131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9723572   0.5366640   1.7617700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1647733   0.6643850   2.0420341
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.4999091   0.2592787   0.9638629
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.0223380   0.7197401   1.4521561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1090951   0.5721480   2.1499538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1496761   0.7002067   1.8876642
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1777644   0.8827695   1.5713377
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.6079428   1.2245157   2.1114307
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4886275   0.7960992   2.7835875
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4403994   0.8656521   2.3967485
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0745344   0.7144716   1.6160531
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.6748897   1.1893611   2.3586238
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.4264547   0.9010630   2.2581916
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.1779105   1.4930733   3.1768662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8692866   0.7413784   1.0192624
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7986114   0.6849930   0.9310756
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.7969067   0.5004242   1.2690439
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.6856329   0.3684866   1.2757386
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.7051282   0.2235353   2.2242827
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.0694444   0.4427694   2.5830858
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9995902   0.4127903   2.4205521
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.6113514   0.6982030   3.7187656
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0648508   0.3094019   3.6648362
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.9317644   0.6501403   5.7398593
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6129032   0.2097525   1.7909223
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6884058   0.2852990   1.6610733
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7565029   0.3802554   1.5050326
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7090090   0.4590425   1.0950920
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.5982200   0.2813974   1.2717501
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9623687   0.4947954   1.8717908
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8340392   0.3568567   1.9493015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5768590   0.7872124   3.1585938
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5708760   0.4438516   0.7342532
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4649149   0.3671282   0.5887477
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.7227356   1.2803792   2.3179210
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.7219856   1.4155939   2.0946929
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.3963548   1.1535437   4.9781525
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.9893913   1.6376981   5.4567203
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7755951   0.4667775   1.2887249
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8988576   0.5337141   1.5138161
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9267754   0.5140014   1.6710319
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2482609   0.7111332   2.1910876
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.6413248   0.3270847   1.2574648
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2510939   0.8555092   1.8295956
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1996096   0.6103965   2.3575875
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1000981   0.6791670   1.7819118
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2763513   0.9143935   1.7815882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.8852837   1.3606706   2.6121639
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2477880   0.6759971   2.3032274
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2181362   0.7456128   1.9901157
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.4879603   0.8847633   2.5023936
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.7588900   1.7452119   4.3613465
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.6620828   1.0567403   2.6141893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.4100361   1.6622694   3.4941834
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0750695   0.8982937   1.2866331
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0920566   0.9183199   1.2986624


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0454002    0.0197287    0.0710717
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1849719    0.0717909    0.2981528
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0019959   -0.0531173    0.0491255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0007282   -0.0215848    0.0201285
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0028242   -0.0562350    0.0505866
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0624501   -0.0484168    0.1733169
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0053695   -0.0006754    0.0114143
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0314085   -0.0041566    0.0669736
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0294012    0.0070007    0.0518018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0806426    0.0443116    0.1169736
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0054852   -0.0147068    0.0037365
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0242966   -0.0606613    0.0120681
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0021645   -0.0558026    0.0514736
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0059568   -0.0124634    0.0243770
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0019710   -0.0026802    0.0066221
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0127645   -0.0397689    0.0142400
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0015047   -0.0049509    0.0019416
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0032387   -0.0207968    0.0143194
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0079177   -0.0006017    0.0164372
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0152040   -0.0229476   -0.0074604
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0835388    0.0607939    0.1062837
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2146455    0.1324370    0.2968540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0135701   -0.0472669    0.0201267
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0027707   -0.0258642    0.0203229
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0340240   -0.0123859    0.0804339
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0703533   -0.0358747    0.1765814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0061128   -0.0014027    0.0136283
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0177493   -0.0224435    0.0579421
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0516063    0.0317230    0.0714895
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0959584    0.0630104    0.1289064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0091686   -0.0000024    0.0183396


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1956994    0.0555862    0.3150254
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4863167    0.0869400    0.7110042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0155238   -0.5022160    0.3134885
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0145451   -0.5297001    0.3271218
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0171174   -0.3986245    0.2603248
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1947924   -0.2365132    0.4756552
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1285534   -0.0283889    0.2615448
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2845868   -0.1197009    0.5428993
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2916781    0.0331244    0.4810915
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4384942    0.2048898    0.6034653
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0619747   -0.1714232    0.0372478
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3447369   -1.0051084    0.0981448
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0285714   -1.0471955    0.4832154
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1389914   -0.4142101    0.4757951
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2445028   -0.5993898    0.6431289
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3201754   -1.1878788    0.2034005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1246884   -0.4495338    0.1273581
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1229869   -1.0330755    0.3797085
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3347447   -0.1277609    0.6075724
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3865200   -0.5984255   -0.2027072
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3695394    0.2204433    0.4901198
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.5997895    0.3066908    0.7689798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1110937   -0.4228635    0.1323629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0491298   -0.5499701    0.2898745
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2110586   -0.1310381    0.4496838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2184656   -0.1905035    0.4869432
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1502491   -0.0553274    0.3157795
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1580471   -0.2869408    0.4491707
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5342911    0.2837000    0.6972152
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.5027074    0.3011417    0.6461373
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1056377   -0.0063883    0.2051936
