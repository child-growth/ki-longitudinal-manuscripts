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
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            344    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            298    1261  y_rate_haz       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           619    1261  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            242     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            226     640  y_rate_haz       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           172     640  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145  y_rate_haz       
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            137     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            129     509  y_rate_haz       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+           243     509  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3100    7981  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2478    7981  y_rate_haz       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2403    7981  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021  y_rate_haz       
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6339   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           6881   19879  y_rate_haz       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          6659   19879  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124  y_rate_haz       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            214     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            221     598  y_rate_haz       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           163     598  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637  y_rate_haz       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130  y_rate_haz       
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            121     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     469  y_rate_haz       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           228     469  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2318    6178  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1952    6178  y_rate_haz       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1908    6178  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069  y_rate_haz       
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           4409   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           4359   12581  y_rate_haz       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3813   12581  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            307    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2            267    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+           570    1144  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              1     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          2             56     314  y_rate_haz       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          3+           257     314  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            204     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2            207     565  y_rate_haz       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+           154     565  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513    1462  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470    1462  y_rate_haz       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479    1462  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         1             90     725  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         2             67     725  y_rate_haz       
6-9 months     ki1101329-Keneba           GAMBIA                         3+           568     725  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            125     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2            130     481  y_rate_haz       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+           226     481  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2280    5929  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1838    5929  y_rate_haz       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1811    5929  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      1            113     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      2            117     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+           592     822  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          1            639    3756  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          2            940    3756  y_rate_haz       
6-9 months     ki1135781-COHORTS          INDIA                          3+          2177    3756  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            321    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            260    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           565    1146  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             56     311  y_rate_haz       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           254     311  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            208     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            207     566  y_rate_haz       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           151     566  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375    1062  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1062  y_rate_haz       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348    1062  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         1             75     715  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         2             66     715  y_rate_haz       
9-12 months    ki1101329-Keneba           GAMBIA                         3+           574     715  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            119     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2            126     469  y_rate_haz       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           224     469  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           2289    5932  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1822    5932  y_rate_haz       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1821    5932  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      1            130     929  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      2            133     929  y_rate_haz       
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+           666     929  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          1            557    3269  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          2            814    3269  y_rate_haz       
9-12 months    ki1135781-COHORTS          INDIA                          3+          1898    3269  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            338    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2            262    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+           568    1168  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             60     303  y_rate_haz       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           243     303  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            199     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2            198     532  y_rate_haz       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135     532  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265     776  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258     776  y_rate_haz       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253     776  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         1            104    1104  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         2            103    1104  y_rate_haz       
12-15 months   ki1101329-Keneba           GAMBIA                         3+           897    1104  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            120     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            123     469  y_rate_haz       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+           226     469  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            934    2548  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            796    2548  y_rate_haz       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           818    2548  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      1            133     880  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      2            119     880  y_rate_haz       
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+           628     880  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            342    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2            258    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+           571    1171  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             53     291  y_rate_haz       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           238     291  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            197     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2            196     528  y_rate_haz       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135     528  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649  y_rate_haz       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         1            109    1122  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         2            101    1122  y_rate_haz       
15-18 months   ki1101329-Keneba           GAMBIA                         3+           912    1122  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            126     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            129     480  y_rate_haz       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+           225     480  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            753    2036  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            635    2036  y_rate_haz       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           648    2036  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      1            116     786  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      2            109     786  y_rate_haz       
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+           561     786  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            200     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2            197     541  y_rate_haz       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+           144     541  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2       9  y_rate_haz       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       9  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         1            115    1125  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         2            109    1125  y_rate_haz       
18-21 months   ki1101329-Keneba           GAMBIA                         3+           901    1125  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            116     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            121     445  y_rate_haz       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+           208     445  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            572    1595  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            502    1595  y_rate_haz       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           521    1595  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      1            111     776  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      2            107     776  y_rate_haz       
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+           558     776  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            173     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            175     471  y_rate_haz       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           123     471  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         1            102    1003  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         2             98    1003  y_rate_haz       
21-24 months   ki1101329-Keneba           GAMBIA                         3+           803    1003  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             84     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             95     342  y_rate_haz       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           163     342  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            428    1169  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            373    1169  y_rate_haz       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           368    1169  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      1            128     858  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     858  y_rate_haz       
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+           614     858  y_rate_haz       


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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/1439627f-0df0-4ee2-8e3b-b61a818125a7/6fc59dc3-c724-4db0-9a8c-6ffb9e36467f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1439627f-0df0-4ee2-8e3b-b61a818125a7/6fc59dc3-c724-4db0-9a8c-6ffb9e36467f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1439627f-0df0-4ee2-8e3b-b61a818125a7/6fc59dc3-c724-4db0-9a8c-6ffb9e36467f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1177588   -0.1808184   -0.0546993
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.1343687   -0.1661231   -0.1026143
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.1259672   -0.1550351   -0.0968993
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1802435   -0.2199325   -0.1405546
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.1609110   -0.1974202   -0.1244017
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.1980596   -0.2389838   -0.1571354
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.3550246   -0.4115142   -0.2985351
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.4236092   -0.5775387   -0.2696797
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.2780550   -0.3147656   -0.2413445
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0588334   -0.1998029    0.0821361
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0168624   -0.1066511    0.1403759
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0584931   -0.1008991   -0.0160872
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1327937   -0.1601539   -0.1054335
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.1060841   -0.1320020   -0.0801662
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1150578   -0.1388481   -0.0912675
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4823087   -0.5541899   -0.4104276
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.5291281   -0.6127504   -0.4455058
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.5525813   -0.5815282   -0.5236344
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0186824   -0.0422463    0.0048816
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0375062   -0.0610446   -0.0139678
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0879700   -0.1005699   -0.0753701
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0629975    0.0502085    0.0757865
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0732088    0.0620066    0.0844110
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0302628    0.0195705    0.0409551
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0577397    0.0237878    0.0916916
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0197798   -0.0379294   -0.0016302
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0579872   -0.0820840   -0.0338903
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0295546   -0.0677989    0.0086897
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0218849   -0.0587050    0.0149352
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                 0.0011595   -0.0358946    0.0382135
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0946990   -0.1258034   -0.0635947
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0693869   -0.1089040   -0.0298698
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.1239676   -0.1560175   -0.0919177
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0911182    0.0455043    0.1367320
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0824340   -0.0508634    0.2157313
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0598882   -0.0978378   -0.0219387
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1118396   -0.1659317   -0.0577474
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1750796   -0.2386800   -0.1114791
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1835703   -0.2075479   -0.1595927
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0186051   -0.0022902    0.0395005
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0135295   -0.0387219    0.0116629
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0411818   -0.0651357   -0.0172280
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0230808   -0.0237574    0.0699191
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0995664   -0.1568820   -0.0422508
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1071116   -0.1279733   -0.0862499
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                 0.0002021   -0.0237533    0.0241575
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0584867   -0.0760368   -0.0409366
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0709657   -0.0814131   -0.0605184
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0346645    0.0204047    0.0489243
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0105263   -0.0209203   -0.0001322
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0366586   -0.0497697   -0.0235475
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0417442   -0.0783150   -0.0051734
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0935508   -0.1365855   -0.0505160
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0752763   -0.0956340   -0.0549186
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0353157   -0.0579204   -0.0127110
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0479465   -0.0707047   -0.0251883
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0861159   -0.1118339   -0.0603980
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0242100   -0.0594691    0.0110492
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0574599   -0.0953804   -0.0195395
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0862987   -0.1169661   -0.0556314
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.1567233    0.0987649    0.2146817
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0032950   -0.0681497    0.0747396
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0135817   -0.0487747    0.0216113
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0991248   -0.1814966   -0.0167529
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0299274   -0.0824912    0.0226365
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0536048   -0.0788541   -0.0283555
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0061914   -0.0261637    0.0137810
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0431717   -0.0685641   -0.0177792
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0236255   -0.0472956    0.0000446
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1156523   -0.1442297   -0.0870750
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0806969   -0.1285547   -0.0328390
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1297417   -0.1512864   -0.1081971
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0733408   -0.0901508   -0.0565308
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0900193   -0.1064958   -0.0735429
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.1066232   -0.1156388   -0.0976077
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0427916   -0.0735254   -0.0120578
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0809230   -0.1131891   -0.0486569
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0892895   -0.1159790   -0.0626001
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0396875   -0.0654430   -0.0139319
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0668031   -0.0979692   -0.0356370
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0719456   -0.0930688   -0.0508224
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0744279   -0.1047658   -0.0440900
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0604135   -0.0916836   -0.0291434
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0671529   -0.0971152   -0.0371907
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1319926   -0.1975730   -0.0664123
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0373192   -0.0998348    0.0251963
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.1134142   -0.1341347   -0.0926936
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0625196   -0.1010374   -0.0240019
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0669164   -0.1153866   -0.0184462
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0919422   -0.1095078   -0.0743767
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0436476   -0.0619788   -0.0253164
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0581312   -0.0840798   -0.0321826
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0474864   -0.0670569   -0.0279159
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0487676   -0.0803954   -0.0171399
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1174529   -0.1734205   -0.0614854
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0989155   -0.1138065   -0.0840245
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0765960   -0.0928829   -0.0603090
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0928698   -0.1093340   -0.0764057
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.1003380   -0.1093049   -0.0913711
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0842292   -0.1246571   -0.0438013
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.1041888   -0.1305497   -0.0778278
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.1016875   -0.1296946   -0.0736803
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0367258   -0.0540465   -0.0194052
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0573905   -0.0803120   -0.0344690
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0530391   -0.0734678   -0.0326105
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0568204   -0.0835986   -0.0300422
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0722814   -0.1019516   -0.0426111
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0532313   -0.0813874   -0.0250752
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0197942   -0.0078011    0.0473895
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0822774   -0.1384877   -0.0260670
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0584959   -0.0730656   -0.0439262
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0411689   -0.0674852   -0.0148526
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0835815   -0.1285404   -0.0386227
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0862520   -0.1017834   -0.0707206
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0484596   -0.0719552   -0.0249641
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0676010   -0.0971367   -0.0380654
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0552634   -0.0763624   -0.0341643
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0810054   -0.1318937   -0.0301172
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0770173   -0.1151214   -0.0389132
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0846331   -0.1007959   -0.0684703
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0152304   -0.0518783    0.0214175
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0043935   -0.0435327    0.0523198
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                 0.0003752   -0.0204437    0.0211942
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0276748   -0.0461733   -0.0091763
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0392222   -0.0593067   -0.0191377
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0351403   -0.0535784   -0.0167022
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0335821   -0.0610993   -0.0060649
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0371650   -0.0706876   -0.0036424
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0021252   -0.0361487    0.0318983
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1626171    0.0052355    0.3199986
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0544801   -0.0965111   -0.0124490
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0295261   -0.0462246   -0.0128276
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0797338   -0.1089422   -0.0505254
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0842953   -0.1292410   -0.0393496
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0659157   -0.0787752   -0.0530562
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0493854   -0.0778467   -0.0209241
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0673130   -0.0976498   -0.0369761
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0689706   -0.0901401   -0.0478011
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0906227   -0.1387669   -0.0424785
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1254784   -0.1687583   -0.0821985
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0533859   -0.0697083   -0.0370636
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0092072   -0.0226292    0.0042148
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0141581   -0.0312070    0.0028908
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0190545   -0.0350603   -0.0030487
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.3415342   -0.4830947   -0.1999737
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                 0.0343188   -0.0262052    0.0948427
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0212579   -0.0352514   -0.0072644
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0081915   -0.0166781    0.0330612
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                 0.0267520   -0.0152902    0.0687943
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                 0.0071314   -0.0070303    0.0212932
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0872953   -0.1125932   -0.0619975
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0712324   -0.0998199   -0.0426449
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0766888   -0.0970651   -0.0563126
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0224802   -0.0536338    0.0086734
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0179947   -0.0657458    0.0297565
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0183023   -0.0315695   -0.0050351
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0617643    0.0444772    0.0790514
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                 0.0340311    0.0135624    0.0544999
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                 0.0367616    0.0159839    0.0575392
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0286033   -0.0460694    0.1032761
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0183310   -0.1171834    0.0805215
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                 0.0223563    0.0083205    0.0363921
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1047529    0.0641900    0.1453158
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0044304   -0.0610480    0.0521872
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                 0.0154242   -0.0035049    0.0343533
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0232886   -0.0097403    0.0563174
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                 0.0058726   -0.0187509    0.0304961
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0287729   -0.0562522   -0.0012936
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0108049   -0.0451123    0.0235025
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                 0.0028816   -0.0341890    0.0399522
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0138110   -0.0237539   -0.0038681


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2821028   -0.3073160   -0.2568895
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402688   -0.1504985   -0.1300391
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0677269   -0.0765502   -0.0589035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0588418    0.0539208    0.0637627
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0841486   -0.1008599   -0.0674373
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525285   -0.0687206   -0.0363364
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0045762   -0.0287122    0.0195598
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0985796   -0.1048064   -0.0923527
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652640   -0.0796167   -0.0509113
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1061496   -0.1248815   -0.0874176
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590759   -0.0665312   -0.0516205
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0887143   -0.0986894   -0.0787393
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0933036   -0.0995020   -0.0871051
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0649105   -0.0794330   -0.0503881
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0554331   -0.0683830   -0.0424832
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0875200   -0.0977014   -0.0773386
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0189489   -0.0345324   -0.0033654
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0289062   -0.0415733   -0.0162391
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0545580   -0.0655035   -0.0436124
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0220748   -0.0349179   -0.0092317
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0194829   -0.0293542   -0.0096117
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0194181    0.0072915    0.0315446
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0058090   -0.0136683    0.0020502


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0166099   -0.0706861    0.0374664
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0082084   -0.0787197    0.0623028
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0193326   -0.0345707    0.0732358
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0178161   -0.0748532    0.0392210
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0685846   -0.2321909    0.0950217
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.0769696    0.0098222    0.1441171
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0756958   -0.1124729    0.2638645
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0003402   -0.1469295    0.1476100
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0267096   -0.0109392    0.0643583
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0177359   -0.0184804    0.0539522
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0468194   -0.1570837    0.0634449
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0702726   -0.1475646    0.0070194
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0188238   -0.0521399    0.0144923
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0692876   -0.0959967   -0.0425785
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0102113   -0.0061699    0.0265926
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0327347   -0.0493369   -0.0161325
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0775195   -0.1152447   -0.0397943
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1157269   -0.1642476   -0.0672061
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0076697   -0.0453827    0.0607220
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0307141   -0.0225721    0.0840002
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0253121   -0.0250060    0.0756302
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0292686   -0.0740427    0.0155055
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0086842   -0.1495410    0.1321727
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1510064   -0.2105143   -0.0914985
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0632400   -0.1466126    0.0201327
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0717308   -0.1309398   -0.0125217
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0321347   -0.0648755    0.0006061
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0597870   -0.0915805   -0.0279935
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1226472   -0.1966524   -0.0486421
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1301924   -0.1815880   -0.0787969
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0586888   -0.0883441   -0.0290336
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0711679   -0.0973195   -0.0450163
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0451908   -0.0623658   -0.0280158
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0713231   -0.0910183   -0.0516279
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0518066   -0.1231107    0.0194975
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0335321   -0.0809344    0.0138702
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0126308   -0.0447827    0.0195210
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0508003   -0.0851567   -0.0164438
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0332500   -0.0860677    0.0195678
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0620888   -0.1098160   -0.0143615
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1534283   -0.2452336   -0.0616231
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1703050   -0.2379852   -0.1026248
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0691974   -0.0287468    0.1671417
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0455199   -0.0405653    0.1316052
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0369803   -0.0693081   -0.0046525
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0174341   -0.0484159    0.0135476
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0349555   -0.0210264    0.0909374
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0140894   -0.0498281    0.0216493
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0166786   -0.0402464    0.0068892
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0332825   -0.0523930   -0.0141720
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0381314   -0.0874598    0.0111971
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0464979   -0.0882990   -0.0046968
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0271157   -0.0676840    0.0134527
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0322582   -0.0656039    0.0010876
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0140144   -0.0295725    0.0576013
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0072750   -0.0353658    0.0499157
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0946734    0.0035547    0.1857921
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                  0.0185785   -0.0509606    0.0881175
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0043968   -0.0664379    0.0576444
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0294226   -0.0717261    0.0128809
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0144836   -0.0462748    0.0173076
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0038388   -0.0306649    0.0229873
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0686853   -0.1330525   -0.0043181
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0501479   -0.0851242   -0.0151716
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0162738   -0.0394637    0.0069160
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0237420   -0.0423417   -0.0051423
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0199595   -0.0782943    0.0383752
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0174582   -0.0637821    0.0288656
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0206646   -0.0494557    0.0081265
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0163133   -0.0430780    0.0104514
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0154609   -0.0555601    0.0246382
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0035892   -0.0357674    0.0429457
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.1020716   -0.1646669   -0.0394762
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0782901   -0.1094947   -0.0470855
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0424126   -0.0945406    0.0097153
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0450831   -0.0755500   -0.0146161
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0191414   -0.0568869    0.0186041
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0068037   -0.0384364    0.0248290
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0039881   -0.0596969    0.0676732
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0036277   -0.0572244    0.0499690
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0196239   -0.0375361    0.0767839
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0156056   -0.0347810    0.0659923
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0115474   -0.0388937    0.0157990
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0074654   -0.0335772    0.0186463
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0035829   -0.0471519    0.0399861
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0314568   -0.0127400    0.0756537
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.2170971   -0.3800978   -0.0540965
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1921432   -0.3503926   -0.0338937
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0045615   -0.0581131    0.0489902
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0138181   -0.0181228    0.0457591
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0179276   -0.0596864    0.0238313
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0195852   -0.0553740    0.0162035
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0348557   -0.0994260    0.0297146
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0372368   -0.0136795    0.0881530
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0049509   -0.0266900    0.0167882
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0098473   -0.0306854    0.0109908
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.3758530    0.2220782    0.5296278
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.3202763    0.1784193    0.4621334
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0185605   -0.0303154    0.0674364
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0010601   -0.0296950    0.0275748
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0160629   -0.0223509    0.0544767
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0106065   -0.0221502    0.0433631
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0044855   -0.0526069    0.0615780
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0041779   -0.0297275    0.0380834
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0277332   -0.0545237   -0.0009427
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0250028   -0.0520627    0.0020572
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0469343   -0.1709483    0.0770797
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0062470   -0.0823916    0.0698976
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1091833   -0.1793036   -0.0390631
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0893287   -0.1337643   -0.0448932
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0174160   -0.0587313    0.0238994
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0520615   -0.0950951   -0.0090279
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0136865   -0.0368616    0.0642346
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0030061   -0.0387181    0.0327058


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0095978   -0.0621818    0.0429861
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0077967   -0.0427867    0.0271933
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0729218    0.0154393    0.1304043
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0270654   -0.1088338    0.1629645
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0074751   -0.0329348    0.0179845
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0548834   -0.1259167    0.0161500
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0490445   -0.0715927   -0.0264962
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0041557   -0.0163226    0.0080112
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0743745   -0.1063254   -0.0424237
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0025921   -0.0320408    0.0372250
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0105504   -0.0169733    0.0380742
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1189826   -0.1641808   -0.0737844
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0495581   -0.1027317    0.0036155
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0198975   -0.0391701   -0.0006249
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1194191   -0.1658247   -0.0730134
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0635758   -0.0864682   -0.0406834
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0381071   -0.0518231   -0.0243912
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0406040   -0.0769819   -0.0042262
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0261107   -0.0469261   -0.0052953
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0283185   -0.0608482    0.0042112
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1612995   -0.2192135   -0.1033854
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0552316   -0.0241153    0.1345786
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0253733   -0.0438519   -0.0068946
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0051022   -0.0331554    0.0229509
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0252388   -0.0412754   -0.0092022
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0384047   -0.0672251   -0.0095843
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0233595   -0.0465819   -0.0001372
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0091639   -0.0176132    0.0359410
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0258431   -0.0405452    0.0922313
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0173043   -0.0550851    0.0204766
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0154283   -0.0324822    0.0016256
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0399467   -0.0712478   -0.0086456
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0167076   -0.0322503   -0.0011649
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0005098   -0.0347698    0.0337502
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0041849   -0.0192864    0.0109167
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0080901   -0.0314420    0.0152618
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0752273   -0.1037846   -0.0466701
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0255560   -0.0512682    0.0001561
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0138152   -0.0351395    0.0075092
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0065146   -0.0558075    0.0427783
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0035148   -0.0348730    0.0419026
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0099689   -0.0260419    0.0061042
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0146331   -0.0097066    0.0389728
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.1915233   -0.3452804   -0.0377661
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0107762   -0.0184734    0.0400258
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0129627   -0.0399180    0.0139926
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0360647   -0.0106474    0.0827769
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0017327   -0.0132048    0.0097394
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3194594    0.1815393    0.4573795
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0074011   -0.0181023    0.0329045
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0183859   -0.0052012    0.0419729
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0029973   -0.0277269    0.0337214
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0155301   -0.0308338   -0.0002264
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0091853   -0.0825268    0.0641563
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0566260   -0.0963611   -0.0168909
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0060607   -0.0356617    0.0235404
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0049958   -0.0284751    0.0384667
