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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/c0c22b2e-fe7b-4ecb-94aa-b9b5a9b68fa3/0214f5bb-6fc5-4312-8677-84ac5b9f7f2c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c0c22b2e-fe7b-4ecb-94aa-b9b5a9b68fa3/0214f5bb-6fc5-4312-8677-84ac5b9f7f2c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c0c22b2e-fe7b-4ecb-94aa-b9b5a9b68fa3/0214f5bb-6fc5-4312-8677-84ac5b9f7f2c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.3822709   3.1590080   3.6055338
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                3.4162788   2.7475861   4.0849715
0-3 months     CMIN             BANGLADESH                     0                    NA                3.3556592   3.1924305   3.5188879
0-3 months     CMIN             BANGLADESH                     1                    NA                3.5763458   3.2828737   3.8698180
0-3 months     COHORTS          GUATEMALA                      0                    NA                2.5600116   2.5166608   2.6033625
0-3 months     COHORTS          GUATEMALA                      1                    NA                3.0361198   2.8122670   3.2599726
0-3 months     COHORTS          INDIA                          0                    NA                3.4734490   3.4589824   3.4879156
0-3 months     COHORTS          INDIA                          1                    NA                3.7811697   3.7366303   3.8257091
0-3 months     EE               PAKISTAN                       0                    NA                2.8832273   2.7862621   2.9801924
0-3 months     EE               PAKISTAN                       1                    NA                3.3292157   3.1978877   3.4605438
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.5569411   3.5011518   3.6127304
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.8056644   3.6878659   3.9234630
0-3 months     IRC              INDIA                          0                    NA                3.0266311   2.9157033   3.1375588
0-3 months     IRC              INDIA                          1                    NA                3.9335857   3.5754035   4.2917678
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                3.6520241   3.6405383   3.6635100
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                3.8801217   3.8631905   3.8970529
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                3.5741818   3.5387840   3.6095795
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                3.7855480   3.7250950   3.8460011
0-3 months     Keneba           GAMBIA                         0                    NA                3.0332244   2.9901967   3.0762521
0-3 months     Keneba           GAMBIA                         1                    NA                4.3516024   4.0382609   4.6649438
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.2965744   3.2278099   3.3653389
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.5205902   3.3337197   3.7074607
0-3 months     MAL-ED           BRAZIL                         0                    NA                3.7132877   3.6038308   3.8227446
0-3 months     MAL-ED           BRAZIL                         1                    NA                4.6486486   4.2708261   5.0264711
0-3 months     MAL-ED           INDIA                          0                    NA                3.3168783   3.2108196   3.4229370
0-3 months     MAL-ED           INDIA                          1                    NA                3.6300805   3.3454752   3.9146858
0-3 months     MAL-ED           NEPAL                          0                    NA                3.5616066   3.4711681   3.6520451
0-3 months     MAL-ED           NEPAL                          1                    NA                3.9334117   3.6321766   4.2346467
0-3 months     MAL-ED           PERU                           0                    NA                3.0296690   2.9589481   3.1003899
0-3 months     MAL-ED           PERU                           1                    NA                3.2135541   3.0028657   3.4242424
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                3.1384221   3.0397659   3.2370783
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.6079038   3.1661610   4.0496466
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2332299   3.1473054   3.3191543
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                3.5641464   3.3621700   3.7661228
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                3.0488534   2.9937325   3.1039743
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                3.3979070   3.2484667   3.5473474
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.0969494   3.0581628   3.1357359
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.3329842   3.2379449   3.4280234
0-3 months     PROBIT           BELARUS                        0                    NA                2.8107194   2.6952709   2.9261678
0-3 months     PROBIT           BELARUS                        1                    NA                3.2288860   3.1676733   3.2900988
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2411848   3.2027148   3.2796549
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.3896287   3.2630266   3.5162308
0-3 months     ResPak           PAKISTAN                       0                    NA                2.6001643   2.2829064   2.9174222
0-3 months     ResPak           PAKISTAN                       1                    NA                3.7915875   3.2870169   4.2961581
0-3 months     SAS-CompFeed     INDIA                          0                    NA                3.3187451   3.2596484   3.3778417
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.4496606   3.3347300   3.5645912
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                3.2629789   3.2420140   3.2839438
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                4.0302662   3.9647147   4.0958176
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.7561738   1.6449772   1.8673704
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.9846899   1.7605243   2.2088554
3-6 months     CMIN             BANGLADESH                     0                    NA                1.8543187   1.7723243   1.9363131
3-6 months     CMIN             BANGLADESH                     1                    NA                2.0995460   1.9823385   2.2167535
3-6 months     COHORTS          GUATEMALA                      0                    NA                1.7447555   1.7127630   1.7767481
3-6 months     COHORTS          GUATEMALA                      1                    NA                1.8801760   1.7849042   1.9754479
3-6 months     COHORTS          INDIA                          0                    NA                1.8595679   1.8468807   1.8722550
3-6 months     COHORTS          INDIA                          1                    NA                1.9798305   1.9427934   2.0168676
3-6 months     CONTENT          PERU                           0                    NA                2.0692521   2.0192146   2.1192897
3-6 months     CONTENT          PERU                           1                    NA                2.1380699   1.9987536   2.2773862
3-6 months     EE               PAKISTAN                       0                    NA                2.0498103   1.9738788   2.1257419
3-6 months     EE               PAKISTAN                       1                    NA                2.1535087   2.0612977   2.2457198
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.6818939   1.6397787   1.7240090
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.8031088   1.6984058   1.9078119
3-6 months     IRC              INDIA                          0                    NA                1.8783156   1.8099638   1.9466675
3-6 months     IRC              INDIA                          1                    NA                1.9143869   1.7389634   2.0898104
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                1.8833230   1.8717637   1.8948824
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                2.0041856   1.9859203   2.0224508
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                1.8511498   1.8167429   1.8855566
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                2.0190738   1.9641626   2.0739850
3-6 months     Keneba           GAMBIA                         0                    NA                1.9839150   1.9418746   2.0259553
3-6 months     Keneba           GAMBIA                         1                    NA                2.0713829   1.9536188   2.1891470
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9128328   1.8597177   1.9659479
3-6 months     MAL-ED           BANGLADESH                     1                    NA                2.0318203   1.8802683   2.1833724
3-6 months     MAL-ED           BRAZIL                         0                    NA                2.1179762   2.0324457   2.2035068
3-6 months     MAL-ED           BRAZIL                         1                    NA                2.3452399   2.1510121   2.5394678
3-6 months     MAL-ED           INDIA                          0                    NA                1.8496253   1.7814584   1.9177923
3-6 months     MAL-ED           INDIA                          1                    NA                2.0924295   1.9227398   2.2621191
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9227233   1.8645389   1.9809077
3-6 months     MAL-ED           NEPAL                          1                    NA                2.2933998   2.1382899   2.4485097
3-6 months     MAL-ED           PERU                           0                    NA                1.9830969   1.9135651   2.0526286
3-6 months     MAL-ED           PERU                           1                    NA                2.2452446   2.0526729   2.4378162
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.9417325   1.8590752   2.0243899
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                2.2800020   2.0073516   2.5526523
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8104934   1.7387334   1.8822534
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9198887   1.7211092   2.1186683
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                1.8283365   1.7775246   1.8791484
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                1.8555438   1.7182419   1.9928456
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                1.9833711   1.9450677   2.0216745
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                2.1324465   2.0220482   2.2428448
3-6 months     PROBIT           BELARUS                        0                    NA                2.0895817   2.0476642   2.1314991
3-6 months     PROBIT           BELARUS                        1                    NA                2.3514267   2.2934081   2.4094452
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9427366   1.9077966   1.9776765
3-6 months     PROVIDE          BANGLADESH                     1                    NA                2.1566270   2.0409351   2.2723189
3-6 months     ResPak           PAKISTAN                       0                    NA                1.9877849   1.8406615   2.1349082
3-6 months     ResPak           PAKISTAN                       1                    NA                2.3166859   2.0151125   2.6182592
3-6 months     SAS-CompFeed     INDIA                          0                    NA                1.9096060   1.8539261   1.9652859
3-6 months     SAS-CompFeed     INDIA                          1                    NA                2.0279801   1.9709782   2.0849821
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7822662   1.7452901   1.8192423
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9990714   1.8535822   2.1445607
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.9655337   1.9448059   1.9862616
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0595593   1.9974058   2.1217128
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2283806   1.1365603   1.3202009
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.1743498   1.0420538   1.3066458
6-9 months     CMIN             BANGLADESH                     0                    NA                1.2647183   1.1909864   1.3384502
6-9 months     CMIN             BANGLADESH                     1                    NA                1.2645288   1.1610505   1.3680071
6-9 months     COHORTS          GUATEMALA                      0                    NA                1.0937627   1.0644817   1.1230436
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.1778905   1.1091768   1.2466042
6-9 months     COHORTS          INDIA                          0                    NA                1.1903391   1.1787814   1.2018967
6-9 months     COHORTS          INDIA                          1                    NA                1.2338603   1.2006180   1.2671026
6-9 months     CONTENT          PERU                           0                    NA                1.3917908   1.3419687   1.4416129
6-9 months     CONTENT          PERU                           1                    NA                1.4216707   1.2773501   1.5659913
6-9 months     EE               PAKISTAN                       0                    NA                1.1580038   1.1001531   1.2158544
6-9 months     EE               PAKISTAN                       1                    NA                1.2044783   1.1255668   1.2833898
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.2968632   1.2587126   1.3350138
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.4016146   1.2414251   1.5618041
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                1.1380205   1.0897090   1.1863321
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                1.2493306   1.1495076   1.3491536
6-9 months     IRC              INDIA                          0                    NA                1.3658976   1.3149640   1.4168313
6-9 months     IRC              INDIA                          1                    NA                1.3782117   1.1988635   1.5575599
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                1.3107565   1.2866147   1.3348982
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                1.3568422   1.3179748   1.3957095
6-9 months     Keneba           GAMBIA                         0                    NA                1.4047016   1.3511838   1.4582193
6-9 months     Keneba           GAMBIA                         1                    NA                1.4402822   1.2610433   1.6195211
6-9 months     LCNI-5           MALAWI                         0                    NA                1.4343177   1.3890474   1.4795881
6-9 months     LCNI-5           MALAWI                         1                    NA                1.5116858   1.4492568   1.5741149
6-9 months     MAL-ED           BANGLADESH                     0                    NA                1.2594203   1.2161481   1.3026924
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.2007078   1.1006228   1.3007928
6-9 months     MAL-ED           BRAZIL                         0                    NA                1.4973633   1.4093010   1.5854256
6-9 months     MAL-ED           BRAZIL                         1                    NA                1.3818571   1.2038334   1.5598808
6-9 months     MAL-ED           INDIA                          0                    NA                1.2375914   1.1849442   1.2902386
6-9 months     MAL-ED           INDIA                          1                    NA                1.3243309   1.1793738   1.4692880
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3650188   1.3201106   1.4099269
6-9 months     MAL-ED           NEPAL                          1                    NA                1.2979819   1.1284112   1.4675527
6-9 months     MAL-ED           PERU                           0                    NA                1.3297404   1.2720177   1.3874630
6-9 months     MAL-ED           PERU                           1                    NA                1.2491062   1.0950241   1.4031883
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.3671125   1.3018318   1.4323932
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.4784659   1.1475647   1.8093672
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1717759   1.0907596   1.2527921
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2330119   0.9827536   1.4832701
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                1.2601503   1.2166206   1.3036799
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                1.2147332   1.1026577   1.3268088
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3293269   1.2976959   1.3609579
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3162418   1.2336240   1.3988597
6-9 months     PROBIT           BELARUS                        0                    NA                1.5762774   1.5448495   1.6077053
6-9 months     PROBIT           BELARUS                        1                    NA                1.6370770   1.5634927   1.7106614
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2825719   1.2558218   1.3093220
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2941966   1.2155257   1.3728675
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4356810   1.3219540   1.5494081
6-9 months     ResPak           PAKISTAN                       1                    NA                1.4772368   1.2407069   1.7137668
6-9 months     SAS-CompFeed     INDIA                          0                    NA                1.1970554   1.1650071   1.2291037
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2683694   1.2205792   1.3161595
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                1.1122146   1.0647327   1.1596966
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                1.1791765   1.1068122   1.2515408
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3232686   1.2857905   1.3607468
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3194089   1.1619727   1.4768450
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.3381357   1.3180528   1.3582187
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.4259019   1.3655602   1.4862435
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.8818306   0.8066644   0.9569968
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.9734583   0.8106503   1.1362664
9-12 months    CMIN             BANGLADESH                     0                    NA                0.9263468   0.8548973   0.9977963
9-12 months    CMIN             BANGLADESH                     1                    NA                1.0125434   0.9135645   1.1115223
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.9576498   0.9315457   0.9837539
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.9167969   0.8517265   0.9818673
9-12 months    COHORTS          INDIA                          0                    NA                1.0033113   0.9908606   1.0157620
9-12 months    COHORTS          INDIA                          1                    NA                0.9591054   0.9220889   0.9961219
9-12 months    CONTENT          PERU                           0                    NA                1.1905521   1.1485332   1.2325711
9-12 months    CONTENT          PERU                           1                    NA                1.3438326   1.2251414   1.4625238
9-12 months    EE               PAKISTAN                       0                    NA                0.9082885   0.8648875   0.9516896
9-12 months    EE               PAKISTAN                       1                    NA                0.9282060   0.8723234   0.9840887
9-12 months    GMS-Nepal        NEPAL                          0                    NA                1.0040572   0.9718348   1.0362795
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.9723776   0.8760886   1.0686667
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                1.0385716   0.9954817   1.0816615
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                1.0272269   0.9412027   1.1132511
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                1.0726175   1.0349829   1.1102521
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                1.1633503   1.0608090   1.2658917
9-12 months    IRC              INDIA                          0                    NA                1.1241039   1.0809329   1.1672749
9-12 months    IRC              INDIA                          1                    NA                1.1512252   1.0635794   1.2388709
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                1.0649613   1.0450769   1.0848458
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                1.0949011   1.0601243   1.1296779
9-12 months    Keneba           GAMBIA                         0                    NA                0.9862637   0.9419592   1.0305681
9-12 months    Keneba           GAMBIA                         1                    NA                0.9229725   0.7751697   1.0707753
9-12 months    LCNI-5           MALAWI                         0                    NA                1.1066043   1.0484267   1.1647819
9-12 months    LCNI-5           MALAWI                         1                    NA                1.0915235   1.0076266   1.1754205
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9777885   0.9367502   1.0188268
9-12 months    MAL-ED           BANGLADESH                     1                    NA                1.0543818   0.9430710   1.1656927
9-12 months    MAL-ED           BRAZIL                         0                    NA                1.3045233   1.2232966   1.3857500
9-12 months    MAL-ED           BRAZIL                         1                    NA                1.2474775   1.0792263   1.4157288
9-12 months    MAL-ED           INDIA                          0                    NA                0.9773105   0.9350362   1.0195847
9-12 months    MAL-ED           INDIA                          1                    NA                1.0122644   0.9164830   1.1080458
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0936437   1.0508293   1.1364581
9-12 months    MAL-ED           NEPAL                          1                    NA                1.0514726   0.9183973   1.1845479
9-12 months    MAL-ED           PERU                           0                    NA                1.0885450   1.0346592   1.1424308
9-12 months    MAL-ED           PERU                           1                    NA                1.1627994   0.9958175   1.3297812
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                1.0239322   0.9589652   1.0888991
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.9335421   0.7139787   1.1531055
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8220048   0.7340437   0.9099659
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7523478   0.5858284   0.9188672
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                1.0887986   1.0514962   1.1261011
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                1.0867132   0.9857294   1.1876971
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1175827   1.0895986   1.1455669
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1591312   1.0792494   1.2390130
9-12 months    PROBIT           BELARUS                        0                    NA                1.3717013   1.3203017   1.4231010
9-12 months    PROBIT           BELARUS                        1                    NA                1.4073193   1.3417147   1.4729238
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0506801   1.0222211   1.0791391
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0447868   0.9592879   1.1302857
9-12 months    ResPak           PAKISTAN                       0                    NA                1.1053290   0.9510046   1.2596534
9-12 months    ResPak           PAKISTAN                       1                    NA                1.3839351   1.2076240   1.5602462
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.9999010   0.9626481   1.0371540
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.9985331   0.9356229   1.0614433
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.8029219   0.6241282   0.9817155
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.8161145   0.5967673   1.0354618
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0938527   1.0590017   1.1287037
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9708118   0.8111032   1.1305204
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                1.0790402   1.0602283   1.0978521
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1103785   1.0509568   1.1698001
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8439518   0.7617188   0.9261848
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8888715   0.7717756   1.0059673
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8270943   0.7542417   0.8999469
12-15 months   CMIN             BANGLADESH                     1                    NA                0.9333947   0.8513663   1.0154230
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.7836437   0.7534375   0.8138500
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.7907100   0.7334374   0.8479826
12-15 months   CONTENT          PERU                           0                    NA                0.9293069   0.8838888   0.9747250
12-15 months   CONTENT          PERU                           1                    NA                0.9273074   0.8179906   1.0366243
12-15 months   EE               PAKISTAN                       0                    NA                0.9824414   0.9372371   1.0276458
12-15 months   EE               PAKISTAN                       1                    NA                1.0486467   1.0025381   1.0947554
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8675250   0.8395849   0.8954651
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9098940   0.8176727   1.0021152
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                1.0092183   0.9364098   1.0820267
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                1.0102698   0.8979005   1.1226391
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9737107   0.9188113   1.0286101
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.9362497   0.8709481   1.0015513
12-15 months   IRC              INDIA                          0                    NA                0.9504084   0.9068067   0.9940101
12-15 months   IRC              INDIA                          1                    NA                0.9514109   0.8068639   1.0959579
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.9498333   0.9311479   0.9685186
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.9201414   0.8917012   0.9485817
12-15 months   Keneba           GAMBIA                         0                    NA                0.9375973   0.9052229   0.9699717
12-15 months   Keneba           GAMBIA                         1                    NA                0.9441954   0.8415021   1.0468888
12-15 months   LCNI-5           MALAWI                         0                    NA                1.0127771   0.8823058   1.1432483
12-15 months   LCNI-5           MALAWI                         1                    NA                0.9145535   0.7203310   1.1087761
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.9070974   0.8628946   0.9513003
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9458676   0.8402616   1.0514735
12-15 months   MAL-ED           BRAZIL                         0                    NA                1.1520449   1.0892361   1.2148537
12-15 months   MAL-ED           BRAZIL                         1                    NA                1.0598562   0.9024921   1.2172202
12-15 months   MAL-ED           INDIA                          0                    NA                0.9105188   0.8683861   0.9526514
12-15 months   MAL-ED           INDIA                          1                    NA                0.9119122   0.8033872   1.0204372
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9480027   0.9054466   0.9905587
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9481786   0.8449206   1.0514366
12-15 months   MAL-ED           PERU                           0                    NA                0.8866883   0.8404269   0.9329496
12-15 months   MAL-ED           PERU                           1                    NA                0.8555956   0.6938083   1.0173830
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.9053331   0.8468755   0.9637907
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.0547042   0.7935996   1.3158088
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8640313   0.7938661   0.9341966
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8192135   0.6462956   0.9921314
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                0.7366778   0.6856778   0.7876777
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                0.6409515   0.5600396   0.7218635
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9712767   0.9452921   0.9972613
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9766842   0.9036251   1.0497433
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9644190   0.9367262   0.9921117
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9165536   0.8371141   0.9959931
12-15 months   ResPak           PAKISTAN                       0                    NA                1.3181016   1.0926800   1.5435233
12-15 months   ResPak           PAKISTAN                       1                    NA                1.1972323   0.9764164   1.4180482
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.8344242   0.7936136   0.8752348
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.8312135   0.7678939   0.8945331
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                1.0702147   0.9677927   1.1726368
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                0.9618975   0.8073624   1.1164326
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9222618   0.8848205   0.9597032
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0452545   0.8529002   1.2376088
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.9220824   0.8940405   0.9501243
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9048297   0.8109154   0.9987440
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7544954   0.6820928   0.8268979
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6543333   0.5206689   0.7879977
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7324642   0.6670744   0.7978539
15-18 months   CMIN             BANGLADESH                     1                    NA                0.7755049   0.6896674   0.8613423
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.7434755   0.7101807   0.7767703
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.7574571   0.6898245   0.8250897
15-18 months   CONTENT          PERU                           0                    NA                0.9785660   0.9311201   1.0260119
15-18 months   CONTENT          PERU                           1                    NA                1.0147625   0.8442459   1.1852791
15-18 months   EE               PAKISTAN                       0                    NA                0.8420829   0.8004143   0.8837516
15-18 months   EE               PAKISTAN                       1                    NA                0.8337169   0.7834512   0.8839826
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7489781   0.7135408   0.7844155
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7803721   0.6675252   0.8932190
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9319133   0.8956495   0.9681771
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.8892738   0.7700133   1.0085342
15-18 months   IRC              INDIA                          0                    NA                0.8524436   0.8138869   0.8910003
15-18 months   IRC              INDIA                          1                    NA                0.8483065   0.6719814   1.0246317
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                0.8616996   0.8427299   0.8806694
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.8514524   0.8236713   0.8792335
15-18 months   Keneba           GAMBIA                         0                    NA                0.8804924   0.8482200   0.9127648
15-18 months   Keneba           GAMBIA                         1                    NA                0.8374681   0.7183985   0.9565378
15-18 months   LCNI-5           MALAWI                         0                    NA                0.8367886   0.7367915   0.9367856
15-18 months   LCNI-5           MALAWI                         1                    NA                0.7742521   0.6816586   0.8668456
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8259327   0.7850504   0.8668150
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.8101770   0.7079112   0.9124428
15-18 months   MAL-ED           BRAZIL                         0                    NA                1.0088390   0.9451563   1.0725216
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.9560469   0.7839376   1.1281562
15-18 months   MAL-ED           INDIA                          0                    NA                0.8526327   0.8124074   0.8928580
15-18 months   MAL-ED           INDIA                          1                    NA                0.8004272   0.7149604   0.8858940
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8590063   0.8140754   0.9039373
15-18 months   MAL-ED           NEPAL                          1                    NA                0.7334703   0.6397728   0.8271678
15-18 months   MAL-ED           PERU                           0                    NA                0.8454123   0.8009633   0.8898614
15-18 months   MAL-ED           PERU                           1                    NA                0.9044343   0.7715485   1.0373201
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8927761   0.8353967   0.9501555
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8368642   0.7218101   0.9519184
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6816205   0.6143682   0.7488727
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7134614   0.5623219   0.8646008
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                0.7685310   0.7233761   0.8136858
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                0.8221110   0.7365754   0.9076465
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9221267   0.8973787   0.9468748
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8916282   0.8295679   0.9536885
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8600849   0.8348586   0.8853112
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8336800   0.7513616   0.9159985
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.9005386   0.8533845   0.9476928
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.9175733   0.8470922   0.9880545
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.8045480   0.7580886   0.8510073
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.7682351   0.7125826   0.8238875
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9407996   0.8967419   0.9848572
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9080553   0.7740162   1.0420943
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.8046198   0.7723493   0.8368904
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7644817   0.6833199   0.8456434
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6613259   0.5905176   0.7321342
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8402146   0.6986422   0.9817870
18-21 months   CMIN             BANGLADESH                     0                    NA                0.7920840   0.7249275   0.8592405
18-21 months   CMIN             BANGLADESH                     1                    NA                0.8242250   0.7467576   0.9016924
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.7472267   0.7154044   0.7790489
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7608718   0.6938220   0.8279215
18-21 months   CONTENT          PERU                           0                    NA                0.9251075   0.8800112   0.9702038
18-21 months   CONTENT          PERU                           1                    NA                0.7889115   0.6158535   0.9619695
18-21 months   EE               PAKISTAN                       0                    NA                0.7363760   0.6987504   0.7740016
18-21 months   EE               PAKISTAN                       1                    NA                0.6875485   0.6195821   0.7555149
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9115038   0.8718966   0.9511110
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8675939   0.8144601   0.9207278
18-21 months   IRC              INDIA                          0                    NA                0.7627030   0.7204812   0.8049248
18-21 months   IRC              INDIA                          1                    NA                0.7529956   0.6672350   0.8387561
18-21 months   Keneba           GAMBIA                         0                    NA                0.8182385   0.7834881   0.8529889
18-21 months   Keneba           GAMBIA                         1                    NA                0.7954635   0.6635924   0.9273345
18-21 months   LCNI-5           MALAWI                         0                    NA                0.8523163   0.8007694   0.9038632
18-21 months   LCNI-5           MALAWI                         1                    NA                0.7703650   0.6841282   0.8566019
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8213919   0.7840722   0.8587115
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.7708505   0.6763160   0.8653850
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.9032537   0.8331146   0.9733928
18-21 months   MAL-ED           BRAZIL                         1                    NA                1.0221101   0.7123776   1.3318427
18-21 months   MAL-ED           INDIA                          0                    NA                0.8839918   0.8459228   0.9220608
18-21 months   MAL-ED           INDIA                          1                    NA                0.8586410   0.7647059   0.9525761
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8084171   0.7685450   0.8482892
18-21 months   MAL-ED           NEPAL                          1                    NA                0.9110834   0.7907753   1.0313915
18-21 months   MAL-ED           PERU                           0                    NA                0.8433200   0.7968461   0.8897938
18-21 months   MAL-ED           PERU                           1                    NA                0.8208588   0.6706476   0.9710700
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.7851137   0.7258485   0.8443788
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7342443   0.5519035   0.9165852
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7372280   0.6631441   0.8113120
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7882466   0.6248139   0.9516793
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                0.7341600   0.6941520   0.7741680
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                0.7152984   0.6329076   0.7976893
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7884030   0.7629117   0.8138944
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8532825   0.7894077   0.9171573
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8305660   0.8053223   0.8558096
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.9309663   0.8484392   1.0134933
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6824935   0.6458941   0.7190929
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6741416   0.5764980   0.7717852
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6904130   0.6192987   0.7615273
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7750996   0.6565744   0.8936248
21-24 months   CMIN             BANGLADESH                     0                    NA                0.7304999   0.6561961   0.8048037
21-24 months   CMIN             BANGLADESH                     1                    NA                0.7908910   0.6982062   0.8835758
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.6760120   0.6490405   0.7029834
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.6851629   0.6390042   0.7313215
21-24 months   CONTENT          PERU                           0                    NA                0.9172440   0.8335438   1.0009443
21-24 months   CONTENT          PERU                           1                    NA                1.0528025   0.8106681   1.2949369
21-24 months   EE               PAKISTAN                       0                    NA                0.6861638   0.6397281   0.7325995
21-24 months   EE               PAKISTAN                       1                    NA                0.5842990   0.5172370   0.6513609
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.8033620   0.7519979   0.8547261
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.7768238   0.6861583   0.8674893
21-24 months   IRC              INDIA                          0                    NA                0.7135394   0.6705136   0.7565653
21-24 months   IRC              INDIA                          1                    NA                0.6476246   0.5179560   0.7772932
21-24 months   Keneba           GAMBIA                         0                    NA                0.7118181   0.6766309   0.7470052
21-24 months   Keneba           GAMBIA                         1                    NA                0.7660705   0.6678657   0.8642752
21-24 months   LCNI-5           MALAWI                         0                    NA                0.7522198   0.6929977   0.8114420
21-24 months   LCNI-5           MALAWI                         1                    NA                0.7495931   0.6767057   0.8224805
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7735645   0.7356462   0.8114829
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.7615536   0.6623621   0.8607451
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.7970348   0.7490203   0.8450493
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.7970921   0.6786087   0.9155754
21-24 months   MAL-ED           INDIA                          0                    NA                0.8293837   0.7948679   0.8638995
21-24 months   MAL-ED           INDIA                          1                    NA                0.8123677   0.7494827   0.8752528
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7756602   0.7367982   0.8145222
21-24 months   MAL-ED           NEPAL                          1                    NA                0.7684195   0.5925869   0.9442521
21-24 months   MAL-ED           PERU                           0                    NA                0.7710869   0.7199130   0.8222608
21-24 months   MAL-ED           PERU                           1                    NA                0.7299165   0.6211781   0.8386548
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8320184   0.7767503   0.8872865
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8773659   0.7126337   1.0420982
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7271134   0.6557633   0.7984635
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6321294   0.4733221   0.7909367
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.7244958   0.6863636   0.7626280
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.7664379   0.6688536   0.8640222
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.8039812   0.7775993   0.8303632
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7677352   0.7020446   0.8334258
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7673226   0.7404431   0.7942021
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7311328   0.6546701   0.8075954
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6977859   0.6564044   0.7391673
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.6597512   0.5564760   0.7630265


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
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.0340079   -0.6712067    0.7392226
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.2206866   -0.1245478    0.5659210
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.4761082    0.2481422    0.7040741
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                  0.3077207    0.2611321    0.3543092
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.4459884    0.2824679    0.6095090
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                  0.2487233    0.1185241    0.3789225
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.9069546    0.5329721    1.2809371
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                  0.2280976    0.2091874    0.2470078
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                  0.2113663    0.1408564    0.2818762
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                  1.3183780    1.0024329    1.6343231
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                  0.2240158    0.0244743    0.4235573
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.9353609    0.5414404    1.3292814
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.3132022    0.0108934    0.6155110
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.3718051    0.0565858    0.6870244
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.1838851   -0.0384991    0.4062693
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.4694816    0.0156859    0.9232774
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.3309165    0.1089558    0.5528772
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                  0.3490537    0.1903247    0.5077826
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.2360348    0.1334085    0.3386611
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.4181667    0.2975342    0.5387992
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                  0.1484438    0.0160872    0.2808005
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  1.1914232    0.5882688    1.7945776
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.1309155   -0.0014982    0.2633292
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.7672873    0.6985767    0.8359978
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.2285161   -0.0202002    0.4772323
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                  0.2452273    0.1027276    0.3877270
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.1354205    0.0351187    0.2357222
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.1202626    0.0811996    0.1593256
3-6 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    0                  0.0688178   -0.0785678    0.2162033
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.1036984   -0.0161845    0.2235813
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.1212150    0.0081554    0.2342746
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0360712   -0.1516309    0.2237734
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.1208625    0.1006697    0.1410553
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.1679240    0.1048080    0.2310400
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0874679   -0.0375589    0.2124948
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.1189875   -0.0419403    0.2799154
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                  0.2272637    0.0147226    0.4398048
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.2428042    0.0591733    0.4264350
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.3706765    0.2048797    0.5364733
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                  0.2621477    0.0574832    0.4668122
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.3382694    0.0531029    0.6234360
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1093953   -0.1022279    0.3210185
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                  0.0272072   -0.1190531    0.1734676
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.1490754    0.0327499    0.2654009
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.2618450    0.1974560    0.3262341
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.2138904    0.0929706    0.3348102
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.3289010   -0.0048685    0.6626704
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                  0.1183741    0.0328336    0.2039146
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2168052    0.0665695    0.3670410
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0940256    0.0285726    0.1594786
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0540308   -0.2157067    0.1076451
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                 -0.0001895   -0.1256857    0.1253066
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0841279    0.0095066    0.1587492
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0435212    0.0083260    0.0787164
6-9 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    0                  0.0298799   -0.1228461    0.1826058
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0464745   -0.0517322    0.1446813
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                  0.1047514   -0.0597469    0.2692498
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                  0.1113101    0.0000204    0.2225997
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.0123141   -0.1752959    0.1999241
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                  0.0460857    0.0018530    0.0903184
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                  0.0355806   -0.1518299    0.2229911
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                  0.0773681   -0.0002110    0.1549472
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0587125   -0.1679550    0.0505300
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.1155062   -0.3142752    0.0832628
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0867395   -0.0671109    0.2405899
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                 -0.0670368   -0.2421855    0.1081118
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0806341   -0.2445544    0.0832861
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.1113534   -0.2279531    0.4506600
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0612360   -0.2018548    0.3243267
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                 -0.0454170   -0.1656517    0.0748176
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0130851   -0.1016883    0.0755182
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0607996   -0.0113776    0.1329769
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0116247   -0.0713158    0.0945651
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0415558   -0.2217078    0.3048194
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0713140    0.0009662    0.1416617
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0669619   -0.0197899    0.1537137
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0038598   -0.1658076    0.1580881
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0877661    0.0242449    0.1512874
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0916277   -0.0881658    0.2714212
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                  0.0861965   -0.0362701    0.2086631
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0408529   -0.1108986    0.0291928
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0442059   -0.0831930   -0.0052188
9-12 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    0                  0.1532805    0.0267415    0.2798194
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0199175   -0.0488327    0.0886678
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0316795   -0.1333335    0.0699745
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                 -0.0113447   -0.1076297    0.0849403
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0907328   -0.0260138    0.2074794
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0271213   -0.0697984    0.1240409
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0299397   -0.0084461    0.0683256
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0632912   -0.2178053    0.0912230
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                 -0.0150808   -0.1170499    0.0868883
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0765933   -0.0422271    0.1954138
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0570458   -0.2432176    0.1291261
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0349539   -0.0705730    0.1404809
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                 -0.0421711   -0.1818536    0.0975114
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0742544   -0.1012525    0.2497614
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0903901   -0.3193264    0.1385462
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0696570   -0.2577574    0.1184434
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                 -0.0020854   -0.1094839    0.1053131
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0415485   -0.0429841    0.1260811
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0356179   -0.0488822    0.1201180
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0058933   -0.0959486    0.0841620
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                  0.2786061    0.0440486    0.5131636
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0013679   -0.0753206    0.0725848
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0131926   -0.2727884    0.2991736
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1230409   -0.2865760    0.0404942
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0313383   -0.0309643    0.0936408
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0449197   -0.0988168    0.1886561
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.1063004   -0.0031887    0.2157894
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0070663   -0.0579336    0.0720662
12-15 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    0                 -0.0019995   -0.1205608    0.1165618
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0662053    0.0017398    0.1306708
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0423690   -0.0539135    0.1386515
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                  0.0010515   -0.1321114    0.1342144
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0374610   -0.1340106    0.0590886
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0010024   -0.1503061    0.1523110
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0296918   -0.0632739    0.0038902
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                  0.0065982   -0.1014018    0.1145981
12-15 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         1                    0                 -0.0982236   -0.3474936    0.1510465
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0387701   -0.0759103    0.1534506
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.0921888   -0.2608953    0.0765178
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.0013934   -0.1151438    0.1179307
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                  0.0001760   -0.1112866    0.1116385
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                 -0.0310926   -0.1995634    0.1373782
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1493711   -0.1185084    0.4172505
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0448178   -0.2316407    0.1420051
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0957262   -0.1920369    0.0005845
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0054074   -0.0719323    0.0827472
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0478654   -0.1317779    0.0360471
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.1208693   -0.4439844    0.2022458
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                 -0.0032107   -0.0709213    0.0644999
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.1083173   -0.2939307    0.0772961
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1229927   -0.0732265    0.3192118
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0172527   -0.1153353    0.0808298
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.1001621   -0.2526599    0.0523356
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0430407   -0.0638255    0.1499069
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0139816   -0.0618538    0.0898171
15-18 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    0                  0.0361965   -0.1408531    0.2132461
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0083660   -0.0733826    0.0566506
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0313940   -0.0870157    0.1498036
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0426395   -0.1666151    0.0813360
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0041370   -0.1852732    0.1769991
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0102472   -0.0421839    0.0216895
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.0430243   -0.1666397    0.0805911
15-18 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         1                    0                 -0.0625364   -0.1969834    0.0719106
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0157557   -0.1264013    0.0948898
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0527920   -0.2367474    0.1311633
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                 -0.0522055   -0.1467883    0.0423774
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.1255360   -0.2295480   -0.0215241
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0590220   -0.0813689    0.1994129
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0559118   -0.1851779    0.0733542
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0318409   -0.1338586    0.1975405
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                  0.0535800   -0.0432407    0.1504007
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0304985   -0.0973042    0.0363072
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                 -0.0264049   -0.1125579    0.0597481
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0170347   -0.0937865    0.1278558
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0363129   -0.1088205    0.0361948
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0327443   -0.1738060    0.1083174
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0401382   -0.1275865    0.0473101
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1788886    0.0207776    0.3369997
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                  0.0321410   -0.0729856    0.1372675
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0136451   -0.0611294    0.0884196
18-21 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    0                 -0.1361960   -0.3150655    0.0426736
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0488275   -0.1266975    0.0290425
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0439099   -0.1108028    0.0229831
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0097074   -0.1058992    0.0864843
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                 -0.0227751   -0.1594521    0.1139020
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0819513   -0.1836224    0.0197198
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                 -0.0505414   -0.1523200    0.0512373
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                  0.1188564   -0.1983723    0.4360851
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0253508   -0.1267538    0.0760522
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.1026662   -0.0242574    0.2295899
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                 -0.0224612   -0.1798230    0.1349007
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0508693   -0.2425364    0.1407977
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0510186   -0.1281464    0.2301836
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0188616   -0.1104870    0.0727638
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0648795   -0.0041906    0.1339496
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.1004003    0.0140848    0.1867158
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0083519   -0.1127798    0.0960761
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0846866   -0.0537087    0.2230819
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                  0.0603911   -0.0579290    0.1787111
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                  0.0091509   -0.0445219    0.0628237
21-24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    0                  0.1355585   -0.1206344    0.3917514
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.1018648   -0.1838885   -0.0198411
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0265382   -0.1312669    0.0781905
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0659148   -0.2022403    0.0704106
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                  0.0542524   -0.0499947    0.1584995
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                 -0.0026267   -0.0977083    0.0924548
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                 -0.0120109   -0.1185289    0.0945071
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                  0.0000572   -0.1280399    0.1281544
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0170159   -0.0888525    0.0548206
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.0072407   -0.1867403    0.1722589
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0411704   -0.1614525    0.0791117
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0453476   -0.1285600    0.2192552
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0949840   -0.2718211    0.0818531
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0419421   -0.0638140    0.1476983
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0362461   -0.1070460    0.0345539
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0361898   -0.1173263    0.0449466
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0380346   -0.1493892    0.0733199


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0779166   -0.0530977    0.2089310
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0704654   -0.0642080    0.2051389
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0228265    0.0094079    0.0362452
0-3 months     COHORTS          INDIA                          0                    NA                 0.0354619    0.0295282    0.0413956
0-3 months     EE               PAKISTAN                       0                    NA                 0.1943713    0.1175871    0.2711555
0-3 months     GMS-Nepal        NEPAL                          0                    NA                 0.0420272    0.0177356    0.0663189
0-3 months     IRC              INDIA                          0                    NA                 0.1116182    0.0591376    0.1640988
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0713588    0.0650372    0.0776804
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0639349    0.0416309    0.0862389
0-3 months     Keneba           GAMBIA                         0                    NA                 0.0761941    0.0522254    0.1001629
0-3 months     MAL-ED           BANGLADESH                     0                    NA                 0.0425487    0.0070429    0.0780545
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0854137    0.0349663    0.1358610
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0313467   -0.0124817    0.0751751
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0618109    0.0152956    0.1083262
0-3 months     MAL-ED           PERU                           0                    NA                 0.0222847   -0.0036678    0.0482371
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0433490    0.0029517    0.0837464
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0312693   -0.0069294    0.0694679
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0611582    0.0334395    0.0888769
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0322955    0.0168776    0.0477134
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0026813   -0.0002081    0.0055707
0-3 months     PROVIDE          BANGLADESH                     0                    NA                 0.0164962    0.0027302    0.0302622
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.4201570    0.1590224    0.6812916
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0328155   -0.0042878    0.0699189
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0740828    0.0658760    0.0822897
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0476142   -0.0050613    0.1002897
3-6 months     CMIN             BANGLADESH                     0                    NA                 0.0935290    0.0358676    0.1511903
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0169377    0.0027161    0.0311593
3-6 months     COHORTS          INDIA                          0                    NA                 0.0141209    0.0095591    0.0186827
3-6 months     CONTENT          PERU                           0                    NA                 0.0149320   -0.0008487    0.0307126
3-6 months     EE               PAKISTAN                       0                    NA                 0.0449134   -0.0075602    0.0973870
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0276747    0.0083184    0.0470309
3-6 months     IRC              INDIA                          0                    NA                 0.0023582   -0.0199071    0.0246235
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0368773    0.0305610    0.0431936
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0472178    0.0291849    0.0652507
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0092510   -0.0029221    0.0214241
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0148079   -0.0103739    0.0399898
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0281053    0.0010644    0.0551462
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0426727    0.0122201    0.0731253
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0417368    0.0180937    0.0653798
3-6 months     MAL-ED           PERU                           0                    NA                 0.0325852    0.0048464    0.0603241
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0286936   -0.0031837    0.0605710
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0195968   -0.0139877    0.0531812
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0043550   -0.0186762    0.0273861
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0224261    0.0061006    0.0387516
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0019765    0.0003965    0.0035566
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0230091    0.0096512    0.0363671
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0771042   -0.0157591    0.1699674
3-6 months     SAS-CompFeed     INDIA                          0                    NA                 0.0310359    0.0128066    0.0492651
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0134070    0.0028106    0.0240034
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0098526    0.0032213    0.0164838
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0110425   -0.0448631    0.0227782
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0011556   -0.0486161    0.0509274
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0131748    0.0014124    0.0249373
6-9 months     COHORTS          INDIA                          0                    NA                 0.0049235    0.0007785    0.0090685
6-9 months     CONTENT          PERU                           0                    NA                 0.0056328   -0.0090223    0.0202879
6-9 months     EE               PAKISTAN                       0                    NA                 0.0199373   -0.0223687    0.0622433
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0203394   -0.0053227    0.0460015
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                 0.0322608    0.0029584    0.0615632
6-9 months     IRC              INDIA                          0                    NA                 0.0065033   -0.0147506    0.0277572
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0134868    0.0016971    0.0252766
6-9 months     Keneba           GAMBIA                         0                    NA                 0.0008378   -0.0165089    0.0181844
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0280146   -0.0006497    0.0566789
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0113752   -0.0289400    0.0061897
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0142474   -0.0380242    0.0095295
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0086323   -0.0194914    0.0367559
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0078779   -0.0277817    0.0120258
6-9 months     MAL-ED           PERU                           0                    NA                -0.0097438   -0.0316981    0.0122104
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0098133   -0.0186893    0.0383159
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0189797   -0.0227246    0.0606840
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0045552   -0.0229493    0.0138389
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0010574   -0.0129662    0.0108514
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0003349   -0.0013933    0.0020630
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0001535   -0.0083912    0.0080843
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0132947   -0.0573824    0.0839719
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0193824    0.0009699    0.0377949
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0304009   -0.0044227    0.0652244
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003639   -0.0109433    0.0102156
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0088417    0.0025914    0.0150921
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0176918   -0.0160600    0.0514436
9-12 months    CMIN             BANGLADESH                     0                    NA                 0.0364003   -0.0149837    0.0877843
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0065675   -0.0195423    0.0064072
9-12 months    COHORTS          INDIA                          0                    NA                -0.0051389   -0.0096229   -0.0006550
9-12 months    CONTENT          PERU                           0                    NA                 0.0143247    0.0013471    0.0273022
9-12 months    EE               PAKISTAN                       0                    NA                 0.0065930   -0.0233537    0.0365397
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0056810   -0.0244952    0.0131331
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0000582   -0.0266402    0.0265238
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0201799   -0.0065945    0.0469543
9-12 months    IRC              INDIA                          0                    NA                -0.0006305   -0.0120513    0.0107903
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0065178   -0.0037441    0.0167797
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0053383   -0.0184156    0.0077391
9-12 months    LCNI-5           MALAWI                         0                    NA                -0.0079502   -0.0455097    0.0296094
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0118561   -0.0075261    0.0312383
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0062674   -0.0280822    0.0155475
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0041598   -0.0121424    0.0204619
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0044065   -0.0205061    0.0116931
9-12 months    MAL-ED           PERU                           0                    NA                 0.0099674   -0.0123793    0.0323141
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0096064   -0.0389447    0.0197320
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0088971   -0.0454566    0.0276623
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0002178   -0.0167367    0.0163011
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0058917   -0.0052237    0.0170072
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0002401   -0.0018307    0.0023108
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0007051   -0.0099786    0.0085684
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0838813    0.0150873    0.1526752
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0001686   -0.0199525    0.0196152
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0077430   -0.1077716    0.1232576
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0074142   -0.0173670    0.0025386
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021445   -0.0037787    0.0080677
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094206   -0.0201368    0.0389781
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0468587    0.0006489    0.0930685
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0019837   -0.0121551    0.0161224
12-15 months   CONTENT          PERU                           0                    NA                -0.0001626   -0.0105800    0.0102549
12-15 months   EE               PAKISTAN                       0                    NA                 0.0276179   -0.0013099    0.0565456
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0121797   -0.0061049    0.0304642
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0003985   -0.0332376    0.0340347
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0078824   -0.0274644    0.0116995
12-15 months   IRC              INDIA                          0                    NA                 0.0049455   -0.0124851    0.0223760
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0083027   -0.0176209    0.0010155
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0002663   -0.0091148    0.0085823
12-15 months   LCNI-5           MALAWI                         0                    NA                -0.0539252   -0.1610709    0.0532205
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0070030   -0.0103028    0.0243088
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0098675   -0.0305788    0.0108437
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0000251   -0.0178967    0.0178464
12-15 months   MAL-ED           NEPAL                          0                    NA                 0.0034098   -0.0091436    0.0159631
12-15 months   MAL-ED           PERU                           0                    NA                 0.0050397   -0.0185244    0.0286039
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0142963   -0.0106609    0.0392535
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0076755   -0.0341302    0.0187792
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0125155   -0.0283441    0.0033131
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0001373   -0.0111846    0.0109100
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0046689   -0.0127260    0.0033882
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0288932   -0.1325744    0.0747881
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0009553   -0.0190278    0.0171171
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0434322   -0.1159488    0.0290844
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0089637   -0.0029532    0.0208807
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0014904   -0.0127564    0.0097755
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0205818   -0.0545571    0.0133934
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0155441   -0.0271567    0.0582450
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0016178   -0.0146468    0.0178824
15-18 months   CONTENT          PERU                           0                    NA                 0.0074571   -0.0076161    0.0225304
15-18 months   EE               PAKISTAN                       0                    NA                -0.0044294   -0.0321920    0.0233332
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0059738   -0.0142762    0.0262238
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0090720   -0.0356860    0.0175420
15-18 months   IRC              INDIA                          0                    NA                 0.0066780   -0.0138954    0.0272514
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0017819   -0.0108441    0.0072803
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0036597   -0.0136595    0.0063400
15-18 months   LCNI-5           MALAWI                         0                    NA                -0.0120321   -0.0674084    0.0433442
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0018102   -0.0179316    0.0143113
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0067276   -0.0247008    0.0112456
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0082443   -0.0231783    0.0066897
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0181702   -0.0318158   -0.0045246
15-18 months   MAL-ED           PERU                           0                    NA                 0.0080184   -0.0114471    0.0274839
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0056259   -0.0222437    0.0109920
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0051275   -0.0210932    0.0313482
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0042409   -0.0127717    0.0212536
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0044100   -0.0139142    0.0050943
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0039851   -0.0121151    0.0041449
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0041451   -0.0259656    0.0342557
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0097618   -0.0383707    0.0188471
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0028649   -0.0122102    0.0064805
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0051955   -0.0163575    0.0059665
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0386660    0.0036519    0.0736801
18-21 months   CMIN             BANGLADESH                     0                    NA                 0.0107710   -0.0308593    0.0524013
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0018499   -0.0143134    0.0180131
18-21 months   CONTENT          PERU                           0                    NA                -0.0104737   -0.0255697    0.0046224
18-21 months   EE               PAKISTAN                       0                    NA                -0.0180648   -0.0470442    0.0109146
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0076083   -0.0198123    0.0045958
18-21 months   IRC              INDIA                          0                    NA                -0.0029009   -0.0148554    0.0090537
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0005316   -0.0132442    0.0121809
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0343252   -0.0714204    0.0027700
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0080071   -0.0237065    0.0076923
18-21 months   MAL-ED           BRAZIL                         0                    NA                 0.0128221   -0.0203641    0.0460084
18-21 months   MAL-ED           INDIA                          0                    NA                -0.0052817   -0.0207702    0.0102069
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0098626   -0.0056370    0.0253623
18-21 months   MAL-ED           PERU                           0                    NA                -0.0018761   -0.0213499    0.0175978
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0029327   -0.0201151    0.0142498
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0064758   -0.0216775    0.0346290
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0050132   -0.0206377    0.0106114
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0093725    0.0001842    0.0185608
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0087717    0.0006352    0.0169081
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0016111   -0.0145534    0.0113312
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0164342   -0.0133471    0.0462154
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0249930   -0.0240017    0.0739876
21-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0020418   -0.0111224    0.0152061
21-24 months   CONTENT          PERU                           0                    NA                 0.0178366   -0.0189647    0.0546380
21-24 months   EE               PAKISTAN                       0                    NA                -0.0368228   -0.0706145   -0.0030312
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0043308   -0.0211348    0.0124731
21-24 months   IRC              INDIA                          0                    NA                -0.0051266   -0.0219801    0.0117269
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0063135   -0.0041436    0.0167705
21-24 months   LCNI-5           MALAWI                         0                    NA                -0.0009063   -0.0340173    0.0322047
21-24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0041463   -0.0204317    0.0121392
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0008829   -0.0157770    0.0140112
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0038323   -0.0150860    0.0074213
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0076963   -0.0149177    0.0303103
21-24 months   MAL-ED           PERU                           0                    NA                -0.0100363   -0.0253052    0.0052325
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0074766   -0.0100482    0.0250014
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0081806   -0.0354618    0.0191005
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0072780   -0.0256402    0.0110841
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0046459   -0.0145544    0.0052626
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0041835   -0.0126818    0.0043147
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0070444   -0.0221813    0.0080926
