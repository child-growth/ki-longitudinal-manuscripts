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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        parity    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      400    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       48    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      300    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       54    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      590    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      121    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       17     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        4     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       70     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      260     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       60     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      252     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      236     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        8     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       15     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      767    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       54    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      717    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       54    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      716    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       49    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      195    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       45    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      175    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1       39    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0     1222    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      314    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      158     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       45     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      127     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       53     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      224     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       79     686
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5431   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      575   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3816   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      362   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3412   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      349   13945
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0      191    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       17    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0      172    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1       15    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      881    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1       65    1341
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      737    4624
0-24 months   ki1135781-COHORTS          INDIA                          1                    1       73    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                    0     1082    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      102    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                   0     2336    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1      294    4624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      584    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       93    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      609    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1       73    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0     1470    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      216    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9487   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      639   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     8441   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      493   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     7383   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      513   26956
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      419    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       26    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      329    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1       23    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      657    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1       51    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       76     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        1     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      303     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       17     418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      255     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       16     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      240     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   0      176     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1        9     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      790    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       31    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      744    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       27    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      744    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       21    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      205    1851
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       29    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      191    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       14    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0     1265    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1      147    1851
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      179     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       24     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      155     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       25     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      273     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       30     686
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5500   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      461   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3897   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      258   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3502   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      234   13852
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0      141    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       11    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    0      139    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1       10    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   0      716    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1       46    1063
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      704    4444
0-6 months    ki1135781-COHORTS          INDIA                          1                    1       55    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                    0     1068    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                    1       69    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                   0     2372    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1      176    4444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      609    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       67    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    0      638    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1       44    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   0     1586    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1      100    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9639   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      424   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     8583   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      331   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     7526   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      356   26859
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      393    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       24    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      287    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       34    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      575    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1       76    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        5     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       71     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        6     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      275     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       43     402
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      224     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        3     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      220     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1        4     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      158     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1        6     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      648    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       25    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      623    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1       29    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      634    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1       28    1987
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      207    1924
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       20    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      172    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       26    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   0     1314    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      185    1924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      143     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       24     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      119     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       33     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      216     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       55     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4348   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      122   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3175   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      113   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2935   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      121   10814
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0      176    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        6    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0      166    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1        5    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      841    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1       19    1213
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      734    4339
6-24 months   ki1135781-COHORTS          INDIA                          1                    1       19    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                    0     1070    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                    1       35    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                   0     2360    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1      121    4339
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      579    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       29    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      595    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1       30    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0     1447    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      129    2809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6404   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      222   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5674   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      169   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4667   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      162   17298


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
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




# Results Detail

