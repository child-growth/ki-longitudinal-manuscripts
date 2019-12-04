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

agecat        studyid                    country                        parity    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      273    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      175    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      219    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1      135    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      393    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      318    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       12     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        9     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       51     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      158     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      162     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      163     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1      108     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      170     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       74     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      121     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       64     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      624    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      197    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      583    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      188    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      592    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      173    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      131    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1      109    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0      118    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       96    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      771    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      765    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       89     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      114     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       78     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1      102     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      114     686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      189     686
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4509   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1497   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3250   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      928   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2885   13945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      876   13945
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      162    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       46    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      132    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       55    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      705    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      241    1341
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      560    4624
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      250    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                   0      821    4624
0-24 months   ki1135781-COHORTS          INDIA                          2                   1      363    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                  0     1681    4624
0-24 months   ki1135781-COHORTS          INDIA                          3+                  1      949    4624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      394    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      283    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      424    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      258    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0      998    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      688    3045
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7422   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2704   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     6779   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     2155   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     5800   26956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     2096   26956
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      349    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0      275    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       77    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0      550    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1      158    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       14     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        7     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       65     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       12     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      261     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       59     418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      192     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       79     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   0      187     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                   1       57     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  0      140     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                  1       45     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      700    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      121    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      663    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      108    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      665    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      100    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      155    1851
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       79    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0      153    1851
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       52    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0      992    1851
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      420    1851
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      124     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       79     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      111     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       69     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0      193     686
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1      110     686
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4732   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1229   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3496   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      659   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     3115   13852
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      621   13852
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0      122    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1       30    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   0      115    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                   1       34    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  0      613    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                  1      149    1063
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      562    4444
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      197    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                   0      878    4444
0-6 months    ki1135781-COHORTS          INDIA                          2                   1      259    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                  0     1922    4444
0-6 months    ki1135781-COHORTS          INDIA                          3+                  1      626    4444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0      477    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1      199    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   0      527    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                   1      155    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  0     1323    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                  1      363    3044
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8185   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1878   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     7474   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1440   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     6468   26859
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1414   26859
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      303    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      237    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       84    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      424    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      227    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        3     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        4     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       59     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       18     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      197     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      121     402
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      189     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       38     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   0      189     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                   1       35     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  0      138     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                  1       26     615
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      567    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1      106    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   0      541    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                   1      111    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  0      561    1987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                  1      101    1987
6-24 months   ki1101329-Keneba           GAMBIA                         1                   0      169    1924
6-24 months   ki1101329-Keneba           GAMBIA                         1                   1       58    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                   0      140    1924
6-24 months   ki1101329-Keneba           GAMBIA                         2                   1       58    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      973    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      526    1924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       77     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       62     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      131     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      140     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4104   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      366   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     2934   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      354   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2739   10814
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      317   10814
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0      163    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       19    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   0      147    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                   1       24    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  0      749    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                  1      111    1213
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      680    4339
6-24 months   ki1135781-COHORTS          INDIA                          1                   1       73    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                   0      972    4339
6-24 months   ki1135781-COHORTS          INDIA                          2                   1      133    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                  0     2071    4339
6-24 months   ki1135781-COHORTS          INDIA                          3+                  1      410    4339
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0      469    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1      139    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   0      468    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                   1      157    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  0     1123    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                  1      453    2809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5546   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1080   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     4943   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      900   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     3972   17298
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      857   17298


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




# Results Detail

