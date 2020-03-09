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
![](/tmp/8ae6440d-8391-4112-86f8-3e04e703cfab/5af505f9-2e06-4417-822a-ef91158b20f6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8ae6440d-8391-4112-86f8-3e04e703cfab/5af505f9-2e06-4417-822a-ef91158b20f6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8ae6440d-8391-4112-86f8-3e04e703cfab/5af505f9-2e06-4417-822a-ef91158b20f6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1219845   -0.2335491   -0.0104200
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.2521145   -0.1350537    0.6392826
0-3 months     CMIN             BANGLADESH                     0                    NA                -0.0357249   -0.1188960    0.0474462
0-3 months     CMIN             BANGLADESH                     1                    NA                 0.1260158   -0.0187581    0.2707898
0-3 months     COHORTS          GUATEMALA                      0                    NA                -0.5517347   -0.5733157   -0.5301537
0-3 months     COHORTS          GUATEMALA                      1                    NA                -0.2907504   -0.4091832   -0.1723177
0-3 months     COHORTS          INDIA                          0                    NA                -0.0865995   -0.0935980   -0.0796009
0-3 months     COHORTS          INDIA                          1                    NA                 0.1293415    0.1076448    0.1510381
0-3 months     EE               PAKISTAN                       0                    NA                -0.3424597   -0.3905627   -0.2943567
0-3 months     EE               PAKISTAN                       1                    NA                -0.0539745   -0.1208361    0.0128872
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0641594   -0.0912225   -0.0370962
0-3 months     GMS-Nepal        NEPAL                          1                    NA                 0.1200862    0.0625121    0.1776603
0-3 months     IRC              INDIA                          0                    NA                -0.3164972   -0.3713318   -0.2616626
0-3 months     IRC              INDIA                          1                    NA                 0.2236051    0.0454832    0.4017269
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0213417    0.0158895    0.0267938
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                 0.1888089    0.1806896    0.1969282
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0215358    0.0050816    0.0379899
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                 0.1732071    0.1443436    0.2020707
0-3 months     Keneba           GAMBIA                         0                    NA                -0.3255881   -0.3467978   -0.3043784
0-3 months     Keneba           GAMBIA                         1                    NA                 0.4450219    0.2870633    0.6029805
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.1518813   -0.1871578   -0.1166048
0-3 months     MAL-ED           BANGLADESH                     1                    NA                 0.0454105   -0.0430282    0.1338492
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0851672    0.0300411    0.1402933
0-3 months     MAL-ED           BRAZIL                         1                    NA                 0.6266524    0.4185287    0.8347762
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0810898   -0.1342785   -0.0279011
0-3 months     MAL-ED           INDIA                          1                    NA                 0.0581858   -0.0805686    0.1969403
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0225509   -0.0198124    0.0649141
0-3 months     MAL-ED           NEPAL                          1                    NA                 0.3430726    0.1559621    0.5301832
0-3 months     MAL-ED           PERU                           0                    NA                -0.2804043   -0.3157348   -0.2450739
0-3 months     MAL-ED           PERU                           1                    NA                -0.1247125   -0.2493296   -0.0000953
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.2015029   -0.2517736   -0.1512321
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0496809   -0.1298601    0.2292220
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1741867   -0.2158034   -0.1325700
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0793960   -0.0175426    0.1763346
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                -0.2681888   -0.2955213   -0.2408562
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0246525   -0.0961409    0.0468359
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.2549358   -0.2732052   -0.2366664
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0818270   -0.1261303   -0.0375237
0-3 months     PROBIT           BELARUS                        0                    NA                -0.4299816   -0.4895758   -0.3703874
0-3 months     PROBIT           BELARUS                        1                    NA                -0.1689217   -0.2016733   -0.1361701
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.1993213   -0.2173485   -0.1812940
0-3 months     PROVIDE          BANGLADESH                     1                    NA                -0.0832638   -0.1407572   -0.0257704
0-3 months     ResPak           PAKISTAN                       0                    NA                -0.4297087   -0.5812339   -0.2781835
0-3 months     ResPak           PAKISTAN                       1                    NA                 0.2129497   -0.0428690    0.4687684
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.1572123   -0.1870322   -0.1273923
0-3 months     SAS-CompFeed     INDIA                          1                    NA                -0.0438600   -0.1016685    0.0139486
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.1835833   -0.1939089   -0.1732577
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.2635772    0.2313269    0.2958276
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1271774   -0.1792800   -0.0750749
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                 0.0089124   -0.1007068    0.1185316
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0627252   -0.1001486   -0.0253018
3-6 months     CMIN             BANGLADESH                     1                    NA                 0.0777202    0.0232712    0.1321692
3-6 months     COHORTS          GUATEMALA                      0                    NA                -0.1087010   -0.1238354   -0.0935666
3-6 months     COHORTS          GUATEMALA                      1                    NA                -0.0193645   -0.0645060    0.0257771
3-6 months     COHORTS          INDIA                          0                    NA                -0.0658480   -0.0716940   -0.0600019
3-6 months     COHORTS          INDIA                          1                    NA                 0.0192544    0.0021833    0.0363255
3-6 months     CONTENT          PERU                           0                    NA                 0.0075755   -0.0156849    0.0308358
3-6 months     CONTENT          PERU                           1                    NA                 0.0407858   -0.0258356    0.1074072
3-6 months     EE               PAKISTAN                       0                    NA                 0.0319046   -0.0037946    0.0676038
3-6 months     EE               PAKISTAN                       1                    NA                 0.1112217    0.0683422    0.1541012
3-6 months     GMS-Nepal        NEPAL                          0                    NA                -0.1783335   -0.1981102   -0.1585568
3-6 months     GMS-Nepal        NEPAL                          1                    NA                -0.0715926   -0.1201808   -0.0230044
3-6 months     IRC              INDIA                          0                    NA                -0.0543796   -0.0867019   -0.0220573
3-6 months     IRC              INDIA                          1                    NA                -0.0404902   -0.1208828    0.0399024
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0277255   -0.0330461   -0.0224049
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                 0.0526058    0.0440633    0.0611483
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0388743   -0.0547989   -0.0229497
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                 0.0671564    0.0419574    0.0923554
3-6 months     Keneba           GAMBIA                         0                    NA                -0.0233234   -0.0429635   -0.0036834
3-6 months     Keneba           GAMBIA                         1                    NA                 0.0455962   -0.0081746    0.0993669
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0296481   -0.0542794   -0.0050168
3-6 months     MAL-ED           BANGLADESH                     1                    NA                 0.0216682   -0.0456407    0.0889771
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0436955    0.0042807    0.0831104
3-6 months     MAL-ED           BRAZIL                         1                    NA                 0.1765731    0.0929298    0.2602163
3-6 months     MAL-ED           INDIA                          0                    NA                -0.0548840   -0.0862905   -0.0234776
3-6 months     MAL-ED           INDIA                          1                    NA                 0.0670652   -0.0099942    0.1441246
3-6 months     MAL-ED           NEPAL                          0                    NA                -0.0445298   -0.0720075   -0.0170521
3-6 months     MAL-ED           NEPAL                          1                    NA                 0.1729771    0.1027450    0.2432093
3-6 months     MAL-ED           PERU                           0                    NA                 0.0075035   -0.0250220    0.0400289
3-6 months     MAL-ED           PERU                           1                    NA                 0.1471238    0.0408067    0.2534409
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0195425   -0.0588961    0.0198110
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.1256418   -0.0366120    0.2878955
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0855616   -0.1194806   -0.0516426
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0143115   -0.1061559    0.0775330
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0550172   -0.0784630   -0.0315714
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0242712   -0.0895189    0.0409765
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0128332   -0.0047452    0.0304115
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                 0.1094013    0.0589700    0.1598326
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0487695    0.0291914    0.0683475
3-6 months     PROBIT           BELARUS                        1                    NA                 0.1990717    0.1699811    0.2281623
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0393536   -0.0556923   -0.0230149
3-6 months     PROVIDE          BANGLADESH                     1                    NA                 0.0779517    0.0242785    0.1316249
3-6 months     ResPak           PAKISTAN                       0                    NA                -0.0113235   -0.0804759    0.0578289
3-6 months     ResPak           PAKISTAN                       1                    NA                 0.1824871    0.0423776    0.3225966
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0365889   -0.0609917   -0.0121861
3-6 months     SAS-CompFeed     INDIA                          1                    NA                 0.0487006    0.0189864    0.0784147
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0921823   -0.1092901   -0.0750745
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0271874   -0.0423241    0.0966990
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0078765   -0.0175869    0.0018339
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0578214    0.0279500    0.0876929
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0809968   -0.1215214   -0.0404721
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                -0.0856558   -0.1448962   -0.0264154
6-9 months     CMIN             BANGLADESH                     0                    NA                -0.0588949   -0.0919787   -0.0258111
6-9 months     CMIN             BANGLADESH                     1                    NA                -0.0418799   -0.0874441    0.0036843
6-9 months     COHORTS          GUATEMALA                      0                    NA                -0.1301896   -0.1430172   -0.1173620
6-9 months     COHORTS          GUATEMALA                      1                    NA                -0.0697609   -0.0999008   -0.0396209
6-9 months     COHORTS          INDIA                          0                    NA                -0.1008904   -0.1059702   -0.0958106
6-9 months     COHORTS          INDIA                          1                    NA                -0.0607286   -0.0755031   -0.0459540
6-9 months     CONTENT          PERU                           0                    NA                -0.0284275   -0.0497998   -0.0070551
6-9 months     CONTENT          PERU                           1                    NA                 0.0277798   -0.0371954    0.0927549
6-9 months     EE               PAKISTAN                       0                    NA                -0.1030854   -0.1286943   -0.0774764
6-9 months     EE               PAKISTAN                       1                    NA                -0.0597740   -0.0938278   -0.0257202
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0542397   -0.0708503   -0.0376292
6-9 months     GMS-Nepal        NEPAL                          1                    NA                 0.0207301   -0.0436568    0.0851170
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                -0.1163362   -0.1373607   -0.0953116
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                -0.0343509   -0.0767854    0.0080835
6-9 months     IRC              INDIA                          0                    NA                -0.0217738   -0.0442879    0.0007404
6-9 months     IRC              INDIA                          1                    NA                 0.0426774   -0.0340819    0.1194367
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0403889   -0.0508509   -0.0299268
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                 0.0010477   -0.0157621    0.0178574
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0152942   -0.0388195    0.0082311
6-9 months     Keneba           GAMBIA                         1                    NA                 0.0145778   -0.0646675    0.0938231
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0071311   -0.0123531    0.0266153
6-9 months     LCNI-5           MALAWI                         1                    NA                 0.0686937    0.0413939    0.0959936
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0687013   -0.0876157   -0.0497869
6-9 months     MAL-ED           BANGLADESH                     1                    NA                -0.0805349   -0.1247235   -0.0363463
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0140574   -0.0241917    0.0523065
6-9 months     MAL-ED           BRAZIL                         1                    NA                 0.0090122   -0.0720677    0.0900922
6-9 months     MAL-ED           INDIA                          0                    NA                -0.0763657   -0.0995611   -0.0531702
6-9 months     MAL-ED           INDIA                          1                    NA                -0.0362147   -0.1182368    0.0458074
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0339443   -0.0536187   -0.0142699
6-9 months     MAL-ED           NEPAL                          1                    NA                -0.0533511   -0.1289972    0.0222951
6-9 months     MAL-ED           PERU                           0                    NA                -0.0311564   -0.0569788   -0.0053339
6-9 months     MAL-ED           PERU                           1                    NA                -0.0530762   -0.1146119    0.0084594
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0214769   -0.0501095    0.0071557
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                 0.0147990   -0.1045738    0.1341717
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1021242   -0.1370819   -0.0671664
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0429663   -0.1401357    0.0542031
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0610464   -0.0802411   -0.0418516
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                -0.0550800   -0.1044210   -0.0057389
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0334339   -0.0471374   -0.0197304
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                -0.0199310   -0.0547992    0.0149372
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0524667    0.0378171    0.0671163
6-9 months     PROBIT           BELARUS                        1                    NA                 0.0952809    0.0628676    0.1276942
6-9 months     PROVIDE          BANGLADESH                     0                    NA                -0.0628588   -0.0743678   -0.0513499
6-9 months     PROVIDE          BANGLADESH                     1                    NA                -0.0528500   -0.0838799   -0.0218201
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0097003   -0.0416647    0.0610653
6-9 months     ResPak           PAKISTAN                       1                    NA                 0.0357287   -0.0680825    0.1395399
6-9 months     SAS-CompFeed     INDIA                          0                    NA                -0.0963972   -0.1101541   -0.0826403
6-9 months     SAS-CompFeed     INDIA                          1                    NA                -0.0435086   -0.0651992   -0.0218181
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                -0.1289401   -0.1497591   -0.1081210
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                -0.0695367   -0.1019701   -0.0371032
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0535609   -0.0700279   -0.0370939
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0418855   -0.1087446    0.0249736
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0366777   -0.0455005   -0.0278549
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                 0.0120896   -0.0144423    0.0386214
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                -0.1299471   -0.1612089   -0.0986853
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                -0.0737192   -0.1460407   -0.0013977
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.1112367   -0.1403520   -0.0821213
9-12 months    CMIN             BANGLADESH                     1                    NA                -0.0584136   -0.1009161   -0.0159111
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0902617   -0.1008555   -0.0796679
9-12 months    COHORTS          GUATEMALA                      1                    NA                -0.0835544   -0.1109246   -0.0561843
9-12 months    COHORTS          INDIA                          0                    NA                -0.0871158   -0.0922023   -0.0820292
9-12 months    COHORTS          INDIA                          1                    NA                -0.0846380   -0.0995697   -0.0697063
9-12 months    CONTENT          PERU                           0                    NA                -0.0312112   -0.0481187   -0.0143037
9-12 months    CONTENT          PERU                           1                    NA                 0.0554977    0.0110326    0.0999627
9-12 months    EE               PAKISTAN                       0                    NA                -0.1122517   -0.1303023   -0.0942010
9-12 months    EE               PAKISTAN                       1                    NA                -0.0834823   -0.1071076   -0.0598569
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0791213   -0.0925967   -0.0656459
9-12 months    GMS-Nepal        NEPAL                          1                    NA                -0.0796339   -0.1227211   -0.0365468
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                -0.0653717   -0.0826767   -0.0480668
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                -0.0410462   -0.0771771   -0.0049153
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0652935   -0.0808956   -0.0496913
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0100172   -0.0223271    0.0423615
9-12 months    IRC              INDIA                          0                    NA                -0.0384567   -0.0569313   -0.0199821
9-12 months    IRC              INDIA                          1                    NA                -0.0203886   -0.0598106    0.0190334
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0603599   -0.0686570   -0.0520628
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                -0.0276334   -0.0418276   -0.0134391
9-12 months    Keneba           GAMBIA                         0                    NA                -0.1000230   -0.1185468   -0.0814992
9-12 months    Keneba           GAMBIA                         1                    NA                -0.1104296   -0.1709784   -0.0498808
9-12 months    LCNI-5           MALAWI                         0                    NA                -0.0501789   -0.0746925   -0.0256653
9-12 months    LCNI-5           MALAWI                         1                    NA                -0.0320826   -0.0664936    0.0023285
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0942864   -0.1115048   -0.0770680
9-12 months    MAL-ED           BANGLADESH                     1                    NA                -0.0508625   -0.1005166   -0.0012084
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0092600   -0.0245956    0.0431157
9-12 months    MAL-ED           BRAZIL                         1                    NA                -0.0024201   -0.0716563    0.0668161
9-12 months    MAL-ED           INDIA                          0                    NA                -0.0943310   -0.1119482   -0.0767138
9-12 months    MAL-ED           INDIA                          1                    NA                -0.0703920   -0.1112847   -0.0294993
9-12 months    MAL-ED           NEPAL                          0                    NA                -0.0632188   -0.0810074   -0.0454302
9-12 months    MAL-ED           NEPAL                          1                    NA                -0.0603306   -0.1165531   -0.0041082
9-12 months    MAL-ED           PERU                           0                    NA                -0.0486286   -0.0713310   -0.0259263
9-12 months    MAL-ED           PERU                           1                    NA                -0.0046358   -0.0658104    0.0565388
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0823338   -0.1093419   -0.0553257
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                -0.1067783   -0.2137591    0.0002024
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1551821   -0.1921216   -0.1182427
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1486201   -0.2358127   -0.0614276
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0457481   -0.0609952   -0.0305010
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                -0.0208663   -0.0619200    0.0201873
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0393536   -0.0509089   -0.0277984
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                -0.0018550   -0.0341472    0.0304371
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0365135    0.0154746    0.0575524
9-12 months    PROBIT           BELARUS                        1                    NA                 0.0735905    0.0484565    0.0987244
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0648002   -0.0763763   -0.0532240
9-12 months    PROVIDE          BANGLADESH                     1                    NA                -0.0402822   -0.0746245   -0.0059400
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0425423   -0.1093793    0.0242946
9-12 months    ResPak           PAKISTAN                       1                    NA                 0.0863021    0.0110553    0.1615489
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0861470   -0.1024873   -0.0698068
9-12 months    SAS-CompFeed     INDIA                          1                    NA                -0.0684287   -0.0971631   -0.0396944
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.1620021   -0.2351427   -0.0888615
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                -0.1255779   -0.2124421   -0.0387137
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0638838   -0.0785239   -0.0492436
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0952911   -0.1625920   -0.0279902
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0612715   -0.0691273   -0.0534157
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                -0.0351025   -0.0596606   -0.0105443
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0770269   -0.1099685   -0.0440852
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0495549   -0.0945513   -0.0045586
12-15 months   CMIN             BANGLADESH                     0                    NA                -0.0840595   -0.1120980   -0.0560210
12-15 months   CMIN             BANGLADESH                     1                    NA                -0.0111872   -0.0456158    0.0232414
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0942438   -0.1059216   -0.0825660
12-15 months   COHORTS          GUATEMALA                      1                    NA                -0.0652858   -0.0866020   -0.0439697
12-15 months   CONTENT          PERU                           0                    NA                -0.0775130   -0.0948226   -0.0602034
12-15 months   CONTENT          PERU                           1                    NA                -0.0573296   -0.0918923   -0.0227669
12-15 months   EE               PAKISTAN                       0                    NA                -0.0213138   -0.0389595   -0.0036681
12-15 months   EE               PAKISTAN                       1                    NA                 0.0257753    0.0075918    0.0439589
12-15 months   GMS-Nepal        NEPAL                          0                    NA                -0.0740462   -0.0845071   -0.0635853
12-15 months   GMS-Nepal        NEPAL                          1                    NA                -0.0387960   -0.0701910   -0.0074011
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0149518   -0.0423436    0.0124399
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                 0.0405114   -0.0046834    0.0857063
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0467776   -0.0678947   -0.0256605
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0300066   -0.0530120   -0.0070012
12-15 months   IRC              INDIA                          0                    NA                -0.0490296   -0.0665921   -0.0314671
12-15 months   IRC              INDIA                          1                    NA                -0.0312300   -0.0873304    0.0248704
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0473350   -0.0545691   -0.0401009
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0396945   -0.0508032   -0.0285858
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0550578   -0.0678765   -0.0422390
12-15 months   Keneba           GAMBIA                         1                    NA                -0.0338776   -0.0709822    0.0032271
12-15 months   LCNI-5           MALAWI                         0                    NA                -0.0404723   -0.0847086    0.0037641
12-15 months   LCNI-5           MALAWI                         1                    NA                -0.0433561   -0.1056927    0.0189806
12-15 months   MAL-ED           BANGLADESH                     0                    NA                -0.0614357   -0.0784356   -0.0444358
12-15 months   MAL-ED           BANGLADESH                     1                    NA                -0.0408038   -0.0788649   -0.0027427
12-15 months   MAL-ED           BRAZIL                         0                    NA                 0.0000845   -0.0241809    0.0243499
12-15 months   MAL-ED           BRAZIL                         1                    NA                -0.0024394   -0.0617237    0.0568450
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0580307   -0.0745162   -0.0415452
12-15 months   MAL-ED           INDIA                          1                    NA                -0.0440385   -0.0888584    0.0007814
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0621167   -0.0786957   -0.0455377
12-15 months   MAL-ED           NEPAL                          1                    NA                -0.0538551   -0.0890087   -0.0187014
12-15 months   MAL-ED           PERU                           0                    NA                -0.0704543   -0.0883389   -0.0525697
12-15 months   MAL-ED           PERU                           1                    NA                -0.0271598   -0.0911629    0.0368434
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0683831   -0.0916289   -0.0451374
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0323302   -0.0978752    0.1625356
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0696725   -0.0969600   -0.0423849
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0667008   -0.1336882    0.0002866
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.1238816   -0.1433776   -0.1043855
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                -0.1279903   -0.1599208   -0.0960599
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0406142   -0.0506510   -0.0305774
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0239058   -0.0520241    0.0042125
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0406839   -0.0513731   -0.0299948
12-15 months   PROVIDE          BANGLADESH                     1                    NA                -0.0419473   -0.0717955   -0.0120991
12-15 months   ResPak           PAKISTAN                       0                    NA                 0.0938202    0.0020103    0.1856300
12-15 months   ResPak           PAKISTAN                       1                    NA                 0.0773660   -0.0045872    0.1593191
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0894252   -0.1054701   -0.0733803
12-15 months   SAS-CompFeed     INDIA                          1                    NA                -0.0718272   -0.0963701   -0.0472843
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0114584   -0.0293574    0.0522742
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0137601   -0.0735898    0.0460696
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0695775   -0.0841510   -0.0550041
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0060587   -0.0741779    0.0862953
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0630542   -0.0740115   -0.0520968
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0597049   -0.0956528   -0.0237570
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0614916   -0.0894573   -0.0335259
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                -0.0922390   -0.1379392   -0.0465388
15-18 months   CMIN             BANGLADESH                     0                    NA                -0.0723879   -0.0968253   -0.0479505
15-18 months   CMIN             BANGLADESH                     1                    NA                -0.0478096   -0.0790838   -0.0165353
15-18 months   COHORTS          GUATEMALA                      0                    NA                -0.0606232   -0.0727897   -0.0484566
15-18 months   COHORTS          GUATEMALA                      1                    NA                -0.0336373   -0.0586201   -0.0086545
15-18 months   CONTENT          PERU                           0                    NA                -0.0145011   -0.0318280    0.0028258
15-18 months   CONTENT          PERU                           1                    NA                 0.0394713   -0.0193510    0.0982935
15-18 months   EE               PAKISTAN                       0                    NA                -0.0330575   -0.0478388   -0.0182762
15-18 months   EE               PAKISTAN                       1                    NA                -0.0161798   -0.0340177    0.0016582
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0738598   -0.0866292   -0.0610904
15-18 months   GMS-Nepal        NEPAL                          1                    NA                -0.0436844   -0.0822651   -0.0051038
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0204501   -0.0331331   -0.0077671
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0021715   -0.0421539    0.0378109
15-18 months   IRC              INDIA                          0                    NA                -0.0419658   -0.0563037   -0.0276278
15-18 months   IRC              INDIA                          1                    NA                -0.0077671   -0.0753706    0.0598364
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0375207   -0.0445035   -0.0305379
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                -0.0234069   -0.0336840   -0.0131297
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0334604   -0.0454095   -0.0215113
15-18 months   Keneba           GAMBIA                         1                    NA                -0.0305436   -0.0721281    0.0110409
15-18 months   LCNI-5           MALAWI                         0                    NA                -0.0518079   -0.0887772   -0.0148385
15-18 months   LCNI-5           MALAWI                         1                    NA                -0.0333112   -0.0669668    0.0003444
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0469875   -0.0618805   -0.0320946
15-18 months   MAL-ED           BANGLADESH                     1                    NA                -0.0372543   -0.0731726   -0.0013360
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0190273   -0.0416069    0.0035522
15-18 months   MAL-ED           BRAZIL                         1                    NA                -0.0408797   -0.0982378    0.0164783
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0378061   -0.0518099   -0.0238024
15-18 months   MAL-ED           INDIA                          1                    NA                -0.0460691   -0.0801498   -0.0119883
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0508206   -0.0672661   -0.0343751
15-18 months   MAL-ED           NEPAL                          1                    NA                -0.0969593   -0.1330554   -0.0608632
15-18 months   MAL-ED           PERU                           0                    NA                -0.0422540   -0.0581543   -0.0263536
15-18 months   MAL-ED           PERU                           1                    NA                 0.0026131   -0.0580205    0.0632466
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0277473   -0.0483615   -0.0071331
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0373940   -0.1037087    0.0289208
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0897642   -0.1143545   -0.0651740
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0620760   -0.1207313   -0.0034206
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0633040   -0.0797164   -0.0468916
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0291656   -0.0607357    0.0024046
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0181453   -0.0270855   -0.0092050
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                -0.0096526   -0.0332591    0.0139540
15-18 months   PROVIDE          BANGLADESH                     0                    NA                -0.0379696   -0.0471472   -0.0287919
15-18 months   PROVIDE          BANGLADESH                     1                    NA                -0.0295379   -0.0583603   -0.0007155
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0180564   -0.0355559   -0.0005569
15-18 months   SAS-CompFeed     INDIA                          1                    NA                 0.0048647   -0.0200956    0.0298249
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0416157   -0.0587016   -0.0245297
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                -0.0292112   -0.0494309   -0.0089914
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0201474   -0.0361224   -0.0041725
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0074474   -0.0601263    0.0452315
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0620951   -0.0739113   -0.0502789
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0640413   -0.0940116   -0.0340711
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0588169   -0.0837960   -0.0338377
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0162799   -0.0331062    0.0656660
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0155928   -0.0380103    0.0068247
18-21 months   CMIN             BANGLADESH                     1                    NA                 0.0082816   -0.0175872    0.0341505
18-21 months   COHORTS          GUATEMALA                      0                    NA                -0.0235076   -0.0344460   -0.0125693
18-21 months   COHORTS          GUATEMALA                      1                    NA                -0.0047867   -0.0279354    0.0183620
18-21 months   CONTENT          PERU                           0                    NA                -0.0051874   -0.0208002    0.0104253
18-21 months   CONTENT          PERU                           1                    NA                -0.0266889   -0.0856599    0.0322821
18-21 months   EE               PAKISTAN                       0                    NA                -0.0368207   -0.0494595   -0.0241818
18-21 months   EE               PAKISTAN                       1                    NA                -0.0356456   -0.0582659   -0.0130254
18-21 months   GMS-Nepal        NEPAL                          0                    NA                 0.0163832    0.0026276    0.0301388
18-21 months   GMS-Nepal        NEPAL                          1                    NA                 0.0144505   -0.0037091    0.0326101
18-21 months   IRC              INDIA                          0                    NA                -0.0409592   -0.0555376   -0.0263808
18-21 months   IRC              INDIA                          1                    NA                -0.0460083   -0.0739441   -0.0180725
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0229154   -0.0350416   -0.0107891
18-21 months   Keneba           GAMBIA                         1                    NA                -0.0122256   -0.0583942    0.0339430
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0106629   -0.0284903    0.0071646
18-21 months   LCNI-5           MALAWI                         1                    NA                -0.0195340   -0.0476999    0.0086320
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0148914   -0.0275988   -0.0021840
18-21 months   MAL-ED           BANGLADESH                     1                    NA                -0.0211700   -0.0547517    0.0124118
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0261349   -0.0509710   -0.0012988
18-21 months   MAL-ED           BRAZIL                         1                    NA                 0.0199477   -0.0915543    0.1314497
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0046802   -0.0078122    0.0171727
18-21 months   MAL-ED           INDIA                          1                    NA                 0.0158972   -0.0159685    0.0477628
18-21 months   MAL-ED           NEPAL                          0                    NA                -0.0344004   -0.0479583   -0.0208426
18-21 months   MAL-ED           NEPAL                          1                    NA                 0.0096183   -0.0342865    0.0535231
18-21 months   MAL-ED           PERU                           0                    NA                -0.0091292   -0.0251179    0.0068594
18-21 months   MAL-ED           PERU                           1                    NA                 0.0057931   -0.0527203    0.0643066
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0318348   -0.0525041   -0.0111655
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                -0.0312158   -0.0885387    0.0261071
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0320878   -0.0573279   -0.0068477
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0082483   -0.0658028    0.0493061
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0407715   -0.0545786   -0.0269645
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                -0.0240798   -0.0530077    0.0048480
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0333176   -0.0420212   -0.0246140
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0064986   -0.0141126    0.0271097
18-21 months   PROVIDE          BANGLADESH                     0                    NA                -0.0156833   -0.0241889   -0.0071776
18-21 months   PROVIDE          BANGLADESH                     1                    NA                 0.0264481    0.0005677    0.0523284
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0699835   -0.0826323   -0.0573347
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                -0.0620319   -0.0968575   -0.0272063
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0111690   -0.0131295    0.0354676
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                 0.0429027    0.0010469    0.0847585
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0012944   -0.0226641    0.0252529
21-24 months   CMIN             BANGLADESH                     1                    NA                 0.0366624    0.0065182    0.0668067
21-24 months   COHORTS          GUATEMALA                      0                    NA                -0.0085996   -0.0177321    0.0005328
21-24 months   COHORTS          GUATEMALA                      1                    NA                 0.0036689   -0.0118384    0.0191762
21-24 months   CONTENT          PERU                           0                    NA                 0.0183268   -0.0099197    0.0465733
21-24 months   CONTENT          PERU                           1                    NA                 0.0720773   -0.0057372    0.1498917
21-24 months   EE               PAKISTAN                       0                    NA                -0.0004276   -0.0154939    0.0146386
21-24 months   EE               PAKISTAN                       1                    NA                -0.0217083   -0.0440896    0.0006729
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0483513    0.0306590    0.0660437
21-24 months   GMS-Nepal        NEPAL                          1                    NA                 0.0430980    0.0111869    0.0750092
21-24 months   IRC              INDIA                          0                    NA                -0.0141855   -0.0282796   -0.0000914
21-24 months   IRC              INDIA                          1                    NA                -0.0087901   -0.0532534    0.0356732
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0126226    0.0008438    0.0244015
21-24 months   Keneba           GAMBIA                         1                    NA                 0.0362302    0.0033345    0.0691259
21-24 months   LCNI-5           MALAWI                         0                    NA                 0.0193880   -0.0004736    0.0392496
21-24 months   LCNI-5           MALAWI                         1                    NA                 0.0381538    0.0145857    0.0617219
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0243776    0.0113853    0.0373698
21-24 months   MAL-ED           BANGLADESH                     1                    NA                 0.0296483   -0.0046806    0.0639772
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0163601   -0.0010904    0.0338106
21-24 months   MAL-ED           BRAZIL                         1                    NA                 0.0204762   -0.0203417    0.0612942
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0283606    0.0161400    0.0405813
21-24 months   MAL-ED           INDIA                          1                    NA                 0.0389533    0.0166437    0.0612629
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0027973   -0.0103702    0.0159649
21-24 months   MAL-ED           NEPAL                          1                    NA                 0.0380617   -0.0219820    0.0981055
21-24 months   MAL-ED           PERU                           0                    NA                 0.0577221    0.0408481    0.0745961
21-24 months   MAL-ED           PERU                           1                    NA                 0.0530092    0.0216830    0.0843354
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0419838    0.0241316    0.0598361
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                 0.0559853    0.0042822    0.1076883
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0091889   -0.0148200    0.0331978
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0026604   -0.0565889    0.0512681
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0391148    0.0266036    0.0516261
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                 0.0603936    0.0251154    0.0956718
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0589542    0.0502034    0.0677050
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                 0.0565060    0.0325042    0.0805077
21-24 months   PROVIDE          BANGLADESH                     0                    NA                 0.0472965    0.0381706    0.0564223
21-24 months   PROVIDE          BANGLADESH                     1                    NA                 0.0444038    0.0171977    0.0716099
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0176110    0.0040456    0.0311764
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                 0.0204531   -0.0133478    0.0542540


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
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740557    0.0691191    0.0789922
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
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
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0034426   -0.0083086    0.0014234
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
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
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0289482   -0.0379437   -0.0199527
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
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0521209   -0.0596089   -0.0446330
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
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0450644   -0.0511488   -0.0389801
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
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0328742   -0.0389268   -0.0268217
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


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.3740990   -0.0282254    0.7764233
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                  0.1617407   -0.0058803    0.3293617
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                  0.2609843    0.1407750    0.3811935
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                  0.2159409    0.1931785    0.2387033
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                  0.2884852    0.2060691    0.3709013
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                  0.1842456    0.1207041    0.2477871
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                  0.5401023    0.3541157    0.7260888
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                  0.1674672    0.1582650    0.1766695
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                  0.1516714    0.1179553    0.1853874
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                  0.7706100    0.6113891    0.9298309
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                  0.1972918    0.1018864    0.2926972
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                  0.5414853    0.3258569    0.7571137
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                  0.1392757   -0.0078155    0.2863669
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.3205218    0.1284413    0.5126022
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.1556918    0.0260410    0.2853426
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.2511838    0.0646616    0.4377059
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2535827    0.1480753    0.3590900
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                  0.2435363    0.1669711    0.3201015
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                  0.1731088    0.1251937    0.2210239
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                  0.2610599    0.1980710    0.3240488
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                  0.1160575    0.0557973    0.1763177
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.6426584    0.3432660    0.9420508
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                  0.1133523    0.0445563    0.1821484
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.4471605    0.4133374    0.4809837
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                  0.1360898    0.0145713    0.2576083
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                  0.1404454    0.0743135    0.2065773
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                  0.0893365    0.0417430    0.1369301
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                  0.0851024    0.0670739    0.1031309
3-6 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    0                  0.0332103   -0.0370688    0.1034895
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0793171    0.0233969    0.1352373
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.1067410    0.0542025    0.1592794
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0138894   -0.0720846    0.0998635
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.0803313    0.0708842    0.0897784
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.1060307    0.0768529    0.1352085
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0689196    0.0116118    0.1262274
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0513163   -0.0203922    0.1230247
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                  0.1328776    0.0402691    0.2254860
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.1219492    0.0389479    0.2049506
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.2175069    0.1419614    0.2930524
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                  0.1396203    0.0287052    0.2505353
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.1451843   -0.0217643    0.3121329
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0712501   -0.0268648    0.1693651
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                  0.0307460   -0.0387985    0.1002906
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0965681    0.0433787    0.1497575
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                  0.1503022    0.1175726    0.1830318
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.1173053    0.0612307    0.1733799
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.1938106    0.0385679    0.3490533
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                  0.0852895    0.0418643    0.1287147
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1193697    0.0478525    0.1908869
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0656980    0.0343101    0.0970858
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0046590   -0.0763534    0.0670354
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.0170150   -0.0386552    0.0726853
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0604288    0.0277123    0.0931452
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0401618    0.0245303    0.0557933
6-9 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    0                  0.0562072   -0.0122425    0.1246569
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0433113    0.0006669    0.0859558
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                  0.0749698    0.0085022    0.1414374
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                  0.0819853    0.0347182    0.1292523
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.0644512   -0.0159136    0.1448159
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                  0.0414365    0.0222510    0.0606220
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                  0.0298720   -0.0527909    0.1125349
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                  0.0615626    0.0276558    0.0954695
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0118336   -0.0599160    0.0362487
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.0050452   -0.0945551    0.0844647
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0401510   -0.0452230    0.1255249
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                 -0.0194068   -0.0976039    0.0587904
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.0219198   -0.0887283    0.0448886
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0362759   -0.0864902    0.1590420
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0591579   -0.0441026    0.1624184
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                  0.0059664   -0.0469784    0.0589111
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0135029   -0.0239029    0.0509086
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0428142    0.0107484    0.0748799
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0100088   -0.0230484    0.0430660
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0260284   -0.0900597    0.1421165
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0528886    0.0215436    0.0842336
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0594034    0.0207645    0.0980423
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0116755   -0.0571413    0.0804922
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0487673    0.0208360    0.0766985
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0562279   -0.0229320    0.1353878
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                  0.0528231    0.0009575    0.1046887
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                  0.0067073   -0.0226268    0.0360414
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                  0.0024778   -0.0132814    0.0182369
9-12 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    0                  0.0867089    0.0390883    0.1343294
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0287694   -0.0005251    0.0580638
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0005127   -0.0458237    0.0447984
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                  0.0243255   -0.0157548    0.0644059
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0753107    0.0380544    0.1125669
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.0180681   -0.0252954    0.0614315
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0327265    0.0169915    0.0484616
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0104066   -0.0738563    0.0530430
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                  0.0180964   -0.0241278    0.0603205
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0434239   -0.0091298    0.0959776
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                 -0.0116801   -0.0888624    0.0655022
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0239390   -0.0209313    0.0688092
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0028882   -0.0561130    0.0618893
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.0439929   -0.0211950    0.1091807
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0244445   -0.1348272    0.0859381
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0065620   -0.0882174    0.1013414
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                  0.0248818   -0.0187866    0.0685502
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0374986    0.0031828    0.0718144
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                  0.0370769    0.0037404    0.0704135
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                  0.0245179   -0.0117103    0.0607461
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                  0.1288444    0.0274169    0.2302719
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                  0.0177183   -0.0170320    0.0524687
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0364242   -0.0784958    0.1513441
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0314073   -0.1003253    0.0375107
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0261690    0.0003981    0.0519400
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0274719   -0.0282633    0.0832071
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.0728723    0.0298963    0.1158484
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0289580    0.0045697    0.0533462
12-15 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    0                  0.0201834   -0.0183699    0.0587366
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                  0.0470892    0.0219535    0.0722248
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0352501    0.0021519    0.0683484
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                  0.0554633    0.0018754    0.1090512
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0167710   -0.0183286    0.0518705
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                  0.0177996   -0.0408369    0.0764360
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                  0.0076405   -0.0054869    0.0207679
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                  0.0211802   -0.0181839    0.0605443
12-15 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         1                    0                 -0.0028838   -0.0791414    0.0733737
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0206319   -0.0210622    0.0623260
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.0025239   -0.0664282    0.0613804
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                  0.0139922   -0.0338269    0.0618114
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                  0.0082616   -0.0308170    0.0473403
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0432946   -0.0228924    0.1094815
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.1007133   -0.0316604    0.2330871
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0029717   -0.0693895    0.0753329
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0041087   -0.0423552    0.0341378
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0167084   -0.0130820    0.0464988
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0012634   -0.0327946    0.0302679
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0164542   -0.1404765    0.1075681
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                  0.0175980   -0.0090048    0.0442008
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0252185   -0.0982614    0.0478244
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0756363   -0.0058820    0.1571545
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0033493   -0.0342476    0.0409462
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0307474   -0.0843072    0.0228124
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0245784   -0.0147907    0.0639475
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0269858   -0.0009049    0.0548766
15-18 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    0                  0.0539724   -0.0073347    0.1152795
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                  0.0168777   -0.0063143    0.0400697
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0301754   -0.0105630    0.0709137
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0182786   -0.0230669    0.0596241
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0341987   -0.0350168    0.1034141
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                  0.0141138    0.0023454    0.0258822
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                  0.0029167   -0.0404059    0.0462394
15-18 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         1                    0                  0.0184967   -0.0312706    0.0682639
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                  0.0097332   -0.0292108    0.0486772
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.0218524   -0.0836316    0.0399267
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                 -0.0082630   -0.0451229    0.0285970
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0461387   -0.0859796   -0.0062978
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0448670   -0.0178688    0.1076028
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0096467   -0.0792423    0.0599489
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0276883   -0.0359589    0.0913354
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                  0.0341384   -0.0014392    0.0697160
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0084927   -0.0167584    0.0337438
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0084317   -0.0218252    0.0386886
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0229210   -0.0169074    0.0627495
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0124045   -0.0140173    0.0388263
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0127001   -0.0423987    0.0677988
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0019463   -0.0341656    0.0302731
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0750967    0.0197819    0.1304116
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                  0.0238744   -0.0105685    0.0583173
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0187209   -0.0070720    0.0445139
18-21 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    0                 -0.0215015   -0.0822256    0.0392226
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                  0.0011751   -0.0249473    0.0272974
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0019327   -0.0250093    0.0211439
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0050491   -0.0365634    0.0264652
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0106898   -0.0371191    0.0584987
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0088711   -0.0426054    0.0248632
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                 -0.0062785   -0.0422330    0.0296760
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                  0.0460826   -0.0680449    0.1602102
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                  0.0112170   -0.0230886    0.0455225
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0440188   -0.0018965    0.0899340
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                  0.0149224   -0.0457623    0.0756071
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0006190   -0.0604970    0.0617349
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0238395   -0.0384975    0.0861764
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                  0.0166917   -0.0154088    0.0487922
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0398162    0.0173550    0.0622773
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0421313    0.0148509    0.0694118
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0079516   -0.0291468    0.0450500
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0317336   -0.0167098    0.0801770
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                  0.0353680   -0.0032874    0.0740235
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                  0.0122686   -0.0057090    0.0302461
21-24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    0                  0.0537505   -0.0290321    0.1365330
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0212807   -0.0484330    0.0058716
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                 -0.0052533   -0.0418741    0.0313675
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0053954   -0.0411149    0.0519057
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                  0.0236075   -0.0112687    0.0584838
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                  0.0187658   -0.0121857    0.0497173
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0052708   -0.0313033    0.0418448
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                  0.0041161   -0.0403205    0.0485527
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                  0.0105927   -0.0151050    0.0362903
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                  0.0352644   -0.0259603    0.0964891
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                 -0.0047129   -0.0402994    0.0308737
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0140015   -0.0406321    0.0686351
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0118493   -0.0710585    0.0473600
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0212788   -0.0162207    0.0587782
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0024482   -0.0279855    0.0230891
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0028927   -0.0315887    0.0258034
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0028421   -0.0337695    0.0394537


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0341459   -0.0274486   0.0957405
0-3 months     CMIN             BANGLADESH                     0                    NA                 0.0479836   -0.0182623   0.1142295
0-3 months     COHORTS          GUATEMALA                      0                    NA                 0.0145426    0.0072538   0.0218315
0-3 months     COHORTS          INDIA                          0                    NA                 0.0249585    0.0218136   0.0281034
0-3 months     EE               PAKISTAN                       0                    NA                 0.1263705    0.0862600   0.1664810
0-3 months     GMS-Nepal        NEPAL                          0                    NA                 0.0323914    0.0195300   0.0452527
0-3 months     IRC              INDIA                          0                    NA                 0.0606701    0.0337759   0.0875643
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0527140    0.0494726   0.0559554
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0457785    0.0345850   0.0569721
0-3 months     Keneba           GAMBIA                         0                    NA                 0.0436289    0.0306288   0.0566290
0-3 months     MAL-ED           BANGLADESH                     0                    NA                 0.0296386    0.0118222   0.0474550
0-3 months     MAL-ED           BRAZIL                         0                    NA                 0.0489042    0.0204283   0.0773801
0-3 months     MAL-ED           INDIA                          0                    NA                 0.0220515   -0.0004463   0.0445494
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0322117    0.0088635   0.0555599
0-3 months     MAL-ED           PERU                           0                    NA                 0.0176037    0.0024343   0.0327730
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0226932    0.0035699   0.0418166
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0366001    0.0173730   0.0558272
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0362023    0.0221682   0.0502364
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0236751    0.0158114   0.0315388
0-3 months     PROBIT           BELARUS                        0                    NA                 0.0017052    0.0002029   0.0032074
0-3 months     PROVIDE          BANGLADESH                     0                    NA                 0.0112811    0.0047871   0.0177750
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.2081593    0.0878507   0.3284679
0-3 months     SAS-CompFeed     INDIA                          0                    NA                 0.0298557    0.0096304   0.0500809
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0433441    0.0390090   0.0476791
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                 0.0292159    0.0034957   0.0549362
3-6 months     CMIN             BANGLADESH                     0                    NA                 0.0541446    0.0263007   0.0819885
3-6 months     COHORTS          GUATEMALA                      0                    NA                 0.0123627    0.0054177   0.0193078
3-6 months     COHORTS          INDIA                          0                    NA                 0.0097895    0.0076275   0.0119515
3-6 months     CONTENT          PERU                           0                    NA                 0.0098074    0.0021476   0.0174672
3-6 months     EE               PAKISTAN                       0                    NA                 0.0344257    0.0096521   0.0591993
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0169358    0.0076279   0.0262437
3-6 months     IRC              INDIA                          0                    NA                 0.0024878   -0.0077547   0.0127303
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0242829    0.0212544   0.0273113
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0298153    0.0213106   0.0383201
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0065240    0.0007969   0.0122511
3-6 months     MAL-ED           BANGLADESH                     0                    NA                 0.0072073   -0.0044454   0.0188599
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0160336    0.0034920   0.0285753
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0188438    0.0055163   0.0321713
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0214513    0.0101297   0.0327729
3-6 months     MAL-ED           PERU                           0                    NA                 0.0182426    0.0051225   0.0313627
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0146081   -0.0010324   0.0302485
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0150168   -0.0011435   0.0311770
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0041165   -0.0067372   0.0149702
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0139409    0.0062897   0.0215920
3-6 months     PROBIT           BELARUS                        0                    NA                 0.0011098    0.0003273   0.0018923
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0123911    0.0060353   0.0187469
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0479262    0.0045907   0.0912616
3-6 months     SAS-CompFeed     INDIA                          0                    NA                 0.0199541    0.0120225   0.0278857
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076421    0.0026730   0.0126112
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0065842    0.0034405   0.0097278
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0009688   -0.0158458   0.0139081
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0070569   -0.0151938   0.0293075
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0094350    0.0041673   0.0147028
6-9 months     COHORTS          INDIA                          0                    NA                 0.0047834    0.0029168   0.0066500
6-9 months     CONTENT          PERU                           0                    NA                 0.0048144   -0.0018004   0.0114293
6-9 months     EE               PAKISTAN                       0                    NA                 0.0182099   -0.0003048   0.0367246
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0103466   -0.0004942   0.0211873
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                 0.0211831    0.0081936   0.0341725
6-9 months     IRC              INDIA                          0                    NA                 0.0055061   -0.0039783   0.0149905
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0114406    0.0063095   0.0165717
6-9 months     Keneba           GAMBIA                         0                    NA                 0.0027279   -0.0049376   0.0103934
6-9 months     LCNI-5           MALAWI                         0                    NA                 0.0223829    0.0096530   0.0351129
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0013219   -0.0085768   0.0059330
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0052740   -0.0152621   0.0047140
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0060301   -0.0064155   0.0184758
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0006152   -0.0094306   0.0082002
6-9 months     MAL-ED           PERU                           0                    NA                -0.0024220   -0.0123601   0.0075160
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0036941   -0.0082914   0.0156797
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0087143   -0.0087258   0.0261545
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0014915   -0.0066574   0.0096405
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0020701   -0.0029856   0.0071258
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0002907   -0.0004761   0.0010575
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0014325   -0.0022447   0.0051096
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0079513   -0.0239353   0.0398380
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0140490    0.0058892   0.0222088
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0237096    0.0078667   0.0395525
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009966   -0.0035859   0.0055791
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0051131    0.0023456   0.0078805
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0111315   -0.0033754   0.0256383
9-12 months    CMIN             BANGLADESH                     0                    NA                 0.0211910   -0.0004205   0.0428025
9-12 months    COHORTS          GUATEMALA                      0                    NA                 0.0016652   -0.0037020   0.0070323
9-12 months    COHORTS          INDIA                          0                    NA                 0.0003561   -0.0014792   0.0021914
9-12 months    CONTENT          PERU                           0                    NA                 0.0085110    0.0028363   0.0141858
9-12 months    EE               PAKISTAN                       0                    NA                 0.0110628   -0.0017805   0.0239060
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0007026   -0.0086823   0.0072770
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0066464   -0.0040775   0.0173703
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0165928    0.0063559   0.0268297
9-12 months    IRC              INDIA                          0                    NA                 0.0023254   -0.0027893   0.0074401
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0082389    0.0039977   0.0124801
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0010123   -0.0067287   0.0047040
9-12 months    LCNI-5           MALAWI                         0                    NA                 0.0060812   -0.0098133   0.0219757
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0070810   -0.0012007   0.0153627
9-12 months    MAL-ED           BRAZIL                         0                    NA                -0.0010816   -0.0098352   0.0076720
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0030911   -0.0039785   0.0101607
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0009223   -0.0057674   0.0076120
9-12 months    MAL-ED           PERU                           0                    NA                 0.0067026   -0.0026401   0.0160452
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0025283   -0.0148689   0.0098124
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002161   -0.0143560   0.0147881
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0032733   -0.0037027   0.0102493
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0050541    0.0002287   0.0098796
9-12 months    PROBIT           BELARUS                        0                    NA                 0.0002317   -0.0005899   0.0010532
9-12 months    PROVIDE          BANGLADESH                     0                    NA                 0.0017532   -0.0021034   0.0056097
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0314212    0.0026715   0.0601710
9-12 months    SAS-CompFeed     INDIA                          0                    NA                 0.0049507   -0.0041518   0.0140532
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0157384   -0.0325304   0.0640073
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017770   -0.0059001   0.0023460
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0021842   -0.0002866   0.0046550
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0057932   -0.0058629   0.0174494
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0231797    0.0051130   0.0412463
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0067251    0.0012268   0.0122235
12-15 months   CONTENT          PERU                           0                    NA                 0.0023145   -0.0017499   0.0063788
12-15 months   EE               PAKISTAN                       0                    NA                 0.0208417    0.0092960   0.0323874
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0073213    0.0003579   0.0142847
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                 0.0051608   -0.0080059   0.0183275
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0036172   -0.0035727   0.0108070
12-15 months   IRC              INDIA                          0                    NA                 0.0035777   -0.0032902   0.0104455
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0022706   -0.0013689   0.0059100
12-15 months   Keneba           GAMBIA                         0                    NA                 0.0017843   -0.0016212   0.0051897
12-15 months   LCNI-5           MALAWI                         0                    NA                 0.0006607   -0.0320790   0.0334003
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0057234   -0.0010414   0.0124882
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0031275   -0.0109733   0.0047183
12-15 months   MAL-ED           INDIA                          0                    NA                 0.0015083   -0.0054917   0.0085084
12-15 months   MAL-ED           NEPAL                          0                    NA                 0.0046617   -0.0009088   0.0102323
12-15 months   MAL-ED           PERU                           0                    NA                 0.0051011   -0.0040847   0.0142869
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0092073   -0.0012450   0.0196595
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003161   -0.0098745   0.0105067
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0020772   -0.0083079   0.0041535
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0022829   -0.0018874   0.0064532
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0002268   -0.0032288   0.0027752
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0107696   -0.0511694   0.0296302
12-15 months   SAS-CompFeed     INDIA                          0                    NA                 0.0046862   -0.0027360   0.0121083
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0025838   -0.0326646   0.0274970
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0048772    0.0000037   0.0097506
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0007794   -0.0036820   0.0052407
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0065955   -0.0197849   0.0065938
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0096545   -0.0063723   0.0256813
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0058177   -0.0001461   0.0117814
15-18 months   CONTENT          PERU                           0                    NA                 0.0038642   -0.0015399   0.0092682
15-18 months   EE               PAKISTAN                       0                    NA                 0.0074025   -0.0025293   0.0173344
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0049022   -0.0024401   0.0122445
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0036141   -0.0044562   0.0116844
15-18 months   IRC              INDIA                          0                    NA                 0.0034491   -0.0042361   0.0111343
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0046464    0.0013140   0.0079789
15-18 months   Keneba           GAMBIA                         0                    NA                 0.0001039   -0.0034858   0.0036937
15-18 months   LCNI-5           MALAWI                         0                    NA                 0.0061996   -0.0140503   0.0264495
15-18 months   MAL-ED           BANGLADESH                     0                    NA                 0.0011932   -0.0044255   0.0068120
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0013149   -0.0076591   0.0050293
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0001973   -0.0056552   0.0052605
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0041140   -0.0087713   0.0005434
15-18 months   MAL-ED           PERU                           0                    NA                 0.0061974   -0.0011763   0.0135712
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0008003   -0.0064356   0.0048349
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0041300   -0.0055602   0.0138203
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0056134   -0.0006035   0.0118302
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0012379   -0.0023181   0.0047939
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0003259   -0.0025667   0.0032184
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0063408   -0.0044541   0.0171356
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0047031   -0.0056725   0.0150788
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009404   -0.0027448   0.0046256
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0002530   -0.0042763   0.0037703
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0150511    0.0024324   0.0276698
18-21 months   CMIN             BANGLADESH                     0                    NA                 0.0090985   -0.0046233   0.0228203
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0040318   -0.0016446   0.0097082
18-21 months   CONTENT          PERU                           0                    NA                -0.0016216   -0.0066365   0.0033933
18-21 months   EE               PAKISTAN                       0                    NA                 0.0010984   -0.0087432   0.0109400
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0007906   -0.0049921   0.0034110
18-21 months   IRC              INDIA                          0                    NA                 0.0008776   -0.0030510   0.0048061
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0016306   -0.0027152   0.0059764
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0046413   -0.0176254   0.0083428
18-21 months   MAL-ED           BANGLADESH                     0                    NA                -0.0006304   -0.0060118   0.0047509
18-21 months   MAL-ED           BRAZIL                         0                    NA                 0.0057759   -0.0052800   0.0168319
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0010938   -0.0040347   0.0062223
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0062952    0.0008360   0.0117543
18-21 months   MAL-ED           PERU                           0                    NA                 0.0010151   -0.0054984   0.0075287
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0003317   -0.0061702   0.0055068
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038846   -0.0052567   0.0130258
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0023825   -0.0030693   0.0078343
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0053489    0.0021683   0.0085295
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0047434    0.0017670   0.0077197
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010740   -0.0034474   0.0055954
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0065321   -0.0038076   0.0168718
21-24 months   CMIN             BANGLADESH                     0                    NA                 0.0143217   -0.0018955   0.0305390
21-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0029825   -0.0014014   0.0073664
21-24 months   CONTENT          PERU                           0                    NA                 0.0070724   -0.0052937   0.0194385
21-24 months   EE               PAKISTAN                       0                    NA                -0.0060919   -0.0171054   0.0049215
21-24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0002244   -0.0061047   0.0056558
21-24 months   IRC              INDIA                          0                    NA                 0.0002774   -0.0055078   0.0060625
21-24 months   Keneba           GAMBIA                         0                    NA                 0.0031637   -0.0004923   0.0068197
21-24 months   LCNI-5           MALAWI                         0                    NA                 0.0068416   -0.0039644   0.0176476
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0012406   -0.0042748   0.0067561
21-24 months   MAL-ED           BRAZIL                         0                    NA                 0.0001269   -0.0046719   0.0049257
21-24 months   MAL-ED           INDIA                          0                    NA                 0.0014280   -0.0027917   0.0056477
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0026575   -0.0046661   0.0099810
21-24 months   MAL-ED           PERU                           0                    NA                -0.0007477   -0.0053277   0.0038323
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0018883   -0.0034659   0.0072425
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003492   -0.0090239   0.0083256
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0015766   -0.0044397   0.0075930
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0001921   -0.0035847   0.0032005
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0010622   -0.0040036   0.0018791
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003831   -0.0053228   0.0045567
