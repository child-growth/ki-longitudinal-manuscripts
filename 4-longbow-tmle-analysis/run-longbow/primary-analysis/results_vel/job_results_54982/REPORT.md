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
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            344    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            298    1261  y_rate_len       
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           619    1261  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            242     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            226     640  y_rate_len       
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           172     640  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145  y_rate_len       
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1            137     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2            129     509  y_rate_len       
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+           243     509  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3100    7981  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2478    7981  y_rate_len       
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2403    7981  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728  y_rate_len       
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021  y_rate_len       
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6339   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           6881   19879  y_rate_len       
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          6659   19879  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124  y_rate_len       
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            214     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            221     598  y_rate_len       
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           163     598  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637  y_rate_len       
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130  y_rate_len       
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            121     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     469  y_rate_len       
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           228     469  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2318    6178  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1952    6178  y_rate_len       
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1908    6178  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805  y_rate_len       
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069  y_rate_len       
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           4409   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           4359   12581  y_rate_len       
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3813   12581  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1            307    1144  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2            267    1144  y_rate_len       
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+           570    1144  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          1              1     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          2             56     314  y_rate_len       
6-9 months     ki1000304b-SAS-FoodSuppl   INDIA                          3+           257     314  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1            204     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2            207     565  y_rate_len       
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+           154     565  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            513    1462  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            470    1462  y_rate_len       
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           479    1462  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         1             90     725  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         2             67     725  y_rate_len       
6-9 months     ki1101329-Keneba           GAMBIA                         3+           568     725  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1            125     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2            130     481  y_rate_len       
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+           226     481  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2280    5929  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1838    5929  y_rate_len       
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1811    5929  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      1            113     822  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      2            117     822  y_rate_len       
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+           592     822  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          1            639    3756  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          2            940    3756  y_rate_len       
6-9 months     ki1135781-COHORTS          INDIA                          3+          2177    3756  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            321    1146  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            260    1146  y_rate_len       
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           565    1146  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             56     311  y_rate_len       
9-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           254     311  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            208     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            207     566  y_rate_len       
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           151     566  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            375    1062  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            339    1062  y_rate_len       
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           348    1062  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         1             75     715  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         2             66     715  y_rate_len       
9-12 months    ki1101329-Keneba           GAMBIA                         3+           574     715  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1            119     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2            126     469  y_rate_len       
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           224     469  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           2289    5932  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1822    5932  y_rate_len       
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1821    5932  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      1            130     929  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      2            133     929  y_rate_len       
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+           666     929  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          1            557    3269  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          2            814    3269  y_rate_len       
9-12 months    ki1135781-COHORTS          INDIA                          3+          1898    3269  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1            338    1168  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2            262    1168  y_rate_len       
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+           568    1168  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             60     303  y_rate_len       
12-15 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           243     303  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1            199     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2            198     532  y_rate_len       
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135     532  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            265     776  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            258     776  y_rate_len       
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           253     776  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         1            104    1104  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         2            103    1104  y_rate_len       
12-15 months   ki1101329-Keneba           GAMBIA                         3+           897    1104  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1            120     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2            123     469  y_rate_len       
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+           226     469  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            934    2548  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            796    2548  y_rate_len       
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           818    2548  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      1            133     880  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      2            119     880  y_rate_len       
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+           628     880  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1            342    1171  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2            258    1171  y_rate_len       
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+           571    1171  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1              0     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2             53     291  y_rate_len       
15-18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+           238     291  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1            197     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2            196     528  y_rate_len       
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+           135     528  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            219     649  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            217     649  y_rate_len       
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           213     649  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         1            109    1122  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         2            101    1122  y_rate_len       
15-18 months   ki1101329-Keneba           GAMBIA                         3+           912    1122  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1            126     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2            129     480  y_rate_len       
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+           225     480  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            753    2036  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            635    2036  y_rate_len       
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           648    2036  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      1            116     786  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      2            109     786  y_rate_len       
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+           561     786  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1            200     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2            197     541  y_rate_len       
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+           144     541  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              3       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              2       9  y_rate_len       
18-21 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       9  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         1            115    1125  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         2            109    1125  y_rate_len       
18-21 months   ki1101329-Keneba           GAMBIA                         3+           901    1125  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1            116     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2            121     445  y_rate_len       
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+           208     445  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            572    1595  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            502    1595  y_rate_len       
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           521    1595  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      1            111     776  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      2            107     776  y_rate_len       
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+           558     776  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            173     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            175     471  y_rate_len       
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           123     471  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         1            102    1003  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         2             98    1003  y_rate_len       
21-24 months   ki1101329-Keneba           GAMBIA                         3+           803    1003  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1             84     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2             95     342  y_rate_len       
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           163     342  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            428    1169  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            373    1169  y_rate_len       
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           368    1169  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      1            128     858  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     858  y_rate_len       
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+           614     858  y_rate_len       


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
![](/tmp/b463774c-038f-46c9-972a-47150e3c1ccc/489d9b74-9bdc-4bbf-897c-946240d7a4ac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b463774c-038f-46c9-972a-47150e3c1ccc/489d9b74-9bdc-4bbf-897c-946240d7a4ac/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/b463774c-038f-46c9-972a-47150e3c1ccc/489d9b74-9bdc-4bbf-897c-946240d7a4ac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.3784561    3.2634855   3.4934266
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.3436664    3.2740977   3.4132351
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                3.3672111    3.3152451   3.4191771
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.2840316    3.1843786   3.3836846
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.2722526    3.1862285   3.3582767
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.2324746    3.1490624   3.3158867
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.8726713    2.7637891   2.9815534
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.8152448    2.4987684   3.1317212
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                3.1188807    3.0547027   3.1830586
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                3.5207083    3.2860862   3.7553305
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                3.7459219    3.4828256   4.0090183
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                3.5360933    3.4604288   3.6117578
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3596483    3.3079361   3.4113605
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.3937121    3.3384737   3.4489506
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                3.3817382    3.3337997   3.4296768
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.6927602    2.5646647   2.8208557
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                2.6005356    2.4050909   2.7959802
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                2.5600275    2.5010313   2.6190238
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.5926949    3.5437407   3.6416491
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.5712477    3.5250277   3.6174677
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                3.4529047    3.4271928   3.4786166
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6534936    3.6270047   3.6799824
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.6976866    3.6758716   3.7195017
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.6026585    3.5801681   3.6251489
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.1034293    2.0199751   2.1868834
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.9427709    1.8961897   1.9893521
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.8520406    1.7939749   1.9101062
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9669161    1.8848802   2.0489520
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9721596    1.8900013   2.0543179
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                2.0613117    1.9858020   2.1368215
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7854055    1.7184804   1.8523305
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8120269    1.7237746   1.9002792
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.7014844    1.6337882   1.7691807
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.1834598    2.0646435   2.3022760
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.2141767    1.9667473   2.4616060
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.9029661    1.8231800   1.9827522
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.8307535    1.7299109   1.9315961
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.6948076    1.5592259   1.8303893
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.6572658    1.6061525   1.7083791
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0165985    1.9731738   2.0600233
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9546860    1.9038793   2.0054927
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.9052474    1.8527261   1.9577687
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.0648756    1.9704818   2.1592695
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.7608935    1.6314714   1.8903156
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.7419048    1.6987605   1.7850490
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                1.9901619    1.9416197   2.0387041
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8826191    1.8454852   1.9197529
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.8345586    1.8120519   1.8570652
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9926109    1.9630232   2.0221986
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9048191    1.8820266   1.9276116
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.8548178    1.8263945   1.8832411
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.3083281    1.2250719   1.3915842
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.1938793    1.1004273   1.2873313
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.2290455    1.1829295   1.2751614
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3408956    1.2918987   1.3898926
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.3092963    1.2499950   1.3685976
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.2150546    1.1611300   1.2689792
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3808011    1.3138250   1.4477773
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.3122455    1.2302119   1.3942792
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.2367719    1.1687975   1.3047463
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                1.7653541    1.6502315   1.8804768
6-9 months     ki1101329-Keneba           GAMBIA                         2                    NA                1.4568648    1.2398500   1.6738796
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.4207848    1.3440837   1.4974858
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2118615    1.0350163   1.3887066
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.3484211    1.2227796   1.4740627
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.2895226    1.2324007   1.3466445
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.4038483    1.3598734   1.4478233
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.3240455    1.2669204   1.3811705
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.3396757    1.2843146   1.3950368
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                1.1220917    1.0384750   1.2057083
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.1914105    1.0781225   1.3046986
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.0877626    1.0447799   1.1307452
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                1.2531788    1.2144723   1.2918854
6-9 months     ki1135781-COHORTS          INDIA                          2                    NA                1.2156383    1.1783915   1.2528851
6-9 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.1669144    1.1468131   1.1870156
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.0976280    1.0168233   1.1784326
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0010499    0.9125568   1.0895431
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.9772816    0.9173767   1.0371864
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1059239    1.0422078   1.1696401
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.0526520    0.9748815   1.1304226
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.0397838    0.9890876   1.0904801
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0702132    0.9998060   1.1406204
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1036923    1.0281095   1.1792751
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.0689351    0.9970173   1.1408528
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.9075016    0.7639916   1.0510116
9-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                1.1040899    0.9449297   1.2632501
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.9546577    0.9062085   1.0031070
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.0279372    0.9228886   1.1329858
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.0330299    0.9309238   1.1351359
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.9607069    0.9176191   1.0037946
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1201832    1.0735711   1.1667953
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.0910424    1.0286668   1.1534179
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.0955618    1.0495634   1.1415603
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.0629176    1.0012272   1.1246080
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.9148191    0.7817279   1.0479103
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.9327058    0.8912557   0.9741559
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.0353863    0.9949332   1.0758394
9-12 months    ki1135781-COHORTS          INDIA                          2                    NA                0.9933184    0.9528760   1.0337608
9-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.9562572    0.9348203   0.9776941
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.8542453    0.7543735   0.9541171
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.8075544    0.7388283   0.8762804
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.7828123    0.7104344   0.8551901
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.9698053    0.9193819   1.0202287
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.9178351    0.8659795   0.9696907
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.9390524    0.8912240   0.9868808
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9606180    0.8894156   1.0318204
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.9230977    0.8482780   0.9979173
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9676774    0.8981270   1.0372279
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                1.1562634    1.0861991   1.2263278
12-15 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8488473    0.7165946   0.9810999
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.9209353    0.8847186   0.9571521
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9455107    0.8750889   1.0159324
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8519999    0.7438392   0.9601605
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8210283    0.7810111   0.8610455
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.9668194    0.8977870   1.0358519
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.9133420    0.8300856   0.9965984
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.9008662    0.8478102   0.9539221
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8411507    0.7323497   0.9499516
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.8394323    0.7503460   0.9285185
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7685578    0.7301775   0.8069380
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.9147683    0.8100046   1.0195321
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.9453515    0.8307911   1.0599119
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.9307892    0.8719400   0.9896384
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8875660    0.8356256   0.9395063
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8637114    0.8087166   0.9187063
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8946938    0.8447763   0.9446113
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9174169    0.8321670   1.0026669
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8936395    0.7995923   0.9876867
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.9651358    0.8755068   1.0547648
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                1.5170327    1.1289113   1.9051540
15-18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.7380763    0.6154212   0.8607313
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8816417    0.8364415   0.9268419
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7444862    0.6570249   0.8319476
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.7257374    0.6158197   0.8356550
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.7723272    0.7367168   0.8079377
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.8502969    0.7819116   0.9186821
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7672872    0.6790980   0.8554765
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7606480    0.7036935   0.8176025
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6843228    0.5857814   0.7828642
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.5593180    0.4275419   0.6910941
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7199961    0.6731675   0.7668246
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8549188    0.8114115   0.8984261
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8350594    0.7859092   0.8842096
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.8163738    0.7679085   0.8648391
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0695553   -0.3023923   0.4415029
18-21 months   ki1101329-Keneba           GAMBIA                         2                    NA                1.0047522    0.8303476   1.1791568
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8144021    0.7741122   0.8546919
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.8804439    0.8082763   0.9526114
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.9543973    0.8664432   1.0423514
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8815886    0.8391496   0.9240276
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6453610    0.5696553   0.7210668
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6808372    0.6015801   0.7600943
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6565680    0.5936959   0.7194401
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7224767    0.6329273   0.8120262
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7939930    0.6843924   0.9035936
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7460593    0.7058789   0.7862397
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8147549    0.7650090   0.8645009
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.7139351    0.6576937   0.7701765
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7449632    0.6918278   0.7980985
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7894724    0.6311172   0.9478276
21-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.6229700    0.3315088   0.9144313
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.7351200    0.6913196   0.7789204
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9456971    0.8165663   1.0748279
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6323381    0.4296578   0.8350184
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.6943040    0.6415713   0.7470366
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7156495    0.6135595   0.8177395
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6790862    0.5992104   0.7589621
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.5401787    0.4526908   0.6276666
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7676995    0.6784194   0.8569796
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6520222    0.5552930   0.7487514
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.6548955    0.6244942   0.6852967


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1106299   3.0607110   3.1605487
0-3 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370118   3.3164684   3.3575551
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.4951636   3.4771029   3.5132243
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.6645220   3.6542864   3.6747577
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7960345   1.7599951   1.8320738
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229826   1.2861186   1.3598466
6-9 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.4249547   1.3698531   1.4800562
6-9 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
6-9 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.1876267   1.1734988   1.2017547
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872065   1.0529274   1.1214857
9-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.9677634   0.9232065   1.0123204
9-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.0812148   1.0633428   1.0990869
9-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.9507015   0.9262928   0.9751103
9-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.9788325   0.9636749   0.9939901
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9308176   0.8938698   0.9677654
12-15 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.9311532   0.8983800   0.9639264
12-15 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
12-15 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7856579   0.7592765   0.8120393
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9386381   0.8958056   0.9814706
15-18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8874581   0.8529191   0.9219971
15-18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
15-18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7458835   0.7161259   0.7756412
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8148545   0.7779341   0.8517749
18-21 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
18-21 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7491980   0.7206457   0.7777504
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.7279143   0.6917604   0.7640682
21-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047
21-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6777084   0.6544850   0.7009317


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0347896   -0.1420675    0.0724883
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0112450   -0.1329477    0.1104577
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0117790   -0.1435032    0.1199452
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0515570   -0.1814998    0.0783858
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0574265   -0.3911317    0.2762787
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.2462094    0.1202377    0.3721811
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.2252136   -0.1289134    0.5793406
0-3 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0153850   -0.2313059    0.2620759
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0340638   -0.0415255    0.1096531
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0220899   -0.0483360    0.0925158
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0922246   -0.3254342    0.1409849
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1327327   -0.2736346    0.0081692
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0214472   -0.0887783    0.0458839
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1397902   -0.1950688   -0.0845117
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0441931    0.0113562    0.0770300
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0508350   -0.0851733   -0.0164968
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1606584   -0.2512864   -0.0700303
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.2513887   -0.3703520   -0.1324254
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0052434   -0.1109931    0.1214800
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0943956   -0.0174241    0.2062153
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0266214   -0.0842827    0.1375256
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0839211   -0.1793845    0.0115424
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0307169   -0.2437413    0.3051751
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2804937   -0.4240194   -0.1369680
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1359459   -0.3051297    0.0332379
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1734877   -0.2867862   -0.0601891
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0619125   -0.1287782    0.0049532
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1113511   -0.1795282   -0.0431741
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.3039821   -0.4642842   -0.1436801
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.3229709   -0.4268334   -0.2191083
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.1075428   -0.1685403   -0.0465453
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1556033   -0.2091445   -0.1020621
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0877919   -0.1247407   -0.0508430
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1377932   -0.1794023   -0.0961841
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1144488   -0.2644711    0.0355736
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0792826   -0.1840317    0.0254665
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0315994   -0.1085419    0.0453431
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.1258410   -0.1987035   -0.0529786
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0685556   -0.1752518    0.0381406
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.1440293   -0.2401708   -0.0478877
6-9 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.3084893   -0.5541854   -0.0627932
6-9 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.3445693   -0.4829009   -0.2062378
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.1365597   -0.0811114    0.3542308
6-9 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0776612   -0.1080528    0.2633752
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0798029   -0.1518728   -0.0077329
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0641726   -0.1348951    0.0065499
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0693189   -0.0719455    0.2105832
6-9 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0343291   -0.1282919    0.0596336
6-9 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0375405   -0.0912742    0.0161931
6-9 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0862645   -0.1299343   -0.0425946
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0965780   -0.2176750    0.0245190
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1203464   -0.2179756   -0.0227172
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0532719   -0.1538060    0.0472621
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0661401   -0.1474046    0.0151243
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0334791   -0.0702869    0.1372451
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0012781   -0.1022968    0.0997406
9-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.1965883   -0.0187441    0.4119207
9-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                  0.0471561   -0.1059644    0.2002766
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0050926   -0.1413428    0.1515280
9-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0672304   -0.1805474    0.0460867
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0291409   -0.1070712    0.0487895
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0246214   -0.0901487    0.0409059
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1480985   -0.2949797   -0.0012172
9-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1302118   -0.2046788   -0.0557448
9-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0420679   -0.0992949    0.0151591
9-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0791291   -0.1249160   -0.0333422
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0466910   -0.1855207    0.0921388
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0714331   -0.1896606    0.0467945
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0519702   -0.1242310    0.0202906
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0307529   -0.1001335    0.0386277
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0375203   -0.1409098    0.0658692
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0070594   -0.0925982    0.1067171
12-15 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.3074162   -0.4570291   -0.1578033
12-15 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.2353281   -0.3141301   -0.1565261
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0935108   -0.2228429    0.0358213
12-15 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.1244824   -0.2052405   -0.0437242
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0534774   -0.1617060    0.0547512
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0659533   -0.1531165    0.0212100
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0017184   -0.1426514    0.1392146
12-15 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0725929   -0.1883156    0.0431298
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0305831   -0.1348019    0.1959682
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                  0.0160208   -0.1295078    0.1615494
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0238545   -0.0997466    0.0520376
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.0071278   -0.0649118    0.0791675
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0237775   -0.1517805    0.1042256
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0477189   -0.0774038    0.1728415
15-18 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.7789564   -1.1859751   -0.3719376
15-18 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.6353910   -1.0253479   -0.2454340
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0187488   -0.1592293    0.1217316
15-18 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0278410   -0.0666344    0.1223163
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0830096   -0.1946786    0.0286593
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0896489   -0.1788512   -0.0004465
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1250048   -0.2891864    0.0391768
15-18 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0356733   -0.0737676    0.1451141
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0198594   -0.0854985    0.0457797
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0385450   -0.1036132    0.0265232
18-21 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.9351969    0.5255126    1.3448811
18-21 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.7448468    0.3723242    1.1173693
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                  0.0739534   -0.0397299    0.1876368
18-21 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                  0.0011447   -0.0824064    0.0846959
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0354762   -0.0746907    0.1456431
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0112070   -0.0879282    0.1103422
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1135781-COHORTS          GUATEMALA                      2                    1                  0.0715163   -0.0703583    0.2133908
18-21 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0235826   -0.0747308    0.1218961
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.1008198   -0.1757805   -0.0258591
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0697918   -0.1425812    0.0029977
21-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.1665024   -0.4983400    0.1653352
21-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0543524   -0.2191515    0.1104467
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.3133590   -0.5545784   -0.0721397
21-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2513931   -0.3900266   -0.1127597
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0365633   -0.1666495    0.0935230
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1754708   -0.3101635   -0.0407781
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.1156773   -0.2474865    0.0161319
21-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1128040   -0.2069231   -0.0186849


### Parameter: PAR


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0268954   -0.1196184    0.0658276
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0263506   -0.1151723    0.0624712
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.2379586    0.1276164    0.3483008
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0782600   -0.1454337    0.3019537
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0226366   -0.0704269    0.0251537
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1099220   -0.2364348    0.0165908
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0975313   -0.1443745   -0.0506881
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0110285   -0.0142517    0.0363086
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1627874   -0.2389551   -0.0866197
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0011704   -0.0762342    0.0738934
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0106290   -0.0483371    0.0695951
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.2119031   -0.3292145   -0.0945917
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1211850   -0.2203149   -0.0220550
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0412122   -0.0811738   -0.0012506
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3031824   -0.3968081   -0.2095567
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1338923   -0.1802089   -0.0875757
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0724106   -0.1009024   -0.0439188
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0918903   -0.1741819   -0.0095986
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0584772   -0.1036248   -0.0133296
6-9 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0578185   -0.1177825    0.0021455
6-9 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.3403994   -0.4576583   -0.2231406
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1053412   -0.0656995    0.2763819
6-9 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0568709   -0.0973227   -0.0164191
6-9 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0151542   -0.0972879    0.0669795
6-9 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0655521   -0.1025210   -0.0285832
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0978955   -0.1674081   -0.0283829
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0559490   -0.1135975    0.0016996
9-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0169933   -0.0446038    0.0785905
9-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0602618   -0.0857453    0.2062690
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0295611   -0.1325506    0.0734284
9-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0389684   -0.0825674    0.0046306
9-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1122160   -0.1735327   -0.0508994
9-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0565538   -0.0952026   -0.0179051
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0207765   -0.1060809    0.0645280
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0100553   -0.0541508    0.0340403
12-15 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0298004   -0.0909400    0.0313392
12-15 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.2251102   -0.2981029   -0.1521175
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0658060   -0.1344421    0.0028301
12-15 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0462274   -0.1094667    0.0170118
12-15 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0554928   -0.1610454    0.0500599
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0100846   -0.1193362    0.0991669
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0314661   -0.0773262    0.0143940
15-18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0212211   -0.0537989    0.0962412
15-18 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.6295746   -1.0081598   -0.2509893
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0104658   -0.0767509    0.0976824
15-18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0508725   -0.1147523    0.0130072
15-18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0615607   -0.0336030    0.1567244
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0155811   -0.0535981    0.0224358
18-21 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.7452992    0.3834475    1.1071509
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0234517   -0.0504547    0.0973581
18-21 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0355214   -0.0356064    0.1066491
18-21 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0267213   -0.0616606    0.1151032
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0516159   -0.0957151   -0.0075166
21-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0615581   -0.2165109    0.0933947
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1466659   -0.2728311   -0.0205008
21-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0249080   -0.1186130    0.0687969
21-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0899911   -0.1767601   -0.0032221
