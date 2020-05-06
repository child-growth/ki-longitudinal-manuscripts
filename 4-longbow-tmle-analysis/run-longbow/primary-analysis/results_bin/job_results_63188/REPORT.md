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

agecat        studyid          country                        parity    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  -------  -------------  -------  ------  -----------------
0-24 months   COHORTS          GUATEMALA                      1                    0       54    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      1                    1      159    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      2                    0       44    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      2                    1      148    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      3+                   0      223    1360  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      3+                   1      732    1360  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    0      511    4630  ever_stunted     
0-24 months   COHORTS          INDIA                          1                    1      301    4630  ever_stunted     
0-24 months   COHORTS          INDIA                          2                    0      797    4630  ever_stunted     
0-24 months   COHORTS          INDIA                          2                    1      388    4630  ever_stunted     
0-24 months   COHORTS          INDIA                          3+                   0     1511    4630  ever_stunted     
0-24 months   COHORTS          INDIA                          3+                   1     1122    4630  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    1                    0      269    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    1                    1      409    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    2                    0      242    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    2                    1      448    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    3+                   0      448    3058  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    3+                   1     1242    3058  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                    0       74     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          1                    1      137     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                    0       74     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          2                    1      107     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3+                   0      104     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          3+                   1      202     698  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                    0     4760   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     1                    1     5492   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                    0     4853   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     2                    1     4146   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3+                   0     4128   27227  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     3+                   1     3848   27227  ever_stunted     
0-24 months   Keneba           GAMBIA                         1                    0      119    1990  ever_stunted     
0-24 months   Keneba           GAMBIA                         1                    1      122    1990  ever_stunted     
0-24 months   Keneba           GAMBIA                         2                    0      110    1990  ever_stunted     
0-24 months   Keneba           GAMBIA                         2                    1      104    1990  ever_stunted     
0-24 months   Keneba           GAMBIA                         3+                   0      632    1990  ever_stunted     
0-24 months   Keneba           GAMBIA                         3+                   1      903    1990  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                    0      154     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     1                    1      117     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                    0      134     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     2                    1      110     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3+                   0      107     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     3+                   1       78     700  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          1                    0      162    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          1                    1      290    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          2                    0      122    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          2                    1      238    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          3+                   0      189    1533  ever_stunted     
0-24 months   SAS-CompFeed     INDIA                          3+                   1      532    1533  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          1                    0       13     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          1                    1        8     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          2                    0       19     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          2                    1       58     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          3+                   0       40     418  ever_stunted     
0-24 months   SAS-FoodSuppl    INDIA                          3+                   1      280     418  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      550    2357  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      271    2357  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      494    2357  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      277    2357  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      495    2357  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      270    2357  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0     3636   14073  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       1                    1     2433   14073  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       2                    0     2463   14073  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       2                    1     1749   14073  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     2104   14073  ever_stunted     
0-24 months   ZVITAMBO         ZIMBABWE                       3+                   1     1688   14073  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      1                    0      106    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      1                    1       53    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      2                    0      108    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      2                    1       50    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      3+                   0      522    1091  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      3+                   1      252    1091  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    0      599    4473  ever_stunted     
0-6 months    COHORTS          INDIA                          1                    1      166    4473  ever_stunted     
0-6 months    COHORTS          INDIA                          2                    0      973    4473  ever_stunted     
0-6 months    COHORTS          INDIA                          2                    1      171    4473  ever_stunted     
0-6 months    COHORTS          INDIA                          3+                   0     2050    4473  ever_stunted     
0-6 months    COHORTS          INDIA                          3+                   1      514    4473  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    1                    0      526    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    1                    1      152    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    2                    0      537    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    2                    1      153    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    3+                   0     1264    3058  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    3+                   1      426    3058  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                    0      128     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          1                    1       83     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                    0      131     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          2                    1       50     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3+                   0      217     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          3+                   1       89     698  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                    0     5393   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     1                    1     4817   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                    0     5625   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     2                    1     3355   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3+                   0     4926   27161  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     3+                   1     3045   27161  ever_stunted     
0-6 months    Keneba           GAMBIA                         1                    0      149    1853  ever_stunted     
0-6 months    Keneba           GAMBIA                         1                    1       86    1853  ever_stunted     
0-6 months    Keneba           GAMBIA                         2                    0      150    1853  ever_stunted     
0-6 months    Keneba           GAMBIA                         2                    1       55    1853  ever_stunted     
0-6 months    Keneba           GAMBIA                         3+                   0      973    1853  ever_stunted     
0-6 months    Keneba           GAMBIA                         3+                   1      440    1853  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                    0      201     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     1                    1       70     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                    0      182     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     2                    1       62     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3+                   0      149     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     3+                   1       36     700  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          1                    0      249    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          1                    1      202    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          2                    0      223    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          2                    1      136    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          3+                   0      407    1530  ever_stunted     
0-6 months    SAS-CompFeed     INDIA                          3+                   1      313    1530  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          1                    0       14     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          1                    1        6     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          2                    0       46     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          2                    1       31     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          3+                   0      194     416  ever_stunted     
0-6 months    SAS-FoodSuppl    INDIA                          3+                   1      125     416  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      647    2357  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      174    2357  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      630    2357  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      141    2357  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      621    2357  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      144    2357  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0     4497   14056  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       1                    1     1565   14056  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       2                    0     3160   14056  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       2                    1     1047   14056  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   0     2763   14056  ever_stunted     
0-6 months    ZVITAMBO         ZIMBABWE                       3+                   1     1024   14056  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      1                    0       30     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      1                    1      106     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      2                    0       29     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      2                    1       98     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      3+                   0      152     895  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      3+                   1      480     895  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    0      463    3548  ever_stunted     
6-24 months   COHORTS          INDIA                          1                    1      135    3548  ever_stunted     
6-24 months   COHORTS          INDIA                          2                    0      729    3548  ever_stunted     
6-24 months   COHORTS          INDIA                          2                    1      217    3548  ever_stunted     
6-24 months   COHORTS          INDIA                          3+                   0     1396    3548  ever_stunted     
6-24 months   COHORTS          INDIA                          3+                   1      608    3548  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    1                    0      210    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    1                    1      257    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    2                    0      190    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    2                    1      295    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    3+                   0      353    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    3+                   1      816    2121  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                    0       48     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          1                    1       54     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                    0       51     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          2                    1       57     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3+                   0       74     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          3+                   1      113     397  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                    0     2931   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     1                    1      675   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                    0     3001   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     2                    1      791   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3+                   0     2292   10493  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     3+                   1      803   10493  ever_stunted     
6-24 months   Keneba           GAMBIA                         1                    0      109    1365  ever_stunted     
6-24 months   Keneba           GAMBIA                         1                    1       36    1365  ever_stunted     
6-24 months   Keneba           GAMBIA                         2                    0      102    1365  ever_stunted     
6-24 months   Keneba           GAMBIA                         2                    1       49    1365  ever_stunted     
6-24 months   Keneba           GAMBIA                         3+                   0      606    1365  ever_stunted     
6-24 months   Keneba           GAMBIA                         3+                   1      463    1365  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                    0      116     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     1                    1       47     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                    0      116     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     2                    1       48     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3+                   0       87     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     3+                   1       42     456  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          1                    0      146     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          1                    1       88     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          2                    0      100     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          2                    1      102     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          3+                   0      158     813  ever_stunted     
6-24 months   SAS-CompFeed     INDIA                          3+                   1      219     813  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          1                    0        2     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        2     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          2                    0       19     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          2                    1       27     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          3+                   0       38     243  ever_stunted     
6-24 months   SAS-FoodSuppl    INDIA                          3+                   1      155     243  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      424    1577  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       97    1577  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    0      391    1577  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1      136    1577  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   0      403    1577  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1      126    1577  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0     2670    8496  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       1                    1      868    8496  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       2                    0     1911    8496  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       2                    1      702    8496  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   0     1681    8496  ever_stunted     
6-24 months   ZVITAMBO         ZIMBABWE                       3+                   1      664    8496  ever_stunted     


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
