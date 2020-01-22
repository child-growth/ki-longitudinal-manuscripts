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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        parity    wast_rec90d   n_cell      n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ------------  -------  -----  -----------------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      136    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       91    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      110    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       62    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      258    814  wast_rec90d      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      157    814  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       11    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       30    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      180    234  wast_rec90d      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       11    234  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       52    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       76    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       40    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       63    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       37    308  wast_rec90d      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       40    308  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90    702  wast_rec90d      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126    702  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0       46   1438  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1      120   1438  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0       44   1438  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       95   1438  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      436   1438  wast_rec90d      
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      697   1438  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       79    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      101    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       72    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       86    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      145    643  wast_rec90d      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      160    643  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      690   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      929   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      499   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      536   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      462   3615  wast_rec90d      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      499   3615  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       26    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       23    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       27    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       32    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      159    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      113    380  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      188   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          1                   1       82   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      296   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          2                   1       98   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0      830   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      214   1708  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      140   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      241   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      133   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      226   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      391   1689  wast_rec90d      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      558   1689  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1654   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1306   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1354   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      986   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1367   7571  wast_rec90d      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   7571  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       43    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       56    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       40    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       39    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0       83    341  wast_rec90d      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       80    341  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        7     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       12     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       59     78  wast_rec90d      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        0     78  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       15    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       64    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       12    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       48    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0       13    185  wast_rec90d      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       33    185  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35    336  wast_rec90d      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67    336  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       13    592  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       69    592  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0       12    592  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       48    592  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0       94    592  wast_rec90d      
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      356    592  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       29    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       51    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       31    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       40    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0       44    263  wast_rec90d      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       68    263  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      334   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      902   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      151   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      510   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      151   2519  wast_rec90d      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      471   2519  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        7    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       23    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0        5    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       29    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0       42    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      108    214  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      115   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          1                   1       82   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      161   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          2                   1       98   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0      412   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      214   1082  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       53    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      154    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0       37    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      126    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0      108    752  wast_rec90d      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      274    752  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      574   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1306   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      454   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      986   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      510   4734  wast_rec90d      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   4734  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       93    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       35    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       70    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       23    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      175    473  wast_rec90d      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       77    473  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        4    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       18    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        2    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      121    156  wast_rec90d      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       11    156  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       37    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       28    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       15    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       24    123  wast_rec90d      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1        7    123  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55    366  wast_rec90d      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59    366  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       33    846  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       51    846  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0       32    846  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       47    846  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      342    846  wast_rec90d      
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      341    846  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       50    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       50    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       41    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       46    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      101    380  wast_rec90d      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1       92    380  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      356   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       27   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      348   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       26   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      311   1096  wast_rec90d      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1       28   1096  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       19    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0       22    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1        3    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      117    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1        5    166  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                   0       73    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      135    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          2                   1        0    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0      418    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1        0    626  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       87    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       87    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0       96    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      100    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      283    937  wast_rec90d      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      284    937  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1080   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      900   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      857   2837  wast_rec90d      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1        0   2837  wast_rec90d      


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
![](/tmp/f30121c0-bad8-4ab0-9566-9cba6d49952f/cf74f723-2de5-44d1-ba28-600acad32d1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f30121c0-bad8-4ab0-9566-9cba6d49952f/cf74f723-2de5-44d1-ba28-600acad32d1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f30121c0-bad8-4ab0-9566-9cba6d49952f/cf74f723-2de5-44d1-ba28-600acad32d1b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f30121c0-bad8-4ab0-9566-9cba6d49952f/cf74f723-2de5-44d1-ba28-600acad32d1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4008811   0.3335233   0.4682389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3604651   0.2836475   0.4372827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3783133   0.3297924   0.4268341
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5937500   0.5022685   0.6852315
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.6116505   0.5261615   0.6971395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.5194805   0.3989308   0.6400302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6370968   0.5736047   0.7005888
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6512605   0.5873324   0.7151886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5833333   0.5133344   0.6533322
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7228916   0.6558480   0.7899351
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6834532   0.6003324   0.7665741
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.6151809   0.5844010   0.6459608
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5611111   0.4805261   0.6416961
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5443038   0.4548151   0.6337925
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5245902   0.4650747   0.5841056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5738110   0.5492976   0.5983244
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5178744   0.4876430   0.5481058
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5192508   0.4871789   0.5513226
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4693878   0.3218938   0.6168817
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5423729   0.4099003   0.6748455
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4154412   0.3551125   0.4757698
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3037037   0.2466236   0.3607838
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2487310   0.2058243   0.2916376
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2049808   0.1806925   0.2292692
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6325459   0.5812627   0.6838292
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6295265   0.5778482   0.6812047
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5879874   0.5549622   0.6210125
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4412162   0.4234239   0.4590085
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4213675   0.4013387   0.4413963
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3980625   0.3778553   0.4182697
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5656566   0.4667621   0.6645510
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4936709   0.3828383   0.6045035
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4907975   0.4133687   0.5682264
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8101266   0.7214846   0.8987685
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8000000   0.7063409   0.8936591
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7173913   0.5880020   0.8467806
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7440000   0.6670006   0.8209994
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7064220   0.6191448   0.7936993
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6568627   0.5631121   0.7506134
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.8414634   0.7614909   0.9214360
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.8000000   0.7141218   0.8858782
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.7911111   0.7538455   0.8283767
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6375000   0.5302934   0.7447066
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5633803   0.4479206   0.6788400
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6071429   0.5159212   0.6983645
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7297735   0.7050864   0.7544605
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7715582   0.7395778   0.8035387
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7572347   0.7234077   0.7910617
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4162437   0.3473776   0.4851097
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.3783784   0.3192869   0.4374699
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3418530   0.3046787   0.3790273
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7439614   0.6839765   0.8039462
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7730061   0.7085362   0.8374760
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7172775   0.6721142   0.7624408
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6946809   0.6738800   0.7154817
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6847222   0.6607118   0.7087327
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.6393211   0.6142789   0.6643633
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2734375   0.1951641   0.3517109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2473118   0.1571231   0.3375005
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3055556   0.2468560   0.3642552
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3488372   0.1975901   0.5000843
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2258065   0.0656328   0.3859801
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5284553   0.4371428   0.6197678
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6046512   0.5181147   0.6911876
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5175439   0.4219153   0.6131725
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6071429   0.4998629   0.7144228
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5949367   0.4844181   0.7054553
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4992679   0.4584119   0.5401240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5000000   0.3905532   0.6094468
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5287356   0.4141631   0.6433081
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4766839   0.4013570   0.5520109
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0704961   0.0445600   0.0964322
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0695187   0.0448025   0.0942349
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0825959   0.0529376   0.1122542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5000000   0.4226978   0.5773022
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5102041   0.4359618   0.5844463
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5008818   0.4572446   0.5445191


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8991822   0.6854700   1.1795244
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9437045   0.7638947   1.1658389
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0301482   0.8363904   1.2687918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8749146   0.6622004   1.1559575
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0222317   0.8887885   1.1757100
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9156118   0.7833713   1.0701758
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9454436   0.8113316   1.1017242
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.8510003   0.7658698   0.9455935
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9700464   0.7797680   1.2067563
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9349132   0.7784911   1.1227651
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9025174   0.8395298   0.9702307
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9049161   0.8394372   0.9755025
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1554901   0.7760981   1.7203460
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8850703   0.6260791   1.2511989
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8189922   0.6345843   1.0569883
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6749369   0.5404739   0.8428526
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9952265   0.8867579   1.1169630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9295568   0.8422341   1.0259330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9550137   0.8973013   1.0164380
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9021938   0.8455588   0.9626222
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8727396   0.6566071   1.1600155
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8676599   0.6856020   1.0980624
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9875000   0.8412859   1.1591259
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8855299   0.7171111   1.0935030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9494920   0.8081578   1.1155433
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8828800   0.7401747   1.0530989
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9507246   0.8237261   1.0973033
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.9401610   0.8455385   1.0453726
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8837338   0.6779316   1.1520122
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9523810   0.7601028   1.1932985
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0572572   1.0021790   1.1153624
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0376298   0.9810853   1.0974334
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9090310   0.7240548   1.1412636
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.8212811   0.6737649   1.0010949
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0390407   0.9252364   1.1668429
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9641327   0.8703775   1.0679871
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9856645   0.9412466   1.0321784
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9203091   0.8760346   0.9668211
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9044547   0.5689103   1.4379039
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1174603   0.7916092   1.5774420
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.4244186   0.7513743   2.7003430
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9220430   0.3937421   2.1591882
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1441860   0.9142288   1.4319847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9793522   0.7604469   1.2612726
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9798958   0.7582788   1.2662832
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.8223237   0.6768017   0.9991349
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0574713   0.7771033   1.4389920
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9533679   0.7277659   1.2489047
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9861359   0.5912053   1.6448838
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1716377   0.7006894   1.9591205
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0204082   0.8252214   1.2617618
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0017637   0.8388740   1.1962827


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0200457   -0.0769394    0.0368481
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0125812   -0.0805689    0.0554066
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0117406   -0.0629794    0.0394981
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0886774   -0.1530993   -0.0242554
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0214533   -0.0897273    0.0468208
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0305192   -0.0487082   -0.0123301
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0272825   -0.1644370    0.1098721
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0730245   -0.1242954   -0.0217537
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0256780   -0.0708591    0.0195032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0190791   -0.0329604   -0.0051978
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0524601   -0.1359962    0.0310760
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0263428   -0.0939350    0.0412494
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0386429   -0.1016463    0.0243606
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0424769   -0.1174655    0.0325116
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0329373   -0.1227265    0.0568519
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0177454    0.0004586    0.0350322
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0521032   -0.1140580    0.0098516
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0072592   -0.0583861    0.0438676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0195647   -0.0359049   -0.0032245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0119748   -0.0555336    0.0794831
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0234573   -0.0507771    0.0976917
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0882303   -0.1910203    0.0145596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0052632   -0.0983184    0.0877921
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0034090   -0.0175712    0.0243893
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0026681   -0.0673364    0.0726726


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0526361   -0.2131412    0.0866334
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0216480   -0.1454487    0.0887722
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0187743   -0.1041148    0.0599699
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1398224   -0.2469534   -0.0418955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0397534   -0.1743030    0.0793797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0561745   -0.0902306   -0.0231822
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0617104   -0.4219479    0.2072643
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.3165633   -0.5571334   -0.1131601
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0423123   -0.1195161    0.0295675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0451965   -0.0786240   -0.0128049
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1022222   -0.2781245    0.0494714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0336098   -0.1236335    0.0492014
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0547848   -0.1484138    0.0312107
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0531635   -0.1514647    0.0367457
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0544811   -0.2141523    0.0841920
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0237391    0.0003092    0.0466198
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1430854   -0.3266735    0.0150974
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0098537   -0.0816967    0.0572178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0289797   -0.0534936   -0.0050362
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0419560   -0.2261861    0.2514609
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0425018   -0.1020073    0.1680610
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1700293   -0.3869961    0.0129976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0106383   -0.2173269    0.1609569
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0461271   -0.2846352    0.2917261
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0053079   -0.1441731    0.1352598
