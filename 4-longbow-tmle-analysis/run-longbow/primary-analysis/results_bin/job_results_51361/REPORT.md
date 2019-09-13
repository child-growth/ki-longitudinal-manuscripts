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

agecat        studyid                    country                        parity    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      273    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      175    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      219    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1      135    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      393    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      318    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       51     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       26     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       46     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       46     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      112     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1      116     397
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
0-24 months   ki1101329-Keneba           GAMBIA                         1                   0      160    1989
0-24 months   ki1101329-Keneba           GAMBIA                         1                   1       80    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                   0      138    1989
0-24 months   ki1101329-Keneba           GAMBIA                         2                   1       76    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      887    1989
0-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      648    1989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       74     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       97     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       73     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0       99     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      177     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4520   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1483   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3255   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      920   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2891   13938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      869   13938
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     7403   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     2698   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     6779   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1     2156   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     5803   26935
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     2096   26935
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      349    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   0      275    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                   1       77    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  0      550    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                  1      158    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       65     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       12     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       79     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       13     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      182     397
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       46     397
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
0-6 months    ki1101329-Keneba           GAMBIA                         1                   0      193    1822
0-6 months    ki1101329-Keneba           GAMBIA                         1                   1       38    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                   0      174    1822
0-6 months    ki1101329-Keneba           GAMBIA                         2                   1       28    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  0     1161    1822
0-6 months    ki1101329-Keneba           GAMBIA                         3+                  1      228    1822
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      123     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       48     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   0      111     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                   1       44     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  0      190     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                  1       86     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4730   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1     1228   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     3493   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      659   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     3116   13846
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      620   13846
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     8163   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1875   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   0     7473   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                   1     1442   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     6471   26838
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                  1     1414   26838
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      303    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      114    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   0      237    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                   1       84    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  0      424    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                  1      227    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       59     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       18     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   0       56     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                   1       35     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  0      141     395
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                  1       86     395
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
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  0      972    1924
6-24 months   ki1101329-Keneba           GAMBIA                         3+                  1      527    1924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       77     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   0       90     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                   1       62     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  0      131     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                  1      140     590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0     4061   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      351   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   0     2907   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                   1      345   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  0     2720   10693
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                  1      309   10693
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5542   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1075   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   0     4943   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                   1      900   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  0     3972   17289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                  1      857   17289


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



## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/55763072-bce1-40c9-a56d-a2e8e44fc8ce/3c83be65-dc81-409d-b30f-c8fb60466c84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/55763072-bce1-40c9-a56d-a2e8e44fc8ce/3c83be65-dc81-409d-b30f-c8fb60466c84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/55763072-bce1-40c9-a56d-a2e8e44fc8ce/3c83be65-dc81-409d-b30f-c8fb60466c84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/55763072-bce1-40c9-a56d-a2e8e44fc8ce/3c83be65-dc81-409d-b30f-c8fb60466c84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3845938   0.3058615   0.4633260
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3989501   0.3185559   0.4793443
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4330229   0.3735035   0.4925422
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2652738   0.1476724   0.3828751
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4686278   0.3177414   0.6195143
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4990589   0.4252861   0.5728318
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3649918   0.2868570   0.4431267
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2879997   0.2097920   0.3662074
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3680483   0.2752305   0.4608662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2555624   0.2145266   0.2965981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2516955   0.2123010   0.2910900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2397385   0.2006887   0.2787884
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3318727   0.2631571   0.4005882
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4045921   0.3053792   0.5038050
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3785041   0.3503892   0.4066189
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5389002   0.4059513   0.6718490
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5193457   0.3572706   0.6814207
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6366468   0.5594428   0.7138509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2503259   0.2326785   0.2679733
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2216073   0.2020541   0.2411605
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2290929   0.2081106   0.2500751
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3005742   0.2050674   0.3960810
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2680892   0.1549977   0.3811808
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2568640   0.2184536   0.2952744
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3129219   0.2711270   0.3547167
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3231823   0.2880694   0.3582951
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3514391   0.3308587   0.3720195
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3633775   0.3122316   0.4145234
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.3921957   0.3315884   0.4528029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.4012420   0.3716669   0.4308171
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2826420   0.2654029   0.2998811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2401965   0.2248754   0.2555176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2359887   0.2211252   0.2508523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1980384   0.1487875   0.2472894
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2151192   0.1555879   0.2746504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2141681   0.1802283   0.2481080
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1487992   0.0473992   0.2501991
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1927954   0.0166984   0.3688924
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2294027   0.1668843   0.2919211
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2737361   0.2037308   0.3437413
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2150906   0.1443423   0.2858389
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2394309   0.1405908   0.3382710
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1500968   0.1160944   0.1840992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1428899   0.1116433   0.1741366
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1444560   0.1128343   0.1760777
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2351308   0.1711701   0.2990915
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1626368   0.0924250   0.2328487
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1441009   0.1242139   0.1639879
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3003185   0.1659277   0.4347093
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2955064   0.1438306   0.4471823
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2792124   0.2189069   0.3395179
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2077721   0.1911957   0.2243485
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1626740   0.1446195   0.1807286
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1489889   0.1309686   0.1670092
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2038654   0.1133795   0.2943512
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2197285   0.1091463   0.3303107
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1988698   0.1648356   0.2329039
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2603632   0.2209732   0.2997531
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2377196   0.2054219   0.2700173
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2397478   0.2211931   0.2583025
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2759444   0.2299553   0.3219334
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2506423   0.1927397   0.3085450
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2095234   0.1825902   0.2364565
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2161167   0.2004338   0.2317995
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1551140   0.1421385   0.1680894
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1535637   0.1412735   0.1658539
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2599718   0.1772493   0.3426944
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3045325   0.2204283   0.3886367
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3404611   0.2937659   0.3871563
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2299752   0.1318280   0.3281223
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3769615   0.2744246   0.4794984
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3766281   0.3131788   0.4400774
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1177314   0.0642729   0.1711900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1779360   0.1067580   0.2491141
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1715585   0.1007635   0.2423535
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1848471   0.1427741   0.2269201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1719140   0.1336619   0.2101660
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1603012   0.1259816   0.1946207
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2241949   0.1607549   0.2876350
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2727069   0.1830584   0.3623554
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3217977   0.2924429   0.3511526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4036994   0.2858313   0.5215674
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3918671   0.2394513   0.5442830
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4496876   0.3695125   0.5298627
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0792807   0.0662665   0.0922948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1078715   0.0912099   0.1245332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1278832   0.1079265   0.1478399
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1048707   0.0600282   0.1497131
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1388755   0.0865222   0.1912288
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1288715   0.1064636   0.1512794
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0909563   0.0616744   0.1202381
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.1216581   0.0976873   0.1456290
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1577105   0.1419681   0.1734530
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1802021   0.1364368   0.2239673
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2379484   0.1877225   0.2881743
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.3008992   0.2703269   0.3314715
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1516964   0.1369551   0.1664376
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.1576838   0.1440787   0.1712889
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1559268   0.1410923   0.1707613


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4735516   0.4243746   0.5227286
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367416   0.2195770   0.2539062
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4042232   0.3826511   0.4257953
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2347539   0.2277172   0.2417906
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3378028   0.3241691   0.3514364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2580286   0.2515670   0.2644901
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1788413   0.1410973   0.2165853
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395842   0.1255905   0.1535779
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1613611   0.1444653   0.1782570
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810631   0.1746489   0.1874773
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2434743   0.2308547   0.2560940
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1762799   0.1706566   0.1819032
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3518987   0.3047435   0.3990540
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1600403   0.1439152   0.1761654
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3341996   0.3131165   0.3552826
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0939867   0.0884555   0.0995179
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1419682   0.1315821   0.1523542
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638036   0.1576801   0.1699271


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0373286   0.8555510   1.2577282
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1259228   0.9029538   1.4039500
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.7665820   1.0229520   3.0507900
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.8812978   1.1789422   3.0020821
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7890580   0.5585475   1.1146992
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0083742   0.7245764   1.4033283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9848692   0.7872116   1.2321558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9380824   0.7462298   1.1792594
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.2191185   0.8842857   1.6807348
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1405099   0.9155400   1.4207603
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9637140   0.6474752   1.4344097
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1813818   0.8975799   1.5549178
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8852752   0.7907405   0.9911118
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9151784   0.8152891   1.0273062
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8919236   0.5257069   1.5132533
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8545775   0.6012671   1.2146061
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0327890   0.8694930   1.2267531
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1230890   0.9707313   1.2993594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0793064   0.8757751   1.3301386
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1042016   0.9419607   1.2943864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8498261   0.7817991   0.9237723
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8349387   0.7654401   0.9107476
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0862497   0.8335808   1.4155057
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0814472   0.8847486   1.3218762
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2956751   0.4143837   4.0512546
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.5416935   0.7402042   3.2110311
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7857590   0.5179554   1.1920278
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8746780   0.5381164   1.4217401
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9519853   0.6949425   1.3041022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9624190   0.7022647   1.3189476
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6916866   0.4152181   1.1522387
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.6128542   0.4520642   0.8308339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9839768   0.4979723   1.9443058
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9297210   0.5656361   1.5281578
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7829447   0.6829245   0.8976136
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7170784   0.6203541   0.8288838
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0778118   0.5511038   2.1079118
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9754957   0.6063415   1.5693990
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9130309   0.7450576   1.1188738
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9208207   0.7768747   1.0914383
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9083075   0.6831033   1.2077565
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.7592957   0.6151601   0.9372032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7177325   0.6461827   0.7972047
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7105594   0.6369697   0.7926509
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1714058   0.9311160   1.4737064
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3096077   0.9538831   1.7979902
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.6391401   0.9876524   2.7203703
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.6376903   1.0353824   2.5903759
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.5113726   0.8266005   2.7634231
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.4572021   0.7889475   2.6914820
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9300335   0.6767616   1.2780902
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8672095   0.6344552   1.1853514
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.2163831   0.7882344   1.8770913
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.4353478   1.0659952   1.9326760
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9706904   0.5968237   1.5787575
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1139169   0.7909594   1.5687415
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3606285   1.0860014   1.7047031
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.6130446   1.2861434   2.0230348
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3242548   0.7491550   2.3408383
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2288616   0.7744559   1.9498861
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.3375457   0.9170725   1.9508039
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7339160   1.2378491   2.4287813
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3204532   0.9575445   1.8209042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6697878   1.2835062   2.1723240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0394697   0.9143695   1.1816857
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0278873   0.8961139   1.1790379


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0304756   -0.0329441    0.0938954
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2082779    0.0957747    0.3207810
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0135633   -0.0834467    0.0563202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0188207   -0.0556851    0.0180436
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0723506    0.0041731    0.1405280
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0524620   -0.0746555    0.1795794
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0155720   -0.0316991    0.0005551
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0455407   -0.1386227    0.0475414
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0248809   -0.0150132    0.0647750
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0402350   -0.0083957    0.0888657
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0246134   -0.0404809   -0.0087459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0218951   -0.0095744    0.0533647
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0300421   -0.0680383    0.1281226
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0151646   -0.0770468    0.0467176
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0105126   -0.0410235    0.0199984
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0737697   -0.1365799   -0.0109595
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0046374   -0.1337594    0.1244845
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0267089   -0.0417808   -0.0116371
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0034891   -0.0913118    0.0843337
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0168888   -0.0542390    0.0204614
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0403990   -0.0836689    0.0028708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0398368   -0.0545526   -0.0251210
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0460037   -0.0219526    0.1139600
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1219236    0.0311058    0.2127413
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0432442   -0.0054856    0.0919740
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0248068   -0.0628758    0.0132621
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1100046    0.0466245    0.1733847
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0691820   -0.0434206    0.1817845
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0147061    0.0025294    0.0268828
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0220873   -0.0199146    0.0640891
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0510119    0.0222834    0.0797405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0864409    0.0440297    0.1288520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0121072   -0.0013592    0.0255736


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0734230   -0.0913231    0.2132991
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4398209    0.1450710    0.6329512
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0385946   -0.2578380    0.1424342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0794991   -0.2469691    0.0654794
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1789866   -0.0070178    0.3306345
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0887138   -0.1537938    0.2802504
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0663333   -0.1373061    0.0002106
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1785673   -0.6073214    0.1358164
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0736551   -0.0522496    0.1844950
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0996871   -0.0291706    0.2124112
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0953901   -0.1586483   -0.0355856
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0995534   -0.0525137    0.2296498
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1679821   -0.6035626    0.5683026
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0586478   -0.3272827    0.1556169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0753135   -0.3175406    0.1223806
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.4571713   -0.9112829   -0.1109544
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0156839   -0.5612784    0.3392506
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1475117   -0.2338341   -0.0672287
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0174126   -0.5653455    0.3387221
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0693659   -0.2343804    0.0735891
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1715128   -0.3706314   -0.0013211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2259859   -0.3128093   -0.1449046
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1503509   -0.1068162    0.3477656
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.3464735    0.0305590    0.5594400
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2686381   -0.1028434    0.5149899
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1550036   -0.4188196    0.0597583
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3291585    0.1129974    0.4926415
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1462988   -0.1280292    0.3539123
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1564696    0.0168089    0.2762918
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1739732   -0.2318570    0.4461044
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3593195    0.1235969    0.5316407
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3241821    0.1460150    0.4651781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0739129   -0.0120796    0.1525989
