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

agecat        studyid                    country                        parity    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      162    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      290    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      122    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      238    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      189    1533
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      532    1533
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       13     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        8     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       19     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       58     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       40     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      280     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      154     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      117     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      134     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1      110     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0      107     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       78     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       74     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      137     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       74     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1      107     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0      104     698
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      202     698
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     3636   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     2433   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     2463   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1749   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2104   14073
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1688   14073
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4760   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5492   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     4853   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1     4146   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4128   27227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3848   27227
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      249    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1      202    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    0      223    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1      136    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   0      407    1530
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1      313    1530
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       14     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       46     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       31     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0      194     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      125     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      201     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       70     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    0      182     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1       62     700
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      128     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       83     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    0      131     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1       50     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   0      217     698
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1       89     698
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     4497   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1565   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     3160   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1     1047   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     2763   14056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1     1024   14056
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5393   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4817   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    0     5625   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1     3355   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     4926   27161
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1     3045   27161
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      146     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       88     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    0      100     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1      102     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   0      158     813
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1      219     813
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        2     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        2     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    0       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1       27     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   0       38     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1      155     243
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      116     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       47     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    0      116     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1       48     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   0       87     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1       42     456
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0       48     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    0       51     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1       57     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   0       74     397
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1      113     397
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     2670    8496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      868    8496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    0     1911    8496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1      702    8496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   0     1681    8496
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1      664    8496
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2931   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      675   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    0     3001   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1      791   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   0     2292   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1      803   10493


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
![](/tmp/5aaea9c5-d150-4ea5-a7fe-d2168bb76fbe/32560cd2-5a65-45e1-a430-56ade2c7fbef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5aaea9c5-d150-4ea5-a7fe-d2168bb76fbe/32560cd2-5a65-45e1-a430-56ade2c7fbef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5aaea9c5-d150-4ea5-a7fe-d2168bb76fbe/32560cd2-5a65-45e1-a430-56ade2c7fbef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5aaea9c5-d150-4ea5-a7fe-d2168bb76fbe/32560cd2-5a65-45e1-a430-56ade2c7fbef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6225985   0.5829000   0.6622969
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6616061   0.5983179   0.7248943
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7564748   0.7166316   0.7963180
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3809524   0.1730038   0.5889009
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.7532468   0.6568366   0.8496569
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8750000   0.8387213   0.9112787
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4509264   0.3798779   0.5219749
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4518484   0.3643246   0.5393721
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3539573   0.2736940   0.4342206
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3277390   0.2855801   0.3698979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3558185   0.3151429   0.3964940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3848218   0.3420253   0.4276183
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4475258   0.3743256   0.5207261
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4406796   0.3485471   0.5328121
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5618541   0.5296533   0.5940549
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5853059   0.4622655   0.7083463
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6201237   0.4870721   0.7531753
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5216873   0.4577191   0.5856555
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3888538   0.3689372   0.4087705
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4135726   0.3913980   0.4357472
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4555640   0.4318408   0.4792872
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6951645   0.6076705   0.7826585
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7991382   0.7040144   0.8942619
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7631460   0.7302031   0.7960890
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3631746   0.3208004   0.4055487
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3363384   0.3012668   0.3714100
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4141405   0.3930376   0.4352433
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5523391   0.4979527   0.6067255
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6074446   0.5463282   0.6685610
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7413078   0.7163508   0.7662647
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5300048   0.5103827   0.5496268
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4675306   0.4520923   0.4829688
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4786713   0.4605990   0.4967436
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4811992   0.4198737   0.5425246
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3876831   0.3271270   0.4482392
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4414581   0.3984933   0.4844228
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3000000   0.0989216   0.5010784
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4025974   0.2929258   0.5122691
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3918495   0.3382155   0.4454836
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2620996   0.1883903   0.3358088
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2625335   0.1755168   0.3495502
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1611521   0.1021576   0.2201465
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2163528   0.1802579   0.2524478
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1779408   0.1460283   0.2098532
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1995291   0.1633442   0.2357140
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2836577   0.2147464   0.3525690
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.3250288   0.2279048   0.4221528
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.2908544   0.2622286   0.3194801
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3146001   0.2218993   0.4073009
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2683149   0.1545784   0.3820513
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1999163   0.1547820   0.2450506
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2516509   0.2346077   0.2686942
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2519214   0.2316696   0.2721731
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2762583   0.2553214   0.2971951
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3911814   0.2784758   0.5038870
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.4044913   0.2724366   0.5365459
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3702013   0.3284567   0.4119459
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2098459   0.1730301   0.2466617
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1573839   0.1293759   0.1853918
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1988595   0.1818532   0.2158659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2425986   0.1929346   0.2922625
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2207658   0.1715330   0.2699987
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2371474   0.2131196   0.2611752
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4776033   0.4582051   0.4970015
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3769997   0.3620685   0.3919309
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3642074   0.3466235   0.3817913
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2973357   0.2315785   0.3630929
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4829175   0.4156435   0.5501915
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5907607   0.5342919   0.6472296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2538266   0.1730751   0.3345781
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3005526   0.2154774   0.3856277
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2801372   0.1890270   0.3712474
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1744084   0.1332182   0.2155986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2536742   0.2071004   0.3002481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2763689   0.2317765   0.3209613
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3116945   0.2163796   0.4070094
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2694116   0.1763812   0.3624420
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4220169   0.3832049   0.4608289
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5657329   0.3997947   0.7316710
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5733692   0.4007143   0.7460240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.5315543   0.4436935   0.6194150
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2247137   0.2021858   0.2472415
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2733668   0.2459239   0.3008097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.3094162   0.2800199   0.3388124
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7635962   0.6613091   0.8658833
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7863732   0.6713944   0.9013520
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7528460   0.7127371   0.7929549
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2177770   0.1736957   0.2618583
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2327936   0.1994998   0.2660875
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.2934845   0.2709909   0.3159781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4654476   0.4038195   0.5270758
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5726550   0.5054303   0.6398798
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7244969   0.6961642   0.7528296
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1758190   0.1534377   0.1982003
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2166074   0.1973169   0.2358979
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2790960   0.2506820   0.3075100


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6914547   0.6510509   0.7318584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3470513   0.3278294   0.3662733
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5673367   0.5455633   0.5891101
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4171108   0.4089639   0.4252576
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7639706   0.7413939   0.7865473
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3911447   0.3770865   0.4052029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4953171   0.4874955   0.5031388
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4254902   0.3977202   0.4532601
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1947391   0.1787488   0.2107293
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3135456   0.2924164   0.3346748
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2586796   0.2514399   0.2659192
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3253896   0.2975756   0.3532035
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902526   0.1787489   0.2017563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4129818   0.4055453   0.4204184
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2276474   0.2069456   0.2483493
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4014652   0.3754511   0.4274793
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2629473   0.2535857   0.2723089
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7642458   0.7364214   0.7920702
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2705750   0.2559548   0.2851951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2162394   0.2068628   0.2256160


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0626529   0.9611416   1.1748853
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2150283   1.1377893   1.2975108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.9772727   1.1286797   3.4638767
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.2968750   1.3285819   3.9708764
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0020446   0.7825028   1.2831818
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7849558   0.5975267   1.0311768
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0856763   0.9146116   1.2887361
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1741715   0.9909819   1.3912249
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9847020   0.7554425   1.2835365
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2554674   1.0558730   1.4927916
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0594864   0.7848076   1.4303015
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8913071   0.6982748   1.1377015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0635682   0.9878211   1.1451237
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1715559   1.0893448   1.2599712
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1495670   0.9670009   1.3666010
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0977920   0.9618550   1.2529408
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.9261066   0.7922613   1.0825639
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1403344   1.0044051   1.2946595
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0997675   0.9557370   1.2655035
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3421243   1.2097340   1.4890031
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8821252   0.8416142   0.9245863
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9031453   0.8574562   0.9512688
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8056603   0.6533291   0.9935094
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9174124   0.8026267   1.0486139
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3419913   0.6509327   2.7667081
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3061651   0.6590218   2.5887871
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0016554   0.6494263   1.5449230
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6148505   0.3879228   0.9745268
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8224563   0.6441537   1.0501134
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9222394   0.7213529   1.1790699
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.1458487   0.7795096   1.6843528
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.0253710   0.7889193   1.3326910
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8528760   0.5096473   1.4272566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6354617   0.4376370   0.9227090
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0010747   0.9013816   1.1117939
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0977837   0.9919236   1.2149413
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0340247   0.6693656   1.5973440
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9463672   0.6946510   1.2892963
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.7499972   0.5843842   0.9625447
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9476455   0.7799540   1.1513910
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9100047   0.6730678   1.2303494
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.9775301   0.7784171   1.2275746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7893575   0.7467465   0.8343999
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7625730   0.7162197   0.8119263
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.6241491   1.2550817   2.1017440
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.9868477   1.6605209   2.3773044
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1840863   0.7756063   1.8076961
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1036560   0.7017517   1.7357373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.4544837   1.0785029   1.9615366
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.5846074   1.1904473   2.1092749
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8643452   0.5451612   1.3704069
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.3539442   0.9840554   1.8628675
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0134981   0.6654959   1.5434782
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9395853   0.6710520   1.3155770
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.2165116   1.0557385   1.4017682
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3769351   1.1995638   1.5805332
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0298286   0.8448679   1.2552814
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9859216   0.8538310   1.1384472
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0689542   0.8344131   1.3694213
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3476378   1.0854505   1.6731557
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2303318   1.0317046   1.4671995
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5565595   1.3563277   1.7863511
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2319909   1.0576157   1.4351164
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.5874051   1.3487898   1.8682340


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0688562    0.0238949    0.1138174
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4467988    0.2462717    0.6473259
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0152121   -0.0773351    0.0469109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0193123   -0.0185237    0.0571484
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1198108    0.0475010    0.1921207
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0536626   -0.0634400    0.1707651
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0282569    0.0099573    0.0465566
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0688061   -0.0154681    0.1530804
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0279701   -0.0123904    0.0683306
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1340572    0.0824913    0.1856232
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0346876   -0.0528047   -0.0165705
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0557090   -0.1105010   -0.0009170
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0894231   -0.1074162    0.2862624
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0220996   -0.0882484    0.0440492
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0216138   -0.0535470    0.0103195
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0298879   -0.0381971    0.0979729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0034515   -0.0829897    0.0898927
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0070286   -0.0085081    0.0225654
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0657919   -0.1753893    0.0438056
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0195933   -0.0544873    0.0153007
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0035534   -0.0511568    0.0440499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0646214   -0.0826169   -0.0466260
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2057393    0.1615359    0.2499428
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0466120   -0.0249747    0.1181987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0532390    0.0155195    0.0909585
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0897707   -0.0044079    0.1839494
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0015011   -0.1601376    0.1571353
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0382336    0.0173172    0.0591500
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0006496   -0.0987391    0.1000383
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0527980    0.0104190    0.0951769
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1795312    0.1212069    0.2378554
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0404204    0.0189846    0.0618562


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0995816    0.0355253    0.1593836
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.5397743    0.2142753    0.7304301
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0349130   -0.1879339    0.0983968
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0556469   -0.0599096    0.1586048
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2111812    0.0735925    0.3283354
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0839831   -0.1190837    0.2502018
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0677444    0.0228237    0.1106002
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0900638   -0.0272825    0.1940057
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0715084   -0.0375865    0.1691327
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1953058    0.1163161    0.2672349
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0700311   -0.1072753   -0.0340397
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1309289   -0.2676773   -0.0089320
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2296296   -0.4847259    0.6002828
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0920816   -0.4057417    0.1515922
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1109883   -0.2876971    0.0414710
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0953224   -0.1492736    0.2878618
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0108520   -0.3019223    0.2484853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0271713   -0.0347763    0.0854103
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2021941   -0.5918263    0.0920676
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1029857   -0.3025997    0.0660389
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0148651   -0.2349108    0.1659711
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1564753   -0.2010065   -0.1135952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.4089635    0.3018996    0.4996076
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1551466   -0.1196293    0.3624879
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2338660    0.0498138    0.3822671
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.2236078   -0.0490340    0.4253905
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0026605   -0.3271928    0.2425154
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1454041    0.0621094    0.2213012
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0008500   -0.1380398    0.1227893
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1951325    0.0224859    0.3372866
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2783520    0.1816083    0.3636595
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1869243    0.0821846    0.2797112
