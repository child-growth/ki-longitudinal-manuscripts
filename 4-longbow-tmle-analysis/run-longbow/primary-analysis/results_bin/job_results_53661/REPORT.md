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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        parity    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      136    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       91    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      110    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       62    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      258    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      157    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       11    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       30    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      180    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       11    234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       52    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       76    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       40    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       63    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       37    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       40    308
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126    702
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0       46   1438
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1      120   1438
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0       44   1438
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       95   1438
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      436   1438
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      697   1438
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       79    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      101    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       72    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       86    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      145    643
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      160    643
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      690   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      929   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      499   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      536   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      462   3615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      499   3615
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       26    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       23    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       27    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       32    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      159    380
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      113    380
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      188   1708
0-24 months   ki1135781-COHORTS          INDIA                          1                   1       82   1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      296   1708
0-24 months   ki1135781-COHORTS          INDIA                          2                   1       98   1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0      830   1708
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      214   1708
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      140   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      241   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      133   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      226   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      391   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      558   1689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1654   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1306   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1354   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      986   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1367   7571
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   7571
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       43    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       56    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       40    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       39    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0       83    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       80    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        7     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       12     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       59     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        0     78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       15    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       64    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       12    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       48    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0       13    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       33    185
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67    336
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       13    592
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       69    592
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0       12    592
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       48    592
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0       94    592
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      356    592
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       29    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       51    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       31    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       40    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0       44    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       68    263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      334   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      902   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      151   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      510   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      151   2519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      471   2519
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        7    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       23    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0        5    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       29    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0       42    214
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      108    214
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      115   1082
0-6 months    ki1135781-COHORTS          INDIA                          1                   1       82   1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      161   1082
0-6 months    ki1135781-COHORTS          INDIA                          2                   1       98   1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0      412   1082
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      214   1082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       53    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      154    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0       37    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      126    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0      108    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      274    752
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      574   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1306   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      454   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      986   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      510   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   4734
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       93    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       35    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       70    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       23    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      175    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       77    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        4    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       18    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      121    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       11    156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       37    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       28    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1        7    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59    366
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       33    846
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       51    846
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0       32    846
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       47    846
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      342    846
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      341    846
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       50    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       50    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       41    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       46    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      101    380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1       92    380
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      356   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       27   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      348   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       26   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      311   1096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1       28   1096
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       19    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       22    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1        3    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      117    166
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1        5    166
6-24 months   ki1135781-COHORTS          INDIA                          1                   0       73    626
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    626
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      135    626
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0    626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0      418    626
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1        0    626
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       87    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       87    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0       96    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      100    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      283    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      284    937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1080   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      900   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      857   2837
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1        0   2837


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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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
![](/tmp/40ff9980-940d-45a2-be77-8792cc7f9fd5/1be9c3f4-d67a-4ead-a9c9-75b6dd4ebe09/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40ff9980-940d-45a2-be77-8792cc7f9fd5/1be9c3f4-d67a-4ead-a9c9-75b6dd4ebe09/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/40ff9980-940d-45a2-be77-8792cc7f9fd5/1be9c3f4-d67a-4ead-a9c9-75b6dd4ebe09/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40ff9980-940d-45a2-be77-8792cc7f9fd5/1be9c3f4-d67a-4ead-a9c9-75b6dd4ebe09/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3546007   0.2803791   0.4288223
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3186830   0.2201564   0.4172097
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4141764   0.3571204   0.4712324
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5959068   0.5035813   0.6882324
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.6188228   0.5324236   0.7052219
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.5273922   0.4048506   0.6499337
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6285964   0.5575109   0.6996819
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6562518   0.5842029   0.7283007
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6126518   0.5404834   0.6848202
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.8482272   0.7934104   0.9030440
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.7343786   0.6221591   0.8465982
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.6310861   0.5847201   0.6774522
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5842175   0.4293487   0.7390863
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4572806   0.2422285   0.6723326
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5607237   0.4739326   0.6475149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6049790   0.5724588   0.6374992
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5054892   0.4575741   0.5534042
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4507226   0.4026384   0.4988067
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5166880   0.2943018   0.7390743
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6257302   0.4670771   0.7843833
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4363816   0.3677345   0.5050287
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3287317   0.2587178   0.3987456
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2474116   0.1889996   0.3058235
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2057572   0.1772511   0.2342633
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6731504   0.6190392   0.7272616
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6550839   0.5858199   0.7243480
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5779429   0.5417917   0.6140941
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4431226   0.4075948   0.4786505
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4147882   0.3846139   0.4449626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3549280   0.3225907   0.3872652
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5684548   0.4685777   0.6683319
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4905660   0.3775753   0.6035566
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4902060   0.4125153   0.5678967
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8204034   0.7328489   0.9079579
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7839672   0.6942906   0.8736438
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7200806   0.5934897   0.8466715
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7429395   0.6648006   0.8210784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7081992   0.6194619   0.7969365
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6612366   0.5661255   0.7563477
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.8366662   0.7536370   0.9196953
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.7824271   0.6761889   0.8886653
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.7977393   0.7612068   0.8342719
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6907738   0.5531403   0.8284074
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5248264   0.3356304   0.7140224
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6530466   0.5424291   0.7636641
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7578003   0.7298180   0.7857827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7584676   0.7073501   0.8095851
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6859745   0.6333129   0.7386362
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4355216   0.3562119   0.5148314
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.3790989   0.3001991   0.4579987
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3347954   0.2941229   0.3754680
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8150597   0.7629209   0.8671985
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7640308   0.6741080   0.8539535
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7186215   0.6675716   0.7696714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6503227   0.6100116   0.6906338
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6988797   0.6596834   0.7380760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.6002813   0.5570621   0.6435005
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2727045   0.1938115   0.3515975
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2448365   0.1520056   0.3376675
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3052233   0.2462933   0.3641533
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3488372   0.1975901   0.5000843
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2258065   0.0656328   0.3859801
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5481455   0.4504367   0.6458543
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5901537   0.4929489   0.6873585
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5019021   0.4032933   0.6005109
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6851839   0.5543735   0.8159943
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6505459   0.5177407   0.7833511
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4840644   0.4249687   0.5431600
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4661324   0.2786318   0.6536331
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4055349   0.1730944   0.6379754
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5070747   0.4016909   0.6124586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0678202   0.0425287   0.0931116
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0688748   0.0433045   0.0944452
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0827033   0.0529224   0.1124842
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4948500   0.4053767   0.5843233
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5302155   0.4157363   0.6446946
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4837120   0.4342557   0.5331683


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6253561   0.5873792   0.6633330
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.6342142   0.6073589   0.6610695
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5396579   0.4973524   0.5819633
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5432918   0.5268968   0.5596869
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2306792   0.2105836   0.2507747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4221371   0.4110175   0.4332567
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.7989865   0.7673199   0.8306531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7475189   0.7305656   0.7644721
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3641405   0.3354558   0.3928252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6751162   0.6617750   0.6884574
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5519126   0.4992021   0.6046230
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5189125   0.4826376   0.5551875
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947368   0.4401559   0.5493178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739051   0.0584895   0.0893208
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8987096   0.6187633   1.3053115
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1680078   0.9095612   1.4998905
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0384556   0.8421760   1.2804805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8850245   0.6691917   1.1704695
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0439955   0.8916404   1.2223835
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9746346   0.8277551   1.1475769
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8657806   0.7333462   1.0221311
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.7440060   0.6745417   0.8206237
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7827232   0.4563392   1.3425441
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9597859   0.7061026   1.3046108
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8355483   0.7495781   0.9313785
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7450219   0.6615612   0.8390118
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.2110406   0.7350766   1.9951924
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8445746   0.5336421   1.3366752
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.7526247   0.5475994   1.0344131
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6259123   0.4855022   0.8069299
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9731612   0.8522784   1.1111895
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8585642   0.7754541   0.9505818
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9360574   0.8400278   1.0430649
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8009700   0.7094358   0.9043144
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8629815   0.6458548   1.1531030
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8623483   0.6805738   1.0926731
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9555875   0.8197548   1.1139275
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8777153   0.7155226   1.0766734
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9532394   0.8090894   1.1230717
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8900275   0.7444175   1.0641193
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9351724   0.7902185   1.1067159
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9534739   0.8545852   1.0638056
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7597659   0.5028463   1.1479537
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9453841   0.7273772   1.2287314
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0008805   0.9280606   1.0794142
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9052181   0.8324324   0.9843679
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8704479   0.6601266   1.1477791
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.7687229   0.6176294   0.9567790
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9373924   0.8202802   1.0712248
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8816796   0.8012567   0.9701745
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0746660   0.9885138   1.1683267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9230515   0.8393149   1.0151423
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8978088   0.5570663   1.4469743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1192457   0.7908268   1.5840521
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.4244186   0.7513743   2.7003430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9220430   0.3937421   2.1591882
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0766370   0.8444548   1.3726574
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9156366   0.7020054   1.1942792
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9494473   0.7180338   1.2554423
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.7064737   0.5633007   0.8860367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8699993   0.4320807   1.7517534
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0878341   0.6918121   1.7105554
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0155510   0.6003661   1.7178581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2194503   0.7259522   2.0484254
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0714670   0.8084998   1.4199651
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9774922   0.7943226   1.2029005


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0262347   -0.0415284    0.0939978
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0147380   -0.0835288    0.0540528
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032403   -0.0637915    0.0573109
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2140130   -0.2711483   -0.1568777
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0445596   -0.1942792    0.1051599
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0616871   -0.0903132   -0.0330610
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0745828   -0.2893623    0.1401968
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0980525   -0.1639495   -0.0321555
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0662825   -0.1169585   -0.0156064
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0209855   -0.0547080    0.0127369
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0552583   -0.1397355    0.0292189
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0366196   -0.1034011    0.0301618
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0375823   -0.1016326    0.0264679
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0376797   -0.1163222    0.0409628
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0862111   -0.2153048    0.0428826
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0102815   -0.0330654    0.0125024
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0713812   -0.1458682    0.0031058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0783576   -0.1257519   -0.0309632
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0247935   -0.0132413    0.0628283
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0127078   -0.0553042    0.0807198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0037671   -0.0783783    0.0859125
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1662713   -0.2963568   -0.0361858
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0286044   -0.1510899    0.2082987
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0060849   -0.0145000    0.0266699
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0078181   -0.0779623    0.0935985


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0688872   -0.1268145    0.2306000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0253593   -0.1506487    0.0862879
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051815   -0.1068299    0.0871319
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3374460   -0.4365654   -0.2451656
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0825702   -0.3990394    0.1623122
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1135433   -0.1677337   -0.0618677
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1686991   -0.7707798    0.2286688
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.4250602   -0.7416427   -0.1660237
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1092206   -0.1965326   -0.0282798
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0497126   -0.1327249    0.0272160
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1076748   -0.2856276    0.0456463
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0467216   -0.1356711    0.0352612
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0532813   -0.1484848    0.0340303
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0471594   -0.1505018    0.0469005
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1426007   -0.3793492    0.0535128
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0137541   -0.0447078    0.0162824
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1960265   -0.4201535   -0.0072709
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1063626   -0.1736140   -0.0429650
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0367248   -0.0212987    0.0914518
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0445242   -0.2260144    0.2553644
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0068254   -0.1537468    0.1450501
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3204226   -0.6009061   -0.0890807
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0578174   -0.3853667    0.3592252
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0823344   -0.2430110    0.3225239
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0155532   -0.1706780    0.1721588
