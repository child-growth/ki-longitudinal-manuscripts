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

**Outcome Variable:** y_rate_len

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
![](/tmp/b8264787-3d53-4057-8700-3da61f8cd8a2/798b6dc5-f0dc-4644-8a2e-2ef651bb3d20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b8264787-3d53-4057-8700-3da61f8cd8a2/798b6dc5-f0dc-4644-8a2e-2ef651bb3d20/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b8264787-3d53-4057-8700-3da61f8cd8a2/798b6dc5-f0dc-4644-8a2e-2ef651bb3d20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.5043939   3.2772414   3.7315464
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.4006664   3.2945124   3.5068204
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                3.3451099   3.2022873   3.4879325
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2793500   3.2169166   3.3417834
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.2765172   3.2163052   3.3367292
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.2024435   3.1325252   3.2723618
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                3.3187769   3.1709542   3.4665996
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                3.1834967   3.0026807   3.3643127
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                3.0715023   3.0166170   3.1263875
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.6658963   3.5605534   3.7712392
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                3.6765019   3.5738050   3.7791987
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                3.5200755   3.4511479   3.5890031
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3410461   3.3079427   3.3741494
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.3880686   3.3521004   3.4240369
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                3.2791569   3.2411282   3.3171856
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.7271728   2.5731274   2.8812181
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                2.5487362   2.4317308   2.6657417
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                2.4644301   2.3840561   2.5448042
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.5950994   3.5548020   3.6353969
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.5571386   3.5234168   3.5908605
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                3.4395056   3.4148932   3.4641179
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6489341   3.6258671   3.6720011
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.6949778   3.6722921   3.7176635
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.5998084   3.5767723   3.6228446
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.9903445   1.7772645   2.2034245
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.9625628   1.9059264   2.0191992
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.8512151   1.7700196   1.9324107
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9768346   1.9230840   2.0305851
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9674906   1.9113437   2.0236376
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.9488216   1.8805313   2.0171119
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7978869   1.7361658   1.8596080
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7899300   1.7237339   1.8561261
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.8001906   1.7410485   1.8593327
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1017984   1.9692632   2.2343335
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.1491645   2.0075139   2.2908152
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.9282051   1.8800272   1.9763829
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.8047232   1.7300698   1.8793767
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.6849322   1.6069477   1.7629168
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.6720362   1.6156544   1.7284180
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0097001   1.9770886   2.0423116
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9526962   1.9190078   1.9863846
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.9569123   1.9209989   1.9928258
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.8850567   1.7738086   1.9963048
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.7514190   1.6524800   1.8503579
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.6178755   1.5645103   1.6712406
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9483831   1.9128184   1.9839478
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8659197   1.8377336   1.8941059
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.8255586   1.8053113   1.8458060
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9689998   1.9463552   1.9916445
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9107408   1.8870977   1.9343839
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.8964976   1.8681522   1.9248430
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.2924555   1.1115270   1.4733839
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.1183445   0.9901414   1.2465476
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.2263797   1.1372247   1.3155347
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3066162   1.2673426   1.3458898
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.2957290   1.2516146   1.3398433
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.2324730   1.1849148   1.2800312
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3713464   1.3102431   1.4324497
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.3335668   1.2630089   1.4041247
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.2608006   1.2013673   1.3202339
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.6279553   1.4929925   1.7629182
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.4316003   1.2573497   1.6058509
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.3920052   1.3286396   1.4553708
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.3387450   1.2721615   1.4053285
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.3618951   1.2647140   1.4590763
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.2795796   1.2251132   1.3340459
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.3738185   1.3425402   1.4050969
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.3208223   1.2872791   1.3543655
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.3397304   1.3053962   1.3740646
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.1966857   1.0900350   1.3033364
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.0782806   0.9687722   1.1877890
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.0342485   0.9893907   1.0791064
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.2534093   1.2200450   1.2867736
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                1.2012001   1.1734902   1.2289099
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.1624573   1.1437067   1.1812078
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0203244   0.8436185   1.1970303
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0209992   0.9330946   1.1089039
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.9528516   0.8739456   1.0317576
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.0747493   1.0280488   1.1214499
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0505002   1.0051197   1.0958807
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.0151287   0.9687298   1.0615276
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0682480   1.0110939   1.1254020
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1084219   1.0481582   1.1686855
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.0869694   1.0261845   1.1477543
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.0089571   0.9167627   1.1011515
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                1.0658785   0.9344075   1.1973495
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.9510995   0.8991756   1.0030233
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.0404999   0.9917511   1.0892488
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.0117936   0.9371551   1.0864321
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.9684505   0.9219769   1.0149241
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1026463   1.0740386   1.1312540
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.0605923   1.0281007   1.0930838
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.0749094   1.0427024   1.1071163
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0136836   0.9339735   1.0933938
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.9203718   0.8021432   1.0386005
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.9402511   0.9019931   0.9785091
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0276520   0.9924363   1.0628678
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                0.9964658   0.9649287   1.0280028
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.9569431   0.9372162   0.9766701
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9440324   0.7956742   1.0923906
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.8233071   0.7701152   0.8764990
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.8031851   0.6564492   0.9499209
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9641997   0.9202364   1.0081630
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9403658   0.8972780   0.9834537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.9816211   0.9325899   1.0306524
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9304943   0.8660966   0.9948919
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9087483   0.8457097   0.9717868
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9536618   0.8892799   1.0180438
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9525618   0.8491272   1.0559964
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.9381409   0.8215903   1.0546915
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.9278687   0.8917607   0.9639767
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9146242   0.8653729   0.9638755
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8715020   0.7991140   0.9438900
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8656276   0.8288698   0.9023853
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9286835   0.8845089   0.9728580
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.9012491   0.8535647   0.9489334
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.9301758   0.8819480   0.9784036
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7999519   0.7142539   0.8856499
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7099000   0.5765609   0.8432391
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7464295   0.7069953   0.7858637
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9480576   0.8137555   1.0823598
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.8989855   0.6852255   1.1127456
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.9907318   0.8597431   1.1217206
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8575439   0.8166490   0.8984388
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8582950   0.8193997   0.8971904
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8508054   0.8047349   0.8968759
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9566377   0.8845636   1.0287119
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8906601   0.8108332   0.9704870
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9690103   0.8992820   1.0387387
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.9251460   0.7921022   1.0581899
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8966716   0.7714174   1.0219257
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8819334   0.8450629   0.9188038
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7925166   0.7375968   0.8474363
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7160961   0.6172402   0.8149519
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7561932   0.7200478   0.7923386
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8137054   0.7689890   0.8584219
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.8057360   0.7527992   0.8586727
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7766441   0.7178328   0.8354555
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6949757   0.6044021   0.7855492
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5979850   0.4916198   0.7043502
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7657224   0.7159582   0.8154867
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8662557   0.8254406   0.9070708
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8442503   0.8048190   0.8836816
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7952309   0.7514191   0.8390426
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7132616   0.5573328   0.8691903
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8439701   0.7284534   0.9594868
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8242991   0.7852183   0.8633799
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8970459   0.8511959   0.9428959
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.9647398   0.8856526   1.0438270
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8723206   0.8228614   0.9217798
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6944078   0.6411998   0.7476159
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6730870   0.6112893   0.7348848
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6735441   0.6111785   0.7359096
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6927117   0.6022730   0.7831504
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6998859   0.6064406   0.7933313
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7502037   0.7013088   0.7990986
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8074511   0.7650501   0.8498522
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7241450   0.6856283   0.7626616
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7562933   0.7039456   0.8086411
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6835734   0.5619101   0.8052368
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6256437   0.5047302   0.7465571
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.7460280   0.7063564   0.7856996
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8483264   0.7615870   0.9350659
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7068349   0.6117135   0.8019563
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8273616   0.7655787   0.8891444
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7002676   0.6353686   0.7651666
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6894629   0.6309833   0.7479424
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6809581   0.6074250   0.7544912
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6840709   0.6131335   0.7550083
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6345422   0.5649513   0.7041331
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.6132002   0.5706614   0.6557391


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.4016721   3.2751931   3.5281511
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1106299   3.0607110   3.1605487
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370118   3.3164684   3.3575551
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5147754   2.4514774   2.5780734
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.4951636   3.4771029   3.5132243
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6486351   3.6333080   3.6639622
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9144516   1.8761636   1.9527397
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7960345   1.7599951   1.8320738
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.6766747   1.6322125   1.7211370
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9275104   1.9126078   1.9424130
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2199478   1.1697810   1.2701146
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229826   1.2861186   1.3598466
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4249547   1.3698531   1.4800562
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0653261   1.0259497   1.1047026
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1876267   1.1734988   1.2017547
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9865499   0.9621090   1.0109908
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872065   1.0529274   1.1214857
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9677634   0.9232065   1.0123204
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0812148   1.0633428   1.0990869
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9486298   0.9141515   0.9831082
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9788325   0.9636749   0.9939901
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8500454   0.8255871   0.8745037
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9308176   0.8938698   0.9677654
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9311532   0.8983800   0.9639264
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7501678   0.7137778   0.7865578
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9584027   0.8755768   1.0412286
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9386381   0.8958056   0.9814706
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8874581   0.8529191   0.9219971
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7287511   0.6878433   0.7696588
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8148545   0.7779341   0.8517749
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7328686   0.6935502   0.7721870
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7279143   0.6917604   0.7640682
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6287357   0.5956706   0.6618009


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1037275   -0.3652295    0.1577745
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1592840   -0.3523313    0.0337634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0028328   -0.0895704    0.0839048
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0769065   -0.1706428    0.0168298
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1352802   -0.3688310    0.0982707
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2472746   -0.4049576   -0.0895916
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0106056   -0.1365126    0.1577238
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1458208   -0.2717102   -0.0199313
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0470226   -0.0018604    0.0959056
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0618892   -0.1123076   -0.0114708
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1784365   -0.3718797    0.0150066
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2627426   -0.4364952   -0.0889901
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0379608   -0.0905064    0.0145849
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1555938   -0.2028130   -0.1083747
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0460437    0.0173872    0.0747002
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0491257   -0.0793738   -0.0188776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0277817   -0.2402263    0.1846628
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1391294   -0.4268721    0.1486133
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0093439   -0.0870717    0.0683838
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0280130   -0.1149192    0.0588932
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0079569   -0.0984633    0.0825496
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0023037   -0.0831789    0.0877864
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0473662   -0.1466196    0.2413519
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1735933   -0.3146134   -0.0325732
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1197910   -0.2277481   -0.0118339
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1326870   -0.2262394   -0.0391346
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0570040   -0.1038913   -0.0101167
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0527878   -0.1012985   -0.0042771
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1336377   -0.2825170    0.0152416
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.2671812   -0.3905667   -0.1437958
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0824634   -0.1278430   -0.0370838
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1228245   -0.1637488   -0.0819001
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0582591   -0.0897336   -0.0267845
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0725022   -0.1105324   -0.0344720
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1741110   -0.4428351    0.0946131
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0660758   -0.3207731    0.1886215
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0108872   -0.0699507    0.0481762
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0741433   -0.1358214   -0.0124651
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0377796   -0.1311179    0.0555586
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1105458   -0.1957862   -0.0253054
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1963550   -0.4167598    0.0240497
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2359501   -0.3850480   -0.0868523
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0231501   -0.0946528    0.1409531
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0591654   -0.1451883    0.0268575
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0529962   -0.0988599   -0.0071325
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0340882   -0.0805335    0.0123572
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1184051   -0.2712660    0.0344558
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1624371   -0.2781376   -0.0467367
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0522092   -0.0955799   -0.0088386
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0909520   -0.1292242   -0.0526799
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0006748   -0.2429933    0.2443430
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0674728   -0.3203001    0.1853546
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0242491   -0.0893669    0.0408687
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0596207   -0.1254522    0.0062109
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0401739   -0.0428821    0.1232299
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0187214   -0.0647136    0.1021563
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0569215   -0.1036539    0.2174968
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0578576   -0.1636683    0.0479531
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0287063   -0.1178543    0.0604416
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0720494   -0.1394011   -0.0046978
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0420541   -0.0853450    0.0012368
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0277370   -0.0708147    0.0153407
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0933118   -0.2359011    0.0492776
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0734325   -0.1618485    0.0149834
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0311863   -0.0784592    0.0160867
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0707089   -0.1110735   -0.0303443
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1207253   -0.2241150   -0.0173357
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1408474   -0.4347225    0.1530278
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0238339   -0.0853914    0.0377237
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0174214   -0.0484332    0.0832761
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0217460   -0.1118621    0.0683701
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0231676   -0.0678934    0.1142285
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0144209   -0.1702502    0.1414084
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0246931   -0.1342491    0.0848628
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0431222   -0.1306763    0.0444318
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0489966   -0.1104525    0.0124592
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0274344   -0.0924358    0.0375670
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0014924   -0.0639088    0.0668935
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0900519   -0.2485557    0.0684519
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0535224   -0.1478580    0.0408132
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0490721   -0.3345280    0.2363838
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0426742   -0.2093452    0.2946936
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0007511   -0.0556868    0.0571891
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0067384   -0.0683411    0.0548642
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0659776   -0.1735277    0.0415725
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0123726   -0.0879106    0.1126558
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0284745   -0.2112018    0.1542529
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0432127   -0.1812710    0.0948457
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0764205   -0.1895074    0.0366664
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0363234   -0.1020704    0.0294236
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0079695   -0.0772649    0.0613260
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0370613   -0.1109419    0.0368192
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0969907   -0.2366943    0.0427130
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0707468   -0.0325975    0.1740911
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0220054   -0.0787566    0.0347458
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0710248   -0.1309025   -0.0111471
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1307085   -0.0633478    0.3247649
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.1110375   -0.0497141    0.2717891
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0676939   -0.0237228    0.1591106
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0247253   -0.0921674    0.0427168
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0213208   -0.1028687    0.0602271
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0208637   -0.1028427    0.0611153
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0071742   -0.1228688    0.1372173
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0574920   -0.0453179    0.1603019
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0833062   -0.1405895   -0.0260228
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0511578   -0.1185235    0.0162079
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0579297   -0.2294582    0.1135988
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0624545   -0.0655134    0.1904225
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1414916   -0.2702231   -0.0127600
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0209649   -0.1274583    0.0855286
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0108048   -0.0981646    0.0765551
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0193095   -0.1173860    0.0787669
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0495287   -0.1489018    0.0498444
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0708707   -0.1535851    0.0118437


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1027218   -0.2520130    0.0465694
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0216689   -0.0698287    0.0264908
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.2081470   -0.3473645   -0.0689295
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0669280   -0.1548525    0.0209966
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0040343   -0.0298523    0.0217837
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2123973   -0.3584710   -0.0663237
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0999358   -0.1374605   -0.0624111
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0002990   -0.0174757    0.0168777
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0758929   -0.2656882    0.1139025
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0110888   -0.0554640    0.0332864
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0018524   -0.0515920    0.0478872
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1302417   -0.2523905   -0.0080930
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0951547   -0.1602999   -0.0300095
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0343138   -0.0598466   -0.0087810
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2083820   -0.3130336   -0.1037304
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0921135   -0.1248389   -0.0593882
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0414894   -0.0609163   -0.0220626
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0725077   -0.2557319    0.1107166
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0241977   -0.0568389    0.0084434
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0483638   -0.0980870    0.0013595
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.2030006   -0.3323406   -0.0736607
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0215423   -0.0830558    0.0399711
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0268411   -0.0511106   -0.0025715
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1313595   -0.2290856   -0.0336335
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0657825   -0.0963441   -0.0352209
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0337745   -0.2107593    0.1432104
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0247744   -0.0608983    0.0113496
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0189585   -0.0272446    0.0651617
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0411936   -0.1344779    0.0520906
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0421238   -0.0893028    0.0050551
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0214315   -0.0439307    0.0010677
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0650538   -0.1396535    0.0095458
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0488195   -0.0811813   -0.0164577
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0939870   -0.2588989    0.0709250
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0044497   -0.0386721    0.0297728
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003234   -0.0514434    0.0520901
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0214086   -0.1201867    0.0773694
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0349196   -0.0798733    0.0100342
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0080915   -0.0433741    0.0271912
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0497841   -0.1283971    0.0288290
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0103450   -0.1665767    0.1872668
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0014441   -0.0331385    0.0302503
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0179997   -0.0773587    0.0413594
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0376879   -0.1620038    0.0866280
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0375646   -0.0889421    0.0138130
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0142811   -0.0519301    0.0233679
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0337754   -0.0502143    0.1177651
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0269180   -0.0586931    0.0048571
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1015929   -0.0423031    0.2454890
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0068497   -0.0396134    0.0533127
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0135254   -0.0577765    0.0307257
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0401569   -0.0428363    0.1231502
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0443121   -0.0778081   -0.0108161
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0443409   -0.0701078    0.1587896
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0492952   -0.1260064    0.0274160
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0095262   -0.0602858    0.0412335
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0553352   -0.1215117    0.0108413
