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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        parity    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      162    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      290    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      122    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      238    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      189    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      532    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       58     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       12     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       80     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       28     397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      200     397
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      154     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      117     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      134     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1      110     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      108     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       77     700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      550    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      271    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      494    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      277    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      495    2357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      270    2357
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      119    1990
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1      122    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    0      110    1990
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1      104    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      632    1990
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      903    1990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       58     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      113     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       56     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       99     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0       82     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      194     602
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     3758   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     2310   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     2553   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1659   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2180   14072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1612   14072
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       54    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      159    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       44    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1      148    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      223    1360
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      732    1360
0-24 months   ki1135781-COHORTS          INDIA                          1                    0      511    4630
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      301    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    0      797    4630
0-24 months   ki1135781-COHORTS          INDIA                          2                    1      388    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1511    4630
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1     1122    4630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      269    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      409    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      242    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      448    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      448    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1     1242    3058
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4758   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5470   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4869   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     4132   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4145   27211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3837   27211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      249    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1      202    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      223    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1      136    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      407    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1      313    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       46     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       31     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       57     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       34     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      137     396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1       91     396
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      201     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       70     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      183     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       61     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   0      149     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1       36     700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      647    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      174    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      630    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      141    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      621    2357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      144    2357
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      149    1853
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       86    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    0      150    1853
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1       55    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   0      973    1853
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1      440    1853
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      115     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       56     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      118     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       37     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      202     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       74     602
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4498   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1561   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3163   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1042   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2764   14050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1022   14050
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0      106    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       53    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    0      108    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1       50    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   0      522    1091
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1      252    1091
0-6 months    ki1135781-COHORTS          INDIA                          1                    0      599    4473
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      166    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    0      973    4473
0-6 months    ki1135781-COHORTS          INDIA                          2                    1      171    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   0     2050    4473
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1      514    4473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0      526    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1      152    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    0      537    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1      153    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   0     1264    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1      426    3058
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5398   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4788   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5646   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3336   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4948   27145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3029   27145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      146     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       88     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      100     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      102     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      158     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      219     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       19     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       27     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       11     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       46     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       27     239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      109     239
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      116     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       47     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      116     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       49     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       41     457
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      424    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       97    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      391    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      136    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      403    1577
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      126    1577
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      109    1365
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       36    1365
6-24 months   ki1101329-Keneba           GAMBIA                         2                    0      102    1365
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1       49    1365
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   0      606    1365
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1      463    1365
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       54     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       57     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       55     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0       78     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      120     426
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     2528    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      749    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     1841    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      617    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     1631    7956
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      590    7956
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       30     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1      106     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    0       29     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1       98     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   0      152     895
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1      480     895
6-24 months   ki1135781-COHORTS          INDIA                          1                    0      463    3548
6-24 months   ki1135781-COHORTS          INDIA                          1                    1      135    3548
6-24 months   ki1135781-COHORTS          INDIA                          2                    0      729    3548
6-24 months   ki1135781-COHORTS          INDIA                          2                    1      217    3548
6-24 months   ki1135781-COHORTS          INDIA                          3+                   0     1396    3548
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1      608    3548
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0      210    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1      257    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    0      190    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1      295    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   0      353    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1      816    2121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2936   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      682   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3005   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      796   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     2294   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      808   10521


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
![](/tmp/5e2d65e5-0a4d-46ec-9929-a66a07f7dc8a/72b219fa-e1ba-4601-8860-02e3d04aae65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5e2d65e5-0a4d-46ec-9929-a66a07f7dc8a/72b219fa-e1ba-4601-8860-02e3d04aae65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5e2d65e5-0a4d-46ec-9929-a66a07f7dc8a/72b219fa-e1ba-4601-8860-02e3d04aae65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5e2d65e5-0a4d-46ec-9929-a66a07f7dc8a/72b219fa-e1ba-4601-8860-02e3d04aae65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6129675   0.5632247   0.6627104
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6742802   0.6156918   0.7328685
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7640580   0.7350607   0.7930552
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7569704   0.6586394   0.8553014
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8723758   0.8030181   0.9417336
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8744210   0.8314917   0.9173503
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4169452   0.3356690   0.4982215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4548780   0.3645619   0.5451940
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3217156   0.2391176   0.4043136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3267117   0.2852139   0.3682095
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3532772   0.3123037   0.3942506
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3778169   0.3368425   0.4187912
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4307597   0.3574699   0.5040495
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4760164   0.3820627   0.5699701
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5673353   0.5348687   0.5998019
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6817536   0.5525197   0.8109876
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6634157   0.5055115   0.8213198
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6163620   0.5372407   0.6954834
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3651592   0.3459394   0.3843791
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3941129   0.3715962   0.4166296
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4301143   0.4057069   0.4545217
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7247767   0.6442941   0.8052593
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7858603   0.6929136   0.8788070
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7560802   0.7208512   0.7913092
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3607266   0.3186784   0.4027748
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3384419   0.3029381   0.3739457
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4129501   0.3918824   0.4340179
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5417737   0.4860885   0.5974589
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6070919   0.5483099   0.6658739
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7459805   0.7209785   0.7709826
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5316739   0.5120900   0.5512577
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4664958   0.4511318   0.4818597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4822007   0.4637723   0.5006290
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4941049   0.4414842   0.5467256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4015047   0.3320705   0.4709389
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4401571   0.3969424   0.4833719
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3709667   0.2394991   0.5024344
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4003678   0.2646939   0.5360417
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3933740   0.3283632   0.4583848
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2804632   0.2013620   0.3595644
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2613382   0.1772953   0.3453810
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1564498   0.0970500   0.2158497
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2130579   0.1777298   0.2483861
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1816792   0.1474093   0.2159491
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1962661   0.1595669   0.2329653
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3265535   0.2525835   0.4005234
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.3228452   0.2218468   0.4238437
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2908757   0.2617884   0.3199630
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3401727   0.2014536   0.4788918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2378342   0.1093757   0.3662927
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2024973   0.1482434   0.2567513
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2544167   0.2368116   0.2720218
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2518264   0.2324188   0.2712341
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2724951   0.2508652   0.2941249
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3910144   0.2740214   0.5080075
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3719460   0.2499575   0.4939345
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3591893   0.3173974   0.4009812
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2105622   0.1742145   0.2469099
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1547399   0.1274994   0.1819803
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1993405   0.1822746   0.2164065
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2394755   0.1910226   0.2879283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2231807   0.1723292   0.2740322
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2327424   0.2097174   0.2557675
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4742215   0.4545972   0.4938458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3783763   0.3632669   0.3934858
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3649316   0.3470315   0.3828317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2751164   0.1859012   0.3643317
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5042618   0.4411343   0.5673894
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.6137481   0.5592543   0.6682420
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5711216   0.4223281   0.7199151
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.8085149   0.7027630   0.9142667
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8023655   0.7354309   0.8693001
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2295513   0.1533648   0.3057378
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2986282   0.2093096   0.3879467
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2644942   0.1689415   0.3600470
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1745757   0.1347241   0.2144273
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2492987   0.2014114   0.2971860
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2913450   0.2452929   0.3373970
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2445605   0.1501801   0.3389408
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2555792   0.1697917   0.3413666
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4241877   0.3853773   0.4629981
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5608237   0.3861513   0.7354962
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5778765   0.4090310   0.7467219
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5258981   0.4359079   0.6158883
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2029137   0.1809445   0.2248828
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2550334   0.2258673   0.2841996
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2945647   0.2658443   0.3232851
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7564035   0.6433365   0.8694705
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8138500   0.7171637   0.9105363
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7567119   0.7173480   0.7960759
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2266594   0.1812079   0.2721109
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2354380   0.2012468   0.2696291
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2896002   0.2676069   0.3115935
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4560834   0.3962148   0.5159520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5755305   0.5050508   0.6460102
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7253033   0.6970681   0.7535385
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1813396   0.1575006   0.2051786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2160006   0.1971390   0.2348622
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2750800   0.2475494   0.3026107


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8513854   0.8163510   0.8864198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3470513   0.3278294   0.3662733
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5673367   0.5455633   0.5891101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3966032   0.3885203   0.4046860
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3911447   0.3770865   0.4052029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4938812   0.4860382   0.5017241
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3939394   0.3457532   0.4421255
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1947391   0.1787488   0.2107293
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3135456   0.2924164   0.3346748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2580071   0.2507721   0.2652422
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902526   0.1787489   0.2017563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108676   0.4034192   0.4183159
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7615063   0.7073642   0.8156483
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2276474   0.2069456   0.2483493
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4014652   0.3754511   0.4274793
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458522   0.2363900   0.2553144
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2705750   0.2559548   0.2851951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2172797   0.2079084   0.2266510


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1000259   1.0233123   1.1824904
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2464901   1.1562703   1.3437495
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.1524570   0.9896087   1.3421033
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1551588   1.0059808   1.3264585
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0909777   0.8272540   1.4387750
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7716015   0.5594059   1.0642879
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0813117   0.9110476   1.2833961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1564229   0.9790555   1.3659225
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1050624   0.8519040   1.4334515
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.3170574   1.1008835   1.5756800
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9731017   0.7178625   1.3190924
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9040832   0.7191508   1.1365717
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0792905   0.9988046   1.1662622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1778814   1.0903263   1.2724674
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0842792   0.9224713   1.2744693
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0431905   0.9256850   1.1756120
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9382227   0.8023177   1.0971487
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1447731   1.0083940   1.2995966
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1205636   0.9734398   1.2899235
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3769228   1.2360797   1.5338141
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8774097   0.8373035   0.9194368
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9069483   0.8611732   0.9551565
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8125899   0.6986741   0.9450792
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.8908171   0.7956266   0.9973965
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.0792552   0.6628289   1.7573038
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.0604024   0.7188455   1.5642488
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9318092   0.6080705   1.4279074
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.5578267   0.3477897   0.8947091
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8527222   0.6639189   1.0952169
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9211867   0.7179446   1.1819643
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9886444   0.6718543   1.4548061
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8907445   0.6954135   1.1409410
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6991573   0.3553238   1.3757055
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.5952781   0.3654358   0.9696805
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9898187   0.8925518   1.0976854
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0710580   0.9641228   1.1898538
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9512335   0.6110273   1.4808589
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9186088   0.6667425   1.2656192
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7348891   0.5744894   0.9400730
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9467060   0.7810807   1.1474515
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9319565   0.6879041   1.2625930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9718842   0.7763534   1.2166609
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7978894   0.7543135   0.8439826
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7695382   0.7220442   0.8201563
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.8329035   1.2889992   2.6063128
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 2.2308670   1.6402093   3.0342271
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.4156615   1.0575993   1.8949496
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.4048942   1.0689228   1.8464643
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3009215   0.8345613   2.0278877
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1522229   0.7066810   1.8786663
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4280265   1.0596623   1.9244429
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.6688748   1.2642097   2.2030706
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0450552   0.6270688   1.7416595
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.7344902   1.1667175   2.5785644
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0304066   0.6719193   1.5801569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9377244   0.6571391   1.3381138
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2568567   1.0737881   1.4711365
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.4516749   1.2550686   1.6790795
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0759469   0.8890584   1.3021211
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0004077   0.8542252   1.1716063
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0387300   0.8111740   1.3301215
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.2776886   1.0313817   1.5828167
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2618976   1.0553517   1.5088671
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5902866   1.3873508   1.8229071
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1911387   1.0190842   1.3922417
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.5169333   1.2871278   1.7877685


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0784871    0.0397484    0.1172258
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0944150    0.0093712    0.1794587
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0173405   -0.0562805    0.0909615
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0203396   -0.0167378    0.0574171
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1365770    0.0642114    0.2089426
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0073350   -0.1317531    0.1170830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0314439    0.0138095    0.0490784
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0391939   -0.0382675    0.1166553
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0304181   -0.0096208    0.0704569
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1446227    0.0917611    0.1974842
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0377927   -0.0557338   -0.0198516
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0686147   -0.1090008   -0.0282287
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0229727   -0.0995085    0.1454539
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0418917   -0.1130372    0.0292537
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0183188   -0.0494670    0.0128294
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0130079   -0.0860961    0.0600804
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0627640   -0.1960056    0.0704775
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0035904   -0.0125432    0.0197240
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0656249   -0.1793724    0.0481227
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0203096   -0.0546857    0.0140665
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0004303   -0.0468830    0.0460223
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0633540   -0.0814503   -0.0452576
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2279586    0.1531061    0.3028112
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1903847    0.0602067    0.3205626
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0702299    0.0017352    0.1387246
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0530717    0.0166785    0.0894650
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1569047    0.0633343    0.2504752
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0002091   -0.1677857    0.1682040
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0429385    0.0225170    0.0633600
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0078423   -0.1019613    0.1176459
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0439155    0.0002183    0.0876128
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1888954    0.1323422    0.2454487
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0359402    0.0131468    0.0587335


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1135102    0.0567548    0.1668505
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1108957    0.0040323    0.2062931
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0399287   -0.1453986    0.1952698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0586070   -0.0545256    0.1596024
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2407335    0.1026233    0.3575880
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0108761   -0.2132796    0.1577618
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0792831    0.0337385    0.1226810
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0513029   -0.0557038    0.1474633
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0777669   -0.0304454    0.1746152
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2106985    0.1295057    0.2843182
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0765219   -0.1134890   -0.0407820
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1612605   -0.2589230   -0.0711742
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0583152   -0.3101535    0.3231554
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1755941   -0.5148998    0.0877142
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0940686   -0.2663169    0.0547499
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0414864   -0.3031145    0.1676143
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2262512   -0.8145782    0.1713269
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0139159   -0.0506376    0.0745031
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2016809   -0.6080700    0.1020061
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1067507   -0.3030904    0.0600061
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0018002   -0.2162573    0.1748426
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1541956   -0.1991599   -0.1109173
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4531304    0.2721512    0.5891093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2500106    0.0533081    0.4058425
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.2342706   -0.0301003    0.4307918
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2331313    0.0565089    0.3766899
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3908302    0.1088822    0.5835704
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0003728   -0.3487490    0.2591249
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1746517    0.0874236    0.2535422
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0102615   -0.1443634    0.1439937
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1623045   -0.0156225    0.3090605
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2928708    0.1991004    0.3756623
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1654096    0.0540939    0.2636255
