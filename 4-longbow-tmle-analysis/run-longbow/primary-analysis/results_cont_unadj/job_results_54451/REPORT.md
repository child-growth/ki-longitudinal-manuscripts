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

**Outcome Variable:** y_rate_wtkg

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

agecat         studyid                    country                        parity    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            106     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2             95     389
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           188     389
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            242     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            226     640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           172     640
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1996
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            659    1996
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           657    1996
0-3 months     ki1101329-Keneba           GAMBIA                         1            192    1441
0-3 months     ki1101329-Keneba           GAMBIA                         2            149    1441
0-3 months     ki1101329-Keneba           GAMBIA                         3+          1100    1441
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            137     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            130     509
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+           242     509
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3175    8171
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2534    8171
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2462    8171
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             57     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      2             66     396
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           273     396
0-3 months     ki1135781-COHORTS          INDIA                          1            713    4147
0-3 months     ki1135781-COHORTS          INDIA                          2           1045    4147
0-3 months     ki1135781-COHORTS          INDIA                          3+          2389    4147
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           3262   10022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           3462   10022
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3298   10022
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1             93     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2             82     346
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           171     346
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            216     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            222     601
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           163     601
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            567    1640
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1640
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           537    1640
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1131
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1131
3-6 months     ki1101329-Keneba           GAMBIA                         3+           878    1131
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            122     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     469
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           227     469
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2306    6138
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1933    6138
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1899    6138
3-6 months     ki1135781-COHORTS          GUATEMALA                      1             54     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      2             66     394
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           274     394
3-6 months     ki1135781-COHORTS          INDIA                          1            718    4194
3-6 months     ki1135781-COHORTS          INDIA                          2           1072    4194
3-6 months     ki1135781-COHORTS          INDIA                          3+          2404    4194
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           2257    6299
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           2189    6299
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          1853    6299
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1             95     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2             79     350
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+           176     350
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              0      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          2             12      74
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          3+            62      74
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            207     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2            213     576
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+           156     576
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            512    1470
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            474    1470
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           484    1470
6-9 months     ki1101329-Keneba           GAMBIA                         1             90     725
6-9 months     ki1101329-Keneba           GAMBIA                         2             67     725
6-9 months     ki1101329-Keneba           GAMBIA                         3+           568     725
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            126     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2            128     477
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+           223     477
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2132    5570
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1723    5570
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1715    5570
6-9 months     ki1135781-COHORTS          GUATEMALA                      1             58     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      2             63     392
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+           271     392
6-9 months     ki1135781-COHORTS          INDIA                          1            648    3775
6-9 months     ki1135781-COHORTS          INDIA                          2            951    3775
6-9 months     ki1135781-COHORTS          INDIA                          3+          2176    3775
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            106     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2             79     371
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           186     371
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             12      72
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+            60      72
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            209     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            209     569
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           151     569
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            376    1064
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1064
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           349    1064
9-12 months    ki1101329-Keneba           GAMBIA                         1             75     714
9-12 months    ki1101329-Keneba           GAMBIA                         2             65     714
9-12 months    ki1101329-Keneba           GAMBIA                         3+           574     714
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            116     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2            121     454
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           217     454
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1912    5053
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1569    5053
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1572    5053
9-12 months    ki1135781-COHORTS          GUATEMALA                      1             68     440
9-12 months    ki1135781-COHORTS          GUATEMALA                      2             68     440
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+           304     440
9-12 months    ki1135781-COHORTS          INDIA                          1            566    3291
9-12 months    ki1135781-COHORTS          INDIA                          2            825    3291
9-12 months    ki1135781-COHORTS          INDIA                          3+          1900    3291
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            114     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2             80     377
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+           183     377
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             13      74
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+            61      74
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            199     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2            201     537
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+           137     537
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            266     776
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            256     776
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           254     776
12-15 months   ki1101329-Keneba           GAMBIA                         1            104    1104
12-15 months   ki1101329-Keneba           GAMBIA                         2            103    1104
12-15 months   ki1101329-Keneba           GAMBIA                         3+           897    1104
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            116     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            120     452
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+           216     452
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            662    1858
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            566    1858
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           630    1858
12-15 months   ki1135781-COHORTS          GUATEMALA                      1             72     429
12-15 months   ki1135781-COHORTS          GUATEMALA                      2             63     429
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+           294     429
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            113     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2             75     362
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+           174     362
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             13      72
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+            59      72
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            197     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2            199     533
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+           137     533
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649
15-18 months   ki1101329-Keneba           GAMBIA                         1            110    1124
15-18 months   ki1101329-Keneba           GAMBIA                         2            101    1124
15-18 months   ki1101329-Keneba           GAMBIA                         3+           913    1124
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            125     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            129     477
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+           223     477
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            425    1198
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            368    1198
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           405    1198
15-18 months   ki1135781-COHORTS          GUATEMALA                      1             65     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      2             55     380
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+           260     380
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            200     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2            197     542
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+           145     542
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              4      11
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4      11
18-21 months   ki1101329-Keneba           GAMBIA                         1            115    1126
18-21 months   ki1101329-Keneba           GAMBIA                         2            109    1126
18-21 months   ki1101329-Keneba           GAMBIA                         3+           902    1126
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            117     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            121     447
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+           209     447
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            244     657
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            201     657
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           212     657
18-21 months   ki1135781-COHORTS          GUATEMALA                      1             65     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      2             54     381
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+           262     381
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            176     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            180     485
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           129     485
21-24 months   ki1101329-Keneba           GAMBIA                         1            102    1004
21-24 months   ki1101329-Keneba           GAMBIA                         2             98    1004
21-24 months   ki1101329-Keneba           GAMBIA                         3+           804    1004
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             85     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             95     343
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           163     343
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            103     303
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             91     303
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           109     303
21-24 months   ki1135781-COHORTS          GUATEMALA                      1             73     424
21-24 months   ki1135781-COHORTS          GUATEMALA                      2             63     424
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+           288     424


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/4c85df75-acc5-4239-a38e-a12b705cd77d/f902f155-4c4b-4414-879e-0824e0ec2717/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4c85df75-acc5-4239-a38e-a12b705cd77d/f902f155-4c4b-4414-879e-0824e0ec2717/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/4c85df75-acc5-4239-a38e-a12b705cd77d/f902f155-4c4b-4414-879e-0824e0ec2717/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8235899   0.7733712   0.8738087
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.7912816   0.7805047   0.8020585
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7714063   0.7344513   0.8083613
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9136672   0.8903824   0.9369520
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9103010   0.8845440   0.9360580
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8733646   0.8455931   0.9011361
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9268469   0.9093149   0.9443790
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9287058   0.9110576   0.9463541
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9111025   0.8932171   0.9289878
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.9764807   0.9440951   1.0088664
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.9799486   0.9461002   1.0137970
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.9086666   0.8952721   0.9220611
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8642331   0.8317490   0.8967173
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8481265   0.8193539   0.8768990
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7945984   0.7688298   0.8203670
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9640617   0.9560265   0.9720969
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.9559389   0.9466539   0.9652240
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.9248043   0.9153474   0.9342612
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8742991   0.8087173   0.9398808
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8458497   0.7958465   0.8958529
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7352662   0.7043620   0.7661704
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.8340761   0.8208305   0.8473218
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                0.8364009   0.8249784   0.8478234
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.7876403   0.7797524   0.7955282
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8482046   0.8414599   0.8549492
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8670935   0.8609664   0.8732206
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.8355968   0.8287857   0.8424079
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4595408   0.4206946   0.4983870
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4090702   0.3893357   0.4288046
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4088858   0.3961378   0.4216339
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5071425   0.4851011   0.5291839
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4810988   0.4628177   0.4993800
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4759448   0.4471752   0.5047144
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4308645   0.4156508   0.4460781
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4110349   0.3959249   0.4261449
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4183911   0.4032714   0.4335108
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.4965368   0.4672577   0.5258159
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.4548900   0.4234697   0.4863102
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.4354515   0.4237105   0.4471924
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5345611   0.5066341   0.5624881
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4863027   0.4603398   0.5122656
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4837318   0.4641498   0.5033137
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4978749   0.4905979   0.5051519
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4682027   0.4599454   0.4764601
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4649533   0.4569714   0.4729353
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5467817   0.5055757   0.5879876
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.4252750   0.3928040   0.4577460
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4351396   0.4151373   0.4551419
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.5130659   0.5013791   0.5247526
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                0.4816194   0.4723589   0.4908800
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.4563111   0.4499808   0.4626415
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4631849   0.4565201   0.4698497
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4365699   0.4304746   0.4426652
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4346609   0.4259496   0.4433721
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2809889   0.2617887   0.3001891
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2538393   0.1741516   0.3335269
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2379640   0.2252247   0.2507032
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2609938   0.2434866   0.2785009
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2611255   0.2445539   0.2776970
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2171397   0.1872421   0.2470373
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2644801   0.2490108   0.2799493
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2460291   0.2293865   0.2626717
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2553532   0.2409388   0.2697676
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.2188153   0.1888396   0.2487910
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.2284025   0.1884361   0.2683688
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.2006431   0.1849933   0.2162930
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1963345   0.1758459   0.2168231
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1928919   0.1627365   0.2230472
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1793064   0.1641079   0.1945048
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2617792   0.2542906   0.2692678
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2582364   0.2503041   0.2661687
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2542109   0.2462549   0.2621669
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2172686   0.1725281   0.2620091
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2166824   0.1798083   0.2535565
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1980831   0.1812603   0.2149059
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.2916012   0.2797572   0.3034452
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                0.2722952   0.2616857   0.2829047
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.2566738   0.2501258   0.2632217
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2028334   0.1674624   0.2382044
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2336985   0.2121068   0.2552902
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2148094   0.1838355   0.2457832
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1746473   0.1576688   0.1916257
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1802359   0.1659632   0.1945085
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1777808   0.1606265   0.1949351
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2104555   0.1928500   0.2280609
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1926107   0.1741467   0.2110748
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2106067   0.1938734   0.2273401
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2027645   0.1659027   0.2396262
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1811492   0.1410021   0.2212963
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1554970   0.1418053   0.1691888
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1496251   0.1281088   0.1711414
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1659664   0.1362451   0.1956877
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1287251   0.1117098   0.1457404
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1906031   0.1831431   0.1980632
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1694458   0.1614915   0.1774001
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1779151   0.1697842   0.1860460
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1540237   0.1234694   0.1845781
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1419612   0.1142870   0.1696355
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1446269   0.1297945   0.1594593
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2463968   0.2327872   0.2600064
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2166423   0.2059104   0.2273742
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2024785   0.1956397   0.2093173
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1585542   0.1271654   0.1899430
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1633617   0.0752843   0.2514391
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1506936   0.1370159   0.1643714
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1994896   0.1789831   0.2199961
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1537993   0.1352386   0.1723600
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1902576   0.1695333   0.2109819
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1843308   0.1633621   0.2052995
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1666391   0.1468133   0.1864649
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1709633   0.1525387   0.1893879
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1625428   0.1245100   0.2005756
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1997665   0.1632358   0.2362972
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1827224   0.1710095   0.1944353
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1874989   0.1617221   0.2132757
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1435530   0.1203011   0.1668049
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1797053   0.1600936   0.1993170
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1506175   0.1368210   0.1644139
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1431218   0.1292644   0.1569792
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1553107   0.1417397   0.1688816
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1442884   0.1106044   0.1779724
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1507911   0.1109938   0.1905884
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1511940   0.1363283   0.1660597
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1544945   0.1241813   0.1848078
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1394897   0.0879796   0.1909998
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1392758   0.1313122   0.1472394
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1669881   0.1456073   0.1883690
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1527205   0.1342915   0.1711495
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1463305   0.1256721   0.1669888
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1560273   0.1306815   0.1813732
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1831365   0.1554517   0.2108214
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1691885   0.1478657   0.1905112
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1341845   0.1029051   0.1654640
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1594018   0.1246104   0.1941931
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1640706   0.1517867   0.1763545
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2450587   0.2168820   0.2732354
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2386802   0.2106407   0.2667196
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2267485   0.2033137   0.2501832
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1340170   0.1155204   0.1525135
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1292384   0.1106127   0.1478642
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1374981   0.1195566   0.1554397
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1019166   0.0708663   0.1329670
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0780145   0.0368905   0.1191384
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1333678   0.1140165   0.1527192
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1334984   0.1153658   0.1516310
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1271487   0.1088303   0.1454672
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1383491   0.1142021   0.1624961
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1363320   0.1010129   0.1716510
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1533614   0.1199412   0.1867816
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1589299   0.1459781   0.1718817
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1397168   0.1111841   0.1682494
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1306533   0.1014126   0.1598940
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1506916   0.1270567   0.1743266
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1421860   0.1138104   0.1705615
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1128373   0.0777894   0.1478851
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1042101   0.0797127   0.1287075
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1119995   0.0793795   0.1446196
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1573101   0.1084864   0.2061338
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1557284   0.1371078   0.1743490
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1324617   0.1136110   0.1513124
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1540860   0.1340094   0.1741626
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1380383   0.1182271   0.1578495
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1176431   0.0771289   0.1581573
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1398245   0.1059772   0.1736717
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1773312   0.1646979   0.1899644
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1656966   0.1179453   0.2134480
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1906404   0.1468965   0.2343843
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1745604   0.1375985   0.2115222
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1145208   0.0685133   0.1605283
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1155734   0.0576402   0.1735067
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0985549   0.0563434   0.1407665
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1797933   0.1507997   0.2087869
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1829507   0.1504559   0.2154454
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1578194   0.1391828   0.1764561


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7904799   0.7612204   0.8197394
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9222782   0.9120605   0.9324960
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9250728   0.9133367   0.9368088
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9497140   0.9445866   0.9548414
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7737091   0.7483126   0.7991055
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8079112   0.8020259   0.8137966
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8505806   0.8465295   0.8546318
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4225449   0.4096930   0.4353968
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4202993   0.4115402   0.4290585
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4451759   0.4348013   0.4555506
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4487884   0.4323564   0.4652203
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4724963   0.4676809   0.4773116
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4455447   0.4412571   0.4498323
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2532254   0.2418755   0.2645754
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2555255   0.2465533   0.2644978
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2054643   0.1921119   0.2188168
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2039109   0.1892499   0.2185720
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2666046   0.2615353   0.2716740
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154099   0.2029278   0.2278919
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2048196   0.1946367   0.2150025
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1627974   0.1505170   0.1750777
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800863   0.1755557   0.1846170
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1456672   0.1335954   0.1577389
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2135824   0.2082338   0.2189309
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1557588   0.1490309   0.1624867
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741189   0.1626692   0.1855686
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1824116   0.1716763   0.1931470
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1499758   0.1369388   0.1630128
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1440707   0.1288559   0.1592855
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1694110   0.1549701   0.1838520
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1607263   0.1498189   0.1716337
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1199764   0.1043771   0.1355756
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1560829   0.1446249   0.1675408
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1484923   0.1328210   0.1641635
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1676062   0.1561278   0.1790846
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1653368   0.1508602   0.1798134


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0323083   -0.0879297    0.0233130
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0521836   -0.0802044   -0.0241629
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0033662   -0.0380880    0.0313556
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0403026   -0.0765440   -0.0040612
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0018589   -0.0230175    0.0267353
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0157445   -0.0407896    0.0093006
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0034678   -0.0433781    0.0503138
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0678142   -0.1028604   -0.0327679
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0161067   -0.0595011    0.0272877
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0696348   -0.1110985   -0.0281711
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0081228   -0.0204019    0.0041563
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0392574   -0.0516670   -0.0268478
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0284494   -0.1109193    0.0540205
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1390329   -0.2115314   -0.0665344
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0023247   -0.0151659    0.0198154
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0464358   -0.0618523   -0.0310194
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0188889    0.0096553    0.0281226
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0126078   -0.0215969   -0.0036186
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0504706   -0.0763848   -0.0245565
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0506550   -0.0970147   -0.0042952
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0260437   -0.0546797    0.0025923
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0311977   -0.0674402    0.0050447
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0198296   -0.0412718    0.0016125
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0124734   -0.0339224    0.0089756
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0416468   -0.0845944    0.0013008
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0610853   -0.0926308   -0.0295399
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0482584   -0.0863896   -0.0101272
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0508293   -0.0849376   -0.0167211
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0296721   -0.0406784   -0.0186658
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0329215   -0.0437227   -0.0221203
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1215067   -0.1739690   -0.0690443
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1116421   -0.1574462   -0.0658379
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0314464   -0.0463574   -0.0165354
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0567547   -0.0700458   -0.0434636
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0266150   -0.0354742   -0.0177558
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0285240   -0.0388497   -0.0181984
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0271497   -0.1078895    0.0535902
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0430249   -0.0661279   -0.0199220
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0001317   -0.0239747    0.0242380
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0438541   -0.0785004   -0.0092078
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0184510   -0.0411726    0.0042707
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0091269   -0.0302710    0.0120172
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0095871   -0.0403714    0.0595457
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0181722   -0.0519873    0.0156429
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0034427   -0.0398999    0.0330146
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0170281   -0.0425384    0.0084822
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0035428   -0.0144516    0.0073660
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0075683   -0.0184943    0.0033577
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0005862   -0.0585639    0.0573915
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0191855   -0.0669843    0.0286132
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0193060   -0.0352070   -0.0034050
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0349274   -0.0484609   -0.0213939
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0308651   -0.0227598    0.0844900
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0119760   -0.0521328    0.0760847
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0055886   -0.0165920    0.0277691
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0031335   -0.0210023    0.0272694
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0178447   -0.0433569    0.0076675
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0001513   -0.0241377    0.0244403
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0216153   -0.0761183    0.0328878
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0472674   -0.0865898   -0.0079450
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0163413   -0.0203507    0.0530333
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0209000   -0.0483312    0.0065311
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0211573   -0.0320625   -0.0102522
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0126880   -0.0237227   -0.0016533
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0120625   -0.0532867    0.0291617
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0093968   -0.0433611    0.0245674
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0297545   -0.0470864   -0.0124226
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0439183   -0.0591495   -0.0286871
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0048075   -0.1122603    0.1218753
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0078605   -0.0396929    0.0239718
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0456903   -0.0733493   -0.0180314
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0092320   -0.0383870    0.0199230
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0176917   -0.0465491    0.0111657
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0133675   -0.0412808    0.0145459
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0372237   -0.0155114    0.0899587
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0201796   -0.0196159    0.0599752
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0439459   -0.0786603   -0.0092314
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0077936   -0.0401828    0.0245956
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0074957   -0.0270499    0.0120586
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0046932   -0.0146592    0.0240455
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0065027   -0.0456359    0.0586413
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0069056   -0.0299129    0.0437240
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0150049   -0.0740412    0.0440315
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0152187   -0.0476117    0.0171743
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0142676   -0.0424947    0.0139595
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0206577   -0.0503882    0.0090729
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0271092   -0.0104256    0.0646440
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0131611   -0.0199609    0.0462832
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0252172   -0.0215679    0.0720023
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0298861   -0.0037190    0.0634912
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0063785   -0.0461295    0.0333724
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0183102   -0.0549588    0.0183383
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0047785   -0.0310282    0.0214711
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0034812   -0.0222875    0.0292498
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0239022   -0.0754318    0.0276275
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0314512   -0.0051356    0.0680381
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0063497   -0.0321248    0.0194254
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0048507   -0.0253465    0.0350479
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0170295   -0.0315951    0.0656540
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0225979   -0.0150210    0.0602169
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0090634   -0.0499184    0.0317916
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0109749   -0.0260754    0.0480251
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0293487   -0.0744433    0.0157459
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0379759   -0.0754631   -0.0004886
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0453106   -0.0134076    0.1040287
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0437288    0.0061683    0.0812894
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0216243   -0.0059151    0.0491637
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0055766   -0.0217700    0.0329231
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0221814   -0.0306110    0.0749738
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0596881    0.0172499    0.1021263
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0249438   -0.0398152    0.0897027
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0088637   -0.0515215    0.0692489
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0010526   -0.0729267    0.0750320
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0159659   -0.0784039    0.0464721
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0031574   -0.0403918    0.0467067
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0219738   -0.0564405    0.0124929


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0331101   -0.0559331   -0.0102870
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0120200   -0.0307253    0.0066853
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0045687   -0.0187934    0.0096561
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0514080   -0.0815256   -0.0212904
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0372210   -0.0650632   -0.0093788
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0143477   -0.0207257   -0.0079696
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1005900   -0.1614816   -0.0396984
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0261649   -0.0384024   -0.0139275
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0023761   -0.0029988    0.0077510
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0369959   -0.0651398   -0.0088521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0180814   -0.0356042   -0.0005586
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0105652   -0.0227362    0.0016059
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0513609   -0.0786294   -0.0240924
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0369494   -0.0607158   -0.0131830
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0195298   -0.0253303   -0.0137294
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0979933   -0.1367557   -0.0592310
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0405696   -0.0511999   -0.0299393
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0176401   -0.0227339   -0.0125464
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0277635   -0.0454744   -0.0100526
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0118285   -0.0270420    0.0033851
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0089546   -0.0213281    0.0034190
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0133510   -0.0425699    0.0158679
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0088846   -0.0274251    0.0096560
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0034262   -0.0092049    0.0023525
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0133577   -0.0536605    0.0269451
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0249966   -0.0358510   -0.0141421
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0125765   -0.0307981    0.0559510
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0028843   -0.0099078    0.0156765
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0056359   -0.0195850    0.0083133
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0399671   -0.0749547   -0.0049794
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0056344   -0.0253218    0.0140530
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0105168   -0.0163531   -0.0046805
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0083566   -0.0364766    0.0197635
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0328144   -0.0450667   -0.0205621
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0027954   -0.0404700    0.0348791
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0194572   -0.0351372   -0.0037773
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0102119   -0.0266237    0.0062000
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0198688   -0.0160368    0.0557745
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0153914   -0.0376557    0.0068729
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0006921   -0.0115508    0.0101667
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0056874   -0.0247054    0.0360803
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0104238   -0.0341748    0.0133272
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0106367   -0.0266906    0.0054172
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0133837   -0.0070467    0.0338140
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0265418   -0.0035560    0.0566395
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0102851   -0.0349910    0.0144207
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0002910   -0.0148512    0.0142691
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0180597   -0.0115651    0.0476845
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0010102   -0.0157450    0.0137246
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0197509   -0.0137739    0.0532758
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0026780   -0.0224037    0.0277598
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0212328   -0.0435320    0.0010663
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0364927    0.0057260    0.0672594
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0095088   -0.0055993    0.0246168
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0499631    0.0120205    0.0879058
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0111208   -0.0306689    0.0529106
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0054274   -0.0435891    0.0327344
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0144565   -0.0420379    0.0131250
