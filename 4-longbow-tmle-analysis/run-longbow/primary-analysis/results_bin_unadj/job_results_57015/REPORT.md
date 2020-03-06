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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        sex       ever_swasted   n_cell       n
------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               0      144     373
0-24 months   CMC-V-BCS-2002   INDIA                          Female               1       43     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 0      137     373
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 1       49     373
0-24 months   CMIN             BANGLADESH                     Female               0      101     272
0-24 months   CMIN             BANGLADESH                     Female               1       18     272
0-24 months   CMIN             BANGLADESH                     Male                 0      129     272
0-24 months   CMIN             BANGLADESH                     Male                 1       24     272
0-24 months   COHORTS          GUATEMALA                      Female               0      599    1349
0-24 months   COHORTS          GUATEMALA                      Female               1       36    1349
0-24 months   COHORTS          GUATEMALA                      Male                 0      653    1349
0-24 months   COHORTS          GUATEMALA                      Male                 1       61    1349
0-24 months   COHORTS          INDIA                          Female               0     3185    7405
0-24 months   COHORTS          INDIA                          Female               1      366    7405
0-24 months   COHORTS          INDIA                          Male                 0     3444    7405
0-24 months   COHORTS          INDIA                          Male                 1      410    7405
0-24 months   COHORTS          PHILIPPINES                    Female               0     1274    3045
0-24 months   COHORTS          PHILIPPINES                    Female               1      157    3045
0-24 months   COHORTS          PHILIPPINES                    Male                 0     1389    3045
0-24 months   COHORTS          PHILIPPINES                    Male                 1      225    3045
0-24 months   CONTENT          PERU                           Female               0      109     215
0-24 months   CONTENT          PERU                           Female               1        0     215
0-24 months   CONTENT          PERU                           Male                 0      105     215
0-24 months   CONTENT          PERU                           Male                 1        1     215
0-24 months   EE               PAKISTAN                       Female               0      153     380
0-24 months   EE               PAKISTAN                       Female               1       32     380
0-24 months   EE               PAKISTAN                       Male                 0      147     380
0-24 months   EE               PAKISTAN                       Male                 1       48     380
0-24 months   GMS-Nepal        NEPAL                          Female               0      239     686
0-24 months   GMS-Nepal        NEPAL                          Female               1       83     686
0-24 months   GMS-Nepal        NEPAL                          Male                 0      270     686
0-24 months   GMS-Nepal        NEPAL                          Male                 1       94     686
0-24 months   Guatemala BSC    GUATEMALA                      Female               0      162     315
0-24 months   Guatemala BSC    GUATEMALA                      Female               1        0     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                 0      150     315
0-24 months   Guatemala BSC    GUATEMALA                      Male                 1        3     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               0     1565    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               1       60    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 0     1536    3266
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 1      105    3266
0-24 months   IRC              INDIA                          Female               0      123     410
0-24 months   IRC              INDIA                          Female               1       62     410
0-24 months   IRC              INDIA                          Male                 0      147     410
0-24 months   IRC              INDIA                          Male                 1       78     410
0-24 months   Keneba           GAMBIA                         Female               0     1198    2920
0-24 months   Keneba           GAMBIA                         Female               1      213    2920
0-24 months   Keneba           GAMBIA                         Male                 0     1196    2920
0-24 months   Keneba           GAMBIA                         Male                 1      313    2920
0-24 months   LCNI-5           MALAWI                         Female               0      418     840
0-24 months   LCNI-5           MALAWI                         Female               1        3     840
0-24 months   LCNI-5           MALAWI                         Male                 0      414     840
0-24 months   LCNI-5           MALAWI                         Male                 1        5     840
0-24 months   MAL-ED           BANGLADESH                     Female               0      121     263
0-24 months   MAL-ED           BANGLADESH                     Female               1       13     263
0-24 months   MAL-ED           BANGLADESH                     Male                 0      121     263
0-24 months   MAL-ED           BANGLADESH                     Male                 1        8     263
0-24 months   MAL-ED           BRAZIL                         Female               0      112     233
0-24 months   MAL-ED           BRAZIL                         Female               1        1     233
0-24 months   MAL-ED           BRAZIL                         Male                 0      117     233
0-24 months   MAL-ED           BRAZIL                         Male                 1        3     233
0-24 months   MAL-ED           INDIA                          Female               0      124     251
0-24 months   MAL-ED           INDIA                          Female               1       14     251
0-24 months   MAL-ED           INDIA                          Male                 0      101     251
0-24 months   MAL-ED           INDIA                          Male                 1       12     251
0-24 months   MAL-ED           NEPAL                          Female               0      107     240
0-24 months   MAL-ED           NEPAL                          Female               1        3     240
0-24 months   MAL-ED           NEPAL                          Male                 0      124     240
0-24 months   MAL-ED           NEPAL                          Male                 1        6     240
0-24 months   MAL-ED           PERU                           Female               0      141     302
0-24 months   MAL-ED           PERU                           Female               1        1     302
0-24 months   MAL-ED           PERU                           Male                 0      157     302
0-24 months   MAL-ED           PERU                           Male                 1        3     302
0-24 months   MAL-ED           SOUTH AFRICA                   Female               0      152     312
0-24 months   MAL-ED           SOUTH AFRICA                   Female               1        6     312
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 0      144     312
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 1       10     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               0      129     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               1        3     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 0      123     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 1        6     261
0-24 months   NIH-Birth        BANGLADESH                     Female               0      257     624
0-24 months   NIH-Birth        BANGLADESH                     Female               1       39     624
0-24 months   NIH-Birth        BANGLADESH                     Male                 0      268     624
0-24 months   NIH-Birth        BANGLADESH                     Male                 1       60     624
0-24 months   NIH-Crypto       BANGLADESH                     Female               0      346     758
0-24 months   NIH-Crypto       BANGLADESH                     Female               1       35     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                 0      346     758
0-24 months   NIH-Crypto       BANGLADESH                     Male                 1       31     758
0-24 months   PROBIT           BELARUS                        Female               0     7579   16898
0-24 months   PROBIT           BELARUS                        Female               1      575   16898
0-24 months   PROBIT           BELARUS                        Male                 0     7994   16898
0-24 months   PROBIT           BELARUS                        Male                 1      750   16898
0-24 months   PROVIDE          BANGLADESH                     Female               0      317     700
0-24 months   PROVIDE          BANGLADESH                     Female               1       15     700
0-24 months   PROVIDE          BANGLADESH                     Male                 0      341     700
0-24 months   PROVIDE          BANGLADESH                     Male                 1       27     700
0-24 months   ResPak           PAKISTAN                       Female               0      110     284
0-24 months   ResPak           PAKISTAN                       Female               1       26     284
0-24 months   ResPak           PAKISTAN                       Male                 0      105     284
0-24 months   ResPak           PAKISTAN                       Male                 1       43     284
0-24 months   SAS-CompFeed     INDIA                          Female               0      591    1513
0-24 months   SAS-CompFeed     INDIA                          Female               1       95    1513
0-24 months   SAS-CompFeed     INDIA                          Male                 0      699    1513
0-24 months   SAS-CompFeed     INDIA                          Male                 1      128    1513
0-24 months   SAS-FoodSuppl    INDIA                          Female               0      187     418
0-24 months   SAS-FoodSuppl    INDIA                          Female               1       36     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                 0      160     418
0-24 months   SAS-FoodSuppl    INDIA                          Male                 1       35     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1118    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       66    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0     1120    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       92    2396
0-24 months   ZVITAMBO         ZIMBABWE                       Female               0     6170   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Female               1      605   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 0     6490   13946
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 1      681   13946
0-6 months    CMC-V-BCS-2002   INDIA                          Female               0      148     368
0-6 months    CMC-V-BCS-2002   INDIA                          Female               1       37     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 0      153     368
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 1       30     368
0-6 months    CMIN             BANGLADESH                     Female               0      113     272
0-6 months    CMIN             BANGLADESH                     Female               1        6     272
0-6 months    CMIN             BANGLADESH                     Male                 0      145     272
0-6 months    CMIN             BANGLADESH                     Male                 1        8     272
0-6 months    COHORTS          GUATEMALA                      Female               0      481    1064
0-6 months    COHORTS          GUATEMALA                      Female               1       26    1064
0-6 months    COHORTS          GUATEMALA                      Male                 0      516    1064
0-6 months    COHORTS          GUATEMALA                      Male                 1       41    1064
0-6 months    COHORTS          INDIA                          Female               0     3197    7128
0-6 months    COHORTS          INDIA                          Female               1      259    7128
0-6 months    COHORTS          INDIA                          Male                 0     3400    7128
0-6 months    COHORTS          INDIA                          Male                 1      272    7128
0-6 months    COHORTS          PHILIPPINES                    Female               0     1340    3044
0-6 months    COHORTS          PHILIPPINES                    Female               1       91    3044
0-6 months    COHORTS          PHILIPPINES                    Male                 0     1493    3044
0-6 months    COHORTS          PHILIPPINES                    Male                 1      120    3044
0-6 months    CONTENT          PERU                           Female               0      109     215
0-6 months    CONTENT          PERU                           Female               1        0     215
0-6 months    CONTENT          PERU                           Male                 0      105     215
0-6 months    CONTENT          PERU                           Male                 1        1     215
0-6 months    EE               PAKISTAN                       Female               0      172     380
0-6 months    EE               PAKISTAN                       Female               1       13     380
0-6 months    EE               PAKISTAN                       Male                 0      172     380
0-6 months    EE               PAKISTAN                       Male                 1       23     380
0-6 months    GMS-Nepal        NEPAL                          Female               0      286     686
0-6 months    GMS-Nepal        NEPAL                          Female               1       36     686
0-6 months    GMS-Nepal        NEPAL                          Male                 0      321     686
0-6 months    GMS-Nepal        NEPAL                          Male                 1       43     686
0-6 months    Guatemala BSC    GUATEMALA                      Female               0      154     295
0-6 months    Guatemala BSC    GUATEMALA                      Female               1        0     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                 0      140     295
0-6 months    Guatemala BSC    GUATEMALA                      Male                 1        1     295
0-6 months    IRC              INDIA                          Female               0      130     410
0-6 months    IRC              INDIA                          Female               1       55     410
0-6 months    IRC              INDIA                          Male                 0      154     410
0-6 months    IRC              INDIA                          Male                 1       71     410
0-6 months    Keneba           GAMBIA                         Female               0     1085    2466
0-6 months    Keneba           GAMBIA                         Female               1      102    2466
0-6 months    Keneba           GAMBIA                         Male                 0     1150    2466
0-6 months    Keneba           GAMBIA                         Male                 1      129    2466
0-6 months    LCNI-5           MALAWI                         Female               0      129     272
0-6 months    LCNI-5           MALAWI                         Female               1        0     272
0-6 months    LCNI-5           MALAWI                         Male                 0      143     272
0-6 months    LCNI-5           MALAWI                         Male                 1        0     272
0-6 months    MAL-ED           BANGLADESH                     Female               0      125     263
0-6 months    MAL-ED           BANGLADESH                     Female               1        9     263
0-6 months    MAL-ED           BANGLADESH                     Male                 0      122     263
0-6 months    MAL-ED           BANGLADESH                     Male                 1        7     263
0-6 months    MAL-ED           BRAZIL                         Female               0      112     233
0-6 months    MAL-ED           BRAZIL                         Female               1        1     233
0-6 months    MAL-ED           BRAZIL                         Male                 0      118     233
0-6 months    MAL-ED           BRAZIL                         Male                 1        2     233
0-6 months    MAL-ED           INDIA                          Female               0      126     251
0-6 months    MAL-ED           INDIA                          Female               1       12     251
0-6 months    MAL-ED           INDIA                          Male                 0      104     251
0-6 months    MAL-ED           INDIA                          Male                 1        9     251
0-6 months    MAL-ED           NEPAL                          Female               0      107     240
0-6 months    MAL-ED           NEPAL                          Female               1        3     240
0-6 months    MAL-ED           NEPAL                          Male                 0      126     240
0-6 months    MAL-ED           NEPAL                          Male                 1        4     240
0-6 months    MAL-ED           PERU                           Female               0      142     302
0-6 months    MAL-ED           PERU                           Female               1        0     302
0-6 months    MAL-ED           PERU                           Male                 0      159     302
0-6 months    MAL-ED           PERU                           Male                 1        1     302
0-6 months    MAL-ED           SOUTH AFRICA                   Female               0      157     312
0-6 months    MAL-ED           SOUTH AFRICA                   Female               1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 0      149     312
0-6 months    MAL-ED           SOUTH AFRICA                   Male                 1        5     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               0      131     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               1        1     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 0      126     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 1        3     261
0-6 months    NIH-Birth        BANGLADESH                     Female               0      270     622
0-6 months    NIH-Birth        BANGLADESH                     Female               1       25     622
0-6 months    NIH-Birth        BANGLADESH                     Male                 0      296     622
0-6 months    NIH-Birth        BANGLADESH                     Male                 1       31     622
0-6 months    NIH-Crypto       BANGLADESH                     Female               0      354     758
0-6 months    NIH-Crypto       BANGLADESH                     Female               1       27     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                 0      354     758
0-6 months    NIH-Crypto       BANGLADESH                     Male                 1       23     758
0-6 months    PROBIT           BELARUS                        Female               0     7577   16895
0-6 months    PROBIT           BELARUS                        Female               1      575   16895
0-6 months    PROBIT           BELARUS                        Male                 0     8005   16895
0-6 months    PROBIT           BELARUS                        Male                 1      738   16895
0-6 months    PROVIDE          BANGLADESH                     Female               0      322     700
0-6 months    PROVIDE          BANGLADESH                     Female               1       10     700
0-6 months    PROVIDE          BANGLADESH                     Male                 0      349     700
0-6 months    PROVIDE          BANGLADESH                     Male                 1       19     700
0-6 months    ResPak           PAKISTAN                       Female               0      118     282
0-6 months    ResPak           PAKISTAN                       Female               1       18     282
0-6 months    ResPak           PAKISTAN                       Male                 0      121     282
0-6 months    ResPak           PAKISTAN                       Male                 1       25     282
0-6 months    SAS-CompFeed     INDIA                          Female               0      635    1505
0-6 months    SAS-CompFeed     INDIA                          Female               1       49    1505
0-6 months    SAS-CompFeed     INDIA                          Male                 0      770    1505
0-6 months    SAS-CompFeed     INDIA                          Male                 1       51    1505
0-6 months    SAS-FoodSuppl    INDIA                          Female               0      214     418
0-6 months    SAS-FoodSuppl    INDIA                          Female               1        9     418
0-6 months    SAS-FoodSuppl    INDIA                          Male                 0      184     418
0-6 months    SAS-FoodSuppl    INDIA                          Male                 1       11     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0     1154    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       30    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0     1163    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       49    2396
0-6 months    ZVITAMBO         ZIMBABWE                       Female               0     6260   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Female               1      458   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 0     6640   13853
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 1      495   13853
6-24 months   CMC-V-BCS-2002   INDIA                          Female               0      178     373
6-24 months   CMC-V-BCS-2002   INDIA                          Female               1        9     373
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 0      165     373
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 1       21     373
6-24 months   CMIN             BANGLADESH                     Female               0       96     252
6-24 months   CMIN             BANGLADESH                     Female               1       12     252
6-24 months   CMIN             BANGLADESH                     Male                 0      127     252
6-24 months   CMIN             BANGLADESH                     Male                 1       17     252
6-24 months   COHORTS          GUATEMALA                      Female               0      573    1220
6-24 months   COHORTS          GUATEMALA                      Female               1       10    1220
6-24 months   COHORTS          GUATEMALA                      Male                 0      617    1220
6-24 months   COHORTS          GUATEMALA                      Male                 1       20    1220
6-24 months   COHORTS          INDIA                          Female               0     3212    6941
6-24 months   COHORTS          INDIA                          Female               1      111    6941
6-24 months   COHORTS          INDIA                          Male                 0     3474    6941
6-24 months   COHORTS          INDIA                          Male                 1      144    6941
6-24 months   COHORTS          PHILIPPINES                    Female               0     1255    2809
6-24 months   COHORTS          PHILIPPINES                    Female               1       74    2809
6-24 months   COHORTS          PHILIPPINES                    Male                 0     1366    2809
6-24 months   COHORTS          PHILIPPINES                    Male                 1      114    2809
6-24 months   CONTENT          PERU                           Female               0      109     215
6-24 months   CONTENT          PERU                           Female               1        0     215
6-24 months   CONTENT          PERU                           Male                 0      106     215
6-24 months   CONTENT          PERU                           Male                 1        0     215
6-24 months   EE               PAKISTAN                       Female               0      161     374
6-24 months   EE               PAKISTAN                       Female               1       21     374
6-24 months   EE               PAKISTAN                       Male                 0      162     374
6-24 months   EE               PAKISTAN                       Male                 1       30     374
6-24 months   GMS-Nepal        NEPAL                          Female               0      231     590
6-24 months   GMS-Nepal        NEPAL                          Female               1       54     590
6-24 months   GMS-Nepal        NEPAL                          Male                 0      247     590
6-24 months   GMS-Nepal        NEPAL                          Male                 1       58     590
6-24 months   Guatemala BSC    GUATEMALA                      Female               0      142     277
6-24 months   Guatemala BSC    GUATEMALA                      Female               1        0     277
6-24 months   Guatemala BSC    GUATEMALA                      Male                 0      133     277
6-24 months   Guatemala BSC    GUATEMALA                      Male                 1        2     277
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               0     1565    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               1       60    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 0     1536    3266
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 1      105    3266
6-24 months   IRC              INDIA                          Female               0      172     410
6-24 months   IRC              INDIA                          Female               1       13     410
6-24 months   IRC              INDIA                          Male                 0      212     410
6-24 months   IRC              INDIA                          Male                 1       13     410
6-24 months   Keneba           GAMBIA                         Female               0     1203    2738
6-24 months   Keneba           GAMBIA                         Female               1      122    2738
6-24 months   Keneba           GAMBIA                         Male                 0     1214    2738
6-24 months   Keneba           GAMBIA                         Male                 1      199    2738
6-24 months   LCNI-5           MALAWI                         Female               0      414     826
6-24 months   LCNI-5           MALAWI                         Female               1        3     826
6-24 months   LCNI-5           MALAWI                         Male                 0      404     826
6-24 months   LCNI-5           MALAWI                         Male                 1        5     826
6-24 months   MAL-ED           BANGLADESH                     Female               0      118     240
6-24 months   MAL-ED           BANGLADESH                     Female               1        4     240
6-24 months   MAL-ED           BANGLADESH                     Male                 0      117     240
6-24 months   MAL-ED           BANGLADESH                     Male                 1        1     240
6-24 months   MAL-ED           BRAZIL                         Female               0      101     207
6-24 months   MAL-ED           BRAZIL                         Female               1        0     207
6-24 months   MAL-ED           BRAZIL                         Male                 0      105     207
6-24 months   MAL-ED           BRAZIL                         Male                 1        1     207
6-24 months   MAL-ED           INDIA                          Female               0      127     235
6-24 months   MAL-ED           INDIA                          Female               1        2     235
6-24 months   MAL-ED           INDIA                          Male                 0      102     235
6-24 months   MAL-ED           INDIA                          Male                 1        4     235
6-24 months   MAL-ED           NEPAL                          Female               0      109     235
6-24 months   MAL-ED           NEPAL                          Female               1        0     235
6-24 months   MAL-ED           NEPAL                          Male                 0      124     235
6-24 months   MAL-ED           NEPAL                          Male                 1        2     235
6-24 months   MAL-ED           PERU                           Female               0      123     270
6-24 months   MAL-ED           PERU                           Female               1        1     270
6-24 months   MAL-ED           PERU                           Male                 0      144     270
6-24 months   MAL-ED           PERU                           Male                 1        2     270
6-24 months   MAL-ED           SOUTH AFRICA                   Female               0      124     259
6-24 months   MAL-ED           SOUTH AFRICA                   Female               1        5     259
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 0      125     259
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 1        5     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               0      122     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female               1        2     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 0      118     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male                 1        3     245
6-24 months   NIH-Birth        BANGLADESH                     Female               0      231     542
6-24 months   NIH-Birth        BANGLADESH                     Female               1       15     542
6-24 months   NIH-Birth        BANGLADESH                     Male                 0      263     542
6-24 months   NIH-Birth        BANGLADESH                     Male                 1       33     542
6-24 months   NIH-Crypto       BANGLADESH                     Female               0      360     730
6-24 months   NIH-Crypto       BANGLADESH                     Female               1        9     730
6-24 months   NIH-Crypto       BANGLADESH                     Male                 0      350     730
6-24 months   NIH-Crypto       BANGLADESH                     Male                 1       11     730
6-24 months   PROBIT           BELARUS                        Female               0     8000   16598
6-24 months   PROBIT           BELARUS                        Female               1        0   16598
6-24 months   PROBIT           BELARUS                        Male                 0     8586   16598
6-24 months   PROBIT           BELARUS                        Male                 1       12   16598
6-24 months   PROVIDE          BANGLADESH                     Female               0      289     615
6-24 months   PROVIDE          BANGLADESH                     Female               1        5     615
6-24 months   PROVIDE          BANGLADESH                     Male                 0      313     615
6-24 months   PROVIDE          BANGLADESH                     Male                 1        8     615
6-24 months   ResPak           PAKISTAN                       Female               0      100     236
6-24 months   ResPak           PAKISTAN                       Female               1       10     236
6-24 months   ResPak           PAKISTAN                       Male                 0      103     236
6-24 months   ResPak           PAKISTAN                       Male                 1       23     236
6-24 months   SAS-CompFeed     INDIA                          Female               0      573    1389
6-24 months   SAS-CompFeed     INDIA                          Female               1       51    1389
6-24 months   SAS-CompFeed     INDIA                          Male                 0      682    1389
6-24 months   SAS-CompFeed     INDIA                          Male                 1       83    1389
6-24 months   SAS-FoodSuppl    INDIA                          Female               0      185     402
6-24 months   SAS-FoodSuppl    INDIA                          Female               1       27     402
6-24 months   SAS-FoodSuppl    INDIA                          Male                 0      166     402
6-24 months   SAS-FoodSuppl    INDIA                          Male                 1       24     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               0      960    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               1       37    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 0      975    2018
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 1       46    2018
6-24 months   ZVITAMBO         ZIMBABWE                       Female               0     5214   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Female               1      154   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 0     5245   10815
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 1      202   10815


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/7cff73a4-2233-494d-997e-68a04c77d062/7960c873-67c4-40d0-a860-7abd3dc30001/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7cff73a4-2233-494d-997e-68a04c77d062/7960c873-67c4-40d0-a860-7abd3dc30001/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7cff73a4-2233-494d-997e-68a04c77d062/7960c873-67c4-40d0-a860-7abd3dc30001/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7cff73a4-2233-494d-997e-68a04c77d062/7960c873-67c4-40d0-a860-7abd3dc30001/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.2299465   0.1695539   0.2903392
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.2634409   0.2000510   0.3268307
0-24 months   CMIN             BANGLADESH                     Female               NA                0.1512605   0.0867657   0.2157553
0-24 months   CMIN             BANGLADESH                     Male                 NA                0.1568627   0.0991315   0.2145940
0-24 months   COHORTS          GUATEMALA                      Female               NA                0.0566929   0.0386995   0.0746863
0-24 months   COHORTS          GUATEMALA                      Male                 NA                0.0854342   0.0649233   0.1059450
0-24 months   COHORTS          INDIA                          Female               NA                0.1030696   0.0930685   0.1130706
0-24 months   COHORTS          INDIA                          Male                 NA                0.1063830   0.0966480   0.1161179
0-24 months   COHORTS          PHILIPPINES                    Female               NA                0.1097135   0.0935180   0.1259090
0-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.1394052   0.1225044   0.1563060
0-24 months   EE               PAKISTAN                       Female               NA                0.1729730   0.1183993   0.2275467
0-24 months   EE               PAKISTAN                       Male                 NA                0.2461538   0.1856131   0.3066946
0-24 months   GMS-Nepal        NEPAL                          Female               NA                0.2577640   0.2099539   0.3055740
0-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.2582418   0.2132473   0.3032362
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0369231   0.0259852   0.0478610
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0639854   0.0442101   0.0837606
0-24 months   IRC              INDIA                          Female               NA                0.3351351   0.2670317   0.4032386
0-24 months   IRC              INDIA                          Male                 NA                0.3466667   0.2844065   0.4089269
0-24 months   Keneba           GAMBIA                         Female               NA                0.1509568   0.1322736   0.1696399
0-24 months   Keneba           GAMBIA                         Male                 NA                0.2074221   0.1869612   0.2278831
0-24 months   MAL-ED           BANGLADESH                     Female               NA                0.0970149   0.0468058   0.1472240
0-24 months   MAL-ED           BANGLADESH                     Male                 NA                0.0620155   0.0203162   0.1037148
0-24 months   MAL-ED           INDIA                          Female               NA                0.1014493   0.0509749   0.1519237
0-24 months   MAL-ED           INDIA                          Male                 NA                0.1061947   0.0492768   0.1631126
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.0379747   0.0081238   0.0678256
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.0649351   0.0259547   0.1039154
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.1317568   0.0931949   0.1703186
0-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.1829268   0.1410544   0.2247993
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.0918635   0.0628421   0.1208850
0-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.0822281   0.0544795   0.1099768
0-24 months   PROBIT           BELARUS                        Female               NA                0.0705175   0.0371800   0.1038551
0-24 months   PROBIT           BELARUS                        Male                 NA                0.0857731   0.0530144   0.1185318
0-24 months   PROVIDE          BANGLADESH                     Female               NA                0.0451807   0.0228230   0.0675384
0-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.0733696   0.0467104   0.1000287
0-24 months   ResPak           PAKISTAN                       Female               NA                0.1911765   0.1249718   0.2573812
0-24 months   ResPak           PAKISTAN                       Male                 NA                0.2905405   0.2172665   0.3638146
0-24 months   SAS-CompFeed     INDIA                          Female               NA                0.1384840   0.1126625   0.1643055
0-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.1547763   0.1144403   0.1951123
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.1614350   0.1130865   0.2097835
0-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.1794872   0.1255597   0.2334147
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0557432   0.0426724   0.0688141
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0759076   0.0609938   0.0908214
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.0892989   0.0825081   0.0960897
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.0949658   0.0881802   0.1017515
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.2000000   0.1422818   0.2577182
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.1639344   0.1102228   0.2176461
0-6 months    CMIN             BANGLADESH                     Female               NA                0.0504202   0.0110341   0.0898062
0-6 months    CMIN             BANGLADESH                     Male                 NA                0.0522876   0.0169498   0.0876254
0-6 months    COHORTS          GUATEMALA                      Female               NA                0.0512821   0.0320733   0.0704908
0-6 months    COHORTS          GUATEMALA                      Male                 NA                0.0736086   0.0519123   0.0953049
0-6 months    COHORTS          INDIA                          Female               NA                0.0749421   0.0661632   0.0837210
0-6 months    COHORTS          INDIA                          Male                 NA                0.0740741   0.0656028   0.0825453
0-6 months    COHORTS          PHILIPPINES                    Female               NA                0.0635919   0.0509465   0.0762373
0-6 months    COHORTS          PHILIPPINES                    Male                 NA                0.0743955   0.0615873   0.0872037
0-6 months    EE               PAKISTAN                       Female               NA                0.0702703   0.0333896   0.1071509
0-6 months    EE               PAKISTAN                       Male                 NA                0.1179487   0.0726176   0.1632798
0-6 months    GMS-Nepal        NEPAL                          Female               NA                0.1118012   0.0773571   0.1462454
0-6 months    GMS-Nepal        NEPAL                          Male                 NA                0.1181319   0.0849501   0.1513136
0-6 months    IRC              INDIA                          Female               NA                0.2972973   0.2313535   0.3632411
0-6 months    IRC              INDIA                          Male                 NA                0.3155556   0.2547569   0.3763542
0-6 months    Keneba           GAMBIA                         Female               NA                0.0859309   0.0699841   0.1018778
0-6 months    Keneba           GAMBIA                         Male                 NA                0.1008600   0.0843528   0.1173673
0-6 months    MAL-ED           BANGLADESH                     Female               NA                0.0671642   0.0247028   0.1096256
0-6 months    MAL-ED           BANGLADESH                     Male                 NA                0.0542636   0.0150966   0.0934305
0-6 months    MAL-ED           INDIA                          Female               NA                0.0869565   0.0398510   0.1340621
0-6 months    MAL-ED           INDIA                          Male                 NA                0.0796460   0.0296270   0.1296650
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                0.0847458   0.0529392   0.1165523
0-6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.0948012   0.0630250   0.1265775
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.0708661   0.0450833   0.0966490
0-6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.0610080   0.0368317   0.0851842
0-6 months    PROBIT           BELARUS                        Female               NA                0.0705348   0.0371986   0.1038711
0-6 months    PROBIT           BELARUS                        Male                 NA                0.0844104   0.0515733   0.1172474
0-6 months    PROVIDE          BANGLADESH                     Female               NA                0.0301205   0.0117221   0.0485189
0-6 months    PROVIDE          BANGLADESH                     Male                 NA                0.0516304   0.0290061   0.0742548
0-6 months    ResPak           PAKISTAN                       Female               NA                0.1323529   0.0752986   0.1894072
0-6 months    ResPak           PAKISTAN                       Male                 NA                0.1712329   0.1100186   0.2324472
0-6 months    SAS-CompFeed     INDIA                          Female               NA                0.0716374   0.0524452   0.0908296
0-6 months    SAS-CompFeed     INDIA                          Male                 NA                0.0621194   0.0318939   0.0923448
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                0.0403587   0.0144981   0.0662194
0-6 months    SAS-FoodSuppl    INDIA                          Male                 NA                0.0564103   0.0239896   0.0888309
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0253378   0.0163847   0.0342910
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0404290   0.0293380   0.0515201
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.0681751   0.0621477   0.0742024
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.0693763   0.0634803   0.0752723
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.0481283   0.0174099   0.0788468
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.1129032   0.0673611   0.1584453
6-24 months   CMIN             BANGLADESH                     Female               NA                0.1111111   0.0517226   0.1704996
6-24 months   CMIN             BANGLADESH                     Male                 NA                0.1180556   0.0652482   0.1708629
6-24 months   COHORTS          GUATEMALA                      Female               NA                0.0171527   0.0066088   0.0276965
6-24 months   COHORTS          GUATEMALA                      Male                 NA                0.0313972   0.0178492   0.0449452
6-24 months   COHORTS          INDIA                          Female               NA                0.0334036   0.0272937   0.0395134
6-24 months   COHORTS          INDIA                          Male                 NA                0.0398010   0.0334305   0.0461715
6-24 months   COHORTS          PHILIPPINES                    Female               NA                0.0556810   0.0433506   0.0680113
6-24 months   COHORTS          PHILIPPINES                    Male                 NA                0.0770270   0.0634404   0.0906136
6-24 months   EE               PAKISTAN                       Female               NA                0.1153846   0.0689069   0.1618624
6-24 months   EE               PAKISTAN                       Male                 NA                0.1562500   0.1048225   0.2076775
6-24 months   GMS-Nepal        NEPAL                          Female               NA                0.1894737   0.1439380   0.2350094
6-24 months   GMS-Nepal        NEPAL                          Male                 NA                0.1901639   0.1460852   0.2342427
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                0.0369231   0.0259852   0.0478610
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 NA                0.0639854   0.0442101   0.0837606
6-24 months   IRC              INDIA                          Female               NA                0.0702703   0.0333932   0.1071474
6-24 months   IRC              INDIA                          Male                 NA                0.0577778   0.0272536   0.0883020
6-24 months   Keneba           GAMBIA                         Female               NA                0.0920755   0.0765045   0.1076465
6-24 months   Keneba           GAMBIA                         Male                 NA                0.1408351   0.1226946   0.1589756
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                0.0387597   0.0053864   0.0721330
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 NA                0.0384615   0.0053398   0.0715833
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                0.0609756   0.0310462   0.0909050
6-24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.1114865   0.0755987   0.1473742
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.0243902   0.0086403   0.0401402
6-24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.0304709   0.0127284   0.0482134
6-24 months   PROVIDE          BANGLADESH                     Female               NA                0.0170068   0.0022152   0.0317984
6-24 months   PROVIDE          BANGLADESH                     Male                 NA                0.0249221   0.0078550   0.0419893
6-24 months   ResPak           PAKISTAN                       Female               NA                0.0909091   0.0370721   0.1447461
6-24 months   ResPak           PAKISTAN                       Male                 NA                0.1825397   0.1149474   0.2501319
6-24 months   SAS-CompFeed     INDIA                          Female               NA                0.0817308   0.0697377   0.0937238
6-24 months   SAS-CompFeed     INDIA                          Male                 NA                0.1084967   0.0723635   0.1446300
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                0.1273585   0.0824268   0.1722902
6-24 months   SAS-FoodSuppl    INDIA                          Male                 NA                0.1263158   0.0790205   0.1736111
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0371113   0.0253745   0.0488481
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0450539   0.0323277   0.0577801
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.0286885   0.0242228   0.0331543
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.0370846   0.0320661   0.0421032


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.1544118   0.1113905   0.1974330
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0719051   0.0581146   0.0856956
0-24 months   COHORTS          INDIA                          NA                   NA                0.1047941   0.0978174   0.1117707
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254516   0.1136848   0.1372183
0-24 months   EE               PAKISTAN                       NA                   NA                0.2105263   0.1694822   0.2515704
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
0-24 months   IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1801370   0.1661957   0.1940783
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.0798479   0.0470264   0.1126695
0-24 months   MAL-ED           INDIA                          NA                   NA                0.1035857   0.0658126   0.1413587
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0512821   0.0267678   0.0757963
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1586538   0.1299648   0.1873429
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0784116   0.0458146   0.1110087
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.2429577   0.1929911   0.2929244
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1473893   0.1184132   0.1763654
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0659432   0.0560037   0.0758828
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0922128   0.0874108   0.0970149
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    CMIN             BANGLADESH                     NA                   NA                0.0514706   0.0251638   0.0777774
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0629699   0.0483675   0.0775723
0-6 months    COHORTS          INDIA                          NA                   NA                0.0744949   0.0683989   0.0805910
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693167   0.0602923   0.0783411
0-6 months    EE               PAKISTAN                       NA                   NA                0.0947368   0.0652536   0.1242201
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0936740   0.0821715   0.1051764
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.0608365   0.0318931   0.0897799
0-6 months    MAL-ED           INDIA                          NA                   NA                0.0836653   0.0493429   0.1179878
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0777153   0.0450748   0.1103558
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ResPak           PAKISTAN                       NA                   NA                0.1524823   0.1104504   0.1945142
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0664452   0.0425975   0.0902929
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0329716   0.0258203   0.0401229
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0687938   0.0645788   0.0730087
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months   CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0245902   0.0158961   0.0332842
6-24 months   COHORTS          INDIA                          NA                   NA                0.0367382   0.0323123   0.0411641
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   EE               PAKISTAN                       NA                   NA                0.1363636   0.1015372   0.1711900
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months   IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0386100   0.0151008   0.0621193
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months   ResPak           PAKISTAN                       NA                   NA                0.1398305   0.0954893   0.1841717
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329172   0.0295545   0.0362800


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            1.1456614   0.8023445   1.635881
0-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   CMIN             BANGLADESH                     Male                 Female            1.0370370   0.5904417   1.821426
0-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Male                 Female            1.5069639   1.0122142   2.243537
0-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Male                 Female            1.0321474   0.9032697   1.179413
0-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.2706296   1.0496880   1.538076
0-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN                       Male                 Female            1.4230769   0.9538780   2.123068
0-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Male                 Female            1.0018536   0.7767565   1.292182
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.7329372   1.1929166   2.517419
0-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA                          Male                 Female            1.0344086   0.7886984   1.356667
0-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA                         Male                 Female            1.3740499   1.1729191   1.609670
0-24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Male                 Female            0.6392367   0.2736265   1.493362
0-24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Male                 Female            1.0467762   0.5037919   2.174987
0-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            1.7099567   0.6359688   4.597634
0-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.3883677   0.9575010   2.013121
0-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            0.8951118   0.5637941   1.421131
0-24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Male                 Female            1.2163372   1.0397411   1.422927
0-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.6239130   0.8788991   3.000451
0-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ResPak           PAKISTAN                       Male                 Female            1.5197505   0.9901917   2.332520
0-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Male                 Female            1.1176478   0.8732350   1.430470
0-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            1.1118234   0.7274394   1.699318
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.3617362   1.0028496   1.849056
0-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.0634604   0.9580839   1.180427
0-6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            0.8196721   0.5296881   1.268411
0-6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    CMIN             BANGLADESH                     Male                 Female            1.0370370   0.3691436   2.913354
0-6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Male                 Female            1.4353680   0.8911742   2.311873
0-6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Male                 Female            0.9884170   0.8391543   1.164229
0-6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Male                 Female            1.1698902   0.8993202   1.521864
0-6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN                       Male                 Female            1.6785010   0.8758058   3.216884
0-6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Male                 Female            1.0566239   0.6964004   1.603178
0-6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA                          Male                 Female            1.0614141   0.7911998   1.423914
0-6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA                         Male                 Female            1.1737341   0.9164507   1.503247
0-6 months    MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Male                 Female            0.8079242   0.3094995   2.109023
0-6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Male                 Female            0.9159292   0.3996409   2.099200
0-6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.1186544   0.6763280   1.850268
0-6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Male                 Female            0.8608901   0.5027044   1.474289
0-6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Male                 Female            1.1967191   1.0258044   1.396111
0-6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Male                 Female            1.7141304   0.8082833   3.635165
0-6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ResPak           PAKISTAN                       Male                 Female            1.2937595   0.7389890   2.265005
0-6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Male                 Female            0.8671356   0.6194303   1.213896
0-6 months    SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Male                 Female            1.3977208   0.5910162   3.305533
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.5955996   1.0201066   2.495757
0-6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            1.0176203   0.9001749   1.150389
6-24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            2.3458781   1.1025415   4.991326
6-24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   CMIN             BANGLADESH                     Male                 Female            1.0625000   0.5292213   2.133146
6-24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Male                 Female            1.8304553   0.8637468   3.879107
6-24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Male                 Female            1.1915199   0.9344246   1.519352
6-24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Male                 Female            1.3833638   1.0422777   1.836070
6-24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   EE               PAKISTAN                       Male                 Female            1.3541667   0.8049373   2.278149
6-24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Male                 Female            1.0036430   0.7187383   1.401482
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   Male                 Female            1.7329372   1.1929166   2.517419
6-24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA                          Male                 Female            0.8222222   0.3904725   1.731362
6-24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA                         Male                 Female            1.5295616   1.2366451   1.891859
6-24 months   MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           SOUTH AFRICA                   Male                 Female            0.9923077   0.2936111   3.353669
6-24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.8283784   1.0165840   3.288432
6-24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Male                 Female            1.2493075   0.5236592   2.980505
6-24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Male                 Female            1.4654206   0.4843969   4.433260
6-24 months   ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ResPak           PAKISTAN                       Male                 Female            2.0079365   0.9986654   4.037197
6-24 months   SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Male                 Female            1.3274894   1.0125872   1.740322
6-24 months   SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Male                 Female            0.9918129   0.5929358   1.659021
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.2140191   0.7944542   1.855163
6-24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.2926644   1.0517356   1.588785


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0167023   -0.0269901   0.0603946
0-24 months   CMIN             BANGLADESH                     Female               NA                 0.0031513   -0.0455393   0.0518419
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0152122    0.0007506   0.0296738
0-24 months   COHORTS          INDIA                          Female               NA                 0.0017245   -0.0055395   0.0089885
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0157381    0.0033196   0.0281566
0-24 months   EE               PAKISTAN                       Female               NA                 0.0375533   -0.0044347   0.0795413
0-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0002535   -0.0345827   0.0350897
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0135974    0.0038513   0.0233436
0-24 months   IRC              INDIA                          Female               NA                 0.0063283   -0.0443127   0.0569693
0-24 months   Keneba           GAMBIA                         Female               NA                 0.0291802    0.0148249   0.0435355
0-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0171670   -0.0492501   0.0149161
0-24 months   MAL-ED           INDIA                          Female               NA                 0.0021364   -0.0321135   0.0363862
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.0133074   -0.0109728   0.0375875
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0268971   -0.0030916   0.0568858
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.0047923   -0.0247656   0.0151810
0-24 months   PROBIT           BELARUS                        Female               NA                 0.0078941    0.0027350   0.0130532
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0148193   -0.0035018   0.0331404
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.0517813   -0.0000055   0.1035680
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0089053   -0.0115075   0.0293181
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0084215   -0.0253776   0.0422205
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0102000    0.0001605   0.0202395
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0029139   -0.0020226   0.0078504
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0179348   -0.0571858   0.0213162
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.0010504   -0.0287146   0.0308154
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.0116879   -0.0034967   0.0268724
0-6 months    COHORTS          INDIA                          Female               NA                -0.0004472   -0.0067318   0.0058375
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0057248   -0.0038146   0.0152642
0-6 months    EE               PAKISTAN                       Female               NA                 0.0244666   -0.0056176   0.0545507
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0033591   -0.0220196   0.0287378
0-6 months    IRC              INDIA                          Female               NA                 0.0100198   -0.0392106   0.0592501
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0077430   -0.0041647   0.0196508
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.0063277   -0.0346728   0.0220174
0-6 months    MAL-ED           INDIA                          Female               NA                -0.0032912   -0.0342269   0.0276445
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0052864   -0.0183533   0.0289261
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0049031   -0.0224857   0.0126795
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0071805    0.0019967   0.0123642
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.0113081   -0.0040429   0.0266591
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.0201293   -0.0232540   0.0635127
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0051922   -0.0163823   0.0059978
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0074881   -0.0118738   0.0268501
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0076338    0.0004173   0.0148503
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0006187   -0.0037240   0.0049614
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0323006    0.0047104   0.0598908
6-24 months   CMIN             BANGLADESH                     Female               NA                 0.0039683   -0.0414456   0.0493821
6-24 months   COHORTS          GUATEMALA                      Female               NA                 0.0074375   -0.0015350   0.0164101
6-24 months   COHORTS          INDIA                          Female               NA                 0.0033347   -0.0012670   0.0079363
6-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0112468    0.0015718   0.0209217
6-24 months   EE               PAKISTAN                       Female               NA                 0.0209790   -0.0146670   0.0566250
6-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0003568   -0.0324050   0.0331187
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.0135974    0.0038513   0.0233436
6-24 months   IRC              INDIA                          Female               NA                -0.0068556   -0.0331333   0.0194220
6-24 months   Keneba           GAMBIA                         Female               NA                 0.0251634    0.0127921   0.0375347
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                -0.0001497   -0.0237502   0.0234508
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0275853    0.0019770   0.0531936
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0030070   -0.0087274   0.0147414
6-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.0041314   -0.0076610   0.0159238
6-24 months   ResPak           PAKISTAN                       Female               NA                 0.0489214    0.0024172   0.0954256
6-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0147415   -0.0021727   0.0316558
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                -0.0004928   -0.0313257   0.0303400
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0040185   -0.0047422   0.0127792
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0042287    0.0008443   0.0076131


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0677168   -0.1271830   0.2289168
0-24 months   CMIN             BANGLADESH                     Female               NA                 0.0204082   -0.3515419   0.2899960
0-24 months   COHORTS          GUATEMALA                      Female               NA                 0.2115594   -0.0128720   0.3862614
0-24 months   COHORTS          INDIA                          Female               NA                 0.0164561   -0.0553548   0.0833807
0-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.1254514    0.0212291   0.2185758
0-24 months   EE               PAKISTAN                       Female               NA                 0.1783784   -0.0451765   0.3541166
0-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0009826   -0.1435811   0.1272715
0-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2691469    0.0799006   0.4194689
0-24 months   IRC              INDIA                          Female               NA                 0.0185328   -0.1415647   0.1561776
0-24 months   Keneba           GAMBIA                         Female               NA                 0.1619890    0.0790734   0.2374393
0-24 months   MAL-ED           BANGLADESH                     Female               NA                -0.2149964   -0.6804648   0.1215428
0-24 months   MAL-ED           INDIA                          Female               NA                 0.0206243   -0.3725884   0.3011913
0-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                 0.2594937   -0.3749809   0.6011947
0-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.1695332   -0.0405754   0.3372175
0-24 months   NIH-Crypto       BANGLADESH                     Female               NA                -0.0550386   -0.3109276   0.1509017
0-24 months   PROBIT           BELARUS                        Female               NA                 0.1006752    0.0167072   0.1774728
0-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.2469880   -0.1178132   0.4927353
0-24 months   ResPak           PAKISTAN                       Female               NA                 0.2131287   -0.0287497   0.3981370
0-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.0604205   -0.0824248   0.1844147
0-24 months   SAS-FoodSuppl    INDIA                          Female               NA                 0.0495800   -0.1715599   0.2289782
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.1546784   -0.0102469   0.2926793
0-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0316000   -0.0234197   0.0836619
0-6 months    CMC-V-BCS-2002   INDIA                          Female               NA                -0.0985075   -0.3360461   0.0967987
0-6 months    CMIN             BANGLADESH                     Female               NA                 0.0204082   -0.7676208   0.4571233
0-6 months    COHORTS          GUATEMALA                      Female               NA                 0.1856104   -0.0904069   0.3917588
0-6 months    COHORTS          INDIA                          Female               NA                -0.0060028   -0.0940036   0.0749192
0-6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0825890   -0.0654680   0.2100720
0-6 months    EE               PAKISTAN                       Female               NA                 0.2582583   -0.1248185   0.5108715
0-6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0291690   -0.2181481   0.2262740
0-6 months    IRC              INDIA                          Female               NA                 0.0326040   -0.1416051   0.1802288
0-6 months    Keneba           GAMBIA                         Female               NA                 0.0826595   -0.0533108   0.2010777
0-6 months    MAL-ED           BANGLADESH                     Female               NA                -0.1040112   -0.6802334   0.2746003
0-6 months    MAL-ED           INDIA                          Female               NA                -0.0393375   -0.4830039   0.2715984
0-6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0587167   -0.2436898   0.2875923
0-6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0743307   -0.3760524   0.1612336
0-6 months    PROBIT           BELARUS                        Female               NA                 0.0923944    0.0098192   0.1680834
0-6 months    PROVIDE          BANGLADESH                     Female               NA                 0.2729539   -0.1902155   0.5558821
0-6 months    ResPak           PAKISTAN                       Female               NA                 0.1320109   -0.2024488   0.3734411
0-6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0781433   -0.2821570   0.0934083
0-6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.1565022   -0.3545774   0.4747524
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2315258   -0.0143708   0.4178140
0-6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0089937   -0.0561845   0.0701497
6-24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.4016043   -0.0167467   0.6478204
6-24 months   CMIN             BANGLADESH                     Female               NA                 0.0344828   -0.4528045   0.3583283
6-24 months   COHORTS          GUATEMALA                      Female               NA                 0.3024585   -0.1511525   0.5773244
6-24 months   COHORTS          INDIA                          Female               NA                 0.0907684   -0.0430132   0.2073906
6-24 months   COHORTS          PHILIPPINES                    Female               NA                 0.1680435    0.0121271   0.2993515
6-24 months   EE               PAKISTAN                       Female               NA                 0.1538462   -0.1494801   0.3771303
6-24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0018797   -0.1865241   0.1603676
6-24 months   iLiNS-Zinc       BURKINA FASO                   Female               NA                 0.2691469    0.0799006   0.4194689
6-24 months   IRC              INDIA                          Female               NA                -0.1081081   -0.6081781   0.2364629
6-24 months   Keneba           GAMBIA                         Female               NA                 0.2146335    0.1037978   0.3117619
6-24 months   MAL-ED           SOUTH AFRICA                   Female               NA                -0.0038760   -0.8455128   0.4539366
6-24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.3114837   -0.0315290   0.5404350
6-24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.1097561   -0.4362491   0.4481917
6-24 months   PROVIDE          BANGLADESH                     Female               NA                 0.1954474   -0.5902927   0.5929650
6-24 months   ResPak           PAKISTAN                       Female               NA                 0.3498623   -0.0597293   0.6011443
6-24 months   SAS-CompFeed     INDIA                          Female               NA                 0.1528057   -0.0041406   0.2852214
6-24 months   SAS-FoodSuppl    INDIA                          Female               NA                -0.0038846   -0.2788621   0.2119680
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0977027   -0.1413761   0.2867028
6-24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.1284652    0.0202301   0.2247436