## Results Plots
![](/tmp/2eeadbc0-64a9-4fdc-8395-9d4f66c61b41/cb88ddd9-2cd9-4041-8c33-99592632c19c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2eeadbc0-64a9-4fdc-8395-9d4f66c61b41/cb88ddd9-2cd9-4041-8c33-99592632c19c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2eeadbc0-64a9-4fdc-8395-9d4f66c61b41/cb88ddd9-2cd9-4041-8c33-99592632c19c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2eeadbc0-64a9-4fdc-8395-9d4f66c61b41/cb88ddd9-2cd9-4041-8c33-99592632c19c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3878338   0.3008153   0.4748523
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3882339   0.3041969   0.4722710
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4357586   0.3755557   0.4959616
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4285714   0.2166616   0.6404813
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3376623   0.2319066   0.4434181
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.5062500   0.4514060   0.5610940
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3807698   0.3089972   0.4525423
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2807457   0.2065708   0.3549206
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3121046   0.2254307   0.3987786
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2597867   0.2198353   0.2997380
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2484324   0.2096846   0.2871802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2643440   0.2241024   0.3045856
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4708205   0.3998647   0.5417764
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4866077   0.3878141   0.5854013
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4678902   0.4337265   0.5020540
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4912998   0.3798913   0.6027084
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5895273   0.4542471   0.7248075
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5807649   0.5116953   0.6498345
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2475840   0.2301603   0.2650077
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2236088   0.2040185   0.2431991
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2249415   0.2046310   0.2452520
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3130606   0.2062526   0.4198686
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2633146   0.1584617   0.3681675
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2460475   0.2125590   0.2795361
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3064174   0.2656660   0.3471689
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3234576   0.2887561   0.3581590
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3503698   0.3296700   0.3710696
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3748867   0.3223130   0.4274604
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4015503   0.3383455   0.4647552
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4044755   0.3746492   0.4343019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2854881   0.2679870   0.3029892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2389743   0.2237564   0.2541923
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2365334   0.2215644   0.2515025
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2115198   0.1530774   0.2699622
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2078656   0.1462097   0.2695215
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2109975   0.1761394   0.2458556
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3333333   0.1314724   0.5351943
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1558442   0.0747332   0.2369551
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1843750   0.1418358   0.2269142
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3150354   0.2415303   0.3885404
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2085873   0.1441198   0.2730548
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2106006   0.1340747   0.2871265
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1512215   0.1195550   0.1828880
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1427943   0.1121160   0.1734726
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1335958   0.1034994   0.1636922
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.4568819   0.3822642   0.5314997
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2702295   0.1794696   0.3609894
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2879010   0.2555061   0.3202960
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3676251   0.2426526   0.4925975
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3877583   0.2513875   0.5241292
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.3510551   0.2819030   0.4202072
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2061506   0.1896617   0.2226395
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1619451   0.1440206   0.1798695
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1466660   0.1293659   0.1639661
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2206515   0.1256847   0.3156182
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1955996   0.0945103   0.2966889
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1980776   0.1642613   0.2318939
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2620290   0.2227093   0.3013486
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2388829   0.2063750   0.2713909
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2398620   0.2214620   0.2582619
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2906709   0.2395701   0.3417718
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2487004   0.1937856   0.3036152
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2175908   0.1893698   0.2458117
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2146714   0.1990509   0.2302919
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1554996   0.1430210   0.1679782
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1541567   0.1417445   0.1665689
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2858299   0.2109467   0.3607131
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2819530   0.2107817   0.3531243
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3573662   0.3076078   0.4071246
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1649584   0.1164546   0.2134622
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1580596   0.1096907   0.2064285
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1593915   0.1027900   0.2159930
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1844701   0.1440054   0.2249348
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1686203   0.1309572   0.2062834
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1772527   0.1412704   0.2132351
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1796358   0.1269000   0.2323716
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2906433   0.1975783   0.3837084
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3200667   0.2913120   0.3488213
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4332474   0.2889451   0.5775496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3762454   0.2342596   0.5182311
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4506339   0.3735150   0.5277529
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0788376   0.0667042   0.0909709
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1098649   0.0929958   0.1267339
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1254938   0.1057316   0.1452561
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1009350   0.0561260   0.1457441
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1388875   0.0867944   0.1909806
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1285944   0.1061710   0.1510177
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0896792   0.0622211   0.1171373
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1225033   0.0979454   0.1470613
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1584845   0.1426836   0.1742854
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1756014   0.1349911   0.2162118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2391128   0.1896271   0.2885986
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2968015   0.2663307   0.3272722
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1526667   0.1375913   0.1677420
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1572551   0.1435320   0.1709783
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1539043   0.1391471   0.1686615


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0010318   0.7781003   1.2878347
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1235705   0.8841013   1.4279028
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.7878788   0.4387984   1.4146657
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1812500   0.7120467   1.9596350
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7373109   0.5333410   1.0192866
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8196676   0.5865482   1.1454387
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9562939   0.7685247   1.1899396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0175426   0.8193881   1.2636173
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0335312   0.8026587   1.3308107
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.9937762   0.8405475   1.1749379
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1999338   0.8689124   1.6570612
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1820987   0.9148148   1.5274756
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9031634   0.8072106   1.0105221
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9085462   0.8102920   1.0187145
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8410978   0.4976068   1.4216957
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7859422   0.5441937   1.1350831
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0556108   0.8899403   1.2521224
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1434396   0.9885941   1.3225388
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0711245   0.8675112   1.3225278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.0789274   0.9208208   1.2641813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8370729   0.7704853   0.9094152
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8285228   0.7595685   0.9037370
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9827242   0.7068999   1.3661719
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9975306   0.7923534   1.2558377
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.4675325   0.2103901   1.0389588
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 0.5531250   0.2893215   1.0574646
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.6621076   0.4499009   0.9744068
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6684982   0.4344627   1.0286036
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9442727   0.6996682   1.2743910
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8834444   0.6494819   1.2016871
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.5914646   0.4071620   0.8591921
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.6301432   0.5168660   0.7682463
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0547657   0.6466167   1.7205414
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9549269   0.6444842   1.4149071
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7855667   0.6853081   0.9004928
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7114507   0.6169486   0.8204283
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8864640   0.4525721   1.7363385
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8976946   0.5652102   1.4257626
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9116661   0.7445217   1.1163343
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9154024   0.7733926   1.0834879
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8556080   0.6451788   1.1346700
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7485811   0.6016725   0.9313600
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7243609   0.6542752   0.8019542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7181056   0.6439762   0.8007683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.9864364   0.8440315   1.1528678
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2502757   0.9654609   1.6191120
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9581783   0.6266260   1.4651574
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9662528   0.6093332   1.5322397
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9140796   0.6684025   1.2500575
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9608754   0.7123702   1.2960698
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.6179588   1.0475718   2.4989129
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.7817530   1.3102945   2.4228476
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8684308   0.5250616   1.4363496
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0401308   0.7150811   1.5129360
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3935597   1.1214583   1.7316816
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5918022   1.2773063   1.9837328
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3760089   0.7695488   2.4604034
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2740310   0.7906909   2.0528315
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.3660166   0.9475005   1.9693935
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7672374   1.2808345   2.4383541
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3616794   0.9989786   1.8560665
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6901995   1.3125888   2.1764428
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0300554   0.9057579   1.1714103
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0081067   0.8774044   1.1582789


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0272356   -0.0410007    0.0954719
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0427204   -0.1638931    0.2493340
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0293412   -0.0920682    0.0333858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0230450   -0.0588493    0.0127592
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0166167   -0.0537218    0.0869551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0990792   -0.0063749    0.2045332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0108683   -0.0267416    0.0050049
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0580271   -0.1622560    0.0462019
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0313853   -0.0074932    0.0702638
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0287258   -0.0213798    0.0788314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0274751   -0.0434749   -0.0114752
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0084138   -0.0329454    0.0497729
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1467305   -0.3417992    0.0483382
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0564639   -0.1210485    0.0081206
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0116373   -0.0396874    0.0164129
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1592050   -0.2327365   -0.0856735
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0084682   -0.1106809    0.1276173
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250215   -0.0399914   -0.0100517
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0202752   -0.1128038    0.0722535
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0185546   -0.0558223    0.0187130
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0551256   -0.1035920   -0.0066592
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0384921   -0.0531071   -0.0238771
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0201456   -0.0313853    0.0716766
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0039828   -0.0422213    0.0342557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0244298   -0.0609146    0.0120550
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1540440    0.1006840    0.2074040
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0396340   -0.0988470    0.1781149
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0170566    0.0058097    0.0283036
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0260229   -0.0159636    0.0680094
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0522890    0.0254006    0.0791773
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0910415    0.0517632    0.1303198
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0113407   -0.0023916    0.0250730


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0656170   -0.1139713    0.2162530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0906454   -0.4727690    0.4385231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0834912   -0.2778402    0.0812990
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0973426   -0.2595584    0.0439818
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0340899   -0.1213304    0.1679684
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1678230   -0.0316880    0.3287519
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0459131   -0.1151684    0.0190413
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2275272   -0.7132125    0.1204693
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0929102   -0.0297242    0.2009396
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0711717   -0.0615918    0.1873317
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1064871   -0.1702141   -0.0462305
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0382559   -0.1689111    0.2087066
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.7863248   -2.2032501    0.0038379
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2183688   -0.4960049    0.0077423
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0833711   -0.3041228    0.1000134
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.5348248   -0.8100088   -0.3014783
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0225163   -0.3517042    0.2931335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1381420   -0.2238376   -0.0584471
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1011854   -0.6756122    0.2763186
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0762077   -0.2407626    0.0665232
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.2340340   -0.4581659   -0.0443529
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2184825   -0.3046961   -0.1379659
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0658406   -0.1219177    0.2221766
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0247416   -0.2920099    0.1872390
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1526478   -0.4046236    0.0541259
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.4616522    0.2808254    0.5970125
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0838138   -0.2613828    0.3345421
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1778694    0.0522443    0.2868428
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2049727   -0.2041403    0.4750874
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3683146    0.1498894    0.5306182
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3414360    0.1777807    0.4725172
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0691475   -0.0185293    0.1492770
