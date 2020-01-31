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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        parity    ever_wasted   n_cell       n  outcome_variable 
------------  -------------------------  -----------------------------  -------  ------------  -------  ------  -----------------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      273    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      175    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      219    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1      135    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      393    1513  ever_wasted      
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      318    1513  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       12     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        9     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       51     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       26     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      158     418  ever_wasted      
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      162     418  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      163     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      108     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      170     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       74     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      121     700  ever_wasted      
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       64     700  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      624    2357  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      197    2357  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      583    2357  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      188    2357  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      592    2357  ever_wasted      
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      173    2357  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      131    1990  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1      109    1990  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0      118    1990  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       96    1990  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      771    1990  ever_wasted      
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      765    1990  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       89     686  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      114     686  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       78     686  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      102     686  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      114     686  ever_wasted      
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      189     686  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4509   13945  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1497   13945  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3250   13945  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      928   13945  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2885   13945  ever_wasted      
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      876   13945  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      162    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       46    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      132    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       55    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      705    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      241    1341  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      560    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      250    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      821    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      363    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0     1681    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      949    4624  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      394    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      283    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      424    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      258    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      998    3045  ever_wasted      
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      688    3045  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7422   26956  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2704   26956  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     6779   26956  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     2155   26956  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     5800   26956  ever_wasted      
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     2096   26956  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      349    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0      275    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       77    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0      550    1505  ever_wasted      
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1      158    1505  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       14     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        7     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       65     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       12     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      261     418  ever_wasted      
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       59     418  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      192     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       79     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0      187     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       57     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0      140     700  ever_wasted      
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       45     700  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      700    2357  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      121    2357  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      663    2357  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      108    2357  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      665    2357  ever_wasted      
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      100    2357  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      155    1851  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       79    1851  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0      153    1851  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       52    1851  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0      992    1851  ever_wasted      
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      420    1851  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      124     686  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       79     686  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      111     686  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       69     686  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0      193     686  ever_wasted      
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1      110     686  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4732   13852  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1229   13852  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3496   13852  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      659   13852  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     3115   13852  ever_wasted      
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      621   13852  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0      122    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       30    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0      115    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       34    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0      613    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      149    1063  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      562    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      197    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      878    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      259    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0     1922    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      626    4444  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0      477    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      199    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0      527    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      155    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0     1323    3044  ever_wasted      
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      363    3044  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8185   26859  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1878   26859  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     7474   26859  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1440   26859  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     6468   26859  ever_wasted      
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1414   26859  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      303    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      114    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      237    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       84    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      424    1389  ever_wasted      
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      227    1389  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        3     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        4     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       59     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       18     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      197     402  ever_wasted      
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      121     402  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      189     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       38     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      189     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       35     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      138     615  ever_wasted      
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       26     615  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      567    1987  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      106    1987  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      541    1987  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      111    1987  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      561    1987  ever_wasted      
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      101    1987  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      169    1924  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       58    1924  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0      140    1924  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       58    1924  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      973    1924  ever_wasted      
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      526    1924  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       90     590  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       77     590  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       90     590  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       62     590  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      131     590  ever_wasted      
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      140     590  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4104   10814  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      366   10814  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     2934   10814  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      354   10814  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2739   10814  ever_wasted      
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      317   10814  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      163    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       19    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      147    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       24    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      749    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      111    1213  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      680    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          1                   1       73    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      972    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      133    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0     2071    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1      410    4339  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      469    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      139    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      468    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      157    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0     1123    2809  ever_wasted      
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      453    2809  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5546   17298  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1080   17298  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     4943   17298  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      900   17298  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     3972   17298  ever_wasted      
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      857   17298  ever_wasted      


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

* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

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
![](/tmp/ee5b5726-058a-4958-bc3a-304fef7917be/205e181f-3190-457c-91ba-8f604e9831a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ee5b5726-058a-4958-bc3a-304fef7917be/205e181f-3190-457c-91ba-8f604e9831a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ee5b5726-058a-4958-bc3a-304fef7917be/205e181f-3190-457c-91ba-8f604e9831a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ee5b5726-058a-4958-bc3a-304fef7917be/205e181f-3190-457c-91ba-8f604e9831a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3906250   0.3307995   0.4504505
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3813559   0.3153859   0.4473260
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4472574   0.3772779   0.5172369
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4285714   0.2166616   0.6404813
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3376623   0.2319066   0.4434181
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5062500   0.4514060   0.5610940
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3985240   0.3401915   0.4568564
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3032787   0.2455603   0.3609971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3459459   0.2773523   0.4145395
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2399513   0.2107333   0.2691693
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2438392   0.2135232   0.2741552
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2261438   0.1964933   0.2557943
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4541667   0.3911596   0.5171737
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4485981   0.3819461   0.5152501
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4980469   0.4730360   0.5230577
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5615764   0.4932689   0.6298838
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5666667   0.4942225   0.6391108
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6237624   0.5691760   0.6783488
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2492507   0.2383103   0.2601912
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2221158   0.2095113   0.2347204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2329168   0.2194075   0.2464261
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2211538   0.1647315   0.2775762
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2941176   0.2287871   0.3594481
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2547569   0.2269804   0.2825333
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3086420   0.2768270   0.3404569
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3065878   0.2803219   0.3328537
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3608365   0.3424805   0.3791925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4180207   0.3808605   0.4551809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3782991   0.3418962   0.4147020
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4080664   0.3846029   0.4315299
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2670354   0.2571535   0.2769172
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2412133   0.2307025   0.2517242
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2654509   0.2549710   0.2759307
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2157303   0.1605465   0.2709142
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2187500   0.1744136   0.2630864
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2231638   0.1803002   0.2660275
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3333333   0.1314724   0.5351943
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1558442   0.0747332   0.2369551
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1843750   0.1418358   0.2269142
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2915129   0.2373666   0.3456592
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2336066   0.1804775   0.2867356
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2432432   0.1813745   0.3051120
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1473812   0.1231281   0.1716343
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1400778   0.1155744   0.1645813
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1307190   0.1068266   0.1546113
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3376068   0.2770001   0.3982136
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2536585   0.1940811   0.3132360
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2974504   0.2736001   0.3213007
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3891626   0.3220436   0.4562815
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3833333   0.3122542   0.4544125
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3630363   0.3088517   0.4172209
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2061735   0.1959032   0.2164438
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1586041   0.1474961   0.1697121
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1662206   0.1542826   0.1781585
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1973684   0.1340649   0.2606719
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2281879   0.1607722   0.2956037
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1955381   0.1673644   0.2237117
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2595520   0.2283606   0.2907435
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2277924   0.2034113   0.2521735
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2456829   0.2289658   0.2624000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2943787   0.2600162   0.3287412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2272727   0.1958160   0.2587295
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2153025   0.1956794   0.2349255
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1866243   0.1778745   0.1953740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1615436   0.1526925   0.1703948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1793961   0.1701115   0.1886807
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2733813   0.2385106   0.3082520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2616822   0.2078013   0.3155632
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3486943   0.2924880   0.4049006
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1674009   0.1187954   0.2160064
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1562500   0.1086623   0.2038377
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1585366   0.1025915   0.2144817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1575037   0.1299754   0.1850320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1702454   0.1413887   0.1991021
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1525680   0.1251704   0.1799656
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2555066   0.1987548   0.3122584
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2929293   0.2295217   0.3563369
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3509006   0.3267344   0.3750668
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4610778   0.3854105   0.5367452
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4078947   0.3297017   0.4860878
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5166052   0.4570579   0.5761525
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0818792   0.0738411   0.0899173
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1076642   0.0970692   0.1182593
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1037304   0.0929194   0.1145413
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1043956   0.0599539   0.1488373
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1403509   0.0882677   0.1924340
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1290698   0.1066525   0.1514870
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0969456   0.0758096   0.1180815
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1203620   0.1011747   0.1395493
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1652559   0.1506396   0.1798723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2286184   0.1952325   0.2620044
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2512000   0.2171922   0.2852078
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2874365   0.2650890   0.3097841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1629943   0.1534625   0.1725260
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1540305   0.1442281   0.1638328
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1774695   0.1663516   0.1885874


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367416   0.2195770   0.2539062
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4874372   0.4654705   0.5094038
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2367157   0.2296604   0.2437709
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3378028   0.3241691   0.3514364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580131   0.2515484   0.2644777
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395842   0.1255905   0.1535779
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2976769   0.2768415   0.3185124
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1811291   0.1747154   0.1875428
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2434743   0.2308547   0.2560940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1761793   0.1705546   0.1818041
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600403   0.1439152   0.1761654
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3336798   0.3126050   0.3547547
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958942   0.0903444   0.1014441
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1419682   0.1315821   0.1523542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9762712   0.8276984   1.1515129
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1449789   0.9904415   1.3236285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.7878788   0.4387984   1.4146657
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1812500   0.7120467   1.9596350
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7610049   0.5985725   0.9675159
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8680681   0.6784546   1.1106744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0162028   0.8538912   1.2093674
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9424571   0.7880450   1.1271253
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9877390   0.8060459   1.2103881
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.0966170   0.9461914   1.2709572
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0090643   0.8458285   1.2038029
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1107348   0.9561669   1.2902891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8911341   0.8294417   0.9574151
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9344677   0.8689102   1.0049714
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3299233   0.9482357   1.8652492
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.1519441   0.8728447   1.5202878
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9933446   0.8687394   1.1358222
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1691103   1.0421578   1.3115277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9049770   0.7938583   1.0316494
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9761872   0.8781205   1.0852058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9033011   0.8566415   0.9525022
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9940664   0.9437748   1.0470378
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0139974   0.8466091   1.2144810
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0344574   0.9233352   1.1589530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.4675325   0.2103901   1.0389588
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.5531250   0.2893215   1.0574646
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8013592   0.5974492   1.0748639
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8344167   0.6089782   1.1433105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9504454   0.7475227   1.2084534
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8869443   0.6935619   1.1342466
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7513430   0.5590510   1.0097761
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8810557   0.7237956   1.0724839
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9850211   0.7646575   1.2688904
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9328654   0.7426138   1.1718581
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7692750   0.7059215   0.8383143
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8062170   0.7387420   0.8798551
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1561521   0.7475360   1.7881250
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9907262   0.6970269   1.4081785
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.8776368   0.7471794   1.0308722
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9465650   0.8244687   1.0867427
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7720420   0.6441802   0.9252829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7313793   0.6307036   0.8481253
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8656090   0.8086661   0.9265615
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9612688   0.8984161   1.0285187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9572061   0.8248034   1.1108629
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2754871   1.1167135   1.4568351
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9333882   0.6127965   1.4217012
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9470475   0.5996625   1.4956729
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0808977   0.8473183   1.3788676
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9686627   0.7539505   1.2445214
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1464646   0.8407489   1.5633457
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.3733523   1.0883994   1.7329086
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8846548   0.6873527   1.1385918
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1204294   0.9168300   1.3692418
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3149156   1.1442746   1.5110036
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2668709   1.0978719   1.4618843
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3444137   0.7643079   2.3648168
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2363525   0.7806671   1.9580274
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2415421   0.9476894   1.6265107
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7046263   1.3472554   2.1567929
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0987741   0.9003806   1.3408824
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2572764   1.0655674   1.4834763
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9450054   0.8700500   1.0264184
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0888080   1.0019879   1.1831509


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0244444   -0.0150202    0.0639090
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0427204   -0.1638931    0.2493340
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0470954   -0.0920469   -0.0021439
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0032097   -0.0267382    0.0203189
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0332705   -0.0258468    0.0923879
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0288027   -0.0282993    0.0859046
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0125351   -0.0206817   -0.0043884
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0338797   -0.0184708    0.0862302
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0291608    0.0001186    0.0582030
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0144082   -0.0471286    0.0183122
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0090223   -0.0162098   -0.0018348
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0042032   -0.0153692    0.0237756
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1467305   -0.3417992    0.0483382
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0329415   -0.0743581    0.0084751
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0077970   -0.0271428    0.0115488
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0399299   -0.0963088    0.0164490
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0130693   -0.0692355    0.0430970
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250444   -0.0325165   -0.0175723
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0030079   -0.0556511    0.0616668
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0160777   -0.0443590    0.0122036
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0588334   -0.0885596   -0.0291072
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0104450   -0.0169430   -0.0039469
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0325942    0.0089271    0.0562613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0064253   -0.0446808    0.0318303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0025365   -0.0199242    0.0249973
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0781732    0.0242759    0.1320706
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0118035   -0.0523058    0.0759129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0140150    0.0075345    0.0204956
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0225624   -0.0190753    0.0642000
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0450226    0.0250340    0.0650113
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0380245    0.0080308    0.0680182
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010131   -0.0060310    0.0080573


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0588923   -0.0390883    0.1476339
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0906454   -0.4727690    0.4385231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1340113   -0.2695973   -0.0129052
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0135576   -0.1179764    0.0811085
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0682560   -0.0613077    0.1820026
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0487867   -0.0531148    0.1408281
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0529542   -0.0879251   -0.0191074
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1328441   -0.0985709    0.3155114
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0863249   -0.0038186    0.1683735
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0356981   -0.1200305    0.0422845
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0349684   -0.0631774   -0.0075078
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0191113   -0.0757596    0.1056156
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.7863248   -2.2032501    0.0038379
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1273980   -0.2993131    0.0217706
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0558589   -0.2038776    0.0739606
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1341384   -0.3402566    0.0402809
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0347501   -0.1954168    0.1043227
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1382681   -0.1801278   -0.0978933
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0150111   -0.3258814    0.2682580
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0660345   -0.1887387    0.0440040
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2497751   -0.3823109   -0.1299469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0592860   -0.0967969   -0.0230579
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1065256    0.0335461    0.1739942
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0399146   -0.3068267    0.1724822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158494   -0.1349883    0.1466411
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2342761    0.0546472    0.3797733
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0249608   -0.1205028    0.1515404
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1461508    0.0762949    0.2107238
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1777151   -0.2240976    0.4476320
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3171319    0.1625951    0.4431501
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1426046    0.0225519    0.2479121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0061774   -0.0377257    0.0482231
