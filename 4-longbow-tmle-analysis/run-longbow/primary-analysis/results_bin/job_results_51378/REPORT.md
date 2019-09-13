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

agecat        studyid                    country                        parity    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      400    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       48    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      300    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       54    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      590    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      121    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       70     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        7     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       79     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       13     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      181     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       47     397
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
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      208    1989
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       32    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      184    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1       30    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0     1279    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      256    1989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      135     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       36     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       46     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      202     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       74     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5432   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      571   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3815   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      360   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3415   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      345   13938
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9464   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      637   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     8442   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      493   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     7387   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      512   26935
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      419    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1       26    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      329    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1       23    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      657    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1       51    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       76     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        1     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       90     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1        2     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      213     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       15     397
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
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      217    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       14    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      197    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1        5    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0     1305    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1       84    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      157     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       14     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      138     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       17     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      251     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       25     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     5498   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      460   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3894   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      258   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     3503   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      233   13846
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     9615   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      423   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     8584   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1      331   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     7530   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      355   26838
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      393    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       24    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      287    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1       34    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      575    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1       76    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       71     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        6     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       80     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       11     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      195     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       32     395
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0      118     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       34     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      216     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1       55     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4293   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      119   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3141   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      111   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2911   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      118   10693
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6396   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      221   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5674   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      169   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4667   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      162   17289


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

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/4eeb0837-12e2-4b54-898a-9c24f2a0194f/3bc8b4d5-5542-4e8e-a596-8d7d22717769/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4eeb0837-12e2-4b54-898a-9c24f2a0194f/3bc8b4d5-5542-4e8e-a596-8d7d22717769/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4eeb0837-12e2-4b54-898a-9c24f2a0194f/3bc8b4d5-5542-4e8e-a596-8d7d22717769/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4eeb0837-12e2-4b54-898a-9c24f2a0194f/3bc8b4d5-5542-4e8e-a596-8d7d22717769/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0861180   0.0328826   0.1393533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1745396   0.1206486   0.2284307
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1683977   0.1323457   0.2044497
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0909091   0.0266170   0.1552012
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1413043   0.0700356   0.2125731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2061404   0.1535651   0.2587156
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0701107   0.0396891   0.1005323
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0327869   0.0104267   0.0551470
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0810811   0.0417196   0.1204425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0809152   0.0523296   0.1095008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0745289   0.0488635   0.1001944
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0712816   0.0495034   0.0930599
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0829486   0.0407523   0.1251449
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1801650   0.1011996   0.2591305
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1472213   0.1284155   0.1660271
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2255616   0.1150637   0.3360594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2860340   0.1415068   0.4305612
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2277921   0.1679632   0.2876210
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0944983   0.0837183   0.1052783
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0885122   0.0743859   0.1026385
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0988514   0.0833596   0.1143432
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0814013   0.0437724   0.1190303
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0783915   0.0392255   0.1175574
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0686951   0.0525620   0.0848282
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0932523   0.0675502   0.1189544
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0863154   0.0660932   0.1065376
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1089811   0.0955346   0.1224276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1286039   0.0945158   0.1626920
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1061557   0.0669497   0.1453617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1523901   0.1280975   0.1766827
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0591411   0.0500351   0.0682472
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0551304   0.0444418   0.0658191
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0565044   0.0492286   0.0637802
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0542006   0.0054920   0.1029092
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0592229   0.0339427   0.0845030
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0587765   0.0391261   0.0784269
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0418142   0.0235332   0.0600953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0346610   0.0182132   0.0511088
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0284817   0.0135570   0.0434065
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0606061   0.0298279   0.0913843
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0247525   0.0033207   0.0461843
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0604752   0.0479363   0.0730140
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0595779   0.0187718   0.1003839
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0964433   0.0304674   0.1624192
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0628012   0.0366402   0.0889623
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0790972   0.0687433   0.0894511
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0638758   0.0517229   0.0760287
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0682646   0.0539861   0.0825431
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0667788   0.0250665   0.1084912
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0558633   0.0148152   0.0969114
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0601931   0.0432301   0.0771561
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0721908   0.0501594   0.0942222
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.0588083   0.0419500   0.0756667
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.0694258   0.0580612   0.0807905
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0976651   0.0659624   0.1293678
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0739210   0.0338654   0.1139766
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0568636   0.0442027   0.0695244
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0407924   0.0334111   0.0481738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0351192   0.0264933   0.0437451
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0408064   0.0341149   0.0474979
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0446532   0.0136231   0.0756834
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1410905   0.0694029   0.2127781
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1210743   0.0808676   0.1612810
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0779221   0.0179751   0.1378690
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1208791   0.0538169   0.1879413
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1409692   0.0956427   0.1862956
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0560148   0.0271437   0.0848860
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0418598   0.0214685   0.0622511
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0599307   0.0354140   0.0844474
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0705998   0.0270790   0.1141206
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1401371   0.0717138   0.2085603
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1079480   0.0924563   0.1234397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1543518   0.0505819   0.2581218
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2102273   0.0786678   0.3417869
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1653592   0.1158253   0.2148932
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0263131   0.0202699   0.0323563
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0324253   0.0241362   0.0407143
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0407515   0.0307850   0.0507180
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0329670   0.0070162   0.0589179
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0292398   0.0039775   0.0545020
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0220930   0.0122653   0.0319208
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0178077   0.0082087   0.0274067
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0277599   0.0179227   0.0375970
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.0486956   0.0392336   0.0581576
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0294484   0.0163315   0.0425653
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0390559   0.0222035   0.0559084
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1020359   0.0792832   0.1247886
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0320106   0.0240307   0.0399906
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0297316   0.0217015   0.0377617
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0242377   0.0195831   0.0288923


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1687657   0.1318761   0.2056554
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0666101   0.0565417   0.0766785
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1598793   0.1437689   0.1759898
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0915483   0.0867604   0.0963361
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0723341   0.0584645   0.0862036
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1014273   0.0927249   0.1101298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0609616   0.0574870   0.0644361
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335172   0.0262496   0.0407848
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0565313   0.0459241   0.0671385
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686841   0.0644712   0.0728970
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0630292   0.0484135   0.0776449
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0675068   0.0601293   0.0748842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0413220   0.0383449   0.0442991
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1240506   0.0915015   0.1565997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412682   0.0325201   0.0500164
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1200624   0.1055350   0.1345898
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0325447   0.0291813   0.0359080
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0247321   0.0159885   0.0334756
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0403319   0.0344774   0.0461863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0319278   0.0290347   0.0348209


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 2.0267510   0.9549265   4.3016079
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.9554305   1.0640667   3.5934859
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.5543477   0.6520835   3.7050420
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.2675436   1.0691885   4.8090249
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4676445   0.2083855   1.0494558
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1564723   0.6030613   2.2177317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9210745   0.5627861   1.5074612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8809426   0.5520612   1.4057496
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 2.1720081   1.1091350   4.2534222
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.7748500   1.0500691   2.9998907
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2680974   0.6273020   2.5634717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0098889   0.5794058   1.7602094
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9366534   0.7698041   1.1396661
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0460653   0.8617345   1.2698256
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9630246   0.4875401   1.9022359
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8439062   0.5024757   1.4173374
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9256117   0.6448246   1.3286667
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1686695   0.8640379   1.5807042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8254470   0.5239288   1.3004873
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1849568   0.8698599   1.6141938
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9321839   0.7251456   1.1983343
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9554164   0.7825428   1.1664801
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0926615   0.4635906   2.5753523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0844255   0.4330424   2.7156205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8289277   0.4348762   1.5800387
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.6811492   0.3442114   1.3479048
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.4084158   0.1496799   1.1144014
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9978402   0.5765473   1.7269788
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.6187770   0.6145122   4.2642589
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0541033   0.4719512   2.3543403
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8075610   0.6410218   1.0173674
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8630471   0.6743117   1.1046082
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8365421   0.3192768   2.1918374
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9013805   0.4538362   1.7902644
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8146236   0.5360053   1.2380689
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9616992   0.6801671   1.3597618
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7568824   0.4024185   1.4235701
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5822301   0.3928074   0.8629977
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8609239   0.6308001   1.1749997
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0003422   0.7854558   1.2740177
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 3.1596943   1.4139824   7.0606737
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.7114360   1.6643564   4.4172542
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.5512821   0.6008485   4.0051297
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.8091043   0.7858598   4.1646847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7472988   0.3680070   1.5175132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0699079   0.5536847   2.0674275
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.9849497   0.9042100   4.3574226
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.5290124   0.8117725   2.8799683
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.3620010   0.5434550   3.4134323
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0713139   0.5132590   2.2361293
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2322853   0.8738983   1.7376473
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5487140   1.1072525   2.1661861
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8869396   0.2756077   2.8542808
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.6701550   0.2713306   1.6552051
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.5588711   0.8179212   2.9710430
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.7345286   1.5417464   4.8501147
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3262471   0.7144774   2.4618432
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 3.4648995   2.1074584   5.6966858
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9288032   0.6402575   1.3473884
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7571761   0.5538913   1.0350688


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0612713    0.0180336    0.1045091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0778566    0.0154795    0.1402338
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0101107   -0.0328889    0.0126675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0143051   -0.0404145    0.0118043
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0769307    0.0342150    0.1196464
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0335747   -0.0729693    0.1401186
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0029501   -0.0125808    0.0066807
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0090673   -0.0433271    0.0251926
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0081750   -0.0163409    0.0326910
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0031523   -0.0352940    0.0289893
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0018204   -0.0067574    0.0103983
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0122446   -0.0320036    0.0564928
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0082970   -0.0243162    0.0077221
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0040748   -0.0327035    0.0245540
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0334454   -0.0059888    0.0728796
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0104131   -0.0196847   -0.0011415
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0037497   -0.0420421    0.0345428
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0046841   -0.0254236    0.0160555
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0283484   -0.0579100    0.0012132
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0005296   -0.0064643    0.0075234
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0518191    0.0344136    0.0692245
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0461286   -0.0108979    0.1031550
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0147466   -0.0416061    0.0121129
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0494626    0.0057400    0.0931851
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0371736   -0.0635990    0.1379462
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0062315    0.0007954    0.0116676
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0082350   -0.0316403    0.0151703
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0225242    0.0127127    0.0323357
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0374793    0.0240926    0.0508659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0000828   -0.0075326    0.0073669


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4157109    0.0094460    0.6553507
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4613297   -0.0483809    0.7232249
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1685117   -0.6132761    0.1536356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2147587   -0.6763111    0.1197108
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.4811800    0.1423137    0.6861624
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1295638   -0.3951791    0.4569448
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0322240   -0.1429738    0.0677945
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1253525   -0.7132530    0.2608107
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0806000   -0.1956469    0.2930218
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0251280   -0.3162475    0.2016035
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0298620   -0.1214854    0.1607847
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1842812   -0.8418999    0.6387442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2475459   -0.8259742    0.1476491
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0720800   -0.7191477    0.3314387
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3595379   -0.2190498    0.6635152
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1516088   -0.2947210   -0.0243155
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0594907   -0.8788514    0.4025495
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0693865   -0.4253849    0.1976992
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4089694   -0.9047975   -0.0422079
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0128158   -0.1717275    0.1682941
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.5371395    0.2285672    0.7222832
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3718526   -0.2881157    0.6936850
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3573352   -1.1903304    0.1588672
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.4119739   -0.0819744    0.6804225
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1940923   -0.5462552    0.5799611
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1914765    0.0073875    0.3414245
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3329670   -1.6972387    0.3412518
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5584715    0.2578705    0.7373135
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.5599965    0.3292551    0.7113611
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0025936   -0.2653123    0.2055764
