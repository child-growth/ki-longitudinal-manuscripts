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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        enstunt    n_cell       n
-------------  ---------------  -----------------------------  --------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          0              72      88
0-3 months     CMC-V-BCS-2002   INDIA                          1              16      88
0-3 months     CMIN             BANGLADESH                     0              26      43
0-3 months     CMIN             BANGLADESH                     1              17      43
0-3 months     COHORTS          GUATEMALA                      0             690     728
0-3 months     COHORTS          GUATEMALA                      1              38     728
0-3 months     COHORTS          INDIA                          0            5708    6465
0-3 months     COHORTS          INDIA                          1             757    6465
0-3 months     CONTENT          PERU                           0              28      29
0-3 months     CONTENT          PERU                           1               1      29
0-3 months     EE               PAKISTAN                       0             170     303
0-3 months     EE               PAKISTAN                       1             133     303
0-3 months     GMS-Nepal        NEPAL                          0             421     509
0-3 months     GMS-Nepal        NEPAL                          1              88     509
0-3 months     IRC              INDIA                          0             334     377
0-3 months     IRC              INDIA                          1              43     377
0-3 months     Keneba           GAMBIA                         0            1203    1276
0-3 months     Keneba           GAMBIA                         1              73    1276
0-3 months     MAL-ED           BANGLADESH                     0             202     243
0-3 months     MAL-ED           BANGLADESH                     1              41     243
0-3 months     MAL-ED           BRAZIL                         0             152     168
0-3 months     MAL-ED           BRAZIL                         1              16     168
0-3 months     MAL-ED           INDIA                          0             155     183
0-3 months     MAL-ED           INDIA                          1              28     183
0-3 months     MAL-ED           NEPAL                          0             140     156
0-3 months     MAL-ED           NEPAL                          1              16     156
0-3 months     MAL-ED           PERU                           0             233     265
0-3 months     MAL-ED           PERU                           1              32     265
0-3 months     MAL-ED           SOUTH AFRICA                   0             191     211
0-3 months     MAL-ED           SOUTH AFRICA                   1              20     211
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             192     228
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              36     228
0-3 months     NIH-Birth        BANGLADESH                     0             477     566
0-3 months     NIH-Birth        BANGLADESH                     1              89     566
0-3 months     NIH-Crypto       BANGLADESH                     0             622     721
0-3 months     NIH-Crypto       BANGLADESH                     1              99     721
0-3 months     PROBIT           BELARUS                        0           15217   15323
0-3 months     PROBIT           BELARUS                        1             106   15323
0-3 months     PROVIDE          BANGLADESH                     0             576     640
0-3 months     PROVIDE          BANGLADESH                     1              64     640
0-3 months     ResPak           PAKISTAN                       0              55      80
0-3 months     ResPak           PAKISTAN                       1              25      80
0-3 months     SAS-CompFeed     INDIA                          0             918    1261
0-3 months     SAS-CompFeed     INDIA                          1             343    1261
0-3 months     ZVITAMBO         ZIMBABWE                       0            7203    7982
0-3 months     ZVITAMBO         ZIMBABWE                       1             779    7982
3-6 months     CMC-V-BCS-2002   INDIA                          0             244     307
3-6 months     CMC-V-BCS-2002   INDIA                          1              63     307
3-6 months     CMIN             BANGLADESH                     0             114     185
3-6 months     CMIN             BANGLADESH                     1              71     185
3-6 months     COHORTS          GUATEMALA                      0             693     805
3-6 months     COHORTS          GUATEMALA                      1             112     805
3-6 months     COHORTS          INDIA                          0            5754    6509
3-6 months     COHORTS          INDIA                          1             755    6509
3-6 months     CONTENT          PERU                           0             194     214
3-6 months     CONTENT          PERU                           1              20     214
3-6 months     EE               PAKISTAN                       0             158     280
3-6 months     EE               PAKISTAN                       1             122     280
3-6 months     GMS-Nepal        NEPAL                          0             391     469
3-6 months     GMS-Nepal        NEPAL                          1              78     469
3-6 months     IRC              INDIA                          0             349     397
3-6 months     IRC              INDIA                          1              48     397
3-6 months     Keneba           GAMBIA                         0            1261    1397
3-6 months     Keneba           GAMBIA                         1             136    1397
3-6 months     MAL-ED           BANGLADESH                     0             195     231
3-6 months     MAL-ED           BANGLADESH                     1              36     231
3-6 months     MAL-ED           BRAZIL                         0             183     208
3-6 months     MAL-ED           BRAZIL                         1              25     208
3-6 months     MAL-ED           INDIA                          0             195     230
3-6 months     MAL-ED           INDIA                          1              35     230
3-6 months     MAL-ED           NEPAL                          0             206     233
3-6 months     MAL-ED           NEPAL                          1              27     233
3-6 months     MAL-ED           PERU                           0             233     267
3-6 months     MAL-ED           PERU                           1              34     267
3-6 months     MAL-ED           SOUTH AFRICA                   0             218     243
3-6 months     MAL-ED           SOUTH AFRICA                   1              25     243
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             201     239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              38     239
3-6 months     NIH-Birth        BANGLADESH                     0             441     523
3-6 months     NIH-Birth        BANGLADESH                     1              82     523
3-6 months     NIH-Crypto       BANGLADESH                     0             598     695
3-6 months     NIH-Crypto       BANGLADESH                     1              97     695
3-6 months     PROBIT           BELARUS                        0           13217   13308
3-6 months     PROBIT           BELARUS                        1              91   13308
3-6 months     PROVIDE          BANGLADESH                     0             537     598
3-6 months     PROVIDE          BANGLADESH                     1              61     598
3-6 months     ResPak           PAKISTAN                       0             116     156
3-6 months     ResPak           PAKISTAN                       1              40     156
3-6 months     SAS-CompFeed     INDIA                          0             834    1124
3-6 months     SAS-CompFeed     INDIA                          1             290    1124
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1546    1661
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             115    1661
3-6 months     ZVITAMBO         ZIMBABWE                       0            5554    6178
3-6 months     ZVITAMBO         ZIMBABWE                       1             624    6178
6-9 months     CMC-V-BCS-2002   INDIA                          0             250     313
6-9 months     CMC-V-BCS-2002   INDIA                          1              63     313
6-9 months     CMIN             BANGLADESH                     0             107     177
6-9 months     CMIN             BANGLADESH                     1              70     177
6-9 months     COHORTS          GUATEMALA                      0             694     822
6-9 months     COHORTS          GUATEMALA                      1             128     822
6-9 months     COHORTS          INDIA                          0            5262    5965
6-9 months     COHORTS          INDIA                          1             703    5965
6-9 months     CONTENT          PERU                           0             194     214
6-9 months     CONTENT          PERU                           1              20     214
6-9 months     EE               PAKISTAN                       0             173     304
6-9 months     EE               PAKISTAN                       1             131     304
6-9 months     GMS-Nepal        NEPAL                          0             405     481
6-9 months     GMS-Nepal        NEPAL                          1              76     481
6-9 months     Guatemala BSC    GUATEMALA                      0             158     213
6-9 months     Guatemala BSC    GUATEMALA                      1              55     213
6-9 months     IRC              INDIA                          0             358     407
6-9 months     IRC              INDIA                          1              49     407
6-9 months     Keneba           GAMBIA                         0             817     905
6-9 months     Keneba           GAMBIA                         1              88     905
6-9 months     LCNI-5           MALAWI                         0             358     564
6-9 months     LCNI-5           MALAWI                         1             206     564
6-9 months     MAL-ED           BANGLADESH                     0             189     224
6-9 months     MAL-ED           BANGLADESH                     1              35     224
6-9 months     MAL-ED           BRAZIL                         0             174     198
6-9 months     MAL-ED           BRAZIL                         1              24     198
6-9 months     MAL-ED           INDIA                          0             195     230
6-9 months     MAL-ED           INDIA                          1              35     230
6-9 months     MAL-ED           NEPAL                          0             203     230
6-9 months     MAL-ED           NEPAL                          1              27     230
6-9 months     MAL-ED           PERU                           0             212     245
6-9 months     MAL-ED           PERU                           1              33     245
6-9 months     MAL-ED           SOUTH AFRICA                   0             208     231
6-9 months     MAL-ED           SOUTH AFRICA                   1              23     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             188     225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              37     225
6-9 months     NIH-Birth        BANGLADESH                     0             420     498
6-9 months     NIH-Birth        BANGLADESH                     1              78     498
6-9 months     NIH-Crypto       BANGLADESH                     0             595     688
6-9 months     NIH-Crypto       BANGLADESH                     1              93     688
6-9 months     PROBIT           BELARUS                        0           12345   12426
6-9 months     PROBIT           BELARUS                        1              81   12426
6-9 months     PROVIDE          BANGLADESH                     0             506     565
6-9 months     PROVIDE          BANGLADESH                     1              59     565
6-9 months     ResPak           PAKISTAN                       0             106     143
6-9 months     ResPak           PAKISTAN                       1              37     143
6-9 months     SAS-CompFeed     INDIA                          0             836    1144
6-9 months     SAS-CompFeed     INDIA                          1             308    1144
6-9 months     SAS-FoodSuppl    INDIA                          0             188     314
6-9 months     SAS-FoodSuppl    INDIA                          1             126     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1389    1488
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              99    1488
6-9 months     ZVITAMBO         ZIMBABWE                       0            5347    5929
6-9 months     ZVITAMBO         ZIMBABWE                       1             582    5929
9-12 months    CMC-V-BCS-2002   INDIA                          0             255     317
9-12 months    CMC-V-BCS-2002   INDIA                          1              62     317
9-12 months    CMIN             BANGLADESH                     0              96     160
9-12 months    CMIN             BANGLADESH                     1              64     160
9-12 months    COHORTS          GUATEMALA                      0             760     931
9-12 months    COHORTS          GUATEMALA                      1             171     931
9-12 months    COHORTS          INDIA                          0            4532    5135
9-12 months    COHORTS          INDIA                          1             603    5135
9-12 months    CONTENT          PERU                           0             192     212
9-12 months    CONTENT          PERU                           1              20     212
9-12 months    EE               PAKISTAN                       0             185     326
9-12 months    EE               PAKISTAN                       1             141     326
9-12 months    GMS-Nepal        NEPAL                          0             392     469
9-12 months    GMS-Nepal        NEPAL                          1              77     469
9-12 months    Guatemala BSC    GUATEMALA                      0             136     186
9-12 months    Guatemala BSC    GUATEMALA                      1              50     186
9-12 months    iLiNS-Zinc       BURKINA FASO                   0             875    1119
9-12 months    iLiNS-Zinc       BURKINA FASO                   1             244    1119
9-12 months    IRC              INDIA                          0             352     400
9-12 months    IRC              INDIA                          1              48     400
9-12 months    Keneba           GAMBIA                         0             802     883
9-12 months    Keneba           GAMBIA                         1              81     883
9-12 months    LCNI-5           MALAWI                         0             236     386
9-12 months    LCNI-5           MALAWI                         1             150     386
9-12 months    MAL-ED           BANGLADESH                     0             188     225
9-12 months    MAL-ED           BANGLADESH                     1              37     225
9-12 months    MAL-ED           BRAZIL                         0             171     194
9-12 months    MAL-ED           BRAZIL                         1              23     194
9-12 months    MAL-ED           INDIA                          0             191     227
9-12 months    MAL-ED           INDIA                          1              36     227
9-12 months    MAL-ED           NEPAL                          0             202     229
9-12 months    MAL-ED           NEPAL                          1              27     229
9-12 months    MAL-ED           PERU                           0             204     235
9-12 months    MAL-ED           PERU                           1              31     235
9-12 months    MAL-ED           SOUTH AFRICA                   0             208     233
9-12 months    MAL-ED           SOUTH AFRICA                   1              25     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             189     224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              35     224
9-12 months    NIH-Birth        BANGLADESH                     0             406     482
9-12 months    NIH-Birth        BANGLADESH                     1              76     482
9-12 months    NIH-Crypto       BANGLADESH                     0             581     674
9-12 months    NIH-Crypto       BANGLADESH                     1              93     674
9-12 months    PROBIT           BELARUS                        0           12602   12681
9-12 months    PROBIT           BELARUS                        1              79   12681
9-12 months    PROVIDE          BANGLADESH                     0             506     566
9-12 months    PROVIDE          BANGLADESH                     1              60     566
9-12 months    ResPak           PAKISTAN                       0             102     140
9-12 months    ResPak           PAKISTAN                       1              38     140
9-12 months    SAS-CompFeed     INDIA                          0             831    1146
9-12 months    SAS-CompFeed     INDIA                          1             315    1146
9-12 months    SAS-FoodSuppl    INDIA                          0             188     311
9-12 months    SAS-FoodSuppl    INDIA                          1             123     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1013    1081
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1081
9-12 months    ZVITAMBO         ZIMBABWE                       0            5353    5933
9-12 months    ZVITAMBO         ZIMBABWE                       1             580    5933
12-15 months   CMC-V-BCS-2002   INDIA                          0             260     329
12-15 months   CMC-V-BCS-2002   INDIA                          1              69     329
12-15 months   CMIN             BANGLADESH                     0              95     160
12-15 months   CMIN             BANGLADESH                     1              65     160
12-15 months   COHORTS          GUATEMALA                      0             685     885
12-15 months   COHORTS          GUATEMALA                      1             200     885
12-15 months   CONTENT          PERU                           0             181     199
12-15 months   CONTENT          PERU                           1              18     199
12-15 months   EE               PAKISTAN                       0             164     297
12-15 months   EE               PAKISTAN                       1             133     297
12-15 months   GMS-Nepal        NEPAL                          0             388     469
12-15 months   GMS-Nepal        NEPAL                          1              81     469
12-15 months   Guatemala BSC    GUATEMALA                      0              72      97
12-15 months   Guatemala BSC    GUATEMALA                      1              25      97
12-15 months   iLiNS-Zinc       BURKINA FASO                   0             773     978
12-15 months   iLiNS-Zinc       BURKINA FASO                   1             205     978
12-15 months   IRC              INDIA                          0             343     390
12-15 months   IRC              INDIA                          1              47     390
12-15 months   Keneba           GAMBIA                         0            1219    1339
12-15 months   Keneba           GAMBIA                         1             120    1339
12-15 months   LCNI-5           MALAWI                         0              74     127
12-15 months   LCNI-5           MALAWI                         1              53     127
12-15 months   MAL-ED           BANGLADESH                     0             179     212
12-15 months   MAL-ED           BANGLADESH                     1              33     212
12-15 months   MAL-ED           BRAZIL                         0             162     184
12-15 months   MAL-ED           BRAZIL                         1              22     184
12-15 months   MAL-ED           INDIA                          0             190     226
12-15 months   MAL-ED           INDIA                          1              36     226
12-15 months   MAL-ED           NEPAL                          0             203     230
12-15 months   MAL-ED           NEPAL                          1              27     230
12-15 months   MAL-ED           PERU                           0             195     224
12-15 months   MAL-ED           PERU                           1              29     224
12-15 months   MAL-ED           SOUTH AFRICA                   0             203     228
12-15 months   MAL-ED           SOUTH AFRICA                   1              25     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             191     226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              35     226
12-15 months   NIH-Birth        BANGLADESH                     0             387     461
12-15 months   NIH-Birth        BANGLADESH                     1              74     461
12-15 months   NIH-Crypto       BANGLADESH                     0             565     660
12-15 months   NIH-Crypto       BANGLADESH                     1              95     660
12-15 months   PROBIT           BELARUS                        0             999    1001
12-15 months   PROBIT           BELARUS                        1               2    1001
12-15 months   PROVIDE          BANGLADESH                     0             480     532
12-15 months   PROVIDE          BANGLADESH                     1              52     532
12-15 months   ResPak           PAKISTAN                       0              62      92
12-15 months   ResPak           PAKISTAN                       1              30      92
12-15 months   SAS-CompFeed     INDIA                          0             852    1168
12-15 months   SAS-CompFeed     INDIA                          1             316    1168
12-15 months   SAS-FoodSuppl    INDIA                          0             185     303
12-15 months   SAS-FoodSuppl    INDIA                          1             118     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791
12-15 months   ZVITAMBO         ZIMBABWE                       0            2249    2548
12-15 months   ZVITAMBO         ZIMBABWE                       1             299    2548
15-18 months   CMC-V-BCS-2002   INDIA                          0             252     321
15-18 months   CMC-V-BCS-2002   INDIA                          1              69     321
15-18 months   CMIN             BANGLADESH                     0              97     163
15-18 months   CMIN             BANGLADESH                     1              66     163
15-18 months   COHORTS          GUATEMALA                      0             618     788
15-18 months   COHORTS          GUATEMALA                      1             170     788
15-18 months   CONTENT          PERU                           0             172     189
15-18 months   CONTENT          PERU                           1              17     189
15-18 months   EE               PAKISTAN                       0             159     278
15-18 months   EE               PAKISTAN                       1             119     278
15-18 months   GMS-Nepal        NEPAL                          0             398     480
15-18 months   GMS-Nepal        NEPAL                          1              82     480
15-18 months   iLiNS-Zinc       BURKINA FASO                   0             808    1021
15-18 months   iLiNS-Zinc       BURKINA FASO                   1             213    1021
15-18 months   IRC              INDIA                          0             337     382
15-18 months   IRC              INDIA                          1              45     382
15-18 months   Keneba           GAMBIA                         0            1241    1359
15-18 months   Keneba           GAMBIA                         1             118    1359
15-18 months   LCNI-5           MALAWI                         0              71     120
15-18 months   LCNI-5           MALAWI                         1              49     120
15-18 months   MAL-ED           BANGLADESH                     0             179     212
15-18 months   MAL-ED           BANGLADESH                     1              33     212
15-18 months   MAL-ED           BRAZIL                         0             157     175
15-18 months   MAL-ED           BRAZIL                         1              18     175
15-18 months   MAL-ED           INDIA                          0             190     226
15-18 months   MAL-ED           INDIA                          1              36     226
15-18 months   MAL-ED           NEPAL                          0             200     227
15-18 months   MAL-ED           NEPAL                          1              27     227
15-18 months   MAL-ED           PERU                           0             184     213
15-18 months   MAL-ED           PERU                           1              29     213
15-18 months   MAL-ED           SOUTH AFRICA                   0             202     225
15-18 months   MAL-ED           SOUTH AFRICA                   1              23     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             182     217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              35     217
15-18 months   NIH-Birth        BANGLADESH                     0             372     449
15-18 months   NIH-Birth        BANGLADESH                     1              77     449
15-18 months   NIH-Crypto       BANGLADESH                     0             517     604
15-18 months   NIH-Crypto       BANGLADESH                     1              87     604
15-18 months   PROBIT           BELARUS                        0             275     275
15-18 months   PROBIT           BELARUS                        1               0     275
15-18 months   PROVIDE          BANGLADESH                     0             478     528
15-18 months   PROVIDE          BANGLADESH                     1              50     528
15-18 months   SAS-CompFeed     INDIA                          0             854    1171
15-18 months   SAS-CompFeed     INDIA                          1             317    1171
15-18 months   SAS-FoodSuppl    INDIA                          0             177     291
15-18 months   SAS-FoodSuppl    INDIA                          1             114     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             619     664
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              45     664
15-18 months   ZVITAMBO         ZIMBABWE                       0            1776    2036
15-18 months   ZVITAMBO         ZIMBABWE                       1             260    2036
18-21 months   CMC-V-BCS-2002   INDIA                          0             239     305
18-21 months   CMC-V-BCS-2002   INDIA                          1              66     305
18-21 months   CMIN             BANGLADESH                     0             100     165
18-21 months   CMIN             BANGLADESH                     1              65     165
18-21 months   COHORTS          GUATEMALA                      0             607     778
18-21 months   COHORTS          GUATEMALA                      1             171     778
18-21 months   CONTENT          PERU                           0             167     183
18-21 months   CONTENT          PERU                           1              16     183
18-21 months   EE               PAKISTAN                       0             159     254
18-21 months   EE               PAKISTAN                       1              95     254
18-21 months   GMS-Nepal        NEPAL                          0             370     445
18-21 months   GMS-Nepal        NEPAL                          1              75     445
18-21 months   IRC              INDIA                          0             332     379
18-21 months   IRC              INDIA                          1              47     379
18-21 months   Keneba           GAMBIA                         0            1217    1348
18-21 months   Keneba           GAMBIA                         1             131    1348
18-21 months   LCNI-5           MALAWI                         0             313     477
18-21 months   LCNI-5           MALAWI                         1             164     477
18-21 months   MAL-ED           BANGLADESH                     0             176     209
18-21 months   MAL-ED           BANGLADESH                     1              33     209
18-21 months   MAL-ED           BRAZIL                         0             149     167
18-21 months   MAL-ED           BRAZIL                         1              18     167
18-21 months   MAL-ED           INDIA                          0             190     226
18-21 months   MAL-ED           INDIA                          1              36     226
18-21 months   MAL-ED           NEPAL                          0             200     227
18-21 months   MAL-ED           NEPAL                          1              27     227
18-21 months   MAL-ED           PERU                           0             177     202
18-21 months   MAL-ED           PERU                           1              25     202
18-21 months   MAL-ED           SOUTH AFRICA                   0             209     233
18-21 months   MAL-ED           SOUTH AFRICA                   1              24     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             172     204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              32     204
18-21 months   NIH-Birth        BANGLADESH                     0             350     422
18-21 months   NIH-Birth        BANGLADESH                     1              72     422
18-21 months   NIH-Crypto       BANGLADESH                     0             472     546
18-21 months   NIH-Crypto       BANGLADESH                     1              74     546
18-21 months   PROBIT           BELARUS                        0             217     218
18-21 months   PROBIT           BELARUS                        1               1     218
18-21 months   PROVIDE          BANGLADESH                     0             487     541
18-21 months   PROVIDE          BANGLADESH                     1              54     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               9       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       9
18-21 months   ZVITAMBO         ZIMBABWE                       0            1386    1595
18-21 months   ZVITAMBO         ZIMBABWE                       1             209    1595
21-24 months   CMC-V-BCS-2002   INDIA                          0             242     308
21-24 months   CMC-V-BCS-2002   INDIA                          1              66     308
21-24 months   CMIN             BANGLADESH                     0              78     133
21-24 months   CMIN             BANGLADESH                     1              55     133
21-24 months   COHORTS          GUATEMALA                      0             651     862
21-24 months   COHORTS          GUATEMALA                      1             211     862
21-24 months   CONTENT          PERU                           0              33      38
21-24 months   CONTENT          PERU                           1               5      38
21-24 months   EE               PAKISTAN                       0              65     106
21-24 months   EE               PAKISTAN                       1              41     106
21-24 months   GMS-Nepal        NEPAL                          0             286     342
21-24 months   GMS-Nepal        NEPAL                          1              56     342
21-24 months   IRC              INDIA                          0             340     389
21-24 months   IRC              INDIA                          1              49     389
21-24 months   Keneba           GAMBIA                         0            1090    1205
21-24 months   Keneba           GAMBIA                         1             115    1205
21-24 months   LCNI-5           MALAWI                         0             266     410
21-24 months   LCNI-5           MALAWI                         1             144     410
21-24 months   MAL-ED           BANGLADESH                     0             175     207
21-24 months   MAL-ED           BANGLADESH                     1              32     207
21-24 months   MAL-ED           BRAZIL                         0             146     165
21-24 months   MAL-ED           BRAZIL                         1              19     165
21-24 months   MAL-ED           INDIA                          0             190     226
21-24 months   MAL-ED           INDIA                          1              36     226
21-24 months   MAL-ED           NEPAL                          0             200     227
21-24 months   MAL-ED           NEPAL                          1              27     227
21-24 months   MAL-ED           PERU                           0             165     189
21-24 months   MAL-ED           PERU                           1              24     189
21-24 months   MAL-ED           SOUTH AFRICA                   0             211     235
21-24 months   MAL-ED           SOUTH AFRICA                   1              24     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             173     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              31     204
21-24 months   NIH-Birth        BANGLADESH                     0             342     411
21-24 months   NIH-Birth        BANGLADESH                     1              69     411
21-24 months   NIH-Crypto       BANGLADESH                     0             422     490
21-24 months   NIH-Crypto       BANGLADESH                     1              68     490
21-24 months   PROBIT           BELARUS                        0             208     209
21-24 months   PROBIT           BELARUS                        1               1     209
21-24 months   PROVIDE          BANGLADESH                     0             423     471
21-24 months   PROVIDE          BANGLADESH                     1              48     471
21-24 months   ZVITAMBO         ZIMBABWE                       0            1006    1169
21-24 months   ZVITAMBO         ZIMBABWE                       1             163    1169


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: LCNI-5, country: MALAWI
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: LCNI-5, country: MALAWI
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

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
![](/tmp/6ae93a05-4b6a-4f92-8a6f-a3fcfab161f4/5d3371d6-a577-4d9f-a9de-4ba518f3ec3b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6ae93a05-4b6a-4f92-8a6f-a3fcfab161f4/5d3371d6-a577-4d9f-a9de-4ba518f3ec3b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6ae93a05-4b6a-4f92-8a6f-a3fcfab161f4/5d3371d6-a577-4d9f-a9de-4ba518f3ec3b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1181416   -0.2270121   -0.0092710
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.0485248   -0.2581059    0.3551556
0-3 months     CMIN             BANGLADESH                     0                    NA                -0.0418541   -0.1180793    0.0343711
0-3 months     CMIN             BANGLADESH                     1                    NA                 0.0950195   -0.0330306    0.2230695
0-3 months     COHORTS          GUATEMALA                      0                    NA                -0.5520757   -0.5736530   -0.5304983
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.2669376   -0.3784620   -0.1554133
0-3 months     COHORTS          INDIA                          0                    NA                -0.0862836   -0.0932882   -0.0792790
0-3 months     COHORTS          INDIA                          1                    NA                 0.1241712    0.1023524    0.1459901
0-3 months     EE               PAKISTAN                       0                    NA                -0.3403835   -0.3872868   -0.2934802
0-3 months     EE               PAKISTAN                       1                    NA                -0.0572168   -0.1244225    0.0099889
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0622988   -0.0893417   -0.0352559
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.1142939    0.0564095    0.1721783
0-3 months     IRC              INDIA                          0                    NA                -0.3172386   -0.3721445   -0.2623327
0-3 months     IRC              INDIA                          1                    NA                 0.2211832    0.0469873    0.3953790
0-3 months     Keneba           GAMBIA                         0                    NA                -0.3254186   -0.3466110   -0.3042263
0-3 months     Keneba           GAMBIA                         1                    NA                 0.4342280    0.2826611    0.5857950
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.1525337   -0.1877669   -0.1173006
0-3 months     MAL-ED           BANGLADESH                     1                    NA                 0.0269961   -0.0586360    0.1126281
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0837715    0.0288415    0.1387014
0-3 months     MAL-ED           BRAZIL                         1                    NA                 0.6119204    0.4475173    0.7763235
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0793478   -0.1326651   -0.0260305
0-3 months     MAL-ED           INDIA                          1                    NA                 0.0533893   -0.0816437    0.1884224
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0231429   -0.0192199    0.0655058
0-3 months     MAL-ED           NEPAL                          1                    NA                 0.3314346    0.1626588    0.5002103
0-3 months     MAL-ED           PERU                           0                    NA                -0.2805617   -0.3157475   -0.2453758
0-3 months     MAL-ED           PERU                           1                    NA                -0.1334783   -0.2420209   -0.0249356
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.2019467   -0.2521424   -0.1517510
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0421498   -0.1239373    0.2082369
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1737194   -0.2151523   -0.1322866
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0551219   -0.0342887    0.1445325
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                -0.2687921   -0.2961362   -0.2414479
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0347250   -0.1064883    0.0370382
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.2545593   -0.2728190   -0.2362995
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0848802   -0.1290932   -0.0406671
0-3 months     PROBIT           BELARUS                        0                    NA                -0.4299287   -0.4895072   -0.3703501
0-3 months     PROBIT           BELARUS                        1                    NA                -0.1910897   -0.2246720   -0.1575073
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1994426   -0.2174571   -0.1814281
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0854188   -0.1418685   -0.0289691
0-3 months     ResPak           PAKISTAN                       0                    NA                -0.4412813   -0.5865002   -0.2960623
0-3 months     ResPak           PAKISTAN                       1                    NA                 0.2618606    0.0278633    0.4958578
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.1573198   -0.1870665   -0.1275730
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0471637   -0.1062976    0.0119702
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.1841986   -0.1945136   -0.1738836
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.2662297    0.2348502    0.2976093
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1282302   -0.1806174   -0.0758430
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.0192697   -0.0886827    0.1272221
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0619449   -0.0986133   -0.0252765
3-6 months     CMIN             BANGLADESH                     1                    NA                 0.0771029    0.0215347    0.1326712
3-6 months     COHORTS          GUATEMALA                      0                    NA                -0.1088305   -0.1239766   -0.0936845
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0190422   -0.0641670    0.0260826
3-6 months     COHORTS          INDIA                          0                    NA                -0.0655809   -0.0714317   -0.0597300
3-6 months     COHORTS          INDIA                          1                    NA                 0.0165133   -0.0003548    0.0333814
3-6 months     CONTENT          PERU                           0                    NA                 0.0078077   -0.0154368    0.0310522
3-6 months     CONTENT          PERU                           1                    NA                 0.1102620    0.0430524    0.1774717
3-6 months     EE               PAKISTAN                       0                    NA                 0.0324519   -0.0027430    0.0676468
3-6 months     EE               PAKISTAN                       1                    NA                 0.1102057    0.0682890    0.1521224
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1793525   -0.1990696   -0.1596355
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0713934   -0.1191390   -0.0236477
3-6 months     IRC              INDIA                          0                    NA                -0.0559840   -0.0882601   -0.0237079
3-6 months     IRC              INDIA                          1                    NA                -0.0221380   -0.1045759    0.0602999
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0234292   -0.0429990   -0.0038593
3-6 months     Keneba           GAMBIA                         1                    NA                 0.0446714   -0.0083938    0.0977366
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0329111   -0.0575851   -0.0082370
3-6 months     MAL-ED           BANGLADESH                     1                    NA                 0.0342734   -0.0338754    0.1024222
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0439843    0.0045721    0.0833965
3-6 months     MAL-ED           BRAZIL                         1                    NA                 0.1749817    0.0925305    0.2574330
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0577484   -0.0889191   -0.0265777
3-6 months     MAL-ED           INDIA                          1                    NA                 0.0849054    0.0107552    0.1590556
3-6 months     MAL-ED           NEPAL                          0                    NA                -0.0449339   -0.0723684   -0.0174995
3-6 months     MAL-ED           NEPAL                          1                    NA                 0.1436708    0.0774445    0.2098970
3-6 months     MAL-ED           PERU                           0                    NA                 0.0080887   -0.0246756    0.0408531
3-6 months     MAL-ED           PERU                           1                    NA                 0.1467507    0.0575230    0.2359783
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0192729   -0.0582636    0.0197178
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.1200966   -0.0146499    0.2548432
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0847581   -0.1186324   -0.0508838
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0046360   -0.0857866    0.0950585
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0560430   -0.0794401   -0.0326460
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0232451   -0.0865584    0.0400682
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0127076   -0.0048621    0.0302773
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.1134929    0.0641566    0.1628291
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0487529    0.0292039    0.0683018
3-6 months     PROBIT           BELARUS                        1                    NA                 0.2134742    0.1878370    0.2391114
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0392474   -0.0556002   -0.0228947
3-6 months     PROVIDE          BANGLADESH                     1                    NA                 0.0811852    0.0287296    0.1336408
3-6 months     ResPak           PAKISTAN                       0                    NA                -0.0222342   -0.0924753    0.0480070
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.2072294    0.0618699    0.3525890
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0369284   -0.0611621   -0.0126947
3-6 months     SAS-CompFeed     INDIA                          1                    NA                 0.0417267    0.0194573    0.0639961
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0923319   -0.1094304   -0.0752334
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0202075   -0.0471613    0.0875762
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0076529   -0.0173326    0.0020269
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0553201    0.0261449    0.0844952
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0827425   -0.1227129   -0.0427721
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0788826   -0.1398393   -0.0179260
6-9 months     CMIN             BANGLADESH                     0                    NA                -0.0582056   -0.0911165   -0.0252946
6-9 months     CMIN             BANGLADESH                     1                    NA                -0.0421048   -0.0884354    0.0042258
6-9 months     COHORTS          GUATEMALA                      0                    NA                -0.1303258   -0.1431485   -0.1175032
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0688604   -0.0988801   -0.0388406
6-9 months     COHORTS          INDIA                          0                    NA                -0.1007087   -0.1057890   -0.0956284
6-9 months     COHORTS          INDIA                          1                    NA                -0.0616626   -0.0763144   -0.0470108
6-9 months     CONTENT          PERU                           0                    NA                -0.0286024   -0.0499478   -0.0072570
6-9 months     CONTENT          PERU                           1                    NA                 0.0247835   -0.0383847    0.0879518
6-9 months     EE               PAKISTAN                       0                    NA                -0.1034585   -0.1289186   -0.0779983
6-9 months     EE               PAKISTAN                       1                    NA                -0.0603345   -0.0940698   -0.0265993
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0549677   -0.0715471   -0.0383884
6-9 months     GMS-Nepal        NEPAL                          1                    NA                 0.0151228   -0.0501667    0.0804123
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.1156553   -0.1366205   -0.0946900
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                -0.0362560   -0.0783259    0.0058139
6-9 months     IRC              INDIA                          0                    NA                -0.0232307   -0.0457088   -0.0007527
6-9 months     IRC              INDIA                          1                    NA                 0.0346052   -0.0358576    0.1050680
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0151974   -0.0386098    0.0082150
6-9 months     Keneba           GAMBIA                         1                    NA                 0.0118611   -0.0624939    0.0862161
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0073205   -0.0120733    0.0267144
6-9 months     LCNI-5           MALAWI                         1                    NA                 0.0680833    0.0411948    0.0949719
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0687010   -0.0875886   -0.0498133
6-9 months     MAL-ED           BANGLADESH                     1                    NA                -0.0771630   -0.1194759   -0.0348500
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0146209   -0.0237189    0.0529608
6-9 months     MAL-ED           BRAZIL                         1                    NA                -0.0335389   -0.1051918    0.0381139
6-9 months     MAL-ED           INDIA                          0                    NA                -0.0762503   -0.0993933   -0.0531074
6-9 months     MAL-ED           INDIA                          1                    NA                -0.0373818   -0.1140564    0.0392927
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0336274   -0.0532818   -0.0139730
6-9 months     MAL-ED           NEPAL                          1                    NA                -0.0415680   -0.1130984    0.0299625
6-9 months     MAL-ED           PERU                           0                    NA                -0.0309538   -0.0567606   -0.0051469
6-9 months     MAL-ED           PERU                           1                    NA                -0.0504399   -0.1177102    0.0168304
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0210980   -0.0496556    0.0074596
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0121980   -0.1014120    0.1258080
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1019868   -0.1369294   -0.0670441
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0498298   -0.1481027    0.0484430
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0617052   -0.0808975   -0.0425128
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0479759   -0.0960703    0.0001185
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0332681   -0.0469772   -0.0195590
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0191800   -0.0538104    0.0154504
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0524427    0.0377860    0.0670995
6-9 months     PROBIT           BELARUS                        1                    NA                 0.1007212    0.0690680    0.1323745
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0628737   -0.0743695   -0.0513778
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0490142   -0.0814089   -0.0166195
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0127366   -0.0376073    0.0630805
6-9 months     ResPak           PAKISTAN                       1                    NA                 0.0317325   -0.0766518    0.1401169
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0976562   -0.1117149   -0.0835974
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0407981   -0.0636665   -0.0179296
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.1284005   -0.1491220   -0.1076789
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                -0.0706593   -0.1025198   -0.0387988
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0532805   -0.0697636   -0.0367974
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0425158   -0.1101014    0.0250698
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0371315   -0.0459490   -0.0283141
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0195801   -0.0070580    0.0462183
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1296268   -0.1611874   -0.0980661
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.0743505   -0.1396228   -0.0090781
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.1148486   -0.1435473   -0.0861499
9-12 months    CMIN             BANGLADESH                     1                    NA                -0.0528412   -0.0948833   -0.0107992
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0909446   -0.1014984   -0.0803909
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0781605   -0.1052782   -0.0510429
9-12 months    COHORTS          INDIA                          0                    NA                -0.0870302   -0.0921193   -0.0819412
9-12 months    COHORTS          INDIA                          1                    NA                -0.0847264   -0.0995879   -0.0698649
9-12 months    CONTENT          PERU                           0                    NA                -0.0312584   -0.0481536   -0.0143631
9-12 months    CONTENT          PERU                           1                    NA                 0.0594582    0.0158503    0.1030661
9-12 months    EE               PAKISTAN                       0                    NA                -0.1131325   -0.1313431   -0.0949220
9-12 months    EE               PAKISTAN                       1                    NA                -0.0855182   -0.1094972   -0.0615391
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0793380   -0.0928311   -0.0658449
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0822976   -0.1285404   -0.0360549
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0651548   -0.0823490   -0.0479606
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0412373   -0.0767207   -0.0057539
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0654873   -0.0813295   -0.0496451
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0114976   -0.0223149    0.0453102
9-12 months    IRC              INDIA                          0                    NA                -0.0382500   -0.0567323   -0.0197677
9-12 months    IRC              INDIA                          1                    NA                -0.0205943   -0.0596593    0.0184707
9-12 months    Keneba           GAMBIA                         0                    NA                -0.1002489   -0.1188008   -0.0816969
9-12 months    Keneba           GAMBIA                         1                    NA                -0.1088223   -0.1675283   -0.0501163
9-12 months    LCNI-5           MALAWI                         0                    NA                -0.0506056   -0.0750100   -0.0262013
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0338586   -0.0657209   -0.0019963
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0947213   -0.1117497   -0.0776929
9-12 months    MAL-ED           BANGLADESH                     1                    NA                -0.0490163   -0.0936408   -0.0043918
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0090550   -0.0247950    0.0429050
9-12 months    MAL-ED           BRAZIL                         1                    NA                 0.0016611   -0.0634045    0.0667267
9-12 months    MAL-ED           INDIA                          0                    NA                -0.0949100   -0.1123155   -0.0775045
9-12 months    MAL-ED           INDIA                          1                    NA                -0.0717682   -0.1089270   -0.0346093
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0631591   -0.0809168   -0.0454013
9-12 months    MAL-ED           NEPAL                          1                    NA                -0.0558431   -0.1094837   -0.0022024
9-12 months    MAL-ED           PERU                           0                    NA                -0.0491800   -0.0717856   -0.0265743
9-12 months    MAL-ED           PERU                           1                    NA                 0.0058092   -0.0575063    0.0691247
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0833343   -0.1103558   -0.0563129
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.0975731   -0.2080695    0.0129232
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1525462   -0.1893104   -0.1157821
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1680332   -0.2532782   -0.0827881
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0460787   -0.0613464   -0.0308110
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0232223   -0.0647336    0.0182889
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0392632   -0.0508098   -0.0277166
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0032894   -0.0354890    0.0289102
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0365119    0.0154876    0.0575362
9-12 months    PROBIT           BELARUS                        1                    NA                 0.0739547    0.0483574    0.0995519
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0646487   -0.0762390   -0.0530585
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0495391   -0.0833671   -0.0157110
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0463182   -0.1128677    0.0202313
9-12 months    ResPak           PAKISTAN                       1                    NA                 0.0833554    0.0112285    0.1554824
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0846320   -0.1001482   -0.0691157
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0721328   -0.0996754   -0.0445902
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1652349   -0.2349277   -0.0955420
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.1172671   -0.2074412   -0.0270930
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0632705   -0.0779003   -0.0486407
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1012690   -0.1640998   -0.0384382
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0612987   -0.0691383   -0.0534591
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0386778   -0.0626768   -0.0146789
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0766530   -0.1099081   -0.0433980
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0508126   -0.0957545   -0.0058707
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0828547   -0.1109743   -0.0547352
12-15 months   CMIN             BANGLADESH                     1                    NA                -0.0287627   -0.0606149    0.0030895
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0936132   -0.1052265   -0.0819999
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0666450   -0.0871305   -0.0461596
12-15 months   CONTENT          PERU                           0                    NA                -0.0778032   -0.0952168   -0.0603897
12-15 months   CONTENT          PERU                           1                    NA                -0.0490068   -0.0876354   -0.0103782
12-15 months   EE               PAKISTAN                       0                    NA                -0.0208080   -0.0383958   -0.0032203
12-15 months   EE               PAKISTAN                       1                    NA                 0.0246037    0.0064533    0.0427541
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0739050   -0.0843283   -0.0634818
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0323313   -0.0696490    0.0049865
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0171571   -0.0443967    0.0100825
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                 0.0114231   -0.0296435    0.0524898
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0472673   -0.0695251   -0.0250094
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0276746   -0.0522684   -0.0030807
12-15 months   IRC              INDIA                          0                    NA                -0.0491890   -0.0667073   -0.0316708
12-15 months   IRC              INDIA                          1                    NA                -0.0181787   -0.0721166    0.0357591
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0554214   -0.0682681   -0.0425746
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0314546   -0.0658391    0.0029299
12-15 months   LCNI-5           MALAWI                         0                    NA                -0.0383056   -0.0809882    0.0043770
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0419143   -0.1069083    0.0230797
12-15 months   MAL-ED           BANGLADESH                     0                    NA                -0.0607921   -0.0777344   -0.0438497
12-15 months   MAL-ED           BANGLADESH                     1                    NA                -0.0281585   -0.0657387    0.0094216
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0003193   -0.0246010    0.0239624
12-15 months   MAL-ED           BRAZIL                         1                    NA                -0.0230995   -0.0830771    0.0368782
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0590615   -0.0755175   -0.0426054
12-15 months   MAL-ED           INDIA                          1                    NA                -0.0431215   -0.0827723   -0.0034707
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0614327   -0.0780100   -0.0448554
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.0275483   -0.0680444    0.0129478
12-15 months   MAL-ED           PERU                           0                    NA                -0.0683420   -0.0861733   -0.0505107
12-15 months   MAL-ED           PERU                           1                    NA                -0.0452560   -0.1133140    0.0228019
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0673244   -0.0904606   -0.0441882
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0069903   -0.0793027    0.0932833
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0698454   -0.0973713   -0.0423194
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0666876   -0.1267986   -0.0065765
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.1242381   -0.1435728   -0.1049034
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1349576   -0.1648257   -0.1050895
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0404706   -0.0505328   -0.0304084
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0256081   -0.0530394    0.0018232
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0408646   -0.0515695   -0.0301597
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0413369   -0.0713615   -0.0113123
12-15 months   ResPak           PAKISTAN                       0                    NA                 0.0887834   -0.0014495    0.1790163
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0712029   -0.0059491    0.1483549
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0907380   -0.1058485   -0.0756274
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0685646   -0.0940366   -0.0430926
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0163067   -0.0255836    0.0581970
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0027774   -0.0667278    0.0611729
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0693826   -0.0839492   -0.0548160
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0032381   -0.0680261    0.0745024
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0629825   -0.0739174   -0.0520476
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0569514   -0.0932671   -0.0206357
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0634491   -0.0899228   -0.0369753
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0850260   -0.1350321   -0.0350199
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0717210   -0.0961496   -0.0472924
15-18 months   CMIN             BANGLADESH                     1                    NA                -0.0495244   -0.0809064   -0.0181424
15-18 months   COHORTS          GUATEMALA                      0                    NA                -0.0608774   -0.0730546   -0.0487001
15-18 months   COHORTS          GUATEMALA                      1                    NA                -0.0327323   -0.0570209   -0.0084438
15-18 months   CONTENT          PERU                           0                    NA                -0.0147899   -0.0321034    0.0025235
15-18 months   CONTENT          PERU                           1                    NA                 0.0313814   -0.0220144    0.0847773
15-18 months   EE               PAKISTAN                       0                    NA                -0.0330045   -0.0476707   -0.0183382
15-18 months   EE               PAKISTAN                       1                    NA                -0.0158350   -0.0333812    0.0017111
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0738678   -0.0865347   -0.0612010
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0451250   -0.0851586   -0.0050914
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0205409   -0.0332325   -0.0078492
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0027819   -0.0424150    0.0368513
15-18 months   IRC              INDIA                          0                    NA                -0.0423278   -0.0566423   -0.0280134
15-18 months   IRC              INDIA                          1                    NA                -0.0099752   -0.0729177    0.0529673
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0333926   -0.0453293   -0.0214559
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0329762   -0.0718918    0.0059394
15-18 months   LCNI-5           MALAWI                         0                    NA                -0.0529101   -0.0898565   -0.0159636
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0350281   -0.0675934   -0.0024628
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0465824   -0.0613734   -0.0317914
15-18 months   MAL-ED           BANGLADESH                     1                    NA                -0.0415195   -0.0740210   -0.0090180
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0189423   -0.0414923    0.0036076
15-18 months   MAL-ED           BRAZIL                         1                    NA                -0.0325524   -0.0899786    0.0248737
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0378137   -0.0519240   -0.0237034
15-18 months   MAL-ED           INDIA                          1                    NA                -0.0390048   -0.0697840   -0.0082256
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0508766   -0.0672818   -0.0344714
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0849935   -0.1183795   -0.0516075
15-18 months   MAL-ED           PERU                           0                    NA                -0.0417136   -0.0577102   -0.0257170
15-18 months   MAL-ED           PERU                           1                    NA                -0.0001633   -0.0496273    0.0493007
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0274266   -0.0478458   -0.0070073
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0383932   -0.0865456    0.0097591
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0898621   -0.1143594   -0.0653647
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0636493   -0.1174871   -0.0098114
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0634628   -0.0798770   -0.0470486
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0298042   -0.0614296    0.0018212
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0181230   -0.0270715   -0.0091746
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0096832   -0.0326776    0.0133111
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0379612   -0.0471428   -0.0287796
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0346084   -0.0632716   -0.0059452
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0157195   -0.0325452    0.0011062
15-18 months   SAS-CompFeed     INDIA                          1                    NA                -0.0009290   -0.0253109    0.0234528
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0420428   -0.0591452   -0.0249404
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0289470   -0.0492181   -0.0086760
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0209673   -0.0369536   -0.0049810
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050055   -0.0444947    0.0545058
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0619460   -0.0737662   -0.0501258
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0650947   -0.0943292   -0.0358603
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0598453   -0.0844877   -0.0352029
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0144615   -0.0349847    0.0639077
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0166847   -0.0388862    0.0055169
18-21 months   CMIN             BANGLADESH                     1                    NA                 0.0091831   -0.0164334    0.0347996
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0234736   -0.0343391   -0.0126080
18-21 months   COHORTS          GUATEMALA                      1                    NA                -0.0052850   -0.0279438    0.0173738
18-21 months   CONTENT          PERU                           0                    NA                -0.0050791   -0.0206846    0.0105263
18-21 months   CONTENT          PERU                           1                    NA                -0.0248644   -0.0818849    0.0321560
18-21 months   EE               PAKISTAN                       0                    NA                -0.0371564   -0.0496672   -0.0246455
18-21 months   EE               PAKISTAN                       1                    NA                -0.0333221   -0.0550926   -0.0115515
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0153600    0.0017140    0.0290061
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0167402   -0.0011501    0.0346304
18-21 months   IRC              INDIA                          0                    NA                -0.0409921   -0.0555685   -0.0264156
18-21 months   IRC              INDIA                          1                    NA                -0.0336506   -0.0624886   -0.0048126
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0223804   -0.0344883   -0.0102725
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0111064   -0.0531961    0.0309832
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0132332   -0.0312479    0.0047815
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0192568   -0.0513139    0.0128004
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0147956   -0.0273453   -0.0022459
18-21 months   MAL-ED           BANGLADESH                     1                    NA                -0.0193952   -0.0500477    0.0112572
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0253977   -0.0500906   -0.0007047
18-21 months   MAL-ED           BRAZIL                         1                    NA                 0.0213504   -0.0771047    0.1198055
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0052894   -0.0071741    0.0177529
18-21 months   MAL-ED           INDIA                          1                    NA                 0.0083317   -0.0203203    0.0369837
18-21 months   MAL-ED           NEPAL                          0                    NA                -0.0344673   -0.0480024   -0.0209321
18-21 months   MAL-ED           NEPAL                          1                    NA                 0.0190208   -0.0207212    0.0587627
18-21 months   MAL-ED           PERU                           0                    NA                -0.0087112   -0.0246586    0.0072362
18-21 months   MAL-ED           PERU                           1                    NA                -0.0038866   -0.0530612    0.0452879
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0324539   -0.0529850   -0.0119227
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0296639   -0.0811904    0.0218626
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0329781   -0.0580204   -0.0079358
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025384   -0.0584055    0.0533286
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0402833   -0.0541047   -0.0264618
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0291809   -0.0572733   -0.0010885
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0334117   -0.0420934   -0.0247299
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0067484   -0.0125959    0.0260927
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0158523   -0.0243469   -0.0073576
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0333625    0.0077423    0.0589828
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0711478   -0.0838247   -0.0584708
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0540661   -0.0857518   -0.0223804
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0106386   -0.0135657    0.0348428
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0435971    0.0027951    0.0843991
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0007353   -0.0232665    0.0247372
21-24 months   CMIN             BANGLADESH                     1                    NA                 0.0367199    0.0071702    0.0662695
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0083559   -0.0174945    0.0007827
21-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0028327   -0.0125728    0.0182383
21-24 months   CONTENT          PERU                           0                    NA                 0.0183268   -0.0099197    0.0465733
21-24 months   CONTENT          PERU                           1                    NA                 0.0720773   -0.0057372    0.1498917
21-24 months   EE               PAKISTAN                       0                    NA                -0.0001731   -0.0149561    0.0146099
21-24 months   EE               PAKISTAN                       1                    NA                -0.0165811   -0.0386620    0.0054999
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0489622    0.0313459    0.0665784
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0438612    0.0138269    0.0738955
21-24 months   IRC              INDIA                          0                    NA                -0.0140159   -0.0281808    0.0001490
21-24 months   IRC              INDIA                          1                    NA                -0.0131604   -0.0572698    0.0309491
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0127306    0.0010118    0.0244495
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0447491    0.0092680    0.0802301
21-24 months   LCNI-5           MALAWI                         0                    NA                 0.0193497   -0.0007605    0.0394598
21-24 months   LCNI-5           MALAWI                         1                    NA                 0.0389384    0.0157306    0.0621462
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0253139    0.0122833    0.0383445
21-24 months   MAL-ED           BANGLADESH                     1                    NA                 0.0272824   -0.0060248    0.0605897
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0162936   -0.0011250    0.0337121
21-24 months   MAL-ED           BRAZIL                         1                    NA                 0.0179736   -0.0193423    0.0552894
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0281939    0.0159143    0.0404736
21-24 months   MAL-ED           INDIA                          1                    NA                 0.0382051    0.0156217    0.0607886
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0024997   -0.0106690    0.0156683
21-24 months   MAL-ED           NEPAL                          1                    NA                 0.0273444   -0.0331796    0.0878684
21-24 months   MAL-ED           PERU                           0                    NA                 0.0579355    0.0410137    0.0748574
21-24 months   MAL-ED           PERU                           1                    NA                 0.0503664    0.0187966    0.0819362
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0418778    0.0240803    0.0596754
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0614053    0.0123371    0.1104735
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0091832   -0.0147382    0.0331046
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0069231   -0.0440997    0.0579459
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0391703    0.0267368    0.0516038
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0482311    0.0150873    0.0813748
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0592264    0.0504169    0.0680359
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0558807    0.0329003    0.0788611
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0471655    0.0380474    0.0562836
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0380271    0.0108868    0.0651674
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0181689    0.0045973    0.0317406
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0114202   -0.0201286    0.0429690


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     CMIN             BANGLADESH                     NA                   NA                 0.0122587   -0.0591325    0.0836499
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5371921   -0.5589495   -0.5154346
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0616410   -0.0685327   -0.0547493
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2160892   -0.2586792   -0.1734992
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2558271   -0.3111464   -0.2005078
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2819592   -0.3057954   -0.2581230
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1222427   -0.1559818   -0.0885037
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0590383   -0.1091825   -0.0088941
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0547626    0.0104701    0.0990551
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2628007   -0.2968934   -0.2287079
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1788096   -0.2278601   -0.1297591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1375866   -0.1767594   -0.0984138
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2319865   -0.2585900   -0.2053830
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROBIT           BELARUS                        NA                   NA                -0.4282764   -0.4869030   -0.3696499
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ResPak           PAKISTAN                       NA                   NA                -0.2215495   -0.3646573   -0.0784416
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1402392   -0.1504678   -0.1300106
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0560585   -0.0616251   -0.0504918
3-6 months     CONTENT          PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0663303    0.0389725    0.0936881
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0230785   -0.0496785    0.0035216
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0049345   -0.0429370    0.0330680
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROBIT           BELARUS                        NA                   NA                 0.0498792    0.0307240    0.0690345
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ResPak           PAKISTAN                       NA                   NA                 0.0366027   -0.0294732    0.1026785
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845402   -0.1011812   -0.0678992
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0012924   -0.0104920    0.0079073
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0819656   -0.1161677   -0.0477635
6-9 months     CMIN             BANGLADESH                     NA                   NA                -0.0518380   -0.0789102   -0.0247658
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1207546   -0.1326448   -0.1088643
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0961069   -0.1009203   -0.0912936
6-9 months     CONTENT          PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0848755   -0.1055404   -0.0642105
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0438931   -0.0614010   -0.0263853
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                -0.0951531   -0.1146913   -0.0756149
6-9 months     IRC              INDIA                          NA                   NA                -0.0162677   -0.0378604    0.0053250
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0125663   -0.0349107    0.0097781
6-9 months     LCNI-5           MALAWI                         NA                   NA                 0.0295141    0.0135818    0.0454463
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0345596   -0.0538350   -0.0152841
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0934098   -0.1268763   -0.0599434
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0595548   -0.0774135   -0.0416961
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROBIT           BELARUS                        NA                   NA                 0.0527574    0.0382697    0.0672452
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ResPak           PAKISTAN                       NA                   NA                 0.0176516   -0.0290488    0.0643521
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0823482   -0.0898643   -0.0748321
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                -0.1052304   -0.1233192   -0.0871417
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0525643   -0.0685949   -0.0365337
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0315646   -0.0399465   -0.0231828
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1188156   -0.1473352   -0.0902961
9-12 months    CMIN             BANGLADESH                     NA                   NA                -0.0900457   -0.1145732   -0.0655181
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0885965   -0.0985531   -0.0786400
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0867597   -0.0915783   -0.0819411
9-12 months    CONTENT          PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1011889   -0.1159053   -0.0864725
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0798239   -0.0934194   -0.0662284
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                -0.0587254   -0.0745802   -0.0428705
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0487006   -0.0633304   -0.0340708
9-12 months    IRC              INDIA                          NA                   NA                -0.0361313   -0.0530672   -0.0191954
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1010353   -0.1187259   -0.0833448
9-12 months    LCNI-5           MALAWI                         NA                   NA                -0.0440977   -0.0635039   -0.0246915
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0622965   -0.0791919   -0.0454011
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1549661   -0.1887326   -0.1211995
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0424748   -0.0569242   -0.0280255
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROBIT           BELARUS                        NA                   NA                 0.0367452    0.0162651    0.0572253
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ResPak           PAKISTAN                       NA                   NA                -0.0111211   -0.0642819    0.0420397
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0811963   -0.0946758   -0.0677169
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                -0.1462637   -0.2015231   -0.0910043
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0656608   -0.0799392   -0.0513823
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0590873   -0.0665415   -0.0516332
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0712336   -0.0991765   -0.0432907
12-15 months   CMIN             BANGLADESH                     NA                   NA                -0.0608799   -0.0824031   -0.0393566
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0875187   -0.0976569   -0.0773805
12-15 months   CONTENT          PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0004721   -0.0133950    0.0124507
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0667249   -0.0775841   -0.0558657
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                -0.0097911   -0.0327495    0.0131674
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0431604   -0.0596572   -0.0266637
12-15 months   IRC              INDIA                          NA                   NA                -0.0454519   -0.0622041   -0.0286997
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0532735   -0.0653736   -0.0411734
12-15 months   LCNI-5           MALAWI                         NA                   NA                -0.0398116   -0.0766125   -0.0030107
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0574550   -0.0729039   -0.0420060
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0693563   -0.0944134   -0.0442993
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1259588   -0.1428870   -0.1090306
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ResPak           PAKISTAN                       NA                   NA                 0.0830506    0.0172209    0.1488804
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0847390   -0.0988912   -0.0705868
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                 0.0088746   -0.0268397    0.0445889
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0647004   -0.0791352   -0.0502655
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622748   -0.0728257   -0.0517239
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0680871   -0.0915055   -0.0446686
15-18 months   CMIN             BANGLADESH                     NA                   NA                -0.0627334   -0.0821141   -0.0433527
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0548055   -0.0657287   -0.0438823
15-18 months   CONTENT          PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                -0.0168360   -0.0300694   -0.0036026
15-18 months   IRC              INDIA                          NA                   NA                -0.0385167   -0.0531981   -0.0238352
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0333564   -0.0447684   -0.0219445
15-18 months   LCNI-5           MALAWI                         NA                   NA                -0.0456083   -0.0712437   -0.0199728
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0549346   -0.0699931   -0.0398761
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0856342   -0.1079770   -0.0632914
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0576906   -0.0723785   -0.0430027
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0117156   -0.0214328   -0.0019983
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                -0.0369125   -0.0500204   -0.0238046
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192071   -0.0344910   -0.0039232
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0623481   -0.0733140   -0.0513822
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0437658   -0.0661084   -0.0214232
18-21 months   CMIN             BANGLADESH                     NA                   NA                -0.0064943   -0.0234244    0.0104357
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0194758   -0.0293221   -0.0096295
18-21 months   CONTENT          PERU                           NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0400816   -0.0533440   -0.0268193
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0212848   -0.0329576   -0.0096120
18-21 months   LCNI-5           MALAWI                         NA                   NA                -0.0153042   -0.0314684    0.0008600
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0281053   -0.0411303   -0.0150802
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282032   -0.0511144   -0.0052921
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0383890   -0.0508204   -0.0259576
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0689095   -0.0806852   -0.0571338
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0177011   -0.0032847    0.0386869
21-24 months   CMIN             BANGLADESH                     NA                   NA                 0.0156162   -0.0032678    0.0345001
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0056172   -0.0134884    0.0022541
21-24 months   CONTENT          PERU                           NA                   NA                 0.0253992   -0.0018188    0.0526172
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0481269    0.0325947    0.0636591
21-24 months   IRC              INDIA                          NA                   NA                -0.0139081   -0.0274784   -0.0003379
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0157863    0.0046455    0.0269271
21-24 months   LCNI-5           MALAWI                         NA                   NA                 0.0262296    0.0108190    0.0416402
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0054548   -0.0082397    0.0191492
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0088397   -0.0128780    0.0305575
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0406915    0.0289394    0.0524435
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0172279    0.0047469    0.0297089


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1666664   -0.1587183   0.4920511
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.1368735   -0.0121469   0.2858940
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.2851380    0.1715455   0.3987305
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     COHORTS          INDIA                          1                    0                  0.2104548    0.1875392   0.2333704
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.2831667    0.2012123   0.3651211
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                  0.1765927    0.1127028   0.2404826
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.5384218    0.3557777   0.7210658
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                  0.7596467    0.6066053   0.9126880
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                  0.1795298    0.0869327   0.2721269
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.5281489    0.3548121   0.7014858
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.1327371   -0.0124409   0.2779151
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.3082916    0.1342805   0.4823027
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.1470834    0.0329801   0.2611867
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.2440965    0.0705899   0.4176031
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2288414    0.1302973   0.3273855
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                  0.2340670    0.1572707   0.3108633
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.1696791    0.1218438   0.2175144
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.2388390    0.1764042   0.3012738
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                  0.1140238    0.0547693   0.1732783
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.7031418    0.4277453   0.9785384
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.1101561    0.0405572   0.1797549
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.4504283    0.4173969   0.4834598
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1474999    0.0275076   0.2674921
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                  0.1390478    0.0724716   0.2056241
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.0897884    0.0421895   0.1373872
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.0820942    0.0642402   0.0999482
3-6 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     CONTENT          PERU                           1                    0                  0.1024544    0.0313386   0.1735701
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0777538    0.0230208   0.1324867
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.1079592    0.0563026   0.1596158
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0338460   -0.0546850   0.1223771
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0681005    0.0115418   0.1246593
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0671845   -0.0052936   0.1396625
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                  0.1309975    0.0396107   0.2223842
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.1426538    0.0622184   0.2230892
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.1886047    0.1169209   0.2602885
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           PERU                           1                    0                  0.1386619    0.0436089   0.2337150
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.1393695   -0.0009049   0.2796440
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0893941   -0.0071653   0.1859534
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                  0.0327979   -0.0347002   0.1002961
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.1007853    0.0484139   0.1531567
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.1647213    0.1354939   0.1939488
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.1204326    0.0654872   0.1753780
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.2294636    0.0680225   0.3909047
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                  0.0786551    0.0446068   0.1127034
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1125394    0.0430347   0.1820441
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0629729    0.0322339   0.0937119
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0038599   -0.0690328   0.0767526
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.0161008   -0.0407293   0.0729309
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0614655    0.0288219   0.0941091
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0390461    0.0235385   0.0545536
6-9 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     CONTENT          PERU                           1                    0                  0.0533859   -0.0132913   0.1200631
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0431239    0.0008594   0.0853884
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                  0.0700905    0.0027288   0.1374523
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                  0.0793992    0.0323948   0.1264037
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.0578359   -0.0161254   0.1317972
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                  0.0270585   -0.0508954   0.1050123
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                  0.0607628    0.0276099   0.0939157
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0084620   -0.0547991   0.0378751
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.0481599   -0.1294253   0.0331056
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0388685   -0.0412227   0.1189596
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                 -0.0079406   -0.0821221   0.0662409
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0194862   -0.0915368   0.0525644
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0332960   -0.0838482   0.1504402
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0521569   -0.0521433   0.1564572
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                  0.0137293   -0.0380531   0.0655117
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0140881   -0.0231571   0.0513334
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0482785    0.0169501   0.0796068
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0138594   -0.0205146   0.0482335
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0189959   -0.1005100   0.1385019
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0568581    0.0242565   0.0894597
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0577412    0.0197349   0.0957474
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0107647   -0.0588019   0.0803312
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0567117    0.0286521   0.0847712
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0552763   -0.0172258   0.1277784
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                  0.0620074    0.0111041   0.1129107
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                  0.0127841   -0.0163148   0.0418831
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    COHORTS          INDIA                          1                    0                  0.0023038   -0.0134049   0.0180125
9-12 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    CONTENT          PERU                           1                    0                  0.0907165    0.0439501   0.1374829
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0276144   -0.0024957   0.0577245
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0029596   -0.0511308   0.0452115
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                  0.0239175   -0.0155123   0.0633474
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0769850    0.0382096   0.1157604
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0176557   -0.0255608   0.0608722
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0085734   -0.0701411   0.0529942
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                  0.0167470   -0.0233875   0.0568815
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0457050   -0.0020581   0.0934682
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0073939   -0.0807380   0.0659502
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0231418   -0.0178915   0.0641751
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0073160   -0.0491876   0.0638196
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0549892   -0.0122408   0.1222192
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0142388   -0.1279912   0.0995136
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0154869   -0.1083218   0.0773480
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                  0.0228564   -0.0213735   0.0670863
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0359739    0.0017666   0.0701811
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0374428    0.0037509   0.0711347
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0151097   -0.0206489   0.0508682
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                  0.1296736    0.0315353   0.2278120
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                  0.0124992   -0.0194683   0.0444666
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0479678   -0.0659991   0.1619346
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0379985   -0.1025101   0.0265131
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0226209   -0.0026261   0.0478678
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0258405   -0.0300673   0.0817482
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.0540920    0.0116035   0.0965806
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0269682    0.0034199   0.0505165
12-15 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   CONTENT          PERU                           1                    0                  0.0287964   -0.0135757   0.0711686
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0454117    0.0201379   0.0706855
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0415738    0.0028277   0.0803199
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                  0.0285802   -0.0206993   0.0778597
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0195927   -0.0184334   0.0576188
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0310103   -0.0257011   0.0877217
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                  0.0239667   -0.0127393   0.0606727
12-15 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   LCNI-5           MALAWI                         1                    0                 -0.0036087   -0.0813649   0.0741474
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0326336   -0.0085892   0.0738563
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.0227802   -0.0874866   0.0419262
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.0159400   -0.0269900   0.0588700
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                  0.0338844   -0.0098734   0.0776422
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0230860   -0.0472691   0.0934411
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0743147   -0.0150261   0.1636554
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0031578   -0.0629559   0.0692714
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0107195   -0.0462995   0.0248605
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0148626   -0.0143560   0.0440811
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0004724   -0.0323483   0.0314035
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0175805   -0.1363004   0.1011394
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0221734   -0.0037762   0.0481229
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0190841   -0.0955331   0.0573649
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0726207   -0.0001170   0.1453584
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0060311   -0.0318951   0.0439574
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0215769   -0.0781585   0.0350046
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0221966   -0.0175726   0.0619657
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0281451    0.0009749   0.0553153
15-18 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   CONTENT          PERU                           1                    0                  0.0461714   -0.0099613   0.1023040
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0171695   -0.0056990   0.0400379
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0287428   -0.0132469   0.0707326
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0177590   -0.0230947   0.0586126
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0323527   -0.0321970   0.0969024
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                  0.0004164   -0.0402888   0.0411215
15-18 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   LCNI-5           MALAWI                         1                    0                  0.0178820   -0.0313678   0.0671318
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                  0.0050629   -0.0306459   0.0407717
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0136101   -0.0753051   0.0480848
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                 -0.0011911   -0.0350505   0.0326683
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0341169   -0.0713158   0.0030820
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0415503   -0.0104361   0.0935366
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0109666   -0.0632695   0.0413363
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0262128   -0.0329364   0.0853620
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                  0.0336586   -0.0019727   0.0692900
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0084398   -0.0162344   0.0331140
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0033528   -0.0267451   0.0334507
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0147904   -0.0227814   0.0523623
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0130958   -0.0134260   0.0396176
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0259728   -0.0260448   0.0779904
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0031487   -0.0346824   0.0283849
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0743068    0.0190603   0.1295532
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                  0.0258678   -0.0080308   0.0597663
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0181886   -0.0069407   0.0433179
18-21 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   CONTENT          PERU                           1                    0                 -0.0197853   -0.0789026   0.0393320
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   EE               PAKISTAN                       1                    0                  0.0038343   -0.0212750   0.0289437
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                  0.0013801   -0.0211205   0.0238807
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   IRC              INDIA                          1                    0                  0.0073415   -0.0249711   0.0396541
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0112739   -0.0325226   0.0550705
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0060236   -0.0427958   0.0307486
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                 -0.0045996   -0.0377216   0.0285224
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                  0.0467480   -0.0547564   0.1482525
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                  0.0030423   -0.0282031   0.0342877
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0534880    0.0115044   0.0954716
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           PERU                           1                    0                  0.0048246   -0.0468713   0.0565204
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0027900   -0.0526763   0.0582563
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0304397   -0.0307832   0.0916626
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                  0.0111023   -0.0202060   0.0424107
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0401600    0.0189569   0.0613632
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0492148    0.0222230   0.0762066
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0170816   -0.0170459   0.0512092
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0329586   -0.0144825   0.0803996
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                  0.0359845   -0.0020848   0.0740538
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                  0.0111887   -0.0067235   0.0291008
21-24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   CONTENT          PERU                           1                    0                  0.0537505   -0.0290321   0.1365330
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0164080   -0.0429806   0.0101647
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0051010   -0.0399204   0.0297184
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0008556   -0.0454725   0.0471836
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                  0.0320185   -0.0053478   0.0693847
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                  0.0195887   -0.0111200   0.0502974
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0019685   -0.0337969   0.0377340
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                  0.0016800   -0.0395010   0.0428611
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                  0.0100112   -0.0156949   0.0357173
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                  0.0248447   -0.0370953   0.0867847
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0075691   -0.0433881   0.0282499
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0195274   -0.0326687   0.0717236
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0022601   -0.0586122   0.0540920
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0090607   -0.0263384   0.0444599
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0033457   -0.0279568   0.0212654
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0091384   -0.0377695   0.0194926
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000   0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0067487   -0.0410928   0.0275953


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0303030   -0.0303803   0.0909863
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0541128   -0.0081816   0.1164072
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0148836    0.0073729   0.0223943
0-3 months     COHORTS          INDIA                          0                    NA                 0.0246426    0.0214928   0.0277923
0-3 months     EE               PAKISTAN                       0                    NA                 0.1242943    0.0849844   0.1636042
0-3 months     GMS-Nepal        NEPAL                          0                    NA                 0.0305308    0.0180515   0.0430100
0-3 months     IRC              INDIA                          0                    NA                 0.0614115    0.0343327   0.0884903
0-3 months     Keneba           GAMBIA                         0                    NA                 0.0434594    0.0304043   0.0565145
0-3 months     MAL-ED           BANGLADESH                     0                    NA                 0.0302910    0.0125189   0.0480632
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0502999    0.0215699   0.0790299
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0203095   -0.0029631   0.0435821
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0316197    0.0084822   0.0547571
0-3 months     MAL-ED           PERU                           0                    NA                 0.0177610    0.0028188   0.0327032
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0231371    0.0040585   0.0422157
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0361328    0.0171609   0.0551048
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0368056    0.0228347   0.0507765
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0232985    0.0154667   0.0311304
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0016522    0.0002122   0.0030923
0-3 months     PROVIDE          BANGLADESH                     0                    NA                 0.0114024    0.0049104   0.0178943
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.2197318    0.1076084   0.3318552
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0299631    0.0094413   0.0504850
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0439594    0.0396013   0.0483174
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0302687    0.0047564   0.0557810
3-6 months     CMIN             BANGLADESH                     0                    NA                 0.0533643    0.0260091   0.0807196
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0124923    0.0055302   0.0194544
3-6 months     COHORTS          INDIA                          0                    NA                 0.0095224    0.0073552   0.0116896
3-6 months     CONTENT          PERU                           0                    NA                 0.0095752    0.0018155   0.0173349
3-6 months     EE               PAKISTAN                       0                    NA                 0.0338784    0.0096052   0.0581516
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0179548    0.0086236   0.0272860
3-6 months     IRC              INDIA                          0                    NA                 0.0040922   -0.0066668   0.0148513
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0066297    0.0010227   0.0122367
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0104703   -0.0012558   0.0221964
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0157449    0.0033222   0.0281676
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0217082    0.0077847   0.0356317
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0218555    0.0104825   0.0332285
3-6 months     MAL-ED           PERU                           0                    NA                 0.0176573    0.0043394   0.0309752
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0143384   -0.0010475   0.0297244
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0142133   -0.0016910   0.0301176
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0051423   -0.0054899   0.0157745
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0140664    0.0063089   0.0218240
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0011264    0.0003752   0.0018775
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0122849    0.0059633   0.0186065
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0588368    0.0145382   0.1031354
3-6 months     SAS-CompFeed     INDIA                          0                    NA                 0.0202936    0.0134080   0.0271791
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0077917    0.0027871   0.0127963
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0063605    0.0032199   0.0095011
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0007769   -0.0138958   0.0154496
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0063675   -0.0161377   0.0288728
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0095713    0.0042644   0.0148781
6-9 months     COHORTS          INDIA                          0                    NA                 0.0046017    0.0027464   0.0064571
6-9 months     CONTENT          PERU                           0                    NA                 0.0049893   -0.0015823   0.0115610
6-9 months     EE               PAKISTAN                       0                    NA                 0.0185830    0.0002123   0.0369537
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0110746    0.0001882   0.0219610
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                 0.0205022    0.0074947   0.0335096
6-9 months     IRC              INDIA                          0                    NA                 0.0069630   -0.0021276   0.0160537
6-9 months     Keneba           GAMBIA                         0                    NA                 0.0026311   -0.0049669   0.0102291
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0221935    0.0098457   0.0345414
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0013222   -0.0085736   0.0059292
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0058376   -0.0159295   0.0042544
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0059148   -0.0064064   0.0182360
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0009322   -0.0096467   0.0077824
6-9 months     MAL-ED           PERU                           0                    NA                -0.0026247   -0.0123653   0.0071159
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0033152   -0.0084195   0.0150498
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0085769   -0.0087605   0.0259144
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0021504   -0.0059720   0.0102727
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0019044   -0.0031431   0.0069518
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0003147   -0.0004659   0.0010953
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0014473   -0.0021592   0.0050538
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0049150   -0.0260364   0.0358664
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0153080    0.0065650   0.0240509
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0231700    0.0076001   0.0387399
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0007162   -0.0039142   0.0053466
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0055669    0.0027792   0.0083546
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0108111   -0.0035737   0.0251959
9-12 months    CMIN             BANGLADESH                     0                    NA                 0.0248030    0.0039013   0.0457046
9-12 months    COHORTS          GUATEMALA                      0                    NA                 0.0023481   -0.0030061   0.0077023
9-12 months    COHORTS          INDIA                          0                    NA                 0.0002705   -0.0015742   0.0021153
9-12 months    CONTENT          PERU                           0                    NA                 0.0085582    0.0028778   0.0142385
9-12 months    EE               PAKISTAN                       0                    NA                 0.0119436   -0.0011641   0.0250514
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0004859   -0.0083952   0.0074234
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0064294   -0.0042795   0.0171384
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0167867    0.0064627   0.0271107
9-12 months    IRC              INDIA                          0                    NA                 0.0021187   -0.0030978   0.0073351
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0007865   -0.0064366   0.0048637
9-12 months    LCNI-5           MALAWI                         0                    NA                 0.0065079   -0.0091097   0.0221255
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0075159   -0.0006458   0.0156777
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0008766   -0.0095786   0.0078254
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0036701   -0.0029301   0.0102702
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0008626   -0.0058064   0.0075316
9-12 months    MAL-ED           PERU                           0                    NA                 0.0072539   -0.0019296   0.0164374
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0015278   -0.0137461   0.0106906
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024198   -0.0169441   0.0121044
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0036039   -0.0034097   0.0106175
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0049638    0.0001516   0.0097759
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0002333   -0.0005794   0.0010459
9-12 months    PROVIDE          BANGLADESH                     0                    NA                 0.0016017   -0.0022083   0.0054117
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0351971    0.0068871   0.0635072
9-12 months    SAS-CompFeed     INDIA                          0                    NA                 0.0034356   -0.0052938   0.0121651
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0189712   -0.0261781   0.0641204
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023903   -0.0064855   0.0017049
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022114   -0.0002626   0.0046854
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0054194   -0.0063610   0.0171999
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0219749    0.0042269   0.0397229
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0060945    0.0007212   0.0114678
12-15 months   CONTENT          PERU                           0                    NA                 0.0026047   -0.0013969   0.0066063
12-15 months   EE               PAKISTAN                       0                    NA                 0.0203359    0.0087293   0.0319425
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0071801    0.0003386   0.0140217
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0073660   -0.0055787   0.0203107
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0041069   -0.0040992   0.0123129
12-15 months   IRC              INDIA                          0                    NA                 0.0037371   -0.0031705   0.0106448
12-15 months   Keneba           GAMBIA                         0                    NA                 0.0021479   -0.0011621   0.0054578
12-15 months   LCNI-5           MALAWI                         0                    NA                -0.0015060   -0.0339569   0.0309449
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0050798   -0.0015326   0.0116921
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0027237   -0.0105341   0.0050867
12-15 months   MAL-ED           INDIA                          0                    NA                 0.0025391   -0.0043416   0.0094199
12-15 months   MAL-ED           NEPAL                          0                    NA                 0.0039777   -0.0013497   0.0093052
12-15 months   MAL-ED           PERU                           0                    NA                 0.0029888   -0.0061763   0.0121539
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0081485   -0.0021027   0.0183998
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004890   -0.0097509   0.0107290
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0017207   -0.0074433   0.0040019
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0021393   -0.0020852   0.0063638
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0000462   -0.0031619   0.0030695
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0057328   -0.0444828   0.0330173
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0059990   -0.0011020   0.0130999
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0074321   -0.0372228   0.0223586
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0046822   -0.0001697   0.0095341
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0007077   -0.0037434   0.0051589
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0046380   -0.0168391   0.0075631
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0089876   -0.0072025   0.0251776
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0060719    0.0001548   0.0119890
15-18 months   CONTENT          PERU                           0                    NA                 0.0041530   -0.0012375   0.0095435
15-18 months   EE               PAKISTAN                       0                    NA                 0.0073495   -0.0024905   0.0171895
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0049102   -0.0023281   0.0121486
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0037049   -0.0043159   0.0117256
15-18 months   IRC              INDIA                          0                    NA                 0.0038112   -0.0038646   0.0114870
15-18 months   Keneba           GAMBIA                         0                    NA                 0.0000362   -0.0034982   0.0035705
15-18 months   LCNI-5           MALAWI                         0                    NA                 0.0073018   -0.0128704   0.0274741
15-18 months   MAL-ED           BANGLADESH                     0                    NA                 0.0007881   -0.0047759   0.0063520
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0013999   -0.0077753   0.0049755
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0001897   -0.0055836   0.0052041
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0040580   -0.0087109   0.0005950
15-18 months   MAL-ED           PERU                           0                    NA                 0.0056571   -0.0016762   0.0129903
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0011210   -0.0064852   0.0042432
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0042279   -0.0053986   0.0138543
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0057722   -0.0004502   0.0119946
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0012157   -0.0023463   0.0047776
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0003175   -0.0025339   0.0031689
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0040039   -0.0062744   0.0142822
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0051303   -0.0052857   0.0155463
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017602   -0.0017999   0.0053203
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0004021   -0.0044292   0.0036250
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0160795    0.0036395   0.0285194
18-21 months   CMIN             BANGLADESH                     0                    NA                 0.0101903   -0.0033030   0.0236837
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0039977   -0.0015509   0.0095464
18-21 months   CONTENT          PERU                           0                    NA                -0.0017299   -0.0069620   0.0035023
18-21 months   EE               PAKISTAN                       0                    NA                 0.0014341   -0.0079600   0.0108282
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0002326   -0.0035599   0.0040251
18-21 months   IRC              INDIA                          0                    NA                 0.0009104   -0.0031041   0.0049249
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0010956   -0.0031643   0.0053555
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0020710   -0.0147165   0.0105744
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0007263   -0.0059610   0.0045085
18-21 months   MAL-ED           BRAZIL                         0                    NA                 0.0050387   -0.0061219   0.0161994
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0004846   -0.0044947   0.0054639
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0063620    0.0008818   0.0118422
18-21 months   MAL-ED           PERU                           0                    NA                 0.0005971   -0.0058047   0.0069989
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0002874   -0.0054269   0.0060017
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0047749   -0.0049487   0.0144984
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0018942   -0.0034624   0.0072508
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0054429    0.0023462   0.0085397
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0049124    0.0019448   0.0078800
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022383   -0.0022425   0.0067191
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0070625   -0.0032153   0.0173404
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0148808   -0.0011498   0.0309114
21-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0027388   -0.0016575   0.0071350
21-24 months   CONTENT          PERU                           0                    NA                 0.0070724   -0.0052937   0.0194385
21-24 months   EE               PAKISTAN                       0                    NA                -0.0063465   -0.0167376   0.0040446
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0008352   -0.0065402   0.0048697
21-24 months   IRC              INDIA                          0                    NA                 0.0001078   -0.0057280   0.0059435
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0030557   -0.0005497   0.0066611
21-24 months   LCNI-5           MALAWI                         0                    NA                 0.0068799   -0.0039435   0.0177034
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0003043   -0.0052255   0.0058341
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0001935   -0.0045493   0.0049362
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0015947   -0.0025280   0.0057174
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0029551   -0.0044865   0.0103967
21-24 months   MAL-ED           PERU                           0                    NA                -0.0009612   -0.0055238   0.0036015
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0019943   -0.0033900   0.0073785
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003434   -0.0089075   0.0082206
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0015211   -0.0044308   0.0074731
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0004643   -0.0038813   0.0029527
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0009313   -0.0038598   0.0019972
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0009410   -0.0057317   0.0038496
