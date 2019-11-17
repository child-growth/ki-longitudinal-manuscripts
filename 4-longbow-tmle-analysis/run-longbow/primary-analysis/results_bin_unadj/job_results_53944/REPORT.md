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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/bc1cc3a3-4804-4b73-9e6f-3d0787f7b8b7/6dbb528d-bd30-45da-b0bf-d030b2f5fe4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc1cc3a3-4804-4b73-9e6f-3d0787f7b8b7/6dbb528d-bd30-45da-b0bf-d030b2f5fe4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bc1cc3a3-4804-4b73-9e6f-3d0787f7b8b7/6dbb528d-bd30-45da-b0bf-d030b2f5fe4c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bc1cc3a3-4804-4b73-9e6f-3d0787f7b8b7/6dbb528d-bd30-45da-b0bf-d030b2f5fe4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6415929   0.6043150   0.6788709
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.6611111   0.5839267   0.7382956
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7378641   0.6940814   0.7816467
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3809524   0.1730038   0.5889009
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.7532468   0.6568366   0.8496569
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.8750000   0.8387213   0.9112787
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4317343   0.3727199   0.4907487
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4508197   0.3883423   0.5132970
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4216216   0.3504118   0.4928315
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3300853   0.2979123   0.3622583
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3592737   0.3254000   0.3931473
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3529412   0.3190698   0.3868125
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5062241   0.4430869   0.5693612
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4859813   0.4190006   0.5529620
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.5882736   0.5636474   0.6128998
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6492891   0.5848556   0.7137226
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5911602   0.5194883   0.6628322
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6601307   0.6070215   0.7132399
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4008898   0.3885595   0.4132200
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4152422   0.4003603   0.4301241
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4451477   0.4293290   0.4609664
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7464789   0.6880357   0.8049221
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7708333   0.7113612   0.8303054
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7664921   0.7396504   0.7933339
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3706897   0.3374654   0.4039139
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3274262   0.3007046   0.3541478
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.4261299   0.4072392   0.4450206
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6032448   0.5664139   0.6400757
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6492754   0.6136637   0.6848870
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.7349112   0.7138643   0.7559582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5357004   0.5240682   0.5473325
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4607179   0.4492037   0.4722321
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4824473   0.4699742   0.4949205
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4478936   0.4053524   0.4904348
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3788301   0.3320137   0.4256465
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4347222   0.3994932   0.4699513
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3000000   0.0989216   0.5010784
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.4025974   0.2929258   0.5122691
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3918495   0.3382155   0.4454836
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2583026   0.2061529   0.3104523
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2540984   0.1994339   0.3087629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1945946   0.1375065   0.2516827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2119367   0.1839757   0.2398976
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1828794   0.1555872   0.2101716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1882353   0.1605292   0.2159414
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3659574   0.3043539   0.4275610
0-6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2682927   0.2076244   0.3289609
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.3113942   0.2872432   0.3355452
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3933649   0.3274051   0.4593248
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2762431   0.2110559   0.3414303
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2908497   0.2399281   0.3417713
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2581656   0.2471488   0.2691825
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2488709   0.2358056   0.2619363
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2703987   0.2562518   0.2845456
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3333333   0.2600268   0.4066398
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3164557   0.2439022   0.3890092
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.3255814   0.2925542   0.3586086
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2169935   0.1877807   0.2462062
0-6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1494755   0.1288116   0.1701394
0-6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2004680   0.1849699   0.2159661
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2241888   0.1927917   0.2555859
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.2217391   0.1907379   0.2527403
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2520710   0.2313664   0.2727756
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4717924   0.4602138   0.4833709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3736080   0.3623928   0.3848232
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3820098   0.3700560   0.3939636
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3760684   0.3194388   0.4326979
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.5049505   0.4331088   0.5767922
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.5809019   0.5299093   0.6318944
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2883436   0.2187256   0.3579615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2926829   0.2229707   0.3623951
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3255814   0.2446300   0.4065328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1861804   0.1527457   0.2196152
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2580645   0.2206941   0.2954349
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2381853   0.2018741   0.2744964
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2482759   0.1779330   0.3186187
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3245033   0.2498000   0.3992066
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.4331151   0.4034006   0.4628295
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5294118   0.4324249   0.6263986
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5277778   0.4335058   0.6220498
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6042781   0.5341021   0.6744540
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2453363   0.2311571   0.2595156
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2686567   0.2516601   0.2856534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2831557   0.2649197   0.3013916
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7794118   0.7096856   0.8491380
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7716535   0.6986074   0.8446997
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7594937   0.7261543   0.7928331
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2257525   0.1922394   0.2592656
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2293869   0.2025911   0.2561827
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.3033932   0.2832626   0.3235238
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5503212   0.5051926   0.5954497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.6082474   0.5647938   0.6517010
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6980325   0.6717079   0.7243571
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1871880   0.1727394   0.2016366
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2085970   0.1944167   0.2227774
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2594507   0.2427798   0.2761216


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0304215   0.9250059   1.1478503
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1500502   1.0703796   1.2356509
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.9772727   1.1286797   3.4638767
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.2968750   1.3285819   3.9708764
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0442062   0.8595054   1.2685979
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9765766   0.7858565   1.2135826
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0884269   0.9503977   1.2465024
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0692425   0.9325479   1.2259739
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9600123   0.7971684   1.1561216
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1620815   1.0188282   1.3254770
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9104730   0.7784381   1.0649031
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.0166977   0.8947667   1.1552444
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0358014   0.9880202   1.0858932
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1103992   1.0594202   1.1638313
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.0326258   0.9251364   1.1526042
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0268102   0.9424149   1.1187633
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.8832892   0.7824544   0.9971185
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.1495597   1.0401729   1.2704499
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0763049   0.9914969   1.1683669
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2182636   1.1388157   1.3032541
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8600290   0.8347172   0.8861084
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9005918   0.8730176   0.9290369
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8458038   0.7360696   0.9718973
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.9705927   0.8607552   1.0944461
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3419913   0.6509327   2.7667081
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3061651   0.6590218   2.5887871
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9837237   0.7323916   1.3213044
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.7533591   0.5276403   1.0756379
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8628964   0.7070514   1.0530919
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8881677   0.7288724   1.0822770
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7331254   0.5530299   0.9718694
0-6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 0.8509027   0.7069465   1.0241729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7022565   0.5257429   0.9380330
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.7393889   0.5802156   0.9422290
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9639972   0.9009356   1.0314728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0473847   0.9790048   1.1205407
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9493671   0.6909742   1.3043872
0-6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9767442   0.7666553   1.2444043
0-6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6888480   0.5679636   0.8354614
0-6 months    ki1135781-COHORTS          INDIA                          3+                   1                 0.9238436   0.7910008   1.0789963
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9890732   0.8114962   1.2055089
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1243694   0.9558682   1.3225740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7918908   0.7642050   0.8205795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8096990   0.7798143   0.8407288
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3427093   1.0967153   1.6438798
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.5446708   1.3351008   1.7871370
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.0150493   0.7230939   1.4248843
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1291440   0.7984246   1.5968522
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3860991   1.1005379   1.7457562
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2793249   1.0108262   1.6191431
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.3070272   0.9072792   1.8829045
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.7444912   1.3033653   2.3349168
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9969136   0.7718573   1.2875913
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1414141   0.9188454   1.4178949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0950547   1.0051275   1.1930276
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1541529   1.0584799   1.2584735
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9900461   0.8691413   1.1277697
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9744447   0.8820231   1.0765506
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0160990   0.8411969   1.2273667
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.3439196   1.1422341   1.5812168
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1052589   0.9913586   1.2322456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2684093   1.1589373   1.3882219
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1143718   1.0080547   1.2319018
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.3860434   1.2595688   1.5252176


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0498617    0.0136229    0.0861006
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4467988    0.2462717    0.6473259
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0039800   -0.0422509    0.0502109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0169661   -0.0091774    0.0431096
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0611126    0.0019953    0.1202299
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0103206   -0.0642933    0.0436521
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0162210    0.0068789    0.0255631
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0174917   -0.0359444    0.0709279
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0204551   -0.0097823    0.0506925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0831515    0.0511282    0.1151748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0403832   -0.0484706   -0.0322958
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0224034   -0.0572353    0.0124286
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0894231   -0.1074162    0.2862624
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0183026   -0.0585053    0.0219001
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0171976   -0.0393979    0.0050027
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0524118   -0.1096733    0.0048496
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0753134   -0.1293109   -0.0213158
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0005139   -0.0077984    0.0088263
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0079438   -0.0756277    0.0597401
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0267408   -0.0530812   -0.0004004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0148563   -0.0130226    0.0427353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0588105   -0.0669808   -0.0506403
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1270067    0.0803146    0.1736987
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0120950   -0.0440849    0.0682750
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0414670    0.0130450    0.0698890
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1531893    0.0855609    0.2208177
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0348200   -0.0485950    0.1182349
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0176109    0.0065999    0.0286219
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0151660   -0.0796516    0.0493197
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0448225    0.0138664    0.0757786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0946576    0.0552282    0.1340869
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0290514    0.0175399    0.0405629


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0721114    0.0204259    0.1210697
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.5397743    0.2142753    0.7304301
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0091344   -0.1028602    0.1097559
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0488864   -0.0295081    0.1213112
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1077184   -0.0029348    0.2061633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0161520   -0.1042442    0.0649125
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0388890    0.0162238    0.0610320
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0228958   -0.0496325    0.0904125
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0522954   -0.0282553    0.1265359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1211421    0.0729569    0.1668228
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0815300   -0.0979430   -0.0653623
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0526531   -0.1381959    0.0264606
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2296296   -0.4847259    0.6002828
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0762608   -0.2573983    0.0787825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0883109   -0.2083746    0.0198233
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1671586   -0.3648740    0.0019158
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2367960   -0.4191204   -0.0778962
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0019868   -0.0306698    0.0336087
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0244131   -0.2550452    0.1638370
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1405544   -0.2876208   -0.0102852
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0621487   -0.0620086    0.1717910
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1424046   -0.1622715   -0.1228773
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.2524607    0.1563185    0.3376469
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0402579   -0.1661765    0.2101497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1821545    0.0479340    0.2974529
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3815756    0.1883521    0.5287998
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0617122   -0.0985707    0.1986096
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0669751    0.0241695    0.1079030
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0198443   -0.1078303    0.0611536
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1656564    0.0431856    0.2724511
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1467608    0.0829894    0.2060973
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1343482    0.0794383    0.1859829