## Results Plots
![](/tmp/3b7c0af2-ecf4-491b-b68b-a7283f85ccb6/a502fdb5-a51f-4935-8c81-9d56debcd9cd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3b7c0af2-ecf4-491b-b68b-a7283f85ccb6/a502fdb5-a51f-4935-8c81-9d56debcd9cd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3b7c0af2-ecf4-491b-b68b-a7283f85ccb6/a502fdb5-a51f-4935-8c81-9d56debcd9cd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3b7c0af2-ecf4-491b-b68b-a7283f85ccb6/a502fdb5-a51f-4935-8c81-9d56debcd9cd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0919029   0.0392888   0.1445171
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1701220   0.1256364   0.2146077
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1663651   0.1305223   0.2022079
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0701107   0.0396891   0.1005323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0327869   0.0104267   0.0551470
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0810811   0.0417196   0.1204425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0834297   0.0552480   0.1116115
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0760421   0.0503432   0.1017410
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0761561   0.0516772   0.1006350
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1651930   0.1092985   0.2210876
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1837604   0.1094466   0.2580742
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1851874   0.1643360   0.2060389
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2027793   0.1199189   0.2856396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2802809   0.1615957   0.3989662
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2379303   0.1754803   0.3003803
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0981725   0.0868996   0.1094454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0870505   0.0731874   0.1009135
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0946117   0.0803988   0.1088246
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0805609   0.0430276   0.1180943
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0806699   0.0412936   0.1200462
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0685935   0.0524613   0.0847257
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0940831   0.0668758   0.1212903
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0862310   0.0657504   0.1067117
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1089332   0.0954400   0.1224263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1262723   0.0929339   0.1596106
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1109127   0.0668496   0.1549758
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1462646   0.1232364   0.1692927
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0592767   0.0503641   0.0681893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0552513   0.0461740   0.0643286
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0581770   0.0504692   0.0658849
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0542006   0.0054920   0.1029092
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0592229   0.0339427   0.0845030
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0587765   0.0391261   0.0784269
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0398584   0.0232495   0.0564673
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0343896   0.0173565   0.0514227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0290804   0.0135742   0.0445867
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1425314   0.0887844   0.1962784
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0638506   0.0274728   0.1002283
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1017717   0.0861400   0.1174035
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1032878   0.0410517   0.1655239
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1285515   0.0512777   0.2058254
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0765552   0.0435454   0.1095649
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0803667   0.0689030   0.0918304
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0628225   0.0510703   0.0745747
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0655055   0.0515476   0.0794634
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0678227   0.0259848   0.1096606
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0653803   0.0249598   0.1058008
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0605263   0.0435832   0.0774693
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0746195   0.0522784   0.0969606
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0619126   0.0439093   0.0799159
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0667982   0.0560216   0.0775747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1100514   0.0758025   0.1443003
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0791611   0.0392193   0.1191029
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0560845   0.0433554   0.0688136
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0399410   0.0330345   0.0468474
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0360397   0.0275742   0.0445052
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0424225   0.0352291   0.0496158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0446532   0.0136231   0.0756834
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1410905   0.0694029   0.2127781
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1210743   0.0808676   0.1612810
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0555256   0.0259952   0.0850561
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0456963   0.0221731   0.0692195
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0630728   0.0406310   0.0855146
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0687489   0.0265267   0.1109712
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1480755   0.0752240   0.2209270
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1085465   0.0927917   0.1243013
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1521726   0.0544792   0.2498660
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2037178   0.0803524   0.3270832
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1801849   0.1305216   0.2298482
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0273304   0.0208741   0.0337866
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0329656   0.0245609   0.0413703
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0459742   0.0355435   0.0564048
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0329670   0.0070162   0.0589179
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0292398   0.0039775   0.0545020
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0220930   0.0122653   0.0319208
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0181204   0.0085138   0.0277271
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0272832   0.0176632   0.0369032
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.0483095   0.0390196   0.0575994
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0292166   0.0165466   0.0418866
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0380775   0.0216104   0.0545446
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1018273   0.0798029   0.1238518
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0317036   0.0232103   0.0401969
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0284273   0.0217834   0.0350713
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0239719   0.0192464   0.0286974


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0666101   0.0565417   0.0766785
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2000000   0.1824211   0.2175789
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922194   0.0874171   0.0970218
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1014273   0.0927249   0.1101298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0610254   0.0575469   0.0645038
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335172   0.0262496   0.0407848
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1026472   0.0888174   0.1164771
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687987   0.0645835   0.0730139
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0675068   0.0601293   0.0748842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413642   0.0383846   0.0443438
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412682   0.0325201   0.0500164
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1200624   0.1055350   0.1345898
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329203   0.0295572   0.0362834
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0403319   0.0344774   0.0461863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.8511056   1.0092249   3.3952711
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.8102261   1.0084866   3.2493428
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4676445   0.2083855   1.0494558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1564723   0.6030613   2.2177317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9114506   0.5657530   1.4683832
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9128171   0.5725813   1.4552258
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1123981   0.6563992   1.8851784
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1210368   0.7848156   1.6012978
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.3821973   0.7672523   2.4900146
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1733463   0.7220900   1.9066063
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8867096   0.7286423   1.0790671
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9637297   0.7976730   1.1643554
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0013522   0.5099281   1.9663678
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8514489   0.5051914   1.4350310
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9165415   0.6304811   1.3323924
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1578405   0.8452993   1.5859407
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8783616   0.5451484   1.4152460
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1583268   0.8519139   1.5749490
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9320908   0.7436752   1.1682429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9814487   0.8048798   1.1967522
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0926615   0.4635906   2.5753523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0844255   0.4330424   2.7156205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8627947   0.4517494   1.6478486
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.7295941   0.3708149   1.4355073
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.4479754   0.2261972   0.8871989
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.7140302   0.4752329   1.0728196
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2445953   0.5312823   2.9156202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7411831   0.3531608   1.5555304
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7816980   0.6178351   0.9890208
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8150820   0.6307236   1.0533279
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9639888   0.4026078   2.3081380
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8924186   0.4532226   1.7572182
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8297114   0.5466226   1.2594082
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.8951842   0.6371068   1.2578028
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7193101   0.3976251   1.3012434
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5096210   0.3467086   0.7490831
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9023235   0.6699689   1.2152620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0621292   0.8367913   1.3481479
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 3.1596943   1.4139824   7.0606737
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.7114360   1.6643564   4.4172542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8229771   0.3930781   1.7230452
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1359218   0.5986114   2.1555189
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.1538582   0.9805141   4.7312988
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.5788827   0.8398384   2.9682741
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.3387282   0.5542057   3.2338050
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1840823   0.5887510   2.3813989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2061904   0.8521449   1.7073332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.6821655   1.2124087   2.3339329
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8869396   0.2756077   2.8542808
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.6701550   0.2713306   1.6552051
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.5056604   0.7966755   2.8455915
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.6660239   1.5167797   4.6860354
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3032839   0.7073465   2.4012969
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 3.4852606   2.1486898   5.6532318
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8966593   0.6261617   1.2840101
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7561253   0.5436979   1.0515498


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0554864    0.0166856    0.0942871
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0101107   -0.0328889    0.0126675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0168196   -0.0424571    0.0088179
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0348070   -0.0208188    0.0904328
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0552382   -0.0232144    0.1336908
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0059530   -0.0160903    0.0041842
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0082269   -0.0424013    0.0259476
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0073443   -0.0187553    0.0334439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0008207   -0.0322388    0.0305974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0017487   -0.0066352    0.0101325
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0122446   -0.0320036    0.0564928
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0063412   -0.0206253    0.0079429
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0398842   -0.0905332    0.0107649
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0118726   -0.0465080    0.0702531
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0115680   -0.0220292   -0.0011068
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0047936   -0.0431518    0.0335647
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0071127   -0.0281379    0.0139124
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0407347   -0.0727675   -0.0087020
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0014232   -0.0050953    0.0079418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0518191    0.0344136    0.0692245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0142574   -0.0417821    0.0132673
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0513134    0.0087152    0.0939117
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0376579   -0.0565540    0.1318698
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0055899   -0.0002609    0.0114407
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0082350   -0.0316403    0.0151703
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0222114    0.0124137    0.0320091
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0377112    0.0247525    0.0506698
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0002654   -0.0077036    0.0082344


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3764613    0.0127030    0.6061969
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1685117   -0.6132761    0.1536356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2525087   -0.7020864    0.0783205
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1740349   -0.1541790    0.4089146
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2140872   -0.1561356    0.4657556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0645530   -0.1803629    0.0398943
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1137342   -0.7012693    0.2708951
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0724092   -0.2239463    0.2970079
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0065422   -0.2909074    0.2151822
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0286549   -0.1188340    0.1567012
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1842812   -0.8418999    0.6387442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1891923   -0.6991795    0.1677287
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.3885559   -0.9779446    0.0252066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1030959   -0.5777657    0.4901417
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1681427   -0.3303742   -0.0256943
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0760529   -0.8929700    0.3883210
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1053633   -0.4652743    0.1661439
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.5876613   -1.1209475   -0.1884634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0344068   -0.1365186    0.1796260
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5371395    0.2285672    0.7222832
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3454811   -1.2059642    0.1793523
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.4273897   -0.0521367    0.6883651
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1983764   -0.4874374    0.5679815
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1698019   -0.0273210    0.3291008
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3329670   -1.6972387    0.3412518
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5507168    0.2516589    0.7302628
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.5634610    0.3429180    0.7099810
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0083018   -0.2751047    0.2287180
