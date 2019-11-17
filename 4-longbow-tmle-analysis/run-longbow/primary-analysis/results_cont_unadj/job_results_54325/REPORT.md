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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        parity    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            105    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2             95    389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           189    389
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            242    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            226    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           172    640
0-3 months     ki1101329-Keneba           GAMBIA                         1            130   1145
0-3 months     ki1101329-Keneba           GAMBIA                         2            113   1145
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902   1145
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            137    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            129    509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+           243    509
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3100   7981
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2478   7981
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2403   7981
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             48    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      2             63    356
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           245    356
0-3 months     ki1135781-COHORTS          INDIA                          1            671   4021
0-3 months     ki1135781-COHORTS          INDIA                          2           1015   4021
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335   4021
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           3164   9826
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3408   9826
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3254   9826
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             93    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2             82    349
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           174    349
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            214    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            221    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           163    598
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566   1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536   1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535   1637
3-6 months     ki1101329-Keneba           GAMBIA                         1            146   1130
3-6 months     ki1101329-Keneba           GAMBIA                         2            107   1130
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877   1130
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            121    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120    469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           228    469
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2318   6178
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1952   6178
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1908   6178
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             54    393
3-6 months     ki1135781-COHORTS          GUATEMALA                      2             65    393
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           274    393
3-6 months     ki1135781-COHORTS          INDIA                          1            675   4069
3-6 months     ki1135781-COHORTS          INDIA                          2           1042   4069
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352   4069
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           2244   6239
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           2162   6239
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          1833   6239
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             95    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2             79    351
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+           177    351
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              0     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          2             12     74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          3+            62     74
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            204    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2            207    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+           154    565
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513   1462
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470   1462
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479   1462
6-9 months     ki1101329-Keneba           GAMBIA                         1             90    725
6-9 months     ki1101329-Keneba           GAMBIA                         2             67    725
6-9 months     ki1101329-Keneba           GAMBIA                         3+           568    725
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            125    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2            130    481
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+           226    481
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2280   5929
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1838   5929
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1811   5929
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             58    391
6-9 months     ki1135781-COHORTS          GUATEMALA                      2             62    391
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+           271    391
6-9 months     ki1135781-COHORTS          INDIA                          1            639   3756
6-9 months     ki1135781-COHORTS          INDIA                          2            940   3756
6-9 months     ki1135781-COHORTS          INDIA                          3+          2177   3756
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            106    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2             79    372
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           187    372
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             13     77
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+            64     77
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            208    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            207    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           151    566
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375   1062
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339   1062
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348   1062
9-12 months    ki1101329-Keneba           GAMBIA                         1             75    715
9-12 months    ki1101329-Keneba           GAMBIA                         2             66    715
9-12 months    ki1101329-Keneba           GAMBIA                         3+           574    715
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            119    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2            126    469
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           224    469
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           2289   5932
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1822   5932
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1821   5932
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             68    437
9-12 months    ki1135781-COHORTS          GUATEMALA                      2             67    437
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+           302    437
9-12 months    ki1135781-COHORTS          INDIA                          1            557   3269
9-12 months    ki1135781-COHORTS          INDIA                          2            814   3269
9-12 months    ki1135781-COHORTS          INDIA                          3+          1898   3269
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            114    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2             80    377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+           183    377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             14     76
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+            62     76
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            199    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2            198    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135    532
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265    776
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258    776
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253    776
12-15 months   ki1101329-Keneba           GAMBIA                         1            104   1104
12-15 months   ki1101329-Keneba           GAMBIA                         2            103   1104
12-15 months   ki1101329-Keneba           GAMBIA                         3+           897   1104
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            120    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            123    469
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+           226    469
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            934   2548
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            796   2548
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           818   2548
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             72    425
12-15 months   ki1135781-COHORTS          GUATEMALA                      2             62    425
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+           291    425
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            113    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2             75    362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+           174    362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             13     72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+            59     72
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            197    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2            196    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135    528
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219    649
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217    649
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213    649
15-18 months   ki1101329-Keneba           GAMBIA                         1            109   1122
15-18 months   ki1101329-Keneba           GAMBIA                         2            101   1122
15-18 months   ki1101329-Keneba           GAMBIA                         3+           912   1122
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            126    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            129    480
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+           225    480
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            753   2036
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            635   2036
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           648   2036
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             64    372
15-18 months   ki1135781-COHORTS          GUATEMALA                      2             55    372
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+           253    372
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            200    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2            197    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+           144    541
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2      9
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4      9
18-21 months   ki1101329-Keneba           GAMBIA                         1            115   1125
18-21 months   ki1101329-Keneba           GAMBIA                         2            109   1125
18-21 months   ki1101329-Keneba           GAMBIA                         3+           901   1125
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            116    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            121    445
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+           208    445
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            572   1595
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            502   1595
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           521   1595
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             64    369
18-21 months   ki1135781-COHORTS          GUATEMALA                      2             54    369
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+           251    369
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            173    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            175    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           123    471
21-24 months   ki1101329-Keneba           GAMBIA                         1            102   1003
21-24 months   ki1101329-Keneba           GAMBIA                         2             98   1003
21-24 months   ki1101329-Keneba           GAMBIA                         3+           803   1003
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             84    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             95    342
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           163    342
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            428   1169
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            373   1169
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           368   1169
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             72    415
21-24 months   ki1135781-COHORTS          GUATEMALA                      2             63    415
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+           280    415


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: ki1135781-COHORTS, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6-9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18-21 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/017cb2ae-3c9d-4b93-90d9-0e75f4faba2b/c289d14c-5b87-4d0f-91c2-5e8bd974a1e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/017cb2ae-3c9d-4b93-90d9-0e75f4faba2b/c289d14c-5b87-4d0f-91c2-5e8bd974a1e8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/017cb2ae-3c9d-4b93-90d9-0e75f4faba2b/c289d14c-5b87-4d0f-91c2-5e8bd974a1e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0537879   -0.1836082    0.0760324
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0985671   -0.1556905   -0.0414437
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.1328419   -0.2147850   -0.0508989
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1793779   -0.2082979   -0.1504580
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1739360   -0.2027779   -0.1450941
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.2187601   -0.2512693   -0.1862508
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1645456   -0.2349040   -0.0941872
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.2476390   -0.3395852   -0.1556929
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.3033631   -0.3312523   -0.2754739
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0129675   -0.0380334    0.0639683
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0063699   -0.0577080    0.0449682
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0704722   -0.1046181   -0.0363263
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1360342   -0.1525538   -0.1195146
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.1179753   -0.1358640   -0.1000867
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1687210   -0.1876347   -0.1498072
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4707540   -0.5476490   -0.3938589
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.5577356   -0.6142063   -0.5012648
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.5994530   -0.6397319   -0.5591740
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0187050   -0.0384547    0.0010446
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0416906   -0.0579024   -0.0254789
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0931318   -0.1052278   -0.0810358
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0640334    0.0525656    0.0755013
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0717214    0.0606511    0.0827917
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0233674    0.0121476    0.0345872
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0050629   -0.0896703    0.0997962
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0115467   -0.0379216    0.0148281
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0562390   -0.0909745   -0.0215035
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0238369   -0.0495540    0.0018803
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0250580   -0.0515248    0.0014088
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0336482   -0.0648519   -0.0024445
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0838414   -0.1124551   -0.0552276
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0866859   -0.1174072   -0.0559646
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0819315   -0.1093331   -0.0545300
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0350696   -0.0279193    0.0980585
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0522598   -0.0135655    0.1180852
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0481172   -0.0706539   -0.0255806
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1136660   -0.1494149   -0.0779171
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1811021   -0.2189064   -0.1432977
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1763583   -0.2024882   -0.1502284
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0158073    0.0005703    0.0310443
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0135836   -0.0293517    0.0021846
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0094918   -0.0263221    0.0073384
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0435308   -0.0950124    0.0079508
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1057936   -0.1534317   -0.0581554
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1619348   -0.1876557   -0.1362138
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0231333   -0.0397339   -0.0065328
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0628806   -0.0758717   -0.0498894
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0751407   -0.0844771   -0.0658043
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0238680    0.0133718    0.0343641
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0097497   -0.0208923    0.0013928
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0150862   -0.0282476   -0.0019249
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0546114   -0.1391610    0.0299383
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.1278390   -0.1820187   -0.0736593
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0760115   -0.1140607   -0.0379623
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0502681   -0.0672003   -0.0333359
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0570111   -0.0759743   -0.0380479
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0821424   -0.1024922   -0.0617926
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0329119   -0.0598342   -0.0059896
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0476221   -0.0786452   -0.0165989
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0783517   -0.1043451   -0.0523583
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0825407    0.0222535    0.1428280
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0060956   -0.0835766    0.0713854
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0182007   -0.0458577    0.0094564
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0351495   -0.0648591   -0.0054400
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0249857   -0.0660737    0.0161023
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0596052   -0.0830879   -0.0361225
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0197810   -0.0335298   -0.0060321
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0437002   -0.0584717   -0.0289287
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0340835   -0.0491815   -0.0189855
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0814085   -0.1294811   -0.0333358
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1351022   -0.1825278   -0.0876766
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1492060   -0.1689466   -0.1294654
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0722272   -0.0870029   -0.0574515
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0957909   -0.1079815   -0.0836003
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.1075187   -0.1157888   -0.0992486
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0721849   -0.1469323    0.0025625
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0742908   -0.1142767   -0.0343048
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0978352   -0.1341310   -0.0615395
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0530313   -0.0719624   -0.0341003
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0634582   -0.0820409   -0.0448755
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0762797   -0.0951014   -0.0574580
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0747477   -0.0986318   -0.0508636
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0559196   -0.0814415   -0.0303977
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0641472   -0.0893652   -0.0389293
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0922385   -0.1322995   -0.0521775
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0709957   -0.1263932   -0.0155982
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1120093   -0.1338065   -0.0902121
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0640440   -0.0843806   -0.0437074
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0760563   -0.1078099   -0.0443028
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0903262   -0.1095678   -0.0710847
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0510016   -0.0628964   -0.0391067
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0676178   -0.0811481   -0.0540874
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0606787   -0.0741938   -0.0471637
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0630734   -0.0953060   -0.0308409
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1021450   -0.1496759   -0.0546140
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0885367   -0.1042156   -0.0728579
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0776995   -0.0921062   -0.0632928
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0898860   -0.1028425   -0.0769295
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.0993485   -0.1074104   -0.0912866
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0440303   -0.1016151    0.0135544
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0928993   -0.1179519   -0.0678466
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0924738   -0.1454879   -0.0394598
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0389346   -0.0558183   -0.0220509
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0496876   -0.0662786   -0.0330966
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0309509   -0.0500487   -0.0118531
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0659297   -0.0906783   -0.0411811
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0747676   -0.0997230   -0.0498122
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0537912   -0.0795027   -0.0280796
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0537320   -0.0952724   -0.0121917
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0594698   -0.1042993   -0.0146404
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0551668   -0.0694611   -0.0408725
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0531614   -0.0716529   -0.0346698
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0731779   -0.1003106   -0.0460451
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0704148   -0.0842384   -0.0565912
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0603281   -0.0776409   -0.0430154
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0703362   -0.0890969   -0.0515755
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0566529   -0.0755104   -0.0377955
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0838935   -0.1169633   -0.0508237
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1181174   -0.1711635   -0.0650713
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0971978   -0.1122318   -0.0821639
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0006042   -0.0505802    0.0517886
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0163203   -0.0923725    0.0597318
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                 0.0224353   -0.0281040    0.0729745
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0369713   -0.0518196   -0.0221229
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0377536   -0.0516140   -0.0238932
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0384655   -0.0556474   -0.0212836
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0140365   -0.0400166    0.0119435
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0363765   -0.0656226   -0.0071304
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0062448   -0.0316283    0.0191386
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0210764   -0.0703192    0.0281664
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0297833   -0.0764833    0.0169166
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0297449   -0.0432147   -0.0162750
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0573993   -0.0774479   -0.0373507
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0837086   -0.1194953   -0.0479219
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0669730   -0.0799603   -0.0539857
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0575153   -0.0736552   -0.0413754
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0604735   -0.0800515   -0.0408956
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0698010   -0.0914060   -0.0481959
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0767917   -0.1104295   -0.0431539
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1091760   -0.1480808   -0.0702711
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0414672   -0.0597475   -0.0231869
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0015582   -0.0155115    0.0123951
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0104240   -0.0238692    0.0030213
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0246758   -0.0394156   -0.0099361
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0612813   -0.1167099   -0.0058526
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0176790   -0.0584885    0.0231304
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0176025   -0.0310857   -0.0041193
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0114961   -0.0039685    0.0269608
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0361543    0.0084747    0.0638339
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                 0.0059158   -0.0111353    0.0229670
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0649732   -0.0832179   -0.0467284
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0712854   -0.0927597   -0.0498111
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0709418   -0.0926232   -0.0492605
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0427497   -0.0745583   -0.0109411
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0327050   -0.0658251    0.0004150
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0150145   -0.0317386    0.0017095
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0605367    0.0461459    0.0749275
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0341806    0.0207111    0.0476501
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                 0.0432671    0.0258404    0.0606939
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0051470   -0.0365856    0.0468796
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0153690   -0.0565859    0.0258478
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                 0.0254763    0.0122470    0.0387057
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0682992    0.0385152    0.0980832
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0202222   -0.0105420    0.0509864
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                 0.0539949    0.0318934    0.0760963
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0206458   -0.0010044    0.0422960
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.0152067   -0.0038644    0.0342779
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                 0.0153015   -0.0084473    0.0390503
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0064338   -0.0319859    0.0191183
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0107593   -0.0358351    0.0143165
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0222409   -0.0366558   -0.0078260


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1031330   -0.1715896   -0.0346763
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2821028   -0.3073160   -0.2568895
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402688   -0.1504985   -0.1300391
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5747177   -0.6062873   -0.5431481
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0677269   -0.0765502   -0.0589035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0532328    0.0457629    0.0607027
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0294028   -0.0483124   -0.0104932
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0841486   -0.1008599   -0.0674373
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1363801   -0.1576236   -0.1151366
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0007738   -0.0061767    0.0077243
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0818843   -0.1012900   -0.0624786
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525285   -0.0687206   -0.0363364
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0045762   -0.0287122    0.0195598
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1369127   -0.1542372   -0.1195881
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0985796   -0.1048064   -0.0923527
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0855262   -0.0960534   -0.0749990
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652640   -0.0796167   -0.0509113
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1061496   -0.1248815   -0.0874176
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590759   -0.0665312   -0.0516205
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0866609   -0.1006884   -0.0726333
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0933036   -0.0995020   -0.0871051
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0779154   -0.0860269   -0.0698039
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0649105   -0.0794330   -0.0503881
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0554331   -0.0683830   -0.0424832
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0979957   -0.1120698   -0.0839217
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0075911   -0.0223071    0.0374893
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189489   -0.0345324   -0.0033654
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0289062   -0.0415733   -0.0162391
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0575552   -0.0726452   -0.0424652
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0220748   -0.0349179   -0.0092317
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0224138   -0.0360021   -0.0088256
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0194181    0.0072915    0.0315446
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0177555   -0.0291192   -0.0063918


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0447791   -0.1876560    0.0980977
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0790540   -0.2099507    0.0518427
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0054419   -0.0354019    0.0462858
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0393821   -0.0828932    0.0041290
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0830934   -0.1988708    0.0326839
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1388175   -0.2145018   -0.0631332
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0193374   -0.0917023    0.0530276
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0834397   -0.1448157   -0.0220636
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0180588   -0.0062907    0.0424084
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0326868   -0.0577991   -0.0075745
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0869816   -0.1823850    0.0084217
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1286990   -0.2155048   -0.0418932
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0229856   -0.0485369    0.0025657
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0744268   -0.0975862   -0.0512673
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0076880   -0.0065854    0.0219613
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0406661   -0.0557457   -0.0255864
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0166097   -0.1108133    0.0775940
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0613019   -0.1866857    0.0640819
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0012212   -0.0381246    0.0356823
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0098113   -0.0502470    0.0306243
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0028445   -0.0448272    0.0391381
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0019098   -0.0377083    0.0415279
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0171902   -0.0739172    0.1082977
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0831868   -0.1500860   -0.0162876
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0674361   -0.1194664   -0.0154057
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0626923   -0.1069727   -0.0184119
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0293909   -0.0513181   -0.0074637
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0252991   -0.0480021   -0.0025962
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0622628   -0.1324037    0.0078782
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1184040   -0.1759533   -0.0608546
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0397472   -0.0608268   -0.0186676
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0520074   -0.0710533   -0.0329614
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0336177   -0.0482736   -0.0189618
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0389542   -0.0566954   -0.0212130
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0732276   -0.1957767    0.0493214
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0214002   -0.1391024    0.0963021
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0067430   -0.0321654    0.0186795
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0318743   -0.0583472   -0.0054014
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0147102   -0.0557863    0.0263660
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0454398   -0.0828626   -0.0080170
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0886364   -0.1868089    0.0095362
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1007414   -0.1670698   -0.0344130
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0101638   -0.0405401    0.0608677
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0244557   -0.0623251    0.0134138
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0239192   -0.0440991   -0.0037393
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0143025   -0.0347226    0.0061176
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0536937   -0.1212228    0.0138353
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0677975   -0.1197655   -0.0158295
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0235637   -0.0427192   -0.0044083
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0352915   -0.0522242   -0.0183589
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0021059   -0.1104269    0.1062152
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0256503   -0.1354515    0.0841508
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0104269   -0.0369543    0.0161005
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0232483   -0.0499437    0.0034470
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0188282   -0.0161264    0.0537827
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0106005   -0.0241327    0.0453337
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0212428   -0.0471221    0.0896078
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0197708   -0.0653778    0.0258363
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0120124   -0.0497200    0.0256953
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0262823   -0.0542790    0.0017144
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0166162   -0.0346317    0.0013993
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0096771   -0.0276811    0.0083269
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0390715   -0.0965009    0.0183578
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0254633   -0.0613068    0.0103803
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0121865   -0.0315624    0.0071894
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0216490   -0.0381580   -0.0051400
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0488689   -0.0830091   -0.0147288
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0484435   -0.1584382    0.0615511
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0107530   -0.0344240    0.0129181
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0079837   -0.0175072    0.0334746
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0088379   -0.0439843    0.0263084
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0121385   -0.0235486    0.0478257
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0057378   -0.0668548    0.0553792
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0014348   -0.0453658    0.0424962
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0200165   -0.0528513    0.0128183
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0172534   -0.0403409    0.0058340
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0100081   -0.0355364    0.0155202
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0036752   -0.0219243    0.0292747
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0342239   -0.0967339    0.0282861
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0133043   -0.0496310    0.0230224
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0169245   -0.1214856    0.0876366
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0218311   -0.0755150    0.1191771
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0007823   -0.0210945    0.0195298
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0014942   -0.0242030    0.0212147
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0223400   -0.0614590    0.0167790
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0077917   -0.0285302    0.0441136
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0087069   -0.0765725    0.0591587
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0086685   -0.0597203    0.0423834
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0263093   -0.0673293    0.0147106
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0095737   -0.0334613    0.0143139
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0029582   -0.0283313    0.0224149
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0122857   -0.0392537    0.0146824
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0323843   -0.0838147    0.0190461
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0353245   -0.0029596    0.0736086
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0088658   -0.0282428    0.0105112
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0231177   -0.0434143   -0.0028210
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0436022   -0.0252291    0.1124335
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0436788   -0.0133663    0.1007238
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0246582   -0.0070486    0.0563649
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0055803   -0.0285998    0.0174392
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0063122   -0.0344905    0.0218660
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0059687   -0.0343051    0.0223677
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0100446   -0.0358762    0.0559655
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0277352   -0.0082020    0.0636723
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0263561   -0.0460670   -0.0066452
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0172696   -0.0398701    0.0053310
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0205160   -0.0791713    0.0381392
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0203293   -0.0234499    0.0641086
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0480770   -0.0908966   -0.0052573
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0143043   -0.0513929    0.0227842
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0054390   -0.0342911    0.0234130
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0053443   -0.0374805    0.0267919
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0043255   -0.0401264    0.0314754
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0158071   -0.0451448    0.0135305


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0493451   -0.1434883    0.0447982
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0086623   -0.0311484    0.0138239
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1175572   -0.1843548   -0.0507595
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0447355   -0.0875732   -0.0018978
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0042346   -0.0171011    0.0086318
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1039638   -0.1768679   -0.0310596
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0490219   -0.0673991   -0.0306446
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0108006   -0.0194383   -0.0021629
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0344657   -0.1175736    0.0486422
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0031256   -0.0241217    0.0178704
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0003072   -0.0233690    0.0227545
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0629341   -0.1208845   -0.0049837
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0477317   -0.0787974   -0.0166660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0170997   -0.0290404   -0.0051589
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0928493   -0.1415658   -0.0441327
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0402403   -0.0554802   -0.0250005
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0230942   -0.0321564   -0.0140319
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0272730   -0.1115649    0.0570190
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0111583   -0.0252021    0.0028855
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0196166   -0.0414875    0.0022544
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0871169   -0.1446906   -0.0295432
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0087436   -0.0357699    0.0182827
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0117837   -0.0224562   -0.0011111
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0555042   -0.0993848   -0.0116235
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0263524   -0.0398731   -0.0128317
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0133413   -0.0908361    0.0641534
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100157   -0.0246904    0.0046591
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0094837   -0.0098448    0.0288122
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0139110   -0.0541488    0.0263267
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0157799   -0.0354914    0.0039315
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0080743   -0.0174486    0.0013000
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0235874   -0.0537930    0.0066182
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0156041   -0.0288421   -0.0023660
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0338851   -0.0944837    0.0267135
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0019761   -0.0151557    0.0112034
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0010192   -0.0191071    0.0211454
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0017011   -0.0413015    0.0378993
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0135636   -0.0304420    0.0033149
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0019467   -0.0157783    0.0118849
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0141022   -0.0444526    0.0162483
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0069869   -0.0604367    0.0744106
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0006724   -0.0121798    0.0108349
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0049124   -0.0264133    0.0165885
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0078298   -0.0538099    0.0381503
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0115583   -0.0302384    0.0071218
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0048328   -0.0185464    0.0088808
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0192365   -0.0119064    0.0503793
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0093817   -0.0202124    0.0014490
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0392064   -0.0118735    0.0902864
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0040965   -0.0117875    0.0199805
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0039363   -0.0191937    0.0113211
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0203359   -0.0087408    0.0494126
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0143025   -0.0256925   -0.0029125
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0142711   -0.0249008    0.0534430
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0201723   -0.0464891    0.0061445
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0034178   -0.0201892    0.0133535
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0113217   -0.0348906    0.0122472
