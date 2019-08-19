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

agecat        studyid                    country                        parity    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      136    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       91    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      110    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       62    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      258    814
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      157    814
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       30    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       47    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        3    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      133    223
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        8    223
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       52    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       76    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       40    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       63    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       36    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       40    307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      158    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       83    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      155    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       90    702
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      126    702
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0       44   1164
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       79   1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0       43   1164
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       66   1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      429   1164
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      503   1164
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       68    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       80    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       61    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       71    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      139    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      142    561
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      680   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      921   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      490   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      533   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      460   3575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      491   3575
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1647   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1305   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     1355   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      987   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     1367   7565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   7565
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0       43    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       56    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0       40    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       39    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0       83    341
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1       80    341
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       12     71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       13     71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        0     71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       46     71
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        0     71
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       15    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       64    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0       11    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       48    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       33    184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       93    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       32    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       77    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       35    336
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       67    336
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0       11    316
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       28    316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0       11    316
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       19    316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0       85    316
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      162    316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       18    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       30    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0       20    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       25    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0       37    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       50    180
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      336   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      899   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      152   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      509   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      158   2517
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      463   2517
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      572   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1305   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0      455   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1      987   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      510   4733
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      904   4733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0       93    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       35    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0       70    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       23    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      175    473
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1       77    473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       18    152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        2    152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       34    152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1        3    152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0       87    152
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1        8    152
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       37    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0       29    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0       23    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1        7    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       58    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       65    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0       51    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1       78    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0       55    366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1       59    366
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0       33    848
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       51    848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0       32    848
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       47    848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      344    848
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      341    848
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       50    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       50    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       41    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       46    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      102    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1       92    381
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      344   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       22   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0      338   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1       24   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0      302   1058
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1       28   1058
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1075   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0      900   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0      857   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1        0   2832


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
![](/tmp/ddd22f5b-17e8-4e7f-94ca-df8a9882d9bd/a4395521-58b4-427e-87a0-0651e00f7a6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ddd22f5b-17e8-4e7f-94ca-df8a9882d9bd/a4395521-58b4-427e-87a0-0651e00f7a6e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ddd22f5b-17e8-4e7f-94ca-df8a9882d9bd/a4395521-58b4-427e-87a0-0651e00f7a6e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ddd22f5b-17e8-4e7f-94ca-df8a9882d9bd/a4395521-58b4-427e-87a0-0651e00f7a6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3389645   0.2623743   0.4155547
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3267343   0.2341105   0.4193580
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3917084   0.3381019   0.4453150
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5914283   0.4852115   0.6976451
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.6182930   0.4863670   0.7502189
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4871049   0.3096542   0.6645556
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6217803   0.5507988   0.6927618
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6656629   0.5981940   0.7331319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.6252437   0.5552096   0.6952777
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7780925   0.6809941   0.8751909
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6562782   0.5145605   0.7979960
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5407155   0.4887143   0.5927167
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5463405   0.3714739   0.7212071
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4753127   0.2342269   0.7163985
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5502552   0.4653299   0.6351805
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6038550   0.5691927   0.6385173
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5153324   0.4658677   0.5647971
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4511995   0.4024006   0.4999985
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5442946   0.3258192   0.7627700
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6379494   0.4612015   0.8146972
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4436918   0.3746645   0.5127191
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3227781   0.2514636   0.3940926
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2519557   0.1916183   0.3122931
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2064589   0.1780452   0.2348725
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6730869   0.6213994   0.7247745
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6581379   0.5897001   0.7265757
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.5754738   0.5388683   0.6120794
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4536125   0.4178267   0.4893984
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4183127   0.3874835   0.4491420
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3478554   0.3162063   0.3795045
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5058452   0.3913108   0.6203796
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4828003   0.3211728   0.6444278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5456693   0.4553350   0.6360035
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8138472   0.7251877   0.9025067
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8167588   0.7222744   0.9112433
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7446457   0.6125966   0.8766949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7633675   0.6873158   0.8394191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7236979   0.6286822   0.8187135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.7026863   0.6100623   0.7953103
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.7462452   0.5972884   0.8952021
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.6221198   0.4401101   0.8041295
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.6604095   0.6021794   0.7186396
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7833493   0.6675248   0.8991739
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6112238   0.4353215   0.7871261
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5022927   0.3709530   0.6336323
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7688298   0.7415334   0.7961262
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7637372   0.7147113   0.8127632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6969268   0.6405322   0.7533214
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7666667   0.6142490   0.9190843
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8529412   0.7330548   0.9728275
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7200000   0.6482985   0.7917015
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.4183166   0.3382744   0.4983588
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.3838199   0.3057044   0.4619355
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.3353414   0.2954957   0.3751871
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.8026141   0.7493795   0.8558487
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7749096   0.6891989   0.8606203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7106668   0.6584990   0.7628346
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6576570   0.6163699   0.6989441
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.6936635   0.6544113   0.7329158
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5991389   0.5572362   0.6410415
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1913514   0.1066157   0.2760870
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2249437   0.1014579   0.3484294
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3033824   0.2359086   0.3708563
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2448980   0.1297835   0.3600124
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3409091   0.1975459   0.4842723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2333333   0.0577808   0.4088859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5256608   0.4249717   0.6263499
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6044241   0.5105955   0.6982528
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5469891   0.4437032   0.6502751
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7087947   0.5747896   0.8427998
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6455669   0.5135173   0.7776164
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4879614   0.4318747   0.5440481
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4615040   0.2748179   0.6481900
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4246105   0.1888378   0.6603832
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4961118   0.3927375   0.5994862
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0543813   0.0227404   0.0860222
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0547153   0.0311035   0.0783271
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0978733   0.0625332   0.1332133
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4894970   0.4061151   0.5728789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5311049   0.4168910   0.6453188
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4799476   0.4301525   0.5297427


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6253561   0.5873792   0.6633330
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5567010   0.5253304   0.5880717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5440559   0.5275873   0.5605246
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4421053   0.3904403   0.4937702
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2306792   0.2105836   0.2507747
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4224719   0.4113451   0.4335987
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7053571   0.6558827   0.7548316
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6613924   0.6093076   0.7134773
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433453   0.7262923   0.7603982
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7476636   0.6894668   0.8058603
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3641405   0.3354558   0.3928252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752588   0.6619177   0.6885999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5519126   0.4992021   0.6046230
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5176887   0.4814695   0.5539079
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699433   0.0547084   0.0851781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9639188   0.6709015   1.3849119
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1556031   0.8875217   1.5046602
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0454233   0.7902357   1.3830177
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8236077   0.5480913   1.2376216
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0705758   0.9191179   1.2469919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0055701   0.8566320   1.1804034
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8434450   0.6573738   1.0821842
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.6949245   0.5936093   0.8135318
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8699936   0.4777139   1.5843976
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0071653   0.7059156   1.4369735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8534041   0.7633122   0.9541293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7471984   0.6613891   0.8441408
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1720664   0.7196185   1.9089830
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8151685   0.5293251   1.2553714
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.7805850   0.5634544   1.0813881
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 0.6396310   0.4930555   0.8297804
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9777903   0.8593812   1.1125144
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8549770   0.7739134   0.9445316
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9221807   0.8278201   1.0272972
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7668558   0.6798743   0.8649656
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9544428   0.6375382   1.4288730
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0787278   0.8154339   1.4270364
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0035776   0.8555722   1.1771865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9149699   0.7420110   1.1282446
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9480334   0.8030288   1.1192217
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9205086   0.7793636   1.0872153
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8336667   0.5848780   1.1882823
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8849765   0.7109268   1.1016373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7802698   0.5643437   1.0788124
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6412116   0.4758765   0.8639895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9933763   0.9239941   1.0679683
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9064774   0.8305387   0.9893594
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1125320   0.8721133   1.4192277
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9391304   0.7518984   1.1729855
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9175345   0.6939169   1.2132138
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.8016449   0.6400645   1.0040153
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9654822   0.8489708   1.0979834
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8854402   0.8020091   0.9775504
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0547497   0.9693279   1.1476993
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9110203   0.8292665   1.0008339
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1755529   0.5809347   2.3787951
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5854729   0.9651826   2.6044029
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3920455   0.7407231   2.6160794
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9527778   0.3924523   2.3131106
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1498368   0.8987932   1.4709999
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0405744   0.7956219   1.3609417
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9107953   0.6893881   1.2033107
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.6884383   0.5518710   0.8588008
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9200582   0.4628810   1.8287788
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0749894   0.6818693   1.6947559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0061418   0.4878964   2.0748694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.7997599   0.9074095   3.5696515
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0850013   0.8247039   1.4274550
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9804914   0.8032603   1.1968266


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0418709   -0.0285728    0.1123145
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0083664   -0.1003168    0.0835839
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0035758   -0.0565974    0.0637491
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2213914   -0.3190702   -0.1237127
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0240589   -0.1935471    0.1454293
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0597991   -0.0907232   -0.0288749
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1021893   -0.3140082    0.1096295
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0920989   -0.1593581   -0.0248398
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0662190   -0.1146336   -0.0178043
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0311406   -0.0651383    0.0028571
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0073513   -0.0965061    0.1112088
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0258037   -0.0943223    0.0427148
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0580103   -0.1240642    0.0080435
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0848528   -0.2266953    0.0569896
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2000160   -0.3124957   -0.0875363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0254845   -0.0478185   -0.0031505
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190031   -0.1607938    0.1227875
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0541762   -0.1292081    0.0208558
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0659120   -0.1141721   -0.0176518
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0176018   -0.0214446    0.0566482
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0940609    0.0145286    0.1735931
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0315248   -0.0648316    0.1278812
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0262518   -0.0582301    0.1107336
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1911060   -0.3246747   -0.0575373
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0319344   -0.1462739    0.2101426
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0155620   -0.0138468    0.0449708
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0131711   -0.0667617    0.0931039


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1099448   -0.0951684    0.2766425
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0143491   -0.1850409    0.1317565
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0057181   -0.0953128    0.0974300
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3976846   -0.5907235   -0.2280716
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0460649   -0.4266424    0.2329880
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1099135   -0.1684259   -0.0543313
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2311425   -0.8176192    0.1661005
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.3992512   -0.7234730   -0.1360224
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1091159   -0.1925057   -0.0315574
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0737105   -0.1572987    0.0038404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0143245   -0.2102408    0.1972208
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0327441   -0.1235765    0.0507453
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0822425   -0.1812353    0.0084543
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1282943   -0.3653107    0.0675764
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3428846   -0.5685668   -0.1496730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0342835   -0.0648274   -0.0046159
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0254167   -0.2337815    0.1477589
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1487782   -0.3750138    0.0402342
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0894689   -0.1577594   -0.0252066
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0260668   -0.0335121    0.0822111
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3295614   -0.0124552    0.5560417
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1140456   -0.3070302    0.3994667
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0475651   -0.1187052    0.1891231
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3691524   -0.6584488   -0.1303202
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0647180   -0.3762473    0.3643930
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2224945   -0.3311485    0.5458698
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0262023   -0.1463230    0.1727620
