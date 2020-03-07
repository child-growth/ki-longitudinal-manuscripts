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
0-3 months     JiVitA-3         BANGLADESH                     0           13573   19878
0-3 months     JiVitA-3         BANGLADESH                     1            6305   19878
0-3 months     JiVitA-4         BANGLADESH                     0            1258    1807
0-3 months     JiVitA-4         BANGLADESH                     1             549    1807
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
3-6 months     JiVitA-3         BANGLADESH                     0            8744   12581
3-6 months     JiVitA-3         BANGLADESH                     1            3837   12581
3-6 months     JiVitA-4         BANGLADESH                     0            1325    1840
3-6 months     JiVitA-4         BANGLADESH                     1             515    1840
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
6-9 months     JiVitA-4         BANGLADESH                     0            2234    3054
6-9 months     JiVitA-4         BANGLADESH                     1             820    3054
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
9-12 months    JiVitA-4         BANGLADESH                     0            2554    3501
9-12 months    JiVitA-4         BANGLADESH                     1             947    3501
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
12-15 months   JiVitA-4         BANGLADESH                     0            2556    3549
12-15 months   JiVitA-4         BANGLADESH                     1             993    3549
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
15-18 months   JiVitA-4         BANGLADESH                     0            2543    3550
15-18 months   JiVitA-4         BANGLADESH                     1            1007    3550
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
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/ec6df8b7-5b9d-4b75-90ac-6e9ded0b9f3f/ff830a06-8fba-4ec9-b810-502fd40b63aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ec6df8b7-5b9d-4b75-90ac-6e9ded0b9f3f/ff830a06-8fba-4ec9-b810-502fd40b63aa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ec6df8b7-5b9d-4b75-90ac-6e9ded0b9f3f/ff830a06-8fba-4ec9-b810-502fd40b63aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.4055092   3.1845700   3.6264485
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                3.7062399   3.0689371   4.3435428
0-3 months     CMIN             BANGLADESH                     0                    NA                3.3681656   3.2150688   3.5212623
0-3 months     CMIN             BANGLADESH                     1                    NA                3.5147680   3.2617335   3.7678025
0-3 months     COHORTS          GUATEMALA                      0                    NA                2.5595477   2.5162170   2.6028783
0-3 months     COHORTS          GUATEMALA                      1                    NA                3.0057455   2.7886896   3.2228014
0-3 months     COHORTS          INDIA                          0                    NA                3.4731024   3.4585753   3.4876295
0-3 months     COHORTS          INDIA                          1                    NA                3.7789174   3.7336996   3.8241353
0-3 months     EE               PAKISTAN                       0                    NA                2.8892505   2.7933179   2.9851831
0-3 months     EE               PAKISTAN                       1                    NA                3.3183442   3.1862367   3.4504517
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.5592020   3.5035451   3.6148590
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.7892139   3.6691463   3.9092815
0-3 months     IRC              INDIA                          0                    NA                3.0286117   2.9175843   3.1396391
0-3 months     IRC              INDIA                          1                    NA                3.9898529   3.6358073   4.3438985
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                3.6546574   3.6431445   3.6661703
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.8713308   3.8541277   3.8885340
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                3.5692999   3.5334826   3.6051173
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                3.7958059   3.7358287   3.8557831
0-3 months     Keneba           GAMBIA                         0                    NA                3.0342834   2.9912196   3.0773472
0-3 months     Keneba           GAMBIA                         1                    NA                4.3476043   4.0517734   4.6434352
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.3006236   3.2320432   3.3692040
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.5288035   3.3466266   3.7109804
0-3 months     MAL-ED           BRAZIL                         0                    NA                3.7132256   3.6038211   3.8226302
0-3 months     MAL-ED           BRAZIL                         1                    NA                4.6107206   4.3133162   4.9081250
0-3 months     MAL-ED           INDIA                          0                    NA                3.3189303   3.2137184   3.4241421
0-3 months     MAL-ED           INDIA                          1                    NA                3.5103923   3.2538234   3.7669612
0-3 months     MAL-ED           NEPAL                          0                    NA                3.5660346   3.4758458   3.6562235
0-3 months     MAL-ED           NEPAL                          1                    NA                4.1255176   3.7877411   4.4632941
0-3 months     MAL-ED           PERU                           0                    NA                3.0289010   2.9584861   3.0993159
0-3 months     MAL-ED           PERU                           1                    NA                3.2198056   3.0294038   3.4102074
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                3.1421974   3.0435653   3.2408295
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.5597006   3.2005538   3.9188473
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2220221   3.1387851   3.3052591
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4910436   3.3055502   3.6765369
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                3.0508665   2.9956144   3.1061187
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                3.4270024   3.2769271   3.5770776
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.0976270   3.0588888   3.1363652
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.3278945   3.2317698   3.4240192
0-3 months     PROBIT           BELARUS                        0                    NA                2.8105831   2.6952023   2.9259640
0-3 months     PROBIT           BELARUS                        1                    NA                3.2178772   3.1509911   3.2847634
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2415775   3.2031274   3.2800276
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.4026125   3.2770343   3.5281907
0-3 months     ResPak           PAKISTAN                       0                    NA                2.6011822   2.3095711   2.8927933
0-3 months     ResPak           PAKISTAN                       1                    NA                3.9424273   3.5046111   4.3802434
0-3 months     SAS-CompFeed     INDIA                          0                    NA                3.3157298   3.2606020   3.3708575
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.4474578   3.3380305   3.5568850
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                3.2608995   3.2399407   3.2818583
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                4.0412933   3.9777964   4.1047902
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.7494653   1.6382055   1.8607250
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                2.0141808   1.7857228   2.2426388
3-6 months     CMIN             BANGLADESH                     0                    NA                1.8566633   1.7747765   1.9385500
3-6 months     CMIN             BANGLADESH                     1                    NA                2.0942564   1.9744287   2.2140841
3-6 months     COHORTS          GUATEMALA                      0                    NA                1.7434519   1.7114383   1.7754655
3-6 months     COHORTS          GUATEMALA                      1                    NA                1.8745616   1.7790895   1.9700337
3-6 months     COHORTS          INDIA                          0                    NA                1.8599954   1.8472861   1.8727046
3-6 months     COHORTS          INDIA                          1                    NA                1.9780489   1.9412430   2.0148548
3-6 months     CONTENT          PERU                           0                    NA                2.0697837   2.0196531   2.1199143
3-6 months     CONTENT          PERU                           1                    NA                2.2238676   2.0740975   2.3736377
3-6 months     EE               PAKISTAN                       0                    NA                2.0506862   1.9755285   2.1258439
3-6 months     EE               PAKISTAN                       1                    NA                2.1517559   2.0616799   2.2418320
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.6804301   1.6383432   1.7225169
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.8556343   1.7549499   1.9563188
3-6 months     IRC              INDIA                          0                    NA                1.8771998   1.8087549   1.9456447
3-6 months     IRC              INDIA                          1                    NA                1.9059330   1.7306795   2.0811865
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                1.8804399   1.8688355   1.8920443
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                2.0108090   1.9924900   2.0291280
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                1.8529964   1.8182332   1.8877596
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                2.0150993   1.9600869   2.0701118
3-6 months     Keneba           GAMBIA                         0                    NA                1.9828580   1.9410587   2.0246573
3-6 months     Keneba           GAMBIA                         1                    NA                2.0887422   1.9743350   2.2031495
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9153977   1.8623766   1.9684188
3-6 months     MAL-ED           BANGLADESH                     1                    NA                1.9939571   1.8495276   2.1383865
3-6 months     MAL-ED           BRAZIL                         0                    NA                2.1173797   2.0318375   2.2029219
3-6 months     MAL-ED           BRAZIL                         1                    NA                2.3561789   2.1703762   2.5419816
3-6 months     MAL-ED           INDIA                          0                    NA                1.8501921   1.7824840   1.9179002
3-6 months     MAL-ED           INDIA                          1                    NA                2.1268882   1.9677424   2.2860340
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9215249   1.8634362   1.9796135
3-6 months     MAL-ED           NEPAL                          1                    NA                2.2920398   2.1470666   2.4370131
3-6 months     MAL-ED           PERU                           0                    NA                1.9843364   1.9144569   2.0542158
3-6 months     MAL-ED           PERU                           1                    NA                2.2304927   2.0432408   2.4177446
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.9406673   1.8574897   2.0238449
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                2.2299236   1.9520264   2.5078209
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8122553   1.7406593   1.8838513
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9244272   1.7305261   2.1183283
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                1.8280255   1.7772027   1.8788483
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                1.8577855   1.7197473   1.9958238
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                1.9833618   1.9451343   2.0215892
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                2.1441111   2.0360815   2.2521406
3-6 months     PROBIT           BELARUS                        0                    NA                2.0894297   2.0475537   2.1313056
3-6 months     PROBIT           BELARUS                        1                    NA                2.4007114   2.3447749   2.4566479
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9428542   1.9079288   1.9777796
3-6 months     PROVIDE          BANGLADESH                     1                    NA                2.1672664   2.0535625   2.2809703
3-6 months     ResPak           PAKISTAN                       0                    NA                1.9568210   1.8067053   2.1069368
3-6 months     ResPak           PAKISTAN                       1                    NA                2.3782863   2.0594101   2.6971625
3-6 months     SAS-CompFeed     INDIA                          0                    NA                1.9096781   1.8536669   1.9656893
3-6 months     SAS-CompFeed     INDIA                          1                    NA                2.0296894   1.9818272   2.0775516
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7815624   1.7446382   1.8184866
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9853719   1.8421348   2.1286091
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.9658146   1.9451122   1.9865169
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0605809   1.9982870   2.1228747
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2238600   1.1331089   1.3146111
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.1914577   1.0550652   1.3278502
6-9 months     CMIN             BANGLADESH                     0                    NA                1.2681877   1.1946641   1.3417113
6-9 months     CMIN             BANGLADESH                     1                    NA                1.2623372   1.1577642   1.3669101
6-9 months     COHORTS          GUATEMALA                      0                    NA                1.0932870   1.0640046   1.1225694
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.1809486   1.1122237   1.2496735
6-9 months     COHORTS          INDIA                          0                    NA                1.1908796   1.1793170   1.2024422
6-9 months     COHORTS          INDIA                          1                    NA                1.2280696   1.1950952   1.2610439
6-9 months     CONTENT          PERU                           0                    NA                1.3921682   1.3423730   1.4419635
6-9 months     CONTENT          PERU                           1                    NA                1.4484008   1.3025840   1.5942175
6-9 months     EE               PAKISTAN                       0                    NA                1.1569112   1.0993892   1.2144331
6-9 months     EE               PAKISTAN                       1                    NA                1.2057134   1.1276936   1.2837333
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.2969132   1.2588601   1.3349663
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.4253241   1.2689294   1.5817188
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                1.1386039   1.0905861   1.1866216
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                1.2612820   1.1640156   1.3585483
6-9 months     IRC              INDIA                          0                    NA                1.3619172   1.3111453   1.4126891
6-9 months     IRC              INDIA                          1                    NA                1.4489963   1.2912442   1.6067484
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                1.3143345   1.2903914   1.3382776
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                1.3512389   1.3135061   1.3889717
6-9 months     Keneba           GAMBIA                         0                    NA                1.4038843   1.3505839   1.4571846
6-9 months     Keneba           GAMBIA                         1                    NA                1.4209049   1.2544513   1.5873585
6-9 months     LCNI-5           MALAWI                         0                    NA                1.4351668   1.3902909   1.4800426
6-9 months     LCNI-5           MALAWI                         1                    NA                1.5095425   1.4474817   1.5716033
6-9 months     MAL-ED           BANGLADESH                     0                    NA                1.2587950   1.2156415   1.3019486
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.1899956   1.0905333   1.2894579
6-9 months     MAL-ED           BRAZIL                         0                    NA                1.5001260   1.4117735   1.5884785
6-9 months     MAL-ED           BRAZIL                         1                    NA                1.3597928   1.1939458   1.5256399
6-9 months     MAL-ED           INDIA                          0                    NA                1.2389030   1.1865538   1.2912523
6-9 months     MAL-ED           INDIA                          1                    NA                1.2870099   1.1114251   1.4625946
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3644360   1.3193910   1.4094810
6-9 months     MAL-ED           NEPAL                          1                    NA                1.3022923   1.1401744   1.4644101
6-9 months     MAL-ED           PERU                           0                    NA                1.3319098   1.2740106   1.3898091
6-9 months     MAL-ED           PERU                           1                    NA                1.2434625   1.0898845   1.3970406
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.3713814   1.3061773   1.4365856
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.4270661   1.1693678   1.6847644
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1778142   1.0969366   1.2586918
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2565120   1.0230308   1.4899931
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                1.2580677   1.2144591   1.3016762
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                1.2422809   1.1336211   1.3509408
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3304476   1.2988977   1.3619974
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3143345   1.2325945   1.3960745
6-9 months     PROBIT           BELARUS                        0                    NA                1.5762458   1.5448072   1.6076845
6-9 months     PROBIT           BELARUS                        1                    NA                1.6324547   1.5633190   1.7015904
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2828708   1.2560652   1.3096763
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2785397   1.2040400   1.3530394
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4440690   1.3309948   1.5571432
6-9 months     ResPak           PAKISTAN                       1                    NA                1.4630330   1.2197473   1.7063188
6-9 months     SAS-CompFeed     INDIA                          0                    NA                1.1941087   1.1611563   1.2270612
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2770453   1.2257855   1.3283051
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                1.1143339   1.0670184   1.1616493
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                1.1848134   1.1133994   1.2562274
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3241788   1.2866666   1.3616910
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3050297   1.1507375   1.4593219
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.3378501   1.3177856   1.3579146
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.4308332   1.3703993   1.4912672
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.8814613   0.8058037   0.9571190
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.9738058   0.8217716   1.1258400
9-12 months    CMIN             BANGLADESH                     0                    NA                0.9236130   0.8523422   0.9948839
9-12 months    CMIN             BANGLADESH                     1                    NA                1.0214483   0.9193753   1.1235213
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.9568800   0.9309125   0.9828474
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.9253146   0.8600121   0.9906171
9-12 months    COHORTS          INDIA                          0                    NA                1.0040095   0.9915374   1.0164816
9-12 months    COHORTS          INDIA                          1                    NA                0.9543016   0.9180560   0.9905471
9-12 months    CONTENT          PERU                           0                    NA                1.1905590   1.1485870   1.2325310
9-12 months    CONTENT          PERU                           1                    NA                1.3423274   1.2322170   1.4524378
9-12 months    EE               PAKISTAN                       0                    NA                0.9077877   0.8637250   0.9518504
9-12 months    EE               PAKISTAN                       1                    NA                0.9241890   0.8668394   0.9815386
9-12 months    GMS-Nepal        NEPAL                          0                    NA                1.0047641   0.9723779   1.0371502
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.9658556   0.8567403   1.0749709
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                1.0403602   0.9976523   1.0830681
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                1.0334902   0.9459565   1.1210239
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                1.0721007   1.0343451   1.1098564
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1670170   1.0768868   1.2571471
9-12 months    IRC              INDIA                          0                    NA                1.1234818   1.0804371   1.1665264
9-12 months    IRC              INDIA                          1                    NA                1.1234120   1.0340399   1.2127841
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                1.0646268   1.0446994   1.0845541
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                1.0899594   1.0554724   1.1244465
9-12 months    Keneba           GAMBIA                         0                    NA                0.9868722   0.9424534   1.0312910
9-12 months    Keneba           GAMBIA                         1                    NA                0.9220449   0.7883435   1.0557463
9-12 months    LCNI-5           MALAWI                         0                    NA                1.1091346   1.0500435   1.1682258
9-12 months    LCNI-5           MALAWI                         1                    NA                1.0821648   1.0054966   1.1588330
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9795223   0.9384579   1.0205866
9-12 months    MAL-ED           BANGLADESH                     1                    NA                1.0410767   0.9341621   1.1479914
9-12 months    MAL-ED           BRAZIL                         0                    NA                1.3040149   1.2227795   1.3852503
9-12 months    MAL-ED           BRAZIL                         1                    NA                1.2554395   1.0928553   1.4180237
9-12 months    MAL-ED           INDIA                          0                    NA                0.9786142   0.9363180   1.0209105
9-12 months    MAL-ED           INDIA                          1                    NA                0.9966228   0.9089421   1.0843036
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0938785   1.0510717   1.1366853
9-12 months    MAL-ED           NEPAL                          1                    NA                1.0545130   0.9250808   1.1839451
9-12 months    MAL-ED           PERU                           0                    NA                1.0878143   1.0342685   1.1413601
9-12 months    MAL-ED           PERU                           1                    NA                1.1689128   1.0136446   1.3241810
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                1.0206004   0.9553348   1.0858660
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.9621212   0.6980800   1.2261624
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8258948   0.7377233   0.9140664
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7440570   0.5382726   0.9498414
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                1.0882269   1.0508207   1.1256331
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                1.0904719   0.9918555   1.1890884
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1178368   1.0900008   1.1456728
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1586949   1.0819939   1.2353960
9-12 months    PROBIT           BELARUS                        0                    NA                1.3717499   1.3204141   1.4230857
9-12 months    PROBIT           BELARUS                        1                    NA                1.4024888   1.3399618   1.4650157
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0511724   1.0226352   1.0797095
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0398771   0.9576362   1.1221181
9-12 months    ResPak           PAKISTAN                       0                    NA                1.1115486   0.9558245   1.2672726
9-12 months    ResPak           PAKISTAN                       1                    NA                1.3976707   1.2162734   1.5790679
9-12 months    SAS-CompFeed     INDIA                          0                    NA                1.0049410   0.9687987   1.0410834
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.9859916   0.9232998   1.0486835
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.7918159   0.6184522   0.9651796
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.8394747   0.6199707   1.0589787
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0955943   1.0607488   1.1304398
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9500440   0.7993863   1.1007018
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                1.0790797   1.0602897   1.0978697
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1006124   1.0428629   1.1583619
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8469646   0.7641648   0.9297643
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8775180   0.7638659   0.9911700
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8371071   0.7635935   0.9106208
12-15 months   CMIN             BANGLADESH                     1                    NA                0.9278046   0.8461661   1.0094431
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.7847856   0.7546632   0.8149079
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.7885106   0.7348614   0.8421598
12-15 months   CONTENT          PERU                           0                    NA                0.9279699   0.8825693   0.9733704
12-15 months   CONTENT          PERU                           1                    NA                0.9409543   0.8359824   1.0459262
12-15 months   EE               PAKISTAN                       0                    NA                0.9812815   0.9359780   1.0265851
12-15 months   EE               PAKISTAN                       1                    NA                1.0455447   0.9993601   1.0917292
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8672915   0.8395190   0.8950640
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9391652   0.8384625   1.0398679
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                1.0105934   0.9384142   1.0827726
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                1.0068043   0.9007080   1.1129005
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9735106   0.9177414   1.0292798
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9368604   0.8699972   1.0037236
12-15 months   IRC              INDIA                          0                    NA                0.9507040   0.9071380   0.9942700
12-15 months   IRC              INDIA                          1                    NA                0.9892884   0.8557073   1.1228696
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.9483301   0.9294642   0.9671961
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.9240283   0.8960525   0.9520041
12-15 months   Keneba           GAMBIA                         0                    NA                0.9362612   0.9038317   0.9686908
12-15 months   Keneba           GAMBIA                         1                    NA                0.9481984   0.8583824   1.0380143
12-15 months   LCNI-5           MALAWI                         0                    NA                0.9932605   0.8824015   1.1041194
12-15 months   LCNI-5           MALAWI                         1                    NA                0.9108097   0.7419693   1.0796501
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.9076321   0.8635325   0.9517317
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9491863   0.8500973   1.0482753
12-15 months   MAL-ED           BRAZIL                         0                    NA                1.1529335   1.0898335   1.2160336
12-15 months   MAL-ED           BRAZIL                         1                    NA                1.0629729   0.8998153   1.2261306
12-15 months   MAL-ED           INDIA                          0                    NA                0.9108750   0.8686112   0.9531388
12-15 months   MAL-ED           INDIA                          1                    NA                0.9084808   0.8050242   1.0119374
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9482608   0.9056485   0.9908730
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9751082   0.8757502   1.0744662
12-15 months   MAL-ED           PERU                           0                    NA                0.8908002   0.8443903   0.9372102
12-15 months   MAL-ED           PERU                           1                    NA                0.8979661   0.7234508   1.0724814
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.9029021   0.8439986   0.9618056
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.0554554   0.8447675   1.2661432
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8626379   0.7920458   0.9332299
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8220739   0.6671653   0.9769825
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                0.7378923   0.6872123   0.7885724
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                0.6523578   0.5739319   0.7307836
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9719444   0.9460217   0.9978671
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9663523   0.8932687   1.0394359
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9646349   0.9369184   0.9923515
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9146587   0.8371552   0.9921623
12-15 months   ResPak           PAKISTAN                       0                    NA                1.3145738   1.0946866   1.5344610
12-15 months   ResPak           PAKISTAN                       1                    NA                1.2367869   1.0452851   1.4282887
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.8324482   0.7931630   0.8717334
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8362208   0.7700780   0.9023636
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                1.0690074   0.9631595   1.1748553
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                0.9605825   0.8030908   1.1180742
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9236812   0.8863040   0.9610583
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0406938   0.8664207   1.2149669
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.9223995   0.8944205   0.9503785
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9069965   0.8159410   0.9980519
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7550257   0.6839422   0.8261092
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6568080   0.5236323   0.7899838
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7378707   0.6723522   0.8033892
15-18 months   CMIN             BANGLADESH                     1                    NA                0.7629074   0.6777994   0.8480155
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.7407830   0.7075734   0.7739926
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.7607625   0.6945946   0.8269304
15-18 months   CONTENT          PERU                           0                    NA                0.9793955   0.9320131   1.0267778
15-18 months   CONTENT          PERU                           1                    NA                1.0530797   0.8982600   1.2078994
15-18 months   EE               PAKISTAN                       0                    NA                0.8425298   0.8005738   0.8844857
15-18 months   EE               PAKISTAN                       1                    NA                0.8311383   0.7809191   0.8813575
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7493571   0.7143750   0.7843392
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7821076   0.6703656   0.8938495
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9311210   0.8960187   0.9662232
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.8914329   0.7779669   1.0048989
15-18 months   IRC              INDIA                          0                    NA                0.8526705   0.8141055   0.8912354
15-18 months   IRC              INDIA                          1                    NA                0.9074332   0.7400613   1.0748051
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                0.8630019   0.8439538   0.8820501
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.8521290   0.8241316   0.8801264
15-18 months   Keneba           GAMBIA                         0                    NA                0.8813389   0.8490463   0.9136315
15-18 months   Keneba           GAMBIA                         1                    NA                0.8294410   0.7215862   0.9372958
15-18 months   LCNI-5           MALAWI                         0                    NA                0.8379520   0.7364458   0.9394583
15-18 months   LCNI-5           MALAWI                         1                    NA                0.8056364   0.7135071   0.8977657
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8283758   0.7879307   0.8688208
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.8010522   0.7111132   0.8909912
15-18 months   MAL-ED           BRAZIL                         0                    NA                1.0089602   0.9455601   1.0723604
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.9423743   0.7886658   1.0960828
15-18 months   MAL-ED           INDIA                          0                    NA                0.8524555   0.8122934   0.8926176
15-18 months   MAL-ED           INDIA                          1                    NA                0.8018123   0.7191531   0.8844715
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8587554   0.8138859   0.9036249
15-18 months   MAL-ED           NEPAL                          1                    NA                0.7081012   0.6185289   0.7976734
15-18 months   MAL-ED           PERU                           0                    NA                0.8451533   0.8009233   0.8893834
15-18 months   MAL-ED           PERU                           1                    NA                0.9059494   0.7744147   1.0374842
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8927962   0.8362228   0.9493696
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8375641   0.7032446   0.9718836
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6804223   0.6133356   0.7475089
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7196415   0.5734030   0.8658799
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                0.7672584   0.7221851   0.8123317
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                0.7994085   0.7126936   0.8861234
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9215132   0.8967585   0.9462679
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8951562   0.8341446   0.9561678
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8600951   0.8348617   0.8853286
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8179045   0.7380767   0.8977324
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.9084543   0.8638512   0.9530573
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.8945258   0.8270279   0.9620237
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.8069840   0.7606047   0.8533633
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.7758474   0.7200691   0.8316257
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9375844   0.8935379   0.9816309
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9427541   0.8129627   1.0725455
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.8051320   0.7728623   0.8374017
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7604366   0.6805174   0.8403558
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6622657   0.5915045   0.7330269
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8366068   0.6958988   0.9773147
18-21 months   CMIN             BANGLADESH                     0                    NA                0.7914096   0.7269568   0.8558625
18-21 months   CMIN             BANGLADESH                     1                    NA                0.8204633   0.7464524   0.8944741
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.7480410   0.7164217   0.7796604
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7527522   0.6879320   0.8175724
18-21 months   CONTENT          PERU                           0                    NA                0.9249920   0.8799271   0.9700569
18-21 months   CONTENT          PERU                           1                    NA                0.8065198   0.6477817   0.9652578
18-21 months   EE               PAKISTAN                       0                    NA                0.7351532   0.6977658   0.7725405
18-21 months   EE               PAKISTAN                       1                    NA                0.6901230   0.6235625   0.7566835
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9097646   0.8703451   0.9491842
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8749414   0.8229237   0.9269590
18-21 months   IRC              INDIA                          0                    NA                0.7618108   0.7196236   0.8039979
18-21 months   IRC              INDIA                          1                    NA                0.7456135   0.6637922   0.8274349
18-21 months   Keneba           GAMBIA                         0                    NA                0.8197685   0.7850108   0.8545262
18-21 months   Keneba           GAMBIA                         1                    NA                0.7985543   0.6748784   0.9222303
18-21 months   LCNI-5           MALAWI                         0                    NA                0.8479959   0.7957677   0.9002240
18-21 months   LCNI-5           MALAWI                         1                    NA                0.7607259   0.6708308   0.8506209
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8222139   0.7851123   0.8593155
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.7662958   0.6771877   0.8554039
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.9036788   0.8333186   0.9740389
18-21 months   MAL-ED           BRAZIL                         1                    NA                1.0186961   0.7189539   1.3184384
18-21 months   MAL-ED           INDIA                          0                    NA                0.8851476   0.8468338   0.9234613
18-21 months   MAL-ED           INDIA                          1                    NA                0.8447344   0.7553269   0.9341418
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8081802   0.7683067   0.8480536
18-21 months   MAL-ED           NEPAL                          1                    NA                0.8930916   0.7726694   1.0135138
18-21 months   MAL-ED           PERU                           0                    NA                0.8459595   0.7995493   0.8923696
18-21 months   MAL-ED           PERU                           1                    NA                0.8094737   0.6611391   0.9578083
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.7838499   0.7243677   0.8433321
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7676474   0.6176271   0.9176678
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7354927   0.6614965   0.8094888
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7878388   0.6241777   0.9514999
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                0.7342505   0.6942174   0.7742835
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                0.7043375   0.6221354   0.7865395
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7884998   0.7631250   0.8138747
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8569395   0.7999198   0.9139592
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8300733   0.8048493   0.8552974
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.9228886   0.8489965   0.9967807
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6794235   0.6427438   0.7161033
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6905569   0.5997146   0.7813993
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6896089   0.6185255   0.7606924
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7700540   0.6526595   0.8874485
21-24 months   CMIN             BANGLADESH                     0                    NA                0.7286701   0.6541591   0.8031810
21-24 months   CMIN             BANGLADESH                     1                    NA                0.7935324   0.7042070   0.8828579
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.6784054   0.6514512   0.7053595
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.6769691   0.6312076   0.7227307
21-24 months   CONTENT          PERU                           0                    NA                0.9172440   0.8335438   1.0009443
21-24 months   CONTENT          PERU                           1                    NA                1.0528025   0.8106681   1.2949369
21-24 months   EE               PAKISTAN                       0                    NA                0.6839558   0.6393448   0.7285668
21-24 months   EE               PAKISTAN                       1                    NA                0.5944638   0.5295736   0.6593541
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.8048051   0.7532695   0.8563406
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.7695432   0.6837216   0.8553647
21-24 months   IRC              INDIA                          0                    NA                0.7140044   0.6709073   0.7571014
21-24 months   IRC              INDIA                          1                    NA                0.6696147   0.5428768   0.7963526
21-24 months   Keneba           GAMBIA                         0                    NA                0.7135385   0.6784072   0.7486699
21-24 months   Keneba           GAMBIA                         1                    NA                0.7616651   0.6590233   0.8643070
21-24 months   LCNI-5           MALAWI                         0                    NA                0.7560035   0.6961474   0.8158597
21-24 months   LCNI-5           MALAWI                         1                    NA                0.7426500   0.6731842   0.8121158
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7734921   0.7355166   0.8114676
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.7471394   0.6499035   0.8443753
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.7986868   0.7511224   0.8462512
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.7766733   0.6642107   0.8891358
21-24 months   MAL-ED           INDIA                          0                    NA                0.8288314   0.7940242   0.8636387
21-24 months   MAL-ED           INDIA                          1                    NA                0.8082396   0.7471444   0.8693348
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7796272   0.7406884   0.8185661
21-24 months   MAL-ED           NEPAL                          1                    NA                0.8109806   0.6264221   0.9955391
21-24 months   MAL-ED           PERU                           0                    NA                0.7711159   0.7199110   0.8223209
21-24 months   MAL-ED           PERU                           1                    NA                0.6918511   0.5843846   0.7993176
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8342766   0.7796329   0.8889203
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8853729   0.7340539   1.0366919
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7264925   0.6556987   0.7972862
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6767449   0.5223545   0.8311352
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.7230077   0.6852308   0.7607847
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.6885197   0.5905241   0.7865153
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.8038777   0.7774555   0.8303000
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7711457   0.7054827   0.8368087
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7674677   0.7406080   0.7943275
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7249925   0.6479759   0.8020092
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6993520   0.6581172   0.7405869
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6375989   0.5392374   0.7359604


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     CMIN             BANGLADESH                     NA                   NA                3.4261247   3.2881156   3.5641338
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5828382   2.5396287   2.6260477
0-3 months     COHORTS          INDIA                          NA                   NA                3.5089109   3.4948295   3.5229924
0-3 months     EE               PAKISTAN                       NA                   NA                3.0775986   2.9949164   3.1602807
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1382493   3.0275242   3.2489743
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7233830   3.7130769   3.7336890
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1094185   3.0623536   3.1564834
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3391231   3.2734666   3.4047796
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3482250   3.2503342   3.4461159
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6234175   3.5314103   3.7154247
0-3 months     MAL-ED           PERU                           NA                   NA                3.0519536   2.9854854   3.1184219
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1817712   3.0847973   3.2787451
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2644991   3.1874675   3.3415308
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1100116   3.0566021   3.1634210
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8134007   2.6999348   2.9268665
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ResPak           PAKISTAN                       NA                   NA                3.0203213   2.7415636   3.2990789
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3370617   3.3165207   3.3576028
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     CMIN             BANGLADESH                     NA                   NA                1.9478477   1.8775639   2.0181315
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     COHORTS          INDIA                          NA                   NA                1.8736888   1.8616349   1.8857427
3-6 months     CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     EE               PAKISTAN                       NA                   NA                2.0947237   2.0366412   2.1528063
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9202003   1.9097349   1.9306657
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8983676   1.8684335   1.9283018
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9931660   1.9537919   2.0325400
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9704262   1.8897530   2.0510994
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915582   2.0504573   2.1326590
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ResPak           PAKISTAN                       NA                   NA                2.0648890   1.9235221   2.2062560
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7956732   1.7598168   1.8315297
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9753863   1.9557273   1.9950453
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     CMIN             BANGLADESH                     NA                   NA                1.2658739   1.2051613   1.3265866
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1069375   1.0799105   1.1339645
6-9 months     COHORTS          INDIA                          NA                   NA                1.1952626   1.1843432   1.2061820
6-9 months     CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     EE               PAKISTAN                       NA                   NA                1.1779411   1.1309380   1.2249441
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                1.1702813   1.1261029   1.2144597
6-9 months     IRC              INDIA                          NA                   NA                1.3724009   1.3237927   1.4210091
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3242433   1.3035625   1.3449241
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4055393   1.3547714   1.4563072
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4623324   1.4258089   1.4988559
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2555950   1.2150667   1.2961234
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5766123   1.5455111   1.6077135
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ResPak           PAKISTAN                       NA                   NA                1.4489758   1.3441442   1.5538073
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2164378   1.1971945   1.2356811
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3229048   1.2864138   1.3593957
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3469775   1.3279219   1.3660330
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    CMIN             BANGLADESH                     NA                   NA                0.9627471   0.9031556   1.0223387
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9510823   0.9267136   0.9754510
9-12 months    COHORTS          INDIA                          NA                   NA                0.9981724   0.9863625   1.0099822
9-12 months    CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    EE               PAKISTAN                       NA                   NA                0.9148816   0.8796496   0.9501135
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                1.0385134   0.9994107   1.0776161
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0927974   1.0590753   1.1265195
9-12 months    IRC              INDIA                          NA                   NA                1.1234734   1.0841051   1.1628417
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0714791   1.0535276   1.0894307
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9809254   0.9387401   1.0231107
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0885809   1.0534446   1.1237171
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3719414   1.3218894   1.4219934
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ResPak           PAKISTAN                       NA                   NA                1.1892103   1.0637355   1.3146851
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.9997324   0.9682232   1.0312416
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0864385   1.0523722   1.1205048
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0811847   1.0633156   1.0990539
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   CMIN             BANGLADESH                     NA                   NA                0.8739530   0.8186981   0.9292079
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7856274   0.7593482   0.8119066
12-15 months   CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   EE               PAKISTAN                       NA                   NA                1.0100593   0.9773974   1.0427213
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                1.0096168   0.9494649   1.0697687
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9658283   0.9236309   1.0080257
12-15 months   IRC              INDIA                          NA                   NA                0.9553539   0.9137750   0.9969329
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9415306   0.9256966   0.9573645
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9373310   0.9067296   0.9679324
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.9588519   0.8629996   1.0547041
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7241623   0.6797013   0.7686233
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ResPak           PAKISTAN                       NA                   NA                1.2892085   1.1282289   1.4501880
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8334688   0.7956713   0.8712664
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9312256   0.8944427   0.9680085
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9205920   0.8936831   0.9475009
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   CMIN             BANGLADESH                     NA                   NA                0.7480083   0.6959380   0.8000786
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7450933   0.7153873   0.7747993
15-18 months   CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9228413   0.8852625   0.9604201
15-18 months   IRC              INDIA                          NA                   NA                0.8591216   0.8197594   0.8984837
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8599177   0.8433915   0.8764438
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8768327   0.8458829   0.9077824
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.8247565   0.7538318   0.8956812
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7727719   0.7325606   0.8129832
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9046837   0.8805433   0.9288241
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9379347   0.8959416   0.9799278
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7994243   0.7694755   0.8293732
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   CMIN             BANGLADESH                     NA                   NA                0.8028550   0.7540631   0.8516469
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7490765   0.7205881   0.7775649
18-21 months   CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7598022   0.7214752   0.7981291
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8177069   0.7841023   0.8513114
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8179911   0.7716915   0.8642907
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7291468   0.6930874   0.7652062
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6808824   0.6468583   0.7149065
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   CMIN             BANGLADESH                     NA                   NA                0.7554929   0.6980149   0.8129708
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6780538   0.6548190   0.7012886
21-24 months   CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7084129   0.6674749   0.7493508
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7181315   0.6848678   0.7513952
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7513135   0.7054477   0.7971793
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7172178   0.6817161   0.7527194
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6907415   0.6526782   0.7288047


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.3007307   -0.3737833    0.9752447
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.1466024   -0.1491425    0.4423474
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.4461978    0.2248591    0.6675365
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                  0.3058150    0.2583209    0.3533091
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.4290937    0.2658287    0.5923587
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                  0.2300119    0.0976717    0.3623521
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.9612412    0.5901949    1.3322875
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                  0.2166734    0.1974524    0.2358944
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                  0.2265060    0.1557195    0.2972925
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                  1.3133209    1.0143721    1.6122698
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                  0.2281799    0.0335220    0.4228378
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.8974950    0.5806058    1.2143841
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.1914621   -0.0858413    0.4687654
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.5594830    0.2098732    0.9090927
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.1909046   -0.0121006    0.3939098
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.4175032    0.0450590    0.7899474
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2690215    0.0657085    0.4723345
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                  0.3761358    0.2162128    0.5360588
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.2302675    0.1266306    0.3339044
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.4072941    0.2861822    0.5284060
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                  0.1610350    0.0297022    0.2923677
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  1.3412451    0.8152032    1.8672869
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.1317280    0.0113088    0.2521472
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.7803938    0.7135273    0.8472603
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.2647155    0.0106057    0.5188254
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                  0.2375931    0.0924583    0.3827279
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.1311097    0.0304132    0.2318062
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.1180535    0.0791151    0.1569919
3-6 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    0                  0.1540839   -0.0038533    0.3120211
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.1010697   -0.0162434    0.2183828
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.1752043    0.0660775    0.2843311
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0287332   -0.1594116    0.2168781
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.1303691    0.1099593    0.1507790
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.1621029    0.0981003    0.2261055
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.1058842   -0.0159197    0.2276881
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0785594   -0.0752948    0.2324135
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                  0.2387992    0.0342507    0.4433477
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.2766961    0.1037459    0.4496463
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.3705150    0.2143371    0.5266928
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                  0.2461564    0.0462904    0.4460224
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.2892563   -0.0008219    0.5793346
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1121718   -0.0945251    0.3188688
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                  0.0297601   -0.1173369    0.1768571
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.1607493    0.0461556    0.2753430
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.3112817    0.2491539    0.3734095
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.2244122    0.1054653    0.3433591
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.4214652    0.0690213    0.7739092
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                  0.1200113    0.0439880    0.1960346
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2038096    0.0558897    0.3517294
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0947663    0.0291225    0.1604101
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0324024   -0.1962275    0.1314228
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                 -0.0058505   -0.1336833    0.1219822
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0876616    0.0129584    0.1623648
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0371900    0.0022472    0.0721328
6-9 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    0                  0.0562325   -0.0978521    0.2103172
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0488023   -0.0481301    0.1457346
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                  0.1284109   -0.0325466    0.2893685
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                  0.1226781    0.0142049    0.2311514
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.0870791   -0.0786421    0.2528003
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                  0.0369044   -0.0066795    0.0804884
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                  0.0170206   -0.1577585    0.1917997
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                  0.0743758   -0.0022100    0.1509615
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0687994   -0.1772198    0.0396210
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.1403332   -0.3282465    0.0475801
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0481068   -0.1351156    0.2313292
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                 -0.0621437   -0.2304032    0.1061158
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0884473   -0.2525770    0.0756823
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0556847   -0.2101348    0.3215042
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0786978   -0.1683946    0.3257902
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                 -0.0157867   -0.1328707    0.1012973
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0161131   -0.1037306    0.0715044
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0562088   -0.0121928    0.1246104
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                 -0.0043311   -0.0835065    0.0748443
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0189640   -0.2493152    0.2872433
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0829366    0.0093749    0.1564982
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0704795   -0.0151867    0.1561458
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0191490   -0.1779358    0.1396377
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0929831    0.0293055    0.1566608
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0923445   -0.0774745    0.2621634
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                  0.0978352   -0.0266575    0.2223280
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0315653   -0.1018414    0.0387107
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0497079   -0.0880393   -0.0113766
9-12 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    0                  0.1517683    0.0339297    0.2696070
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0164013   -0.0559209    0.0887235
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0389085   -0.1527286    0.0749116
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.0068700   -0.1042667    0.0905267
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0949162   -0.0078521    0.1976846
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0000698   -0.0992676    0.0991281
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0253327   -0.0129726    0.0636379
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0648273   -0.2057141    0.0760595
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                 -0.0269698   -0.1237674    0.0698278
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0615545   -0.0529751    0.1760840
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0485753   -0.2303247    0.1331740
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0180086   -0.0793407    0.1153579
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                 -0.0393656   -0.1756928    0.0969616
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0810985   -0.0831433    0.2453403
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0584792   -0.3304670    0.2135086
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0818378   -0.3057160    0.1420404
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                  0.0022450   -0.1032274    0.1077174
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0408582   -0.0407378    0.1224541
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0307389   -0.0506714    0.1121491
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0112952   -0.0983466    0.0757562
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                  0.2861221    0.0470511    0.5251931
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0189494   -0.0907240    0.0528252
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0476588   -0.2320499    0.3273675
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1455502   -0.3001852    0.0090847
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0215327   -0.0391968    0.0822621
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0305534   -0.1100616    0.1711685
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.0906975   -0.0191620    0.2005569
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0037250   -0.0578022    0.0652522
12-15 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    0                  0.0129844   -0.1013848    0.1273536
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0642631   -0.0004318    0.1289580
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0718737   -0.0325885    0.1763359
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                 -0.0037891   -0.1321100    0.1245318
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0366502   -0.1366769    0.0633765
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0385844   -0.1019215    0.1790904
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0243018   -0.0578012    0.0091975
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                  0.0119371   -0.0835541    0.1074284
12-15 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         1                    0                 -0.0824508   -0.2844330    0.1195313
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0415542   -0.0669051    0.1500134
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.0899606   -0.2648950    0.0849738
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                 -0.0023942   -0.1141507    0.1093622
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                  0.0268474   -0.0812628    0.1349576
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0071659   -0.1734151    0.1877469
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1525533   -0.0662137    0.3713203
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0405639   -0.2107988    0.1296709
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0855345   -0.1789105    0.0078415
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0055921   -0.0831369    0.0719527
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0499762   -0.1322866    0.0323342
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0777869   -0.3693745    0.2138007
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0037726   -0.0628687    0.0704139
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.1084249   -0.2981811    0.0813312
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1170126   -0.0612236    0.2952489
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0154030   -0.1106602    0.0798541
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0982177   -0.2491768    0.0527414
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0250367   -0.0823693    0.1324427
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0199795   -0.0540548    0.0940137
15-18 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    0                  0.0736842   -0.0882238    0.2355923
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0113915   -0.0768306    0.0540475
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0327504   -0.0843394    0.1498402
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0396881   -0.1574438    0.0780676
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0547627   -0.1169947    0.2265202
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0108730   -0.0430169    0.0212710
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.0518979   -0.1644833    0.0606874
15-18 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         1                    0                 -0.0323156   -0.1693971    0.1047659
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0273236   -0.1259381    0.0712909
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0665859   -0.2328565    0.0996846
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                 -0.0506432   -0.1425428    0.0412564
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.1506542   -0.2508363   -0.0504721
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0607961   -0.0779760    0.1995682
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0552321   -0.2009794    0.0905152
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0392192   -0.1216730    0.2001114
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                  0.0321501   -0.0655795    0.1298797
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0263570   -0.0921993    0.0394853
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                 -0.0421906   -0.1259116    0.0415304
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.0139285   -0.1167758    0.0889189
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0311365   -0.1036780    0.0414049
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0051698   -0.1318919    0.1422314
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0446954   -0.1308836    0.0414929
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1743411    0.0168423    0.3318399
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                  0.0290536   -0.0690880    0.1271952
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0047111   -0.0674099    0.0768322
18-21 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    0                 -0.1184722   -0.2834832    0.0465387
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0450302   -0.1213722    0.0313119
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0348233   -0.1000899    0.0304434
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0161973   -0.1082543    0.0758597
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                 -0.0212141   -0.1496814    0.1072531
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0872700   -0.1912358    0.0166958
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                 -0.0559181   -0.1524416    0.0406054
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                  0.1150174   -0.1928722    0.4229069
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0404132   -0.1376841    0.0568577
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0849115   -0.0419404    0.2117633
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                 -0.0364857   -0.1919112    0.1189397
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0162025   -0.1775848    0.1451798
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0523461   -0.1272656    0.2319579
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0299130   -0.1213451    0.0615191
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0684396    0.0060287    0.1308506
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0928153    0.0147365    0.1708941
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0111334   -0.0868346    0.1091014
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0804450   -0.0567931    0.2176832
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                  0.0648624   -0.0514601    0.1811848
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                 -0.0014362   -0.0545460    0.0516735
21-24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    0                  0.1355585   -0.1206344    0.3917514
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0894920   -0.1682377   -0.0107463
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0352619   -0.1353681    0.0648443
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0443897   -0.1782548    0.0894754
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                  0.0481266   -0.0603611    0.1566142
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                 -0.0133535   -0.1050501    0.0783430
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                 -0.0263527   -0.1307412    0.0780358
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0220135   -0.1441209    0.1000938
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0205919   -0.0909066    0.0497229
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                  0.0313533   -0.1572681    0.2199748
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0792648   -0.1983068    0.0397771
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0510962   -0.1097869    0.2119794
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0497476   -0.2195950    0.1200998
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0344880   -0.1395129    0.0705370
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0327320   -0.1035117    0.0380476
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0424752   -0.1240412    0.0390908
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0617531   -0.1684082    0.0449020


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0546783   -0.0703591    0.1797157
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0579591   -0.0609558    0.1768740
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0232905    0.0096697    0.0369114
0-3 months     COHORTS          INDIA                          0                    NA                 0.0358085    0.0297527    0.0418643
0-3 months     EE               PAKISTAN                       0                    NA                 0.1883481    0.1127668    0.2639294
0-3 months     GMS-Nepal        NEPAL                          0                    NA                 0.0397663    0.0156685    0.0638641
0-3 months     IRC              INDIA                          0                    NA                 0.1096376    0.0572452    0.1620300
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0687255    0.0623484    0.0751026
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0688167    0.0462871    0.0913463
0-3 months     Keneba           GAMBIA                         0                    NA                 0.0751351    0.0512018    0.0990684
0-3 months     MAL-ED           BANGLADESH                     0                    NA                 0.0384995    0.0039363    0.0730627
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0854757    0.0354018    0.1355497
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0292947   -0.0142998    0.0728893
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0573829    0.0126635    0.1021022
0-3 months     MAL-ED           PERU                           0                    NA                 0.0230526   -0.0025839    0.0486892
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0395738    0.0005882    0.0785593
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0424771    0.0079316    0.0770225
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0591450    0.0315799    0.0867102
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0316179    0.0162552    0.0469806
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0028175    0.0000146    0.0056204
0-3 months     PROVIDE          BANGLADESH                     0                    NA                 0.0161035    0.0024465    0.0297605
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.4191391    0.2050901    0.6331880
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0358309    0.0011992    0.0704625
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0761622    0.0678916    0.0844328
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0543227    0.0008184    0.1078271
3-6 months     CMIN             BANGLADESH                     0                    NA                 0.0911844    0.0330358    0.1493329
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0182413    0.0038846    0.0325981
3-6 months     COHORTS          INDIA                          0                    NA                 0.0136934    0.0090844    0.0183024
3-6 months     CONTENT          PERU                           0                    NA                 0.0144004   -0.0015417    0.0303424
3-6 months     EE               PAKISTAN                       0                    NA                 0.0440375   -0.0074146    0.0954897
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0291385    0.0100512    0.0482257
3-6 months     IRC              INDIA                          0                    NA                 0.0034740   -0.0192927    0.0262407
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0397605    0.0333466    0.0461744
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0453712    0.0269712    0.0637712
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0103080   -0.0016636    0.0222795
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0122430   -0.0120154    0.0365014
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0287018    0.0019374    0.0554663
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0421059    0.0128081    0.0714037
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0429352    0.0192621    0.0666083
3-6 months     MAL-ED           PERU                           0                    NA                 0.0313458    0.0040511    0.0586404
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0297589   -0.0020721    0.0615899
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0178349   -0.0154397    0.0511094
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0046660   -0.0184157    0.0277477
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0224355    0.0059136    0.0389574
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0021285    0.0005791    0.0036780
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0228915    0.0095911    0.0361920
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.1080680    0.0131672    0.2029688
3-6 months     SAS-CompFeed     INDIA                          0                    NA                 0.0309638    0.0143954    0.0475322
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0141108    0.0035715    0.0246502
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0095717    0.0029033    0.0162401
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0065219   -0.0395278    0.0264840
6-9 months     CMIN             BANGLADESH                     0                    NA                -0.0023138   -0.0528709    0.0482433
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0136505    0.0018164    0.0254845
6-9 months     COHORTS          INDIA                          0                    NA                 0.0043830    0.0002536    0.0085124
6-9 months     CONTENT          PERU                           0                    NA                 0.0052554   -0.0093119    0.0198226
6-9 months     EE               PAKISTAN                       0                    NA                 0.0210299   -0.0208288    0.0628886
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0202895   -0.0054854    0.0460643
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                 0.0316774    0.0027505    0.0606044
6-9 months     IRC              INDIA                          0                    NA                 0.0104837   -0.0096575    0.0306249
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0099089   -0.0018326    0.0216503
6-9 months     Keneba           GAMBIA                         0                    NA                 0.0016550   -0.0153432    0.0186533
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0271656   -0.0009632    0.0552944
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0107499   -0.0280050    0.0065051
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0170101   -0.0406684    0.0066482
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0073206   -0.0206507    0.0352919
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0072951   -0.0272165    0.0126263
6-9 months     MAL-ED           PERU                           0                    NA                -0.0119133   -0.0343429    0.0105163
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0055444   -0.0210101    0.0320988
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0129414   -0.0278707    0.0537536
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0024726   -0.0208180    0.0158728
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0021781   -0.0140289    0.0096727
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0003664   -0.0013373    0.0020701
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0004523   -0.0087209    0.0078163
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0049068   -0.0645216    0.0743351
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0223291    0.0027022    0.0419560
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0282816   -0.0063064    0.0628696
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012740   -0.0118413    0.0092932
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0091274    0.0028371    0.0154176
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0180611   -0.0153974    0.0515195
9-12 months    CMIN             BANGLADESH                     0                    NA                 0.0391341   -0.0112172    0.0894854
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0057977   -0.0187294    0.0071340
9-12 months    COHORTS          INDIA                          0                    NA                -0.0058372   -0.0103596   -0.0013147
9-12 months    CONTENT          PERU                           0                    NA                 0.0143178    0.0016919    0.0269437
9-12 months    EE               PAKISTAN                       0                    NA                 0.0070938   -0.0241991    0.0383867
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0063880   -0.0251204    0.0123445
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0018468   -0.0280324    0.0243388
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0206967   -0.0037317    0.0451250
9-12 months    IRC              INDIA                          0                    NA                -0.0000084   -0.0119121    0.0118954
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0068523   -0.0035161    0.0172208
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0059468   -0.0189296    0.0070360
9-12 months    LCNI-5           MALAWI                         0                    NA                -0.0104805   -0.0481191    0.0271581
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0101223   -0.0089470    0.0291916
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0057589   -0.0274201    0.0159023
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0028560   -0.0126065    0.0183184
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0046414   -0.0207991    0.0115164
9-12 months    MAL-ED           PERU                           0                    NA                 0.0106981   -0.0112513    0.0326475
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0062746   -0.0355506    0.0230014
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0127872   -0.0479849    0.0224105
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0003540   -0.0162767    0.0169847
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0056377   -0.0056713    0.0169467
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0001915   -0.0018163    0.0021993
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0011974   -0.0104299    0.0080351
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0776617    0.0094106    0.1459129
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0052086   -0.0250127    0.0145955
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0188490   -0.0918058    0.1295037
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0091558   -0.0191088    0.0007972
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021050   -0.0038340    0.0080440
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0064079   -0.0231135    0.0359293
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0368459   -0.0083184    0.0820101
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0008418   -0.0130630    0.0147466
12-15 months   CONTENT          PERU                           0                    NA                 0.0011745   -0.0091835    0.0115324
12-15 months   EE               PAKISTAN                       0                    NA                 0.0287778   -0.0004212    0.0579767
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0124132   -0.0057954    0.0306217
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0009766   -0.0340506    0.0320975
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0076823   -0.0282812    0.0129166
12-15 months   IRC              INDIA                          0                    NA                 0.0046499   -0.0123288    0.0216286
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0067996   -0.0162081    0.0026089
12-15 months   Keneba           GAMBIA                         0                    NA                 0.0010698   -0.0074900    0.0096296
12-15 months   LCNI-5           MALAWI                         0                    NA                -0.0344086   -0.1189988    0.0501816
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0064683   -0.0105364    0.0234731
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0107562   -0.0320955    0.0105831
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0003814   -0.0181837    0.0174209
12-15 months   MAL-ED           NEPAL                          0                    NA                 0.0031517   -0.0095888    0.0158921
12-15 months   MAL-ED           PERU                           0                    NA                 0.0009277   -0.0224532    0.0243086
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0167273   -0.0080487    0.0415034
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0062820   -0.0327155    0.0201514
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0137301   -0.0289910    0.0015309
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0008049   -0.0119677    0.0103578
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0048849   -0.0130287    0.0032589
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0253653   -0.1207429    0.0700123
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0010207   -0.0170168    0.0190582
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0422249   -0.1163635    0.0319137
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0075444   -0.0041208    0.0192097
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0018075   -0.0129873    0.0093723
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0211122   -0.0538611    0.0116367
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0101376   -0.0333931    0.0536683
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0043103   -0.0116719    0.0202925
15-18 months   CONTENT          PERU                           0                    NA                 0.0066277   -0.0082440    0.0214994
15-18 months   EE               PAKISTAN                       0                    NA                -0.0048762   -0.0328958    0.0231433
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0055949   -0.0144384    0.0256281
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0082797   -0.0340092    0.0174498
15-18 months   IRC              INDIA                          0                    NA                 0.0064511   -0.0138596    0.0267618
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0030842   -0.0122103    0.0060418
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0045062   -0.0143127    0.0053003
15-18 months   LCNI-5           MALAWI                         0                    NA                -0.0131955   -0.0692432    0.0428521
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0042532   -0.0196617    0.0111552
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0068488   -0.0242130    0.0105153
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0080671   -0.0229049    0.0067708
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0179192   -0.0314255   -0.0044130
15-18 months   MAL-ED           PERU                           0                    NA                 0.0082774   -0.0108238    0.0273786
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0056459   -0.0207048    0.0094129
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063257   -0.0196959    0.0323472
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0055135   -0.0112839    0.0223109
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0037965   -0.0133091    0.0057162
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0039953   -0.0119933    0.0040027
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0037706   -0.0315117    0.0239706
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0121978   -0.0406699    0.0162743
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003504   -0.0089390    0.0096397
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0057077   -0.0167331    0.0053178
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0377263    0.0027021    0.0727504
18-21 months   CMIN             BANGLADESH                     0                    NA                 0.0114454   -0.0272775    0.0501682
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0010355   -0.0148169    0.0168879
18-21 months   CONTENT          PERU                           0                    NA                -0.0103582   -0.0255826    0.0048661
18-21 months   EE               PAKISTAN                       0                    NA                -0.0168420   -0.0455211    0.0118371
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0058691   -0.0169357    0.0051975
18-21 months   IRC              INDIA                          0                    NA                -0.0020086   -0.0134373    0.0094201
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0020616   -0.0145507    0.0104275
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0300048   -0.0659433    0.0059337
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0088292   -0.0243196    0.0066612
18-21 months   MAL-ED           BRAZIL                         0                    NA                 0.0123971   -0.0212293    0.0460234
18-21 months   MAL-ED           INDIA                          0                    NA                -0.0064375   -0.0220520    0.0091770
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0100996   -0.0054083    0.0256075
18-21 months   MAL-ED           PERU                           0                    NA                -0.0045156   -0.0238230    0.0147918
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0016689   -0.0183041    0.0149662
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0082112   -0.0200847    0.0365070
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0051036   -0.0207404    0.0105331
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0092757    0.0005914    0.0179600
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0092644    0.0011253    0.0174034
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0014589   -0.0113797    0.0142974
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0172382   -0.0124009    0.0468773
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0268228   -0.0215882    0.0752337
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0003516   -0.0133518    0.0126487
21-24 months   CONTENT          PERU                           0                    NA                 0.0178366   -0.0189647    0.0546380
21-24 months   EE               PAKISTAN                       0                    NA                -0.0346148   -0.0661933   -0.0030363
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0057739   -0.0222239    0.0106762
21-24 months   IRC              INDIA                          0                    NA                -0.0055915   -0.0225173    0.0113342
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0045930   -0.0057914    0.0149774
21-24 months   LCNI-5           MALAWI                         0                    NA                -0.0046900   -0.0369016    0.0275215
21-24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0040738   -0.0202636    0.0121159
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0025349   -0.0166368    0.0115670
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0032801   -0.0145239    0.0079637
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0037293   -0.0187449    0.0262034
21-24 months   MAL-ED           PERU                           0                    NA                -0.0100654   -0.0256455    0.0055147
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0052183   -0.0113314    0.0217681
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0075597   -0.0334865    0.0183671
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0057900   -0.0234660    0.0118861
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0045424   -0.0144160    0.0053312
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0043287   -0.0127219    0.0040646
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0086106   -0.0235326    0.0063114
