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

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        parity    n_cell       n  outcome_variable 
-------------  -------------------------  -----------------------------  -------  -------  ------  -----------------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            346    1265  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            300    1265  y_rate_wtkg      
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           619    1265  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            242     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            226     640  y_rate_wtkg      
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           172     640  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            680    1996  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            659    1996  y_rate_wtkg      
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           657    1996  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         1            192    1441  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         2            149    1441  y_rate_wtkg      
0-3 months     ki1101329-Keneba           GAMBIA                         3+          1100    1441  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            137     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            130     509  y_rate_wtkg      
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+           242     509  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3175    8171  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2534    8171  y_rate_wtkg      
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2462    8171  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      1            103     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            114     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           581     798  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          1            713    4147  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          2           1045    4147  y_rate_wtkg      
0-3 months     ki1135781-COHORTS          INDIA                          3+          2389    4147  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6551   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           6981   20288  y_rate_wtkg      
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          6756   20288  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            300    1118  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            259    1118  y_rate_wtkg      
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           559    1118  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            216     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            222     601  y_rate_wtkg      
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           163     601  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            567    1640  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1640  y_rate_wtkg      
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           537    1640  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1131  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1131  y_rate_wtkg      
3-6 months     ki1101329-Keneba           GAMBIA                         3+           878    1131  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            122     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     469  y_rate_wtkg      
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           227     469  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2306    6138  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1933    6138  y_rate_wtkg      
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1899    6138  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     809  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            115     809  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           587     809  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          1            718    4194  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          2           1072    4194  y_rate_wtkg      
3-6 months     ki1135781-COHORTS          INDIA                          3+          2404    4194  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           4460   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           4417   12720  y_rate_wtkg      
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3843   12720  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            307    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2            264    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+           567    1138  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              1     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          2             56     309  y_rate_wtkg      
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          3+           252     309  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            207     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2            213     576  y_rate_wtkg      
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+           156     576  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            512    1470  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            474    1470  y_rate_wtkg      
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           484    1470  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         1             90     725  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         2             67     725  y_rate_wtkg      
6-9 months     ki1101329-Keneba           GAMBIA                         3+           568     725  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            126     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2            128     477  y_rate_wtkg      
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+           223     477  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2132    5570  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1723    5570  y_rate_wtkg      
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1715    5570  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      1            112     824  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      2            118     824  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+           594     824  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          1            648    3775  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          2            951    3775  y_rate_wtkg      
6-9 months     ki1135781-COHORTS          INDIA                          3+          2176    3775  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            322    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            258    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           561    1141  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             53     298  y_rate_wtkg      
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           245     298  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            209     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            209     569  y_rate_wtkg      
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           151     569  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            376    1064  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1064  y_rate_wtkg      
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           349    1064  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         1             75     714  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         2             65     714  y_rate_wtkg      
9-12 months    ki1101329-Keneba           GAMBIA                         3+           574     714  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            116     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2            121     454  y_rate_wtkg      
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           217     454  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1912    5053  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1569    5053  y_rate_wtkg      
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1572    5053  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      1            129     930  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      2            134     930  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+           667     930  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          1            566    3291  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          2            825    3291  y_rate_wtkg      
9-12 months    ki1135781-COHORTS          INDIA                          3+          1900    3291  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            339    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2            260    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+           566    1165  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             59     300  y_rate_wtkg      
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           241     300  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            199     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2            201     537  y_rate_wtkg      
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+           137     537  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            266     776  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            256     776  y_rate_wtkg      
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           254     776  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         1            104    1104  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         2            103    1104  y_rate_wtkg      
12-15 months   ki1101329-Keneba           GAMBIA                         3+           897    1104  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            116     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            120     452  y_rate_wtkg      
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+           216     452  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            662    1858  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            566    1858  y_rate_wtkg      
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           630    1858  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      1            133     886  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      2            120     886  y_rate_wtkg      
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+           633     886  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            343    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2            258    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+           570    1171  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             53     290  y_rate_wtkg      
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           237     290  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            197     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2            199     533  y_rate_wtkg      
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+           137     533  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649  y_rate_wtkg      
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         1            110    1124  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         2            101    1124  y_rate_wtkg      
15-18 months   ki1101329-Keneba           GAMBIA                         3+           913    1124  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            125     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            129     477  y_rate_wtkg      
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+           223     477  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            425    1198  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            368    1198  y_rate_wtkg      
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           405    1198  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      1            117     797  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      2            108     797  y_rate_wtkg      
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+           572     797  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            200     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2            197     542  y_rate_wtkg      
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+           145     542  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              4      11  y_rate_wtkg      
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4      11  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         1            115    1126  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         2            109    1126  y_rate_wtkg      
18-21 months   ki1101329-Keneba           GAMBIA                         3+           902    1126  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            117     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            121     447  y_rate_wtkg      
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+           209     447  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            244     657  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            201     657  y_rate_wtkg      
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           212     657  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      1            112     793  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      2            107     793  y_rate_wtkg      
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+           574     793  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            176     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            180     485  y_rate_wtkg      
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           129     485  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         1            102    1004  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         2             98    1004  y_rate_wtkg      
21-24 months   ki1101329-Keneba           GAMBIA                         3+           804    1004  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             85     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             95     343  y_rate_wtkg      
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           163     343  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            103     303  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             91     303  y_rate_wtkg      
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           109     303  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      1            129     872  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      2            117     872  y_rate_wtkg      
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+           626     872  y_rate_wtkg      


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/f208c25a-8a19-452a-80ae-46e8473cb409/21e7807a-f8ed-4d9c-bd8a-10cdebde28b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f208c25a-8a19-452a-80ae-46e8473cb409/21e7807a-f8ed-4d9c-bd8a-10cdebde28b5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f208c25a-8a19-452a-80ae-46e8473cb409/21e7807a-f8ed-4d9c-bd8a-10cdebde28b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8144364   0.7736158   0.8552569
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.7958963   0.7681094   0.8236831
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7808745   0.7588518   0.8028973
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9020938   0.8710803   0.9331072
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9205705   0.8854238   0.9557172
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8977160   0.8643136   0.9311183
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9250683   0.9020371   0.9480996
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9282344   0.9055062   0.9509626
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.8981467   0.8779621   0.9183312
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.9850668   0.9472193   1.0229144
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.9651924   0.9105105   1.0198743
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.9277770   0.9081830   0.9473710
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8336010   0.7659470   0.9012550
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8746336   0.8118185   0.9374486
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7924883   0.7601411   0.8248355
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9631005   0.9504599   0.9757412
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.9532760   0.9399629   0.9665892
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.9357090   0.9198984   0.9515196
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8178251   0.7240529   0.9115973
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8515857   0.7874618   0.9157096
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7829403   0.7618313   0.8040493
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                0.8388934   0.8228939   0.8548929
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                0.8420773   0.8277415   0.8564131
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.7898359   0.7811497   0.7985221
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8665687   0.8580402   0.8750972
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.8710872   0.8645613   0.8776130
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.8444917   0.8370580   0.8519255
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4958915   0.4826283   0.5091546
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.4318309   0.4057424   0.4579194
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.4380865   0.4148398   0.4613332
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5044909   0.4760731   0.5329087
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4774505   0.4540291   0.5008719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.4744173   0.4491364   0.4996983
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4280183   0.4067598   0.4492768
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4040345   0.3847409   0.4233280
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3938649   0.3756884   0.4120415
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.4590505   0.4252791   0.4928219
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.4678277   0.4151239   0.5205315
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.4516808   0.4374244   0.4659372
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5757472   0.4936831   0.6578112
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4877935   0.4335763   0.5420108
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4886186   0.4622159   0.5150213
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5013727   0.4841091   0.5186364
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.4708646   0.4594924   0.4822368
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.4801673   0.4679124   0.4924223
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5194838   0.4637604   0.5752073
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.4405942   0.4014838   0.4797046
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4604999   0.4471643   0.4738355
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                0.5260448   0.5112494   0.5408402
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                0.4838137   0.4705670   0.4970604
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.4554520   0.4488646   0.4620395
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4650512   0.4573574   0.4727450
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4362141   0.4299741   0.4424542
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4293189   0.4212954   0.4373424
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2391054   0.2221772   0.2560337
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2156513   0.1727968   0.2585058
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2026705   0.1826730   0.2226681
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2676887   0.2443138   0.2910636
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2594851   0.2385686   0.2804016
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1843723   0.1212898   0.2474547
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2696424   0.2519030   0.2873819
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2473018   0.2269942   0.2676094
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2553318   0.2381619   0.2725017
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                0.2163407   0.1923265   0.2403548
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                0.2360679   0.1377666   0.3343693
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                0.2050915   0.1891128   0.2210701
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2080829   0.1742386   0.2419273
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1871264   0.1457387   0.2285142
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1999137   0.1851067   0.2147208
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2732848   0.2583098   0.2882599
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2509968   0.2339254   0.2680681
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2452107   0.2331956   0.2572257
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2328068   0.2110519   0.2545616
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2284188   0.1923762   0.2644614
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2053265   0.1915705   0.2190825
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                0.3082595   0.2947572   0.3217617
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                0.2815088   0.2692777   0.2937399
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                0.2535398   0.2465670   0.2605127
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2079054   0.1849749   0.2308360
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1925273   0.1742835   0.2107711
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1813790   0.1662260   0.1965319
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1938671   0.1735925   0.2141416
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1821308   0.1631842   0.2010774
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1641028   0.1401103   0.1880953
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2152759   0.1952589   0.2352929
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1958868   0.1737128   0.2180608
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2145704   0.1942242   0.2349167
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2353043   0.2033156   0.2672931
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2247684   0.1794345   0.2701024
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1592814   0.1440245   0.1745382
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1266900   0.1029899   0.1503900
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1569781   0.1208142   0.1931419
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.0912531   0.0721711   0.1103351
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2030209   0.1857143   0.2203275
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1737883   0.1530235   0.1945531
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1567019   0.1440684   0.1693353
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1728572   0.1510456   0.1946688
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1376129   0.0987762   0.1764496
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1550919   0.1427899   0.1673938
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2540080   0.2361977   0.2718184
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                0.2192395   0.2063354   0.2321436
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2028080   0.1953934   0.2102226
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1938859   0.1570242   0.2307475
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1825787   0.1499661   0.2151912
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1746826   0.1610286   0.1883366
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2014357   0.1755746   0.2272967
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1581502   0.1336341   0.1826664
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2018962   0.1697489   0.2340436
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1998638   0.1760683   0.2236594
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1676400   0.1429168   0.1923632
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1693847   0.1498824   0.1888869
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1962369   0.1639705   0.2285032
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1889676   0.1285922   0.2493429
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1802576   0.1638593   0.1966558
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1569579   0.1140273   0.1998884
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1636929   0.1322721   0.1951137
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1818084   0.1615478   0.2020690
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1622074   0.1418273   0.1825875
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1386430   0.1155335   0.1617524
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1647739   0.1443046   0.1852432
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1733585   0.1410269   0.2056902
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1435624   0.1132528   0.1738720
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1592821   0.1429002   0.1756640
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1872641   0.1541017   0.2204266
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1850565   0.1510044   0.2191085
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1851440   0.1649781   0.2053099
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1478133   0.1184090   0.1772176
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1521459   0.1287627   0.1755291
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1455197   0.1206692   0.1703703
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1501734   0.1191937   0.1811532
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1834093   0.1512144   0.2156041
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1740931   0.1470990   0.2010872
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1447750   0.1184647   0.1710854
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2136819   0.1716144   0.2557494
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1591513   0.1437098   0.1745929
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2468752   0.2077062   0.2860441
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2545793   0.1745619   0.3345967
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2553248   0.2268002   0.2838494
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1290879   0.1048370   0.1533388
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1310968   0.0969985   0.1651951
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1419781   0.1138048   0.1701514
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1348501   0.1036011   0.1660991
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0794999   0.0295981   0.1294016
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1404073   0.1245266   0.1562880
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1390577   0.1192395   0.1588760
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1175532   0.0915558   0.1435506
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1505217   0.1237847   0.1772587
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1107376   0.0683606   0.1531146
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1313157   0.0749323   0.1876992
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1580814   0.1437205   0.1724423
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1577418   0.1186138   0.1968697
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1122888   0.0637995   0.1607781
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1740945   0.1320047   0.2161844
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1273169   0.0879486   0.1666852
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1391678   0.0683686   0.2099670
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1034180   0.0792054   0.1276305
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1120407   0.0826740   0.1414075
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1543637   0.0929185   0.2158088
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1653933   0.1466254   0.1841611
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1325043   0.1051354   0.1598732
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1478085   0.1199480   0.1756690
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1302305   0.1105052   0.1499557
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0976562   0.0265396   0.1687729
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.1383931   0.0638356   0.2129507
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1771467   0.1614690   0.1928244
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1432831   0.0822565   0.2043097
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2248391   0.1666340   0.2830443
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1958940   0.1558973   0.2358908
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1680855   0.1285305   0.2076405
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1107562   0.0363528   0.1851596
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0613947   0.0014301   0.1213593
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2235495   0.1773646   0.2697345
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.1881473   0.1497582   0.2265365
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.1809666   0.1672655   0.1946677


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9222782   0.9120605   0.9324960
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.9250728   0.9133367   0.9368088
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9497140   0.9445866   0.9548414
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.8079112   0.8020259   0.8137966
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.8576797   0.8546652   0.8606941
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4202993   0.4115402   0.4290585
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.4451759   0.4348013   0.4555506
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4605000   0.4496523   0.4713476
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.4724963   0.4676809   0.4773116
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4413738   0.4384031   0.4443445
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2555255   0.2465533   0.2644978
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                0.2054643   0.1921119   0.2188168
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2137898   0.2041068   0.2234728
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                0.2666046   0.2615353   0.2716740
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2048196   0.1946367   0.2150025
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1627974   0.1505170   0.1750777
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800863   0.1755557   0.1846170
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1559960   0.1474406   0.1645514
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2135824   0.2082338   0.2189309
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741189   0.1626692   0.1855686
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1824116   0.1716763   0.1931470
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1508808   0.1417226   0.1600389
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1694110   0.1549701   0.1838520
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1607263   0.1498189   0.1716337
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1402124   0.1291753   0.1512496
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1560829   0.1446249   0.1675408
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1633163   0.1526500   0.1739826
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1676062   0.1561278   0.1790846
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1840047   0.1740929   0.1939165


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0185401   -0.0599945    0.0229143
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0335618   -0.0679931    0.0008694
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0184767   -0.0282904    0.0652439
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0043778   -0.0498030    0.0410474
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0031661   -0.0293034    0.0356356
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0269217   -0.0576676    0.0038242
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0198744   -0.0864249    0.0466760
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0572898   -0.0999433   -0.0146363
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0410325   -0.0513969    0.1334620
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0411127   -0.1161777    0.0339523
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0098245   -0.0281711    0.0085221
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0273915   -0.0476224   -0.0071606
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0337606   -0.0799244    0.1474457
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0348848   -0.1310514    0.0612818
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                  0.0031839   -0.0182968    0.0246646
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0490576   -0.0672599   -0.0308552
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0045185   -0.0066766    0.0157136
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0220769   -0.0331301   -0.0110237
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0640606   -0.0947436   -0.0333776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0578050   -0.0849600   -0.0306500
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0270404   -0.0638629    0.0097821
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0300736   -0.0680587    0.0079116
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0239838   -0.0527331    0.0047655
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0341533   -0.0621703   -0.0061364
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0087772   -0.0538932    0.0714476
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0073697   -0.0439581    0.0292187
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0879537   -0.1862184    0.0103111
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0871286   -0.1733026   -0.0009545
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0305081   -0.0511775   -0.0098387
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0212054   -0.0423775   -0.0000333
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0788897   -0.1470053   -0.0107740
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0589839   -0.1163169   -0.0016510
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0422311   -0.0620523   -0.0224100
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0705928   -0.0867854   -0.0544002
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0288370   -0.0386661   -0.0190080
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0357322   -0.0465179   -0.0249466
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0234541   -0.0772074    0.0302992
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0364349   -0.0618799   -0.0109898
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0082036   -0.0395079    0.0231008
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0833164   -0.1505316   -0.0161012
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0223406   -0.0493729    0.0046916
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0143106   -0.0390886    0.0104674
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0197273   -0.0814523    0.1209068
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0112492   -0.0400568    0.0175584
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0209565   -0.0744238    0.0325108
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0081692   -0.0451853    0.0288469
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0222881   -0.0450085    0.0004324
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0280742   -0.0472641   -0.0088843
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0043880   -0.0463964    0.0376205
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0274803   -0.0531670   -0.0017936
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0267506   -0.0449468   -0.0085545
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0547196   -0.0699232   -0.0395160
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0153782   -0.0542586    0.0235022
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0265265   -0.0513822   -0.0016708
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0117362   -0.0395046    0.0160321
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0297643   -0.0611570    0.0016284
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0193891   -0.0492573    0.0104791
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0007055   -0.0292692    0.0278582
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0105359   -0.0660237    0.0449520
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0760230   -0.1115632   -0.0404827
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0302881   -0.0130363    0.0736124
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0354369   -0.0661571   -0.0047167
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0292326   -0.0562555   -0.0022097
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0463190   -0.0677489   -0.0248892
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0352443   -0.0797453    0.0092568
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0177653   -0.0427654    0.0072348
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0347685   -0.0568007   -0.0127363
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0512000   -0.0705090   -0.0318911
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0113072   -0.0707836    0.0481693
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0192033   -0.0535352    0.0151286
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0432854   -0.0790542   -0.0075166
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0004606   -0.0409952    0.0419164
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0322239   -0.0665459    0.0020982
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0304792   -0.0612377    0.0002793
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0072693   -0.0758265    0.0612878
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0159793   -0.0522338    0.0202751
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0067350   -0.0466269    0.0600969
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0248506   -0.0225396    0.0722407
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0235644   -0.0544197    0.0072908
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0025665   -0.0263714    0.0315044
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0297961   -0.0742494    0.0146572
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0140765   -0.0503651    0.0222122
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0022077   -0.0528660    0.0484507
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0021202   -0.0365759    0.0323356
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0043326   -0.0334453    0.0421104
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0022935   -0.0408646    0.0362775
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0332358   -0.0115056    0.0779773
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0239197   -0.0171640    0.0650034
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0689069    0.0192523    0.1185614
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0143763   -0.0161467    0.0448993
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0077042   -0.0813546    0.0967629
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0084496   -0.0400796    0.0569789
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0020090   -0.0398292    0.0438471
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0128902   -0.0243592    0.0501396
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0553502   -0.1142591    0.0035587
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0055572   -0.0295359    0.0406503
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0215045   -0.0542244    0.0112154
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0114640   -0.0218368    0.0447648
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0205782   -0.0499579    0.0911142
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0473438    0.0024256    0.0922621
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0454530   -0.1076555    0.0167495
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0163528   -0.0411589    0.0738644
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0118509   -0.0692364    0.0929382
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0238989   -0.0702149    0.0224171
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0423229   -0.0257666    0.1104124
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0533525    0.0185468    0.0881583
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0153042   -0.0239075    0.0545160
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0022738   -0.0359764    0.0314287
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.0407369   -0.0625700    0.1440438
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0794905    0.0066913    0.1522896
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0815560   -0.0030506    0.1661627
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0526109   -0.0201550    0.1253769
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0573293   -0.1411514    0.0264927
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1066908   -0.1781603   -0.0352213
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0354022   -0.0954260    0.0246216
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0425829   -0.0907127    0.0055469


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0236009   -0.0549600    0.0077582
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0004466   -0.0277459    0.0268527
0-3 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0027901   -0.0235763    0.0179961
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0599940   -0.0973854   -0.0226026
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0065889   -0.0708054    0.0576277
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0133865   -0.0251060   -0.0016670
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0198161   -0.1113417    0.0717096
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0309822   -0.0463020   -0.0156624
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0088890   -0.0170841   -0.0006939
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0456839   -0.0621948   -0.0291730
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0154298   -0.0413417    0.0104821
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0077190   -0.0266614    0.0112235
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0138746   -0.0471606    0.0194114
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0781355   -0.1576706    0.0013996
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0230277   -0.0395707   -0.0064847
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0589838   -0.1134684   -0.0044992
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0535485   -0.0675988   -0.0394983
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0236774   -0.0307943   -0.0165604
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0293364   -0.0527576   -0.0059152
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0185234   -0.0401171    0.0030704
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0141169   -0.0297008    0.0014670
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.0108763   -0.0363861    0.0146334
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0206330   -0.0534017    0.0121358
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0149318   -0.0290019   -0.0008618
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0190170   -0.0401925    0.0021585
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0416548   -0.0545705   -0.0287392
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0135831   -0.0404940    0.0133278
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0163355   -0.0338217    0.0011507
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0104563   -0.0278875    0.0069749
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0725070   -0.1053180   -0.0396959
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0173007   -0.0062593    0.0408608
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0229346   -0.0392949   -0.0065743
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0168612   -0.0380782    0.0043559
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0404257   -0.0572688   -0.0235825
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0087634   -0.0474414    0.0299147
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0214033   -0.0439937    0.0011871
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0257449   -0.0456928   -0.0057971
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0138253   -0.0460101    0.0183596
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0151496   -0.0267493    0.0570485
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0122820   -0.0309008    0.0063369
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0224778   -0.0540472    0.0090917
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0096771   -0.0383085    0.0189544
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0085382   -0.0169799    0.0340562
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0192376   -0.0076168    0.0460920
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0159513   -0.0110830    0.0429855
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0121016   -0.0503358    0.0261327
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0046381   -0.0172442    0.0265204
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0053624   -0.0251430    0.0358677
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0065695   -0.0242972    0.0111581
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0453453    0.0030771    0.0876135
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0153470   -0.0533584    0.0226644
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0063638   -0.0411890    0.0284614
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0512756    0.0220676    0.0804836
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0094662   -0.0149800    0.0339124
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0699500    0.0002121    0.1396878
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0335344   -0.0257571    0.0928258
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0589921   -0.0948143   -0.0231698
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0395448   -0.0843289    0.0052392
