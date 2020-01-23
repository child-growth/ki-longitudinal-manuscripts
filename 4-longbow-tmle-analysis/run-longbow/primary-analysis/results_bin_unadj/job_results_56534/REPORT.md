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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        parity    pers_wast   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ----------  -------  ------  -----------------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366  pers_wast        
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        1     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        1     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       62     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        7     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      247     375  pers_wast        
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       57     375  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      238     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     641  pers_wast        
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     641  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132  pers_wast        
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         1                 0      218    1853  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         1                 1       11    1853  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1853  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         2                 1       10    1853  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1342    1853  pers_wast        
0-24 months   ki1101329-Keneba           GAMBIA                         3+                1       82    1853  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      150     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      237     597  pers_wast        
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       36     597  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3741    9526  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       63    9526  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2873    9526  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9526  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2744    9526  pers_wast        
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       54    9526  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      142    1053  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    1053  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      144    1053  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        3    1053  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      731    1053  pers_wast        
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       29    1053  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          1                 0      550    3595  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          1                 1       46    3595  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          2                 0      825    3595  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       73    3595  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853    3595  pers_wast        
0-24 months   ki1135781-COHORTS          INDIA                          3+                1      248    3595  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583    2811  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24    2811  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608    2811  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19    2811  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476    2811  pers_wast        
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101    2811  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5444   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5185   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      256   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15803  pers_wast        
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      277   15803  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      235     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      224     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     638  pers_wast        
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        6     638  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681    2030  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14    2030  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652    2030  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17    2030  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646    2030  pers_wast        
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20    2030  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         1                 0      203    1633  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         1                 1        5    1633  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         2                 0      177    1633  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         2                 1        2    1633  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         3+                0     1203    1633  pers_wast        
0-6 months    ki1101329-Keneba           GAMBIA                         3+                1       43    1633  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      139     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       15     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      131     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       17     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      235     567  pers_wast        
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       30     567  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      248     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        6     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      199     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 1        5     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                0      171     632  pers_wast        
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                1        3     632  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      158     853  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        9     853  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 0      174     853  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 1       13     853  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                0      469     853  pers_wast        
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                1       30     853  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0       22      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       15      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0       11      50  pers_wast        
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1        1      50  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366  pers_wast        
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        1     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        1     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       62     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        7     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      247     375  pers_wast        
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       57     375  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      238     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     641  pers_wast        
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     641  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132  pers_wast        
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         1                 0      218    1853  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         1                 1       11    1853  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1853  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         2                 1       10    1853  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1342    1853  pers_wast        
6-24 months   ki1101329-Keneba           GAMBIA                         3+                1       82    1853  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      150     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      237     597  pers_wast        
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       36     597  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3741    9526  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       63    9526  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2873    9526  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9526  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2744    9526  pers_wast        
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       54    9526  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      142    1053  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    1053  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      144    1053  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        3    1053  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      731    1053  pers_wast        
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       29    1053  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          1                 0      550    3595  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          1                 1       46    3595  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          2                 0      825    3595  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          2                 1       73    3595  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853    3595  pers_wast        
6-24 months   ki1135781-COHORTS          INDIA                          3+                1      248    3595  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583    2811  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24    2811  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608    2811  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19    2811  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476    2811  pers_wast        
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101    2811  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5444   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5185   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      256   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15803  pers_wast        
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      277   15803  pers_wast        


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/c328374b-bf0a-4e00-b6d8-c8e026f91708/a657d216-59c6-475e-be81-1a1c47cb0bcd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c328374b-bf0a-4e00-b6d8-c8e026f91708/a657d216-59c6-475e-be81-1a1c47cb0bcd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c328374b-bf0a-4e00-b6d8-c8e026f91708/a657d216-59c6-475e-be81-1a1c47cb0bcd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c328374b-bf0a-4e00-b6d8-c8e026f91708/a657d216-59c6-475e-be81-1a1c47cb0bcd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0735294   0.0491492   0.0979096
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0849057   0.0680168   0.1017946
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0890625   0.0480466   0.1300784
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0247253   0.0134424   0.0360081
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284495   0.0161569   0.0407421
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271041   0.0150803   0.0391279
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0480349   0.0203313   0.0757386
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0500000   0.0197868   0.0802132
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0575843   0.0454815   0.0696870
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1124260   0.0647605   0.1600916
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1612903   0.1033399   0.2192407
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1318681   0.0916989   0.1720374
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0165615   0.0125057   0.0206173
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0174419   0.0126966   0.0221871
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0192995   0.0142016   0.0243974
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0771812   0.0557523   0.0986101
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0812918   0.0634153   0.0991683
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1180390   0.1042405   0.1318376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0395387   0.0240333   0.0550441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303030   0.0168830   0.0437230
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640457   0.0519597   0.0761316
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0628335   0.0557465   0.0699206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0470502   0.0408931   0.0532072
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0608390   0.0538487   0.0678293
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0201439   0.0096963   0.0305915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0254111   0.0134832   0.0373390
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0300300   0.0170650   0.0429951
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0974026   0.0505317   0.1442735
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1148649   0.0634488   0.1662809
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1132075   0.0750257   0.1513894
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0538922   0.0196251   0.0881594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0695187   0.0330444   0.1059930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0601202   0.0392514   0.0809891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0735294   0.0491492   0.0979096
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0849057   0.0680168   0.1017946
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0890625   0.0480466   0.1300784
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0247253   0.0134424   0.0360081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284495   0.0161569   0.0407421
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271041   0.0150803   0.0391279
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0480349   0.0203313   0.0757386
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0500000   0.0197868   0.0802132
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0575843   0.0454815   0.0696870
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1124260   0.0647605   0.1600916
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1612903   0.1033399   0.2192407
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1318681   0.0916989   0.1720374
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0165615   0.0125057   0.0206173
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0174419   0.0126966   0.0221871
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0192995   0.0142016   0.0243974
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0771812   0.0557523   0.0986101
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0812918   0.0634153   0.0991683
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1180390   0.1042405   0.1318376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0395387   0.0240333   0.0550441
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303030   0.0168830   0.0437230
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640457   0.0519597   0.0761316
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0628335   0.0557465   0.0699206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0470502   0.0408931   0.0532072
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0608390   0.0538487   0.0678293


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0555855   0.0451506   0.0660205
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176359   0.0149926   0.0202793
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0568247   0.0527145   0.0609348


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1547170   0.7565289   1.7624855
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2112500   0.6974280   2.1036243
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1506243   0.6137724   2.1570475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0962118   0.5800975   2.0715142
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0409091   0.4514782   2.3998758
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1987998   0.6488715   2.2148005
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4346350   0.8229774   2.5008919
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1729323   0.6958991   1.9769679
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0531561   0.7303341   1.5186719
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1653222   0.8128546   1.6706257
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0532584   0.7391217   1.5009075
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5293752   1.1315744   2.0670215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7664141   0.4241932   1.3847242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6198214   1.0482449   2.5030614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7488068   0.6365146   0.8809091
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9682570   0.8255424   1.1356431
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2614777   0.6267314   2.5390878
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4907765   0.7591695   2.9274287
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1792792   0.6112141   2.2753067
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1622641   0.6458006   2.0917571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2899584   0.5656642   2.9416615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1155645   0.5406060   2.3020166
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1547170   0.7565289   1.7624855
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2112500   0.6974280   2.1036243
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1506243   0.6137724   2.1570475
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0962118   0.5800975   2.0715142
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0409091   0.4514782   2.3998758
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1987998   0.6488715   2.2148005
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4346350   0.8229774   2.5008919
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1729323   0.6958991   1.9769679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0531561   0.7303341   1.5186719
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1653222   0.8128546   1.6706257
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0532584   0.7391217   1.5009075
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5293752   1.1315744   2.0670215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7664141   0.4241932   1.3847242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6198214   1.0482449   2.5030614
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7488068   0.6365146   0.8809091
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9682570   0.8255424   1.1356431


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0099259   -0.0179202    0.0377721
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020102   -0.0073317    0.0113521
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0075506   -0.0186540    0.0337552
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0215773   -0.0200597    0.0632143
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0010744   -0.0021348    0.0042837
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0249050    0.0047825    0.0450276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0116886   -0.0025603    0.0259375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0060089   -0.0111231   -0.0008946
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0049793   -0.0040086    0.0139672
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0119448   -0.0288535    0.0527432
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070691   -0.0241168    0.0382550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0099259   -0.0179202    0.0377721
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020102   -0.0073317    0.0113521
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0075506   -0.0186540    0.0337552
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0215773   -0.0200597    0.0632143
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0010744   -0.0021348    0.0042837
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0249050    0.0047825    0.0450276
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0116886   -0.0025603    0.0259375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0060089   -0.0111231   -0.0008946


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1189370   -0.2617197    0.3847509
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0751880   -0.3486669    0.3658350
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1358375   -0.4900656    0.4988296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1610207   -0.2131793    0.4198003
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0609227   -0.1396065    0.2261661
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2439606    0.0202944    0.4165640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2281713   -0.1035805    0.4601939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1057442   -0.1984395   -0.0202186
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1981944   -0.2466347    0.4842978
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1092375   -0.3531155    0.4136067
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1159604   -0.5753898    0.5039158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1189370   -0.2617197    0.3847509
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0751880   -0.3486669    0.3658350
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1358375   -0.4900656    0.4988296
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1610207   -0.2131793    0.4198003
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0609227   -0.1396065    0.2261661
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2439606    0.0202944    0.4165640
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2281713   -0.1035805    0.4601939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1057442   -0.1984395   -0.0202186
