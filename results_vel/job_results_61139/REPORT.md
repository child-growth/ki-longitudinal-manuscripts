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
0-3 months     CMC-V-BCS-2002   INDIA                          0             262     331
0-3 months     CMC-V-BCS-2002   INDIA                          1              69     331
0-3 months     CMIN             BANGLADESH                     0              26      43
0-3 months     CMIN             BANGLADESH                     1              17      43
0-3 months     COHORTS          GUATEMALA                      0             721     798
0-3 months     COHORTS          GUATEMALA                      1              77     798
0-3 months     COHORTS          INDIA                          0            5881    6667
0-3 months     COHORTS          INDIA                          1             786    6667
0-3 months     CONTENT          PERU                           0              28      29
0-3 months     CONTENT          PERU                           1               1      29
0-3 months     EE               PAKISTAN                       0             179     320
0-3 months     EE               PAKISTAN                       1             141     320
0-3 months     GMS-Nepal        NEPAL                          0             422     509
0-3 months     GMS-Nepal        NEPAL                          1              87     509
0-3 months     IRC              INDIA                          0             345     394
0-3 months     IRC              INDIA                          1              49     394
0-3 months     JiVitA-3         BANGLADESH                     0           13841   20287
0-3 months     JiVitA-3         BANGLADESH                     1            6446   20287
0-3 months     JiVitA-4         BANGLADESH                     0            1249    1795
0-3 months     JiVitA-4         BANGLADESH                     1             546    1795
0-3 months     Keneba           GAMBIA                         0            1437    1571
0-3 months     Keneba           GAMBIA                         1             134    1571
0-3 months     MAL-ED           BANGLADESH                     0             205     246
0-3 months     MAL-ED           BANGLADESH                     1              41     246
0-3 months     MAL-ED           BRAZIL                         0             192     218
0-3 months     MAL-ED           BRAZIL                         1              26     218
0-3 months     MAL-ED           INDIA                          0             201     238
0-3 months     MAL-ED           INDIA                          1              37     238
0-3 months     MAL-ED           NEPAL                          0             206     232
0-3 months     MAL-ED           NEPAL                          1              26     232
0-3 months     MAL-ED           PERU                           0             246     282
0-3 months     MAL-ED           PERU                           1              36     282
0-3 months     MAL-ED           SOUTH AFRICA                   0             240     272
0-3 months     MAL-ED           SOUTH AFRICA                   1              32     272
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             200     237
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              37     237
0-3 months     NIH-Birth        BANGLADESH                     0             477     565
0-3 months     NIH-Birth        BANGLADESH                     1              88     565
0-3 months     NIH-Crypto       BANGLADESH                     0             624     725
0-3 months     NIH-Crypto       BANGLADESH                     1             101     725
0-3 months     PROBIT           BELARUS                        0           15221   15327
0-3 months     PROBIT           BELARUS                        1             106   15327
0-3 months     PROVIDE          BANGLADESH                     0             576     640
0-3 months     PROVIDE          BANGLADESH                     1              64     640
0-3 months     ResPak           PAKISTAN                       0              55      80
0-3 months     ResPak           PAKISTAN                       1              25      80
0-3 months     SAS-CompFeed     INDIA                          0             919    1265
0-3 months     SAS-CompFeed     INDIA                          1             346    1265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1885    2019
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             134    2019
0-3 months     ZVITAMBO         ZIMBABWE                       0            7321    8172
0-3 months     ZVITAMBO         ZIMBABWE                       1             851    8172
3-6 months     CMC-V-BCS-2002   INDIA                          0             252     322
3-6 months     CMC-V-BCS-2002   INDIA                          1              70     322
3-6 months     CMIN             BANGLADESH                     0             114     184
3-6 months     CMIN             BANGLADESH                     1              70     184
3-6 months     COHORTS          GUATEMALA                      0             696     809
3-6 months     COHORTS          GUATEMALA                      1             113     809
3-6 months     COHORTS          INDIA                          0            5926    6709
3-6 months     COHORTS          INDIA                          1             783    6709
3-6 months     CONTENT          PERU                           0             194     214
3-6 months     CONTENT          PERU                           1              20     214
3-6 months     EE               PAKISTAN                       0             157     275
3-6 months     EE               PAKISTAN                       1             118     275
3-6 months     GMS-Nepal        NEPAL                          0             392     469
3-6 months     GMS-Nepal        NEPAL                          1              77     469
3-6 months     IRC              INDIA                          0             349     399
3-6 months     IRC              INDIA                          1              50     399
3-6 months     JiVitA-3         BANGLADESH                     0            8836   12720
3-6 months     JiVitA-3         BANGLADESH                     1            3884   12720
3-6 months     JiVitA-4         BANGLADESH                     0            1309    1818
3-6 months     JiVitA-4         BANGLADESH                     1             509    1818
3-6 months     Keneba           GAMBIA                         0            1263    1399
3-6 months     Keneba           GAMBIA                         1             136    1399
3-6 months     MAL-ED           BANGLADESH                     0             196     233
3-6 months     MAL-ED           BANGLADESH                     1              37     233
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
3-6 months     NIH-Birth        BANGLADESH                     0             440     522
3-6 months     NIH-Birth        BANGLADESH                     1              82     522
3-6 months     NIH-Crypto       BANGLADESH                     0             602     702
3-6 months     NIH-Crypto       BANGLADESH                     1             100     702
3-6 months     PROBIT           BELARUS                        0           13226   13317
3-6 months     PROBIT           BELARUS                        1              91   13317
3-6 months     PROVIDE          BANGLADESH                     0             539     601
3-6 months     PROVIDE          BANGLADESH                     1              62     601
3-6 months     ResPak           PAKISTAN                       0             116     156
3-6 months     ResPak           PAKISTAN                       1              40     156
3-6 months     SAS-CompFeed     INDIA                          0             830    1118
3-6 months     SAS-CompFeed     INDIA                          1             288    1118
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1548    1664
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             116    1664
3-6 months     ZVITAMBO         ZIMBABWE                       0            5511    6138
3-6 months     ZVITAMBO         ZIMBABWE                       1             627    6138
6-9 months     CMC-V-BCS-2002   INDIA                          0             258     325
6-9 months     CMC-V-BCS-2002   INDIA                          1              67     325
6-9 months     CMIN             BANGLADESH                     0             107     177
6-9 months     CMIN             BANGLADESH                     1              70     177
6-9 months     COHORTS          GUATEMALA                      0             695     824
6-9 months     COHORTS          GUATEMALA                      1             129     824
6-9 months     COHORTS          INDIA                          0            5287    5993
6-9 months     COHORTS          INDIA                          1             706    5993
6-9 months     CONTENT          PERU                           0             194     214
6-9 months     CONTENT          PERU                           1              20     214
6-9 months     EE               PAKISTAN                       0             173     301
6-9 months     EE               PAKISTAN                       1             128     301
6-9 months     GMS-Nepal        NEPAL                          0             402     477
6-9 months     GMS-Nepal        NEPAL                          1              75     477
6-9 months     Guatemala BSC    GUATEMALA                      0             158     214
6-9 months     Guatemala BSC    GUATEMALA                      1              56     214
6-9 months     IRC              INDIA                          0             358     410
6-9 months     IRC              INDIA                          1              52     410
6-9 months     JiVitA-4         BANGLADESH                     0            2252    3073
6-9 months     JiVitA-4         BANGLADESH                     1             821    3073
6-9 months     Keneba           GAMBIA                         0             817     905
6-9 months     Keneba           GAMBIA                         1              88     905
6-9 months     LCNI-5           MALAWI                         0             356     561
6-9 months     LCNI-5           MALAWI                         1             205     561
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
6-9 months     NIH-Crypto       BANGLADESH                     0             599     693
6-9 months     NIH-Crypto       BANGLADESH                     1              94     693
6-9 months     PROBIT           BELARUS                        0           12355   12436
6-9 months     PROBIT           BELARUS                        1              81   12436
6-9 months     PROVIDE          BANGLADESH                     0             514     576
6-9 months     PROVIDE          BANGLADESH                     1              62     576
6-9 months     ResPak           PAKISTAN                       0             106     143
6-9 months     ResPak           PAKISTAN                       1              37     143
6-9 months     SAS-CompFeed     INDIA                          0             832    1138
6-9 months     SAS-CompFeed     INDIA                          1             306    1138
6-9 months     SAS-FoodSuppl    INDIA                          0             188     309
6-9 months     SAS-FoodSuppl    INDIA                          1             121     309
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1396    1496
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             100    1496
6-9 months     ZVITAMBO         ZIMBABWE                       0            4998    5570
6-9 months     ZVITAMBO         ZIMBABWE                       1             572    5570
9-12 months    CMC-V-BCS-2002   INDIA                          0             261     327
9-12 months    CMC-V-BCS-2002   INDIA                          1              66     327
9-12 months    CMIN             BANGLADESH                     0              96     160
9-12 months    CMIN             BANGLADESH                     1              64     160
9-12 months    COHORTS          GUATEMALA                      0             761     932
9-12 months    COHORTS          GUATEMALA                      1             171     932
9-12 months    COHORTS          INDIA                          0            4562    5173
9-12 months    COHORTS          INDIA                          1             611    5173
9-12 months    CONTENT          PERU                           0             192     212
9-12 months    CONTENT          PERU                           1              20     212
9-12 months    EE               PAKISTAN                       0             185     325
9-12 months    EE               PAKISTAN                       1             140     325
9-12 months    GMS-Nepal        NEPAL                          0             379     454
9-12 months    GMS-Nepal        NEPAL                          1              75     454
9-12 months    Guatemala BSC    GUATEMALA                      0             136     186
9-12 months    Guatemala BSC    GUATEMALA                      1              50     186
9-12 months    iLiNS-Zinc       BURKINA FASO                   0             876    1120
9-12 months    iLiNS-Zinc       BURKINA FASO                   1             244    1120
9-12 months    IRC              INDIA                          0             352     403
9-12 months    IRC              INDIA                          1              51     403
9-12 months    JiVitA-4         BANGLADESH                     0            2568    3518
9-12 months    JiVitA-4         BANGLADESH                     1             950    3518
9-12 months    Keneba           GAMBIA                         0             802     883
9-12 months    Keneba           GAMBIA                         1              81     883
9-12 months    LCNI-5           MALAWI                         0             232     383
9-12 months    LCNI-5           MALAWI                         1             151     383
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
9-12 months    NIH-Birth        BANGLADESH                     0             405     481
9-12 months    NIH-Birth        BANGLADESH                     1              76     481
9-12 months    NIH-Crypto       BANGLADESH                     0             589     683
9-12 months    NIH-Crypto       BANGLADESH                     1              94     683
9-12 months    PROBIT           BELARUS                        0           12608   12687
9-12 months    PROBIT           BELARUS                        1              79   12687
9-12 months    PROVIDE          BANGLADESH                     0             509     569
9-12 months    PROVIDE          BANGLADESH                     1              60     569
9-12 months    ResPak           PAKISTAN                       0             102     140
9-12 months    ResPak           PAKISTAN                       1              38     140
9-12 months    SAS-CompFeed     INDIA                          0             827    1141
9-12 months    SAS-CompFeed     INDIA                          1             314    1141
9-12 months    SAS-FoodSuppl    INDIA                          0             181     298
9-12 months    SAS-FoodSuppl    INDIA                          1             117     298
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1015    1083
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              68    1083
9-12 months    ZVITAMBO         ZIMBABWE                       0            4512    5054
9-12 months    ZVITAMBO         ZIMBABWE                       1             542    5054
12-15 months   CMC-V-BCS-2002   INDIA                          0             262     334
12-15 months   CMC-V-BCS-2002   INDIA                          1              72     334
12-15 months   CMIN             BANGLADESH                     0              94     159
12-15 months   CMIN             BANGLADESH                     1              65     159
12-15 months   COHORTS          GUATEMALA                      0             690     891
12-15 months   COHORTS          GUATEMALA                      1             201     891
12-15 months   CONTENT          PERU                           0             181     199
12-15 months   CONTENT          PERU                           1              18     199
12-15 months   EE               PAKISTAN                       0             164     298
12-15 months   EE               PAKISTAN                       1             134     298
12-15 months   GMS-Nepal        NEPAL                          0             373     452
12-15 months   GMS-Nepal        NEPAL                          1              79     452
12-15 months   Guatemala BSC    GUATEMALA                      0              71      96
12-15 months   Guatemala BSC    GUATEMALA                      1              25      96
12-15 months   iLiNS-Zinc       BURKINA FASO                   0             776     982
12-15 months   iLiNS-Zinc       BURKINA FASO                   1             206     982
12-15 months   IRC              INDIA                          0             343     392
12-15 months   IRC              INDIA                          1              49     392
12-15 months   JiVitA-4         BANGLADESH                     0            2558    3551
12-15 months   JiVitA-4         BANGLADESH                     1             993    3551
12-15 months   Keneba           GAMBIA                         0            1219    1340
12-15 months   Keneba           GAMBIA                         1             121    1340
12-15 months   LCNI-5           MALAWI                         0              72     126
12-15 months   LCNI-5           MALAWI                         1              54     126
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
12-15 months   NIH-Crypto       BANGLADESH                     0             571     666
12-15 months   NIH-Crypto       BANGLADESH                     1              95     666
12-15 months   PROBIT           BELARUS                        0             999    1001
12-15 months   PROBIT           BELARUS                        1               2    1001
12-15 months   PROVIDE          BANGLADESH                     0             485     537
12-15 months   PROVIDE          BANGLADESH                     1              52     537
12-15 months   ResPak           PAKISTAN                       0              62      92
12-15 months   ResPak           PAKISTAN                       1              30      92
12-15 months   SAS-CompFeed     INDIA                          0             851    1165
12-15 months   SAS-CompFeed     INDIA                          1             314    1165
12-15 months   SAS-FoodSuppl    INDIA                          0             184     300
12-15 months   SAS-FoodSuppl    INDIA                          1             116     300
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             740     791
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              51     791
12-15 months   ZVITAMBO         ZIMBABWE                       0            1615    1858
12-15 months   ZVITAMBO         ZIMBABWE                       1             243    1858
15-18 months   CMC-V-BCS-2002   INDIA                          0             253     325
15-18 months   CMC-V-BCS-2002   INDIA                          1              72     325
15-18 months   CMIN             BANGLADESH                     0              97     163
15-18 months   CMIN             BANGLADESH                     1              66     163
15-18 months   COHORTS          GUATEMALA                      0             624     799
15-18 months   COHORTS          GUATEMALA                      1             175     799
15-18 months   CONTENT          PERU                           0             172     189
15-18 months   CONTENT          PERU                           1              17     189
15-18 months   EE               PAKISTAN                       0             159     277
15-18 months   EE               PAKISTAN                       1             118     277
15-18 months   GMS-Nepal        NEPAL                          0             396     477
15-18 months   GMS-Nepal        NEPAL                          1              81     477
15-18 months   iLiNS-Zinc       BURKINA FASO                   0             835    1053
15-18 months   iLiNS-Zinc       BURKINA FASO                   1             218    1053
15-18 months   IRC              INDIA                          0             337     383
15-18 months   IRC              INDIA                          1              46     383
15-18 months   JiVitA-4         BANGLADESH                     0            2516    3510
15-18 months   JiVitA-4         BANGLADESH                     1             994    3510
15-18 months   Keneba           GAMBIA                         0            1243    1362
15-18 months   Keneba           GAMBIA                         1             119    1362
15-18 months   LCNI-5           MALAWI                         0              71     119
15-18 months   LCNI-5           MALAWI                         1              48     119
15-18 months   MAL-ED           BANGLADESH                     0             179     212
15-18 months   MAL-ED           BANGLADESH                     1              33     212
15-18 months   MAL-ED           BRAZIL                         0             157     175
15-18 months   MAL-ED           BRAZIL                         1              18     175
15-18 months   MAL-ED           INDIA                          0             190     226
15-18 months   MAL-ED           INDIA                          1              36     226
15-18 months   MAL-ED           NEPAL                          0             200     227
15-18 months   MAL-ED           NEPAL                          1              27     227
15-18 months   MAL-ED           PERU                           0             185     214
15-18 months   MAL-ED           PERU                           1              29     214
15-18 months   MAL-ED           SOUTH AFRICA                   0             202     225
15-18 months   MAL-ED           SOUTH AFRICA                   1              23     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             185     220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              35     220
15-18 months   NIH-Birth        BANGLADESH                     0             372     449
15-18 months   NIH-Birth        BANGLADESH                     1              77     449
15-18 months   NIH-Crypto       BANGLADESH                     0             518     605
15-18 months   NIH-Crypto       BANGLADESH                     1              87     605
15-18 months   PROBIT           BELARUS                        0             278     279
15-18 months   PROBIT           BELARUS                        1               1     279
15-18 months   PROVIDE          BANGLADESH                     0             483     533
15-18 months   PROVIDE          BANGLADESH                     1              50     533
15-18 months   SAS-CompFeed     INDIA                          0             854    1171
15-18 months   SAS-CompFeed     INDIA                          1             317    1171
15-18 months   SAS-FoodSuppl    INDIA                          0             177     290
15-18 months   SAS-FoodSuppl    INDIA                          1             113     290
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             620     664
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              44     664
15-18 months   ZVITAMBO         ZIMBABWE                       0            1010    1198
15-18 months   ZVITAMBO         ZIMBABWE                       1             188    1198
18-21 months   CMC-V-BCS-2002   INDIA                          0             242     310
18-21 months   CMC-V-BCS-2002   INDIA                          1              68     310
18-21 months   CMIN             BANGLADESH                     0             100     165
18-21 months   CMIN             BANGLADESH                     1              65     165
18-21 months   COHORTS          GUATEMALA                      0             614     795
18-21 months   COHORTS          GUATEMALA                      1             181     795
18-21 months   CONTENT          PERU                           0             167     183
18-21 months   CONTENT          PERU                           1              16     183
18-21 months   EE               PAKISTAN                       0             159     255
18-21 months   EE               PAKISTAN                       1              96     255
18-21 months   GMS-Nepal        NEPAL                          0             372     447
18-21 months   GMS-Nepal        NEPAL                          1              75     447
18-21 months   IRC              INDIA                          0             332     380
18-21 months   IRC              INDIA                          1              48     380
18-21 months   Keneba           GAMBIA                         0            1218    1349
18-21 months   Keneba           GAMBIA                         1             131    1349
18-21 months   LCNI-5           MALAWI                         0             296     455
18-21 months   LCNI-5           MALAWI                         1             159     455
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             176     208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              32     208
18-21 months   NIH-Birth        BANGLADESH                     0             350     422
18-21 months   NIH-Birth        BANGLADESH                     1              72     422
18-21 months   NIH-Crypto       BANGLADESH                     0             472     547
18-21 months   NIH-Crypto       BANGLADESH                     1              75     547
18-21 months   PROBIT           BELARUS                        0             213     214
18-21 months   PROBIT           BELARUS                        1               1     214
18-21 months   PROVIDE          BANGLADESH                     0             488     542
18-21 months   PROVIDE          BANGLADESH                     1              54     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              11      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      11
18-21 months   ZVITAMBO         ZIMBABWE                       0             533     657
18-21 months   ZVITAMBO         ZIMBABWE                       1             124     657
21-24 months   CMC-V-BCS-2002   INDIA                          0             245     311
21-24 months   CMC-V-BCS-2002   INDIA                          1              66     311
21-24 months   CMIN             BANGLADESH                     0              78     133
21-24 months   CMIN             BANGLADESH                     1              55     133
21-24 months   COHORTS          GUATEMALA                      0             656     876
21-24 months   COHORTS          GUATEMALA                      1             220     876
21-24 months   CONTENT          PERU                           0              33      38
21-24 months   CONTENT          PERU                           1               5      38
21-24 months   EE               PAKISTAN                       0              65     106
21-24 months   EE               PAKISTAN                       1              41     106
21-24 months   GMS-Nepal        NEPAL                          0             287     343
21-24 months   GMS-Nepal        NEPAL                          1              56     343
21-24 months   IRC              INDIA                          0             340     389
21-24 months   IRC              INDIA                          1              49     389
21-24 months   Keneba           GAMBIA                         0            1093    1208
21-24 months   Keneba           GAMBIA                         1             115    1208
21-24 months   LCNI-5           MALAWI                         0             246     387
21-24 months   LCNI-5           MALAWI                         1             141     387
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0             175     206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              31     206
21-24 months   NIH-Birth        BANGLADESH                     0             342     411
21-24 months   NIH-Birth        BANGLADESH                     1              69     411
21-24 months   NIH-Crypto       BANGLADESH                     0             425     493
21-24 months   NIH-Crypto       BANGLADESH                     1              68     493
21-24 months   PROBIT           BELARUS                        0             209     210
21-24 months   PROBIT           BELARUS                        1               1     210
21-24 months   PROVIDE          BANGLADESH                     0             435     485
21-24 months   PROVIDE          BANGLADESH                     1              50     485
21-24 months   ZVITAMBO         ZIMBABWE                       0             236     303
21-24 months   ZVITAMBO         ZIMBABWE                       1              67     303


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
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/e0f06703-7716-4399-967b-cfb22a4d70c5/61e77f2e-b106-43a3-85e0-69f106081c86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e0f06703-7716-4399-967b-cfb22a4d70c5/61e77f2e-b106-43a3-85e0-69f106081c86/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e0f06703-7716-4399-967b-cfb22a4d70c5/61e77f2e-b106-43a3-85e0-69f106081c86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.7609697   0.7344600   0.7874795
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.6935663   0.6412212   0.7459113
0-3 months     CMIN             BANGLADESH                     0                    NA                0.8653110   0.7708771   0.9597448
0-3 months     CMIN             BANGLADESH                     1                    NA                0.8378361   0.7407447   0.9349275
0-3 months     COHORTS          GUATEMALA                      0                    NA                0.8120550   0.7945015   0.8296085
0-3 months     COHORTS          GUATEMALA                      1                    NA                0.6667653   0.6151986   0.7183321
0-3 months     COHORTS          INDIA                          0                    NA                0.8193037   0.8144235   0.8241838
0-3 months     COHORTS          INDIA                          1                    NA                0.7389706   0.7261394   0.7518018
0-3 months     EE               PAKISTAN                       0                    NA                0.7292820   0.6980355   0.7605286
0-3 months     EE               PAKISTAN                       1                    NA                0.6463111   0.6137534   0.6788688
0-3 months     GMS-Nepal        NEPAL                          0                    NA                0.8273218   0.8082688   0.8463748
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8305211   0.7936703   0.8673720
0-3 months     IRC              INDIA                          0                    NA                0.7736631   0.7527826   0.7945435
0-3 months     IRC              INDIA                          1                    NA                0.7444882   0.6917339   0.7972426
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                0.8846318   0.8811644   0.8880991
0-3 months     JiVitA-3         BANGLADESH                     1                    NA                0.8435461   0.8387641   0.8483282
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                0.8966651   0.8839850   0.9093451
0-3 months     JiVitA-4         BANGLADESH                     1                    NA                0.8749212   0.8569214   0.8929209
0-3 months     Keneba           GAMBIA                         0                    NA                0.9306988   0.9192138   0.9421838
0-3 months     Keneba           GAMBIA                         1                    NA                0.8919905   0.8511688   0.9328122
0-3 months     MAL-ED           BANGLADESH                     0                    NA                0.8897051   0.8652649   0.9141454
0-3 months     MAL-ED           BANGLADESH                     1                    NA                0.8237080   0.7606044   0.8868116
0-3 months     MAL-ED           BRAZIL                         0                    NA                1.0713309   1.0340392   1.1086225
0-3 months     MAL-ED           BRAZIL                         1                    NA                1.0112408   0.9248236   1.0976579
0-3 months     MAL-ED           INDIA                          0                    NA                0.7636085   0.7390448   0.7881722
0-3 months     MAL-ED           INDIA                          1                    NA                0.7321037   0.6762053   0.7880020
0-3 months     MAL-ED           NEPAL                          0                    NA                0.9653738   0.9376806   0.9930669
0-3 months     MAL-ED           NEPAL                          1                    NA                0.9028913   0.8070397   0.9987428
0-3 months     MAL-ED           PERU                           0                    NA                0.9748072   0.9472649   1.0023495
0-3 months     MAL-ED           PERU                           1                    NA                0.9381287   0.8806931   0.9955642
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.9271797   0.8993501   0.9550093
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.0342714   0.9372269   1.1313158
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8942082   0.8610189   0.9273974
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8552851   0.7835607   0.9270095
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                0.8175061   0.8001774   0.8348348
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                0.8105388   0.7580236   0.8630540
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                0.8946943   0.8792863   0.9101024
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8345835   0.7932668   0.8759002
0-3 months     PROBIT           BELARUS                        0                    NA                0.8358612   0.8250538   0.8466686
0-3 months     PROBIT           BELARUS                        1                    NA                0.8064396   0.7989068   0.8139723
0-3 months     PROVIDE          BANGLADESH                     0                    NA                0.9055758   0.8899957   0.9211558
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.8650968   0.8194280   0.9107656
0-3 months     ResPak           PAKISTAN                       0                    NA                0.8032792   0.7449695   0.8615889
0-3 months     ResPak           PAKISTAN                       1                    NA                0.8355956   0.7134370   0.9577541
0-3 months     SAS-CompFeed     INDIA                          0                    NA                0.8044966   0.7826892   0.8263041
0-3 months     SAS-CompFeed     INDIA                          1                    NA                0.7538896   0.7248917   0.7828874
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9297651   0.9192830   0.9402471
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8192757   0.7813084   0.8572431
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.9532490   0.9478461   0.9586520
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.9182283   0.9027925   0.9336641
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.4785829   0.4562911   0.5008747
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.4619117   0.4210828   0.5027406
3-6 months     CMIN             BANGLADESH                     0                    NA                0.4331813   0.4031088   0.4632538
3-6 months     CMIN             BANGLADESH                     1                    NA                0.4796146   0.4435589   0.5156702
3-6 months     COHORTS          GUATEMALA                      0                    NA                0.4623476   0.4507969   0.4738984
3-6 months     COHORTS          GUATEMALA                      1                    NA                0.4461409   0.4142851   0.4779968
3-6 months     COHORTS          INDIA                          0                    NA                0.4844542   0.4804005   0.4885079
3-6 months     COHORTS          INDIA                          1                    NA                0.4718278   0.4606757   0.4829800
3-6 months     CONTENT          PERU                           0                    NA                0.5847067   0.5626545   0.6067588
3-6 months     CONTENT          PERU                           1                    NA                0.6084646   0.5333022   0.6836269
3-6 months     EE               PAKISTAN                       0                    NA                0.4742614   0.4478327   0.5006900
3-6 months     EE               PAKISTAN                       1                    NA                0.4748084   0.4476767   0.5019401
3-6 months     GMS-Nepal        NEPAL                          0                    NA                0.4960211   0.4807169   0.5113253
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.5041997   0.4715136   0.5368858
3-6 months     IRC              INDIA                          0                    NA                0.4732255   0.4547008   0.4917501
3-6 months     IRC              INDIA                          1                    NA                0.4258290   0.3711403   0.4805178
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                0.4373026   0.4338073   0.4407980
3-6 months     JiVitA-3         BANGLADESH                     1                    NA                0.4502247   0.4455245   0.4549248
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                0.4357711   0.4250799   0.4464623
3-6 months     JiVitA-4         BANGLADESH                     1                    NA                0.4460163   0.4313612   0.4606715
3-6 months     Keneba           GAMBIA                         0                    NA                0.4463132   0.4364588   0.4561677
3-6 months     Keneba           GAMBIA                         1                    NA                0.4577540   0.4277041   0.4878040
3-6 months     MAL-ED           BANGLADESH                     0                    NA                0.4762815   0.4577508   0.4948122
3-6 months     MAL-ED           BANGLADESH                     1                    NA                0.4849369   0.4393488   0.5305249
3-6 months     MAL-ED           BRAZIL                         0                    NA                0.5847532   0.5514208   0.6180855
3-6 months     MAL-ED           BRAZIL                         1                    NA                0.5298443   0.4370620   0.6226267
3-6 months     MAL-ED           INDIA                          0                    NA                0.4407364   0.4216941   0.4597787
3-6 months     MAL-ED           INDIA                          1                    NA                0.4699716   0.4220299   0.5179132
3-6 months     MAL-ED           NEPAL                          0                    NA                0.5129853   0.4928818   0.5330889
3-6 months     MAL-ED           NEPAL                          1                    NA                0.5745450   0.4949663   0.6541236
3-6 months     MAL-ED           PERU                           0                    NA                0.4986520   0.4780976   0.5192064
3-6 months     MAL-ED           PERU                           1                    NA                0.4994425   0.4515405   0.5473446
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.4608809   0.4353188   0.4864430
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.4895659   0.3472414   0.6318904
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4575836   0.4305218   0.4846453
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4543882   0.4016913   0.5070851
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                0.4634625   0.4462410   0.4806840
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                0.4298408   0.3713725   0.4883091
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                0.4970202   0.4855077   0.5085326
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.5014959   0.4655358   0.5374560
3-6 months     PROBIT           BELARUS                        0                    NA                0.6656099   0.6574512   0.6737687
3-6 months     PROBIT           BELARUS                        1                    NA                0.6589306   0.6487405   0.6691207
3-6 months     PROVIDE          BANGLADESH                     0                    NA                0.4869376   0.4731636   0.5007117
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.5026663   0.4589195   0.5464132
3-6 months     ResPak           PAKISTAN                       0                    NA                0.4690788   0.4383303   0.4998274
3-6 months     ResPak           PAKISTAN                       1                    NA                0.5293249   0.4678861   0.5907638
3-6 months     SAS-CompFeed     INDIA                          0                    NA                0.4513288   0.4381192   0.4645385
3-6 months     SAS-CompFeed     INDIA                          1                    NA                0.4467626   0.4258381   0.4676870
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4162246   0.4073594   0.4250898
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4701674   0.4328440   0.5074907
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.4757859   0.4710330   0.4805389
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.5014175   0.4870547   0.5157804
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                0.2599453   0.2412915   0.2785990
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.2579286   0.2205708   0.2952864
6-9 months     CMIN             BANGLADESH                     0                    NA                0.2102344   0.1842825   0.2361863
6-9 months     CMIN             BANGLADESH                     1                    NA                0.2499471   0.2189962   0.2808981
6-9 months     COHORTS          GUATEMALA                      0                    NA                0.2131629   0.2030372   0.2232887
6-9 months     COHORTS          GUATEMALA                      1                    NA                0.2173428   0.1872862   0.2473994
6-9 months     COHORTS          INDIA                          0                    NA                0.2823597   0.2781801   0.2865393
6-9 months     COHORTS          INDIA                          1                    NA                0.2670263   0.2557505   0.2783021
6-9 months     CONTENT          PERU                           0                    NA                0.3213957   0.3007838   0.3420075
6-9 months     CONTENT          PERU                           1                    NA                0.3084314   0.2499456   0.3669173
6-9 months     EE               PAKISTAN                       0                    NA                0.2450412   0.2259844   0.2640981
6-9 months     EE               PAKISTAN                       1                    NA                0.2643298   0.2391308   0.2895288
6-9 months     GMS-Nepal        NEPAL                          0                    NA                0.1827148   0.1712034   0.1942263
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.2141496   0.1687264   0.2595728
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                0.2349496   0.2169044   0.2529947
6-9 months     Guatemala BSC    GUATEMALA                      1                    NA                0.2756235   0.2312963   0.3199507
6-9 months     IRC              INDIA                          0                    NA                0.2599631   0.2454403   0.2744859
6-9 months     IRC              INDIA                          1                    NA                0.2721928   0.2276600   0.3167257
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                0.2406001   0.2344743   0.2467258
6-9 months     JiVitA-4         BANGLADESH                     1                    NA                0.2375259   0.2279604   0.2470914
6-9 months     Keneba           GAMBIA                         0                    NA                0.2053605   0.1925046   0.2182164
6-9 months     Keneba           GAMBIA                         1                    NA                0.1792680   0.1397722   0.2187639
6-9 months     LCNI-5           MALAWI                         0                    NA                0.2908728   0.2752093   0.3065363
6-9 months     LCNI-5           MALAWI                         1                    NA                0.2721859   0.2522483   0.2921235
6-9 months     MAL-ED           BANGLADESH                     0                    NA                0.2460608   0.2299656   0.2621560
6-9 months     MAL-ED           BANGLADESH                     1                    NA                0.2257823   0.1921222   0.2594423
6-9 months     MAL-ED           BRAZIL                         0                    NA                0.3767237   0.3503394   0.4031079
6-9 months     MAL-ED           BRAZIL                         1                    NA                0.4299932   0.3169981   0.5429884
6-9 months     MAL-ED           INDIA                          0                    NA                0.2303533   0.2142586   0.2464480
6-9 months     MAL-ED           INDIA                          1                    NA                0.2402775   0.2021984   0.2783566
6-9 months     MAL-ED           NEPAL                          0                    NA                0.2702389   0.2552337   0.2852441
6-9 months     MAL-ED           NEPAL                          1                    NA                0.2666596   0.2126743   0.3206449
6-9 months     MAL-ED           PERU                           0                    NA                0.2583932   0.2416656   0.2751208
6-9 months     MAL-ED           PERU                           1                    NA                0.2822663   0.2365563   0.3279762
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                0.2567057   0.2343016   0.2791098
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.2768063   0.2102968   0.3433159
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2345407   0.2078165   0.2612649
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2547584   0.1954961   0.3140208
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                0.2316332   0.2166493   0.2466172
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                0.2618187   0.2279296   0.2957079
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                0.2686974   0.2570948   0.2802999
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2605316   0.2363683   0.2846949
6-9 months     PROBIT           BELARUS                        0                    NA                0.4734602   0.4644924   0.4824280
6-9 months     PROBIT           BELARUS                        1                    NA                0.5119068   0.4967620   0.5270516
6-9 months     PROVIDE          BANGLADESH                     0                    NA                0.2475080   0.2347389   0.2602772
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2623237   0.2271261   0.2975212
6-9 months     ResPak           PAKISTAN                       0                    NA                0.2030751   0.1744813   0.2316689
6-9 months     ResPak           PAKISTAN                       1                    NA                0.2507598   0.2003426   0.3011771
6-9 months     SAS-CompFeed     INDIA                          0                    NA                0.2048496   0.1894609   0.2202383
6-9 months     SAS-CompFeed     INDIA                          1                    NA                0.2224655   0.2031060   0.2418251
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                0.1840723   0.1635814   0.2045632
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                0.2201543   0.1941743   0.2461342
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2579271   0.2489111   0.2669431
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2405671   0.1975369   0.2835972
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                0.2582494   0.2534633   0.2630354
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                0.2587063   0.2453684   0.2720442
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2073455   0.1884875   0.2262034
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2296534   0.1850426   0.2742641
9-12 months    CMIN             BANGLADESH                     0                    NA                0.1683549   0.1404067   0.1963030
9-12 months    CMIN             BANGLADESH                     1                    NA                0.1652537   0.1282166   0.2022907
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.1585653   0.1493517   0.1677789
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.1462490   0.1236456   0.1688524
9-12 months    COHORTS          INDIA                          0                    NA                0.2192003   0.2148591   0.2235415
9-12 months    COHORTS          INDIA                          1                    NA                0.2194646   0.2065669   0.2323622
9-12 months    CONTENT          PERU                           0                    NA                0.2236646   0.2048053   0.2425238
9-12 months    CONTENT          PERU                           1                    NA                0.2090812   0.1413388   0.2768236
9-12 months    EE               PAKISTAN                       0                    NA                0.2519113   0.2294411   0.2743815
9-12 months    EE               PAKISTAN                       1                    NA                0.2464947   0.2218909   0.2710984
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.1425142   0.1292601   0.1557682
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1483651   0.1114505   0.1852797
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                0.2061925   0.1845877   0.2277972
9-12 months    Guatemala BSC    GUATEMALA                      1                    NA                0.2109806   0.1585919   0.2633693
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                0.2352054   0.2204257   0.2499852
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2700697   0.2412176   0.2989219
9-12 months    IRC              INDIA                          0                    NA                0.2167330   0.2017048   0.2317612
9-12 months    IRC              INDIA                          1                    NA                0.1860865   0.1426654   0.2295077
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                0.1546656   0.1496508   0.1596805
9-12 months    JiVitA-4         BANGLADESH                     1                    NA                0.1557923   0.1486034   0.1629813
9-12 months    Keneba           GAMBIA                         0                    NA                0.1592971   0.1473438   0.1712503
9-12 months    Keneba           GAMBIA                         1                    NA                0.1373669   0.0876844   0.1870494
9-12 months    LCNI-5           MALAWI                         0                    NA                0.2028165   0.1827440   0.2228891
9-12 months    LCNI-5           MALAWI                         1                    NA                0.2009340   0.1739512   0.2279168
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.1742848   0.1596848   0.1888847
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.1608837   0.1228474   0.1989201
9-12 months    MAL-ED           BRAZIL                         0                    NA                0.2806998   0.2466100   0.3147895
9-12 months    MAL-ED           BRAZIL                         1                    NA                0.3114891   0.2178972   0.4050810
9-12 months    MAL-ED           INDIA                          0                    NA                0.1757273   0.1602223   0.1912323
9-12 months    MAL-ED           INDIA                          1                    NA                0.1953739   0.1591616   0.2315862
9-12 months    MAL-ED           NEPAL                          0                    NA                0.1855034   0.1699809   0.2010260
9-12 months    MAL-ED           NEPAL                          1                    NA                0.1405779   0.1101123   0.1710435
9-12 months    MAL-ED           PERU                           0                    NA                0.1897585   0.1726870   0.2068300
9-12 months    MAL-ED           PERU                           1                    NA                0.1766510   0.1441133   0.2091888
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.2124087   0.1889371   0.2358802
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.1967954   0.1308616   0.2627292
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1616404   0.1388753   0.1844055
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1913627   0.1500340   0.2326914
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                0.1661374   0.1514794   0.1807954
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                0.1500303   0.1198905   0.1801701
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1969018   0.1853491   0.2084544
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.2029767   0.1815763   0.2243771
9-12 months    PROBIT           BELARUS                        0                    NA                0.3669205   0.3521713   0.3816697
9-12 months    PROBIT           BELARUS                        1                    NA                0.3296341   0.3145778   0.3446904
9-12 months    PROVIDE          BANGLADESH                     0                    NA                0.1806273   0.1708624   0.1903922
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1511769   0.1203154   0.1820384
9-12 months    ResPak           PAKISTAN                       0                    NA                0.0956937   0.0598699   0.1315174
9-12 months    ResPak           PAKISTAN                       1                    NA                0.0726159   0.0305260   0.1147058
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.1953069   0.1876898   0.2029240
9-12 months    SAS-CompFeed     INDIA                          1                    NA                0.1913712   0.1742836   0.2084588
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.1257648   0.1014231   0.1501065
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.1660443   0.1359938   0.1960947
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2065639   0.1960663   0.2170615
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1831529   0.1513995   0.2149063
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1801073   0.1753160   0.1848986
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1799583   0.1658089   0.1941078
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1499615   0.1348162   0.1651068
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1547001   0.1243638   0.1850364
12-15 months   CMIN             BANGLADESH                     0                    NA                0.1612810   0.1361478   0.1864143
12-15 months   CMIN             BANGLADESH                     1                    NA                0.1887877   0.1568257   0.2207497
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.1519372   0.1414182   0.1624562
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.1427355   0.1232765   0.1621945
12-15 months   CONTENT          PERU                           0                    NA                0.1786974   0.1586137   0.1987811
12-15 months   CONTENT          PERU                           1                    NA                0.2177730   0.1697708   0.2657751
12-15 months   EE               PAKISTAN                       0                    NA                0.1387674   0.1148022   0.1627325
12-15 months   EE               PAKISTAN                       1                    NA                0.1341622   0.1068635   0.1614610
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.1714911   0.1568925   0.1860897
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1773388   0.1447964   0.2098812
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                0.1981872   0.1627465   0.2336279
12-15 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1960283   0.1494570   0.2425996
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1901479   0.1757529   0.2045429
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2030199   0.1686740   0.2373657
12-15 months   IRC              INDIA                          0                    NA                0.1839882   0.1701400   0.1978365
12-15 months   IRC              INDIA                          1                    NA                0.1488295   0.1118193   0.1858397
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                0.1313763   0.1264231   0.1363296
12-15 months   JiVitA-4         BANGLADESH                     1                    NA                0.1285609   0.1211501   0.1359716
12-15 months   Keneba           GAMBIA                         0                    NA                0.1827825   0.1727407   0.1928242
12-15 months   Keneba           GAMBIA                         1                    NA                0.2128785   0.1751043   0.2506526
12-15 months   LCNI-5           MALAWI                         0                    NA                0.1476220   0.1008984   0.1943457
12-15 months   LCNI-5           MALAWI                         1                    NA                0.1558552   0.1075363   0.2041742
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.1343967   0.1169016   0.1518918
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.1404679   0.1057888   0.1751469
12-15 months   MAL-ED           BRAZIL                         0                    NA                0.2016451   0.1766274   0.2266628
12-15 months   MAL-ED           BRAZIL                         1                    NA                0.2682687   0.1671904   0.3693471
12-15 months   MAL-ED           INDIA                          0                    NA                0.1755964   0.1581351   0.1930578
12-15 months   MAL-ED           INDIA                          1                    NA                0.1668788   0.1335053   0.2002523
12-15 months   MAL-ED           NEPAL                          0                    NA                0.1550764   0.1376722   0.1724807
12-15 months   MAL-ED           NEPAL                          1                    NA                0.1199128   0.0644416   0.1753841
12-15 months   MAL-ED           PERU                           0                    NA                0.1422217   0.1241375   0.1603060
12-15 months   MAL-ED           PERU                           1                    NA                0.1445773   0.0927589   0.1963956
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1874491   0.1609797   0.2139185
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2484726   0.1671145   0.3298307
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1656361   0.1385321   0.1927402
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1299438   0.0693867   0.1905009
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                0.1280204   0.1151961   0.1408447
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                0.1500838   0.1181900   0.1819776
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1680085   0.1565596   0.1794575
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1407685   0.1142700   0.1672669
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.1814119   0.1692250   0.1935988
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1577526   0.1177038   0.1978013
12-15 months   ResPak           PAKISTAN                       0                    NA                0.1480919   0.0852403   0.2109435
12-15 months   ResPak           PAKISTAN                       1                    NA                0.1404921   0.0836382   0.1973460
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.1912891   0.1816057   0.2009726
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.1687667   0.1515764   0.1859570
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1836404   0.1609844   0.2062964
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1629306   0.1410704   0.1847909
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1752040   0.1634112   0.1869968
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1419190   0.1041971   0.1796409
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1493008   0.1407225   0.1578791
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1555511   0.1329088   0.1781935
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1584655   0.1411165   0.1758145
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1401432   0.1139738   0.1663125
15-18 months   CMIN             BANGLADESH                     0                    NA                0.1262989   0.0952290   0.1573689
15-18 months   CMIN             BANGLADESH                     1                    NA                0.1451097   0.1128338   0.1773855
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.1398859   0.1274576   0.1523143
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.1420249   0.1168021   0.1672477
15-18 months   CONTENT          PERU                           0                    NA                0.1763571   0.1567427   0.1959715
15-18 months   CONTENT          PERU                           1                    NA                0.1132539   0.0693279   0.1571799
15-18 months   EE               PAKISTAN                       0                    NA                0.0924083   0.0735513   0.1112652
15-18 months   EE               PAKISTAN                       1                    NA                0.0828248   0.0598497   0.1057998
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.2370247   0.2198719   0.2541774
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2311797   0.1962767   0.2660827
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1771162   0.1648554   0.1893769
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1671569   0.1389330   0.1953808
15-18 months   IRC              INDIA                          0                    NA                0.1550363   0.1405129   0.1695597
15-18 months   IRC              INDIA                          1                    NA                0.1997931   0.1611613   0.2384248
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                0.1616230   0.1561430   0.1671030
15-18 months   JiVitA-4         BANGLADESH                     1                    NA                0.1527117   0.1445109   0.1609124
15-18 months   Keneba           GAMBIA                         0                    NA                0.1610877   0.1508941   0.1712814
15-18 months   Keneba           GAMBIA                         1                    NA                0.1313925   0.0961879   0.1665970
15-18 months   LCNI-5           MALAWI                         0                    NA                0.1734347   0.1270791   0.2197904
15-18 months   LCNI-5           MALAWI                         1                    NA                0.1881113   0.1469813   0.2292413
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.1432442   0.1264541   0.1600344
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.1395861   0.0945191   0.1846532
15-18 months   MAL-ED           BRAZIL                         0                    NA                0.1987795   0.1699691   0.2275900
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.2426227   0.1806427   0.3046028
15-18 months   MAL-ED           INDIA                          0                    NA                0.1645030   0.1487877   0.1802184
15-18 months   MAL-ED           INDIA                          1                    NA                0.1527736   0.1077739   0.1977733
15-18 months   MAL-ED           NEPAL                          0                    NA                0.1743355   0.1582171   0.1904539
15-18 months   MAL-ED           NEPAL                          1                    NA                0.1597279   0.1013516   0.2181042
15-18 months   MAL-ED           PERU                           0                    NA                0.1477336   0.1267905   0.1686768
15-18 months   MAL-ED           PERU                           1                    NA                0.1361862   0.0894211   0.1829514
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2192523   0.1908961   0.2476086
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2404771   0.0887847   0.3921696
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1415121   0.1165494   0.1664748
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1595423   0.1012697   0.2178149
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                0.1620480   0.1456494   0.1784467
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                0.1175627   0.0886309   0.1464944
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1637635   0.1520520   0.1754749
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1459035   0.1216143   0.1701926
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.1542777   0.1418931   0.1666623
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1825641   0.1446811   0.2204471
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.1702953   0.1541848   0.1864058
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.1962416   0.1666838   0.2257993
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1678424   0.1477108   0.1879740
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.1610712   0.1356255   0.1865168
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1727897   0.1579972   0.1875822
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1274652   0.0756275   0.1793030
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1344410   0.1228633   0.1460187
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1292819   0.1031846   0.1553791
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1379879   0.1195581   0.1564176
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1216948   0.0989726   0.1444170
18-21 months   CMIN             BANGLADESH                     0                    NA                0.1556343   0.1207218   0.1905469
18-21 months   CMIN             BANGLADESH                     1                    NA                0.1732035   0.1423504   0.2040566
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.1603957   0.1483032   0.1724883
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.1722519   0.1496487   0.1948552
18-21 months   CONTENT          PERU                           0                    NA                0.1943900   0.1746903   0.2140897
18-21 months   CONTENT          PERU                           1                    NA                0.1917354   0.1197060   0.2637647
18-21 months   EE               PAKISTAN                       0                    NA                0.1394344   0.1188054   0.1600634
18-21 months   EE               PAKISTAN                       1                    NA                0.1123638   0.0878862   0.1368414
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.1446496   0.1271311   0.1621680
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.1227750   0.0928971   0.1526530
18-21 months   IRC              INDIA                          0                    NA                0.1589019   0.1448763   0.1729275
18-21 months   IRC              INDIA                          1                    NA                0.1457230   0.1001538   0.1912922
18-21 months   Keneba           GAMBIA                         0                    NA                0.1511407   0.1403198   0.1619616
18-21 months   Keneba           GAMBIA                         1                    NA                0.1762132   0.1373010   0.2151254
18-21 months   LCNI-5           MALAWI                         0                    NA                0.1838081   0.1585131   0.2091030
18-21 months   LCNI-5           MALAWI                         1                    NA                0.1758477   0.1450573   0.2066382
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.1379929   0.1193775   0.1566082
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.1646308   0.1280631   0.2011985
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.1635920   0.1382156   0.1889684
18-21 months   MAL-ED           BRAZIL                         1                    NA                0.1344707   0.0480611   0.2208804
18-21 months   MAL-ED           INDIA                          0                    NA                0.1709952   0.1548680   0.1871223
18-21 months   MAL-ED           INDIA                          1                    NA                0.1782885   0.1386973   0.2178797
18-21 months   MAL-ED           NEPAL                          0                    NA                0.1448674   0.1255420   0.1641928
18-21 months   MAL-ED           NEPAL                          1                    NA                0.1548633   0.1108438   0.1988828
18-21 months   MAL-ED           PERU                           0                    NA                0.1635470   0.1435205   0.1835735
18-21 months   MAL-ED           PERU                           1                    NA                0.1548092   0.0929924   0.2166260
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1782666   0.1519714   0.2045618
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1585777   0.0196932   0.2974622
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1515032   0.1250058   0.1780007
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1212029   0.0523410   0.1900648
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                0.1752896   0.1571242   0.1934551
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                0.1525457   0.1184542   0.1866371
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1448430   0.1333004   0.1563856
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1218682   0.0888015   0.1549349
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.1301855   0.1179177   0.1424533
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1562178   0.1259432   0.1864924
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1197947   0.1000089   0.1395804
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1233675   0.0928984   0.1538365
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1442860   0.1280872   0.1604848
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1643297   0.1375541   0.1911052
21-24 months   CMIN             BANGLADESH                     0                    NA                0.1851757   0.1543431   0.2160082
21-24 months   CMIN             BANGLADESH                     1                    NA                0.1556434   0.1145574   0.1967293
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.1829238   0.1716162   0.1942315
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.1839527   0.1634249   0.2044804
21-24 months   CONTENT          PERU                           0                    NA                0.1878686   0.1400536   0.2356836
21-24 months   CONTENT          PERU                           1                    NA                0.3213104   0.1560977   0.4865230
21-24 months   EE               PAKISTAN                       0                    NA                0.1971516   0.1677459   0.2265573
21-24 months   EE               PAKISTAN                       1                    NA                0.1901005   0.1584067   0.2217944
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.1672247   0.1406658   0.1937836
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2370750   0.1722399   0.3019102
21-24 months   IRC              INDIA                          0                    NA                0.1853037   0.1712472   0.1993603
21-24 months   IRC              INDIA                          1                    NA                0.1487036   0.0937367   0.2036705
21-24 months   Keneba           GAMBIA                         0                    NA                0.1686283   0.1575018   0.1797548
21-24 months   Keneba           GAMBIA                         1                    NA                0.1534737   0.1212065   0.1857408
21-24 months   LCNI-5           MALAWI                         0                    NA                0.1988580   0.1624407   0.2352753
21-24 months   LCNI-5           MALAWI                         1                    NA                0.1476009   0.1093668   0.1858351
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1580580   0.1416294   0.1744867
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.1198464   0.0803791   0.1593137
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.1441371   0.1194828   0.1687913
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.1430850   0.0811711   0.2049990
21-24 months   MAL-ED           INDIA                          0                    NA                0.1567378   0.1420479   0.1714278
21-24 months   MAL-ED           INDIA                          1                    NA                0.1493971   0.1155273   0.1832669
21-24 months   MAL-ED           NEPAL                          0                    NA                0.1658163   0.1458311   0.1858015
21-24 months   MAL-ED           NEPAL                          1                    NA                0.2180299   0.1414904   0.2945694
21-24 months   MAL-ED           PERU                           0                    NA                0.1748982   0.1554672   0.1943293
21-24 months   MAL-ED           PERU                           1                    NA                0.2249775   0.1623162   0.2876388
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.2003812   0.1751977   0.2255647
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.0900995   0.0231379   0.1570611
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1420080   0.1116431   0.1723729
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1382307   0.0574347   0.2190267
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1360734   0.1197895   0.1523572
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.1753196   0.1347324   0.2159068
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1720982   0.1585261   0.1856702
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1954288   0.1589528   0.2319048
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1448402   0.1326125   0.1570678
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1196727   0.0908628   0.1484826
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1062649   0.0739937   0.1385360
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1259105   0.0695559   0.1822652


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     CMIN             BANGLADESH                     NA                   NA                0.8569936   0.7917724   0.9222149
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     EE               PAKISTAN                       NA                   NA                0.6924705   0.6695203   0.7154208
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8710463   0.8679643   0.8741282
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8895446   0.8790300   0.9000593
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9273010   0.9161920   0.9384101
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8787293   0.8556572   0.9018013
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7594406   0.7372368   0.7816445
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9569501   0.9301779   0.9837223
0-3 months     MAL-ED           PERU                           NA                   NA                0.9700715   0.9450349   0.9951081
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9407758   0.9143190   0.9672326
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8846013   0.8543673   0.9148354
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8163500   0.7995330   0.8331670
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROBIT           BELARUS                        NA                   NA                0.8356412   0.8250517   0.8462307
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ResPak           PAKISTAN                       NA                   NA                0.8101825   0.7586697   0.8616953
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848   0.9123284   0.9326411
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947   0.9445678   0.9548217
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     CMIN             BANGLADESH                     NA                   NA                0.4485689   0.4253428   0.4717949
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4605000   0.4496523   0.4713476
3-6 months     COHORTS          INDIA                          NA                   NA                0.4829473   0.4791324   0.4867622
3-6 months     CONTENT          PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     EE               PAKISTAN                       NA                   NA                0.4741878   0.4551933   0.4931824
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4660717   0.4485044   0.4836390
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4413738   0.4384031   0.4443445
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4391655   0.4303725   0.4479585
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4472204   0.4378499   0.4565908
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4655071   0.4396676   0.4913465
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4593975   0.4422221   0.4765729
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROBIT           BELARUS                        NA                   NA                0.6655962   0.6576122   0.6735801
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     ResPak           PAKISTAN                       NA                   NA                0.4801367   0.4523118   0.5079615
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4502075   0.4368094   0.4636057
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4196086   0.4109417   0.4282755
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4783450   0.4738196   0.4828705
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     CMIN             BANGLADESH                     NA                   NA                0.2261421   0.2058904   0.2463939
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2137898   0.2041068   0.2234728
6-9 months     COHORTS          INDIA                          NA                   NA                0.2807303   0.2767918   0.2846687
6-9 months     CONTENT          PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     EE               PAKISTAN                       NA                   NA                0.2530633   0.2382291   0.2678975
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     Guatemala BSC    GUATEMALA                      NA                   NA                0.2458437   0.2280295   0.2636580
6-9 months     IRC              INDIA                          NA                   NA                0.2626310   0.2487635   0.2764985
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2397565   0.2344749   0.2450382
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2033811   0.1911428   0.2156195
6-9 months     LCNI-5           MALAWI                         NA                   NA                0.2843241   0.2718050   0.2968431
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2362596   0.2225288   0.2499904
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROBIT           BELARUS                        NA                   NA                0.4737281   0.4649839   0.4824723
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     ResPak           PAKISTAN                       NA                   NA                0.2144451   0.1896874   0.2392029
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2097690   0.1949147   0.2246234
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                0.1982186   0.1818458   0.2145914
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2565653   0.2476975   0.2654331
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583530   0.2538536   0.2628524
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    CMIN             BANGLADESH                     NA                   NA                0.1656112   0.1427254   0.1884969
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1561176   0.1475781   0.1646571
9-12 months    COHORTS          INDIA                          NA                   NA                0.2194426   0.2153609   0.2235243
9-12 months    CONTENT          PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    EE               PAKISTAN                       NA                   NA                0.2471969   0.2305945   0.2637993
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.2074564   0.1866255   0.2282874
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2429668   0.2299104   0.2560232
9-12 months    IRC              INDIA                          NA                   NA                0.2132244   0.1989917   0.2274571
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1545451   0.1502955   0.1587946
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1574096   0.1457735   0.1690458
9-12 months    LCNI-5           MALAWI                         NA                   NA                0.2017210   0.1858623   0.2175796
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1636213   0.1504841   0.1767585
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROBIT           BELARUS                        NA                   NA                0.3666836   0.3521958   0.3811713
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    ResPak           PAKISTAN                       NA                   NA                0.0960443   0.0675395   0.1245490
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1943224   0.1874198   0.2012249
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1410472   0.1219662   0.1601282
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2052246   0.1951376   0.2153116
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800773   0.1755475   0.1846071
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   CMIN             BANGLADESH                     NA                   NA                0.1724766   0.1525587   0.1923945
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1507603   0.1416376   0.1598830
12-15 months   CONTENT          PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   EE               PAKISTAN                       NA                   NA                0.1361781   0.1182651   0.1540911
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1974757   0.1700956   0.2248557
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1929712   0.1819725   0.2039700
12-15 months   IRC              INDIA                          NA                   NA                0.1821426   0.1693469   0.1949383
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1304878   0.1263700   0.1346055
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1857051   0.1759013   0.1955089
12-15 months   LCNI-5           MALAWI                         NA                   NA                0.1517832   0.1183392   0.1852272
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1305063   0.1184818   0.1425307
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   ResPak           PAKISTAN                       NA                   NA                0.1440487   0.0977615   0.1903360
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1851225   0.1777268   0.1925183
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1752090   0.1590517   0.1913663
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1742207   0.1629042   0.1855373
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1499254   0.1419751   0.1578757
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   CMIN             BANGLADESH                     NA                   NA                0.1334837   0.1109948   0.1559725
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1402965   0.1292836   0.1513094
15-18 months   CONTENT          PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1748246   0.1641572   0.1854921
15-18 months   IRC              INDIA                          NA                   NA                0.1604586   0.1468913   0.1740260
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1594949   0.1548064   0.1641834
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1581639   0.1482830   0.1680449
15-18 months   LCNI-5           MALAWI                         NA                   NA                0.1766109   0.1448823   0.2083395
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1529843   0.1384423   0.1675263
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1775870   0.1644275   0.1907466
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1648845   0.1491151   0.1806540
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1702866   0.1560553   0.1845179
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1337260   0.1231139   0.1443380
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   CMIN             BANGLADESH                     NA                   NA                0.1616853   0.1379134   0.1854572
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1631376   0.1524898   0.1737853
18-21 months   CONTENT          PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1589791   0.1455977   0.1723606
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1537127   0.1431511   0.1642744
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.1810824   0.1610270   0.2011378
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1724392   0.1563209   0.1885575
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1209531   0.1039197   0.1379866
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   CMIN             BANGLADESH                     NA                   NA                0.1663610   0.1425615   0.1901605
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1843420   0.1744411   0.1942429
21-24 months   CONTENT          PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   IRC              INDIA                          NA                   NA                0.1777340   0.1639174   0.1915507
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1670967   0.1565736   0.1776198
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.1792456   0.1525432   0.2059480
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1419730   0.1267767   0.1571693
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1090935   0.0811882   0.1369987


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0674035   -0.1261112   -0.0086958
0-3 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMIN             BANGLADESH                     1                    0                 -0.0274749   -0.1634167    0.1084669
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                 -0.1452897   -0.1997875   -0.0907918
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.0803331   -0.0940519   -0.0666142
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.0829709   -0.1280152   -0.0379266
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                  0.0031993   -0.0383486    0.0447473
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -0.0291749   -0.0860024    0.0276527
0-3 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     1                    0                 -0.0410857   -0.0464838   -0.0356875
0-3 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0217439   -0.0434432   -0.0000446
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.0387083   -0.0809761    0.0035594
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.0659971   -0.1337048    0.0017106
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                 -0.0600901   -0.1543872    0.0342070
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                 -0.0315049   -0.0926853    0.0296756
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                 -0.0624825   -0.1622441    0.0372791
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                 -0.0366785   -0.1005247    0.0271677
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.1070916    0.0060103    0.2081730
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0389231   -0.1180457    0.0401995
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                 -0.0069673   -0.0619883    0.0480537
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0601108   -0.1036666   -0.0165551
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                 -0.0294216   -0.0407146   -0.0181287
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0404790   -0.0887468    0.0077889
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                  0.0323163   -0.1044454    0.1690781
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                 -0.0506071   -0.0765057   -0.0247084
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1104893   -0.1497332   -0.0712455
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.0350207   -0.0512618   -0.0187797
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0166712   -0.0632454    0.0299029
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                  0.0464332   -0.0007183    0.0935848
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                 -0.0162067   -0.0501090    0.0176956
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0126263   -0.0244178   -0.0008349
3-6 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    0                  0.0237579   -0.0547062    0.1022220
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.0005470   -0.0372523    0.0383463
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0081786   -0.0278223    0.0441795
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                 -0.0473964   -0.1052790    0.0104862
3-6 months     JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     1                    0                  0.0129221    0.0073766    0.0184676
3-6 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     1                    0                  0.0102452   -0.0076626    0.0281530
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0114408   -0.0200348    0.0429165
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                  0.0086553   -0.0407127    0.0580234
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                 -0.0549088   -0.1539180    0.0441003
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.0292352   -0.0223932    0.0808635
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                  0.0615596   -0.0206794    0.1437987
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                  0.0007905   -0.0514208    0.0530019
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0286850   -0.1158712    0.1732412
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0031953   -0.0626855    0.0562948
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                 -0.0336217   -0.0943556    0.0271122
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0044758   -0.0332796    0.0422312
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                 -0.0066793   -0.0194019    0.0060432
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                  0.0157287   -0.0302451    0.0617026
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.0602461   -0.0082825    0.1287747
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0045663   -0.0230065    0.0138739
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0539427    0.0156559    0.0922296
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0256316    0.0105267    0.0407364
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0020166   -0.0445438    0.0405105
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.0397127   -0.0007186    0.0801441
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0041799   -0.0275988    0.0359586
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                 -0.0153334   -0.0273327   -0.0033340
6-9 months     CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    0                 -0.0129642   -0.0750555    0.0491271
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0192886   -0.0126182    0.0511954
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                  0.0314348   -0.0153720    0.0782416
6-9 months     Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Guatemala BSC    GUATEMALA                      1                    0                  0.0406740   -0.0070390    0.0883870
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                  0.0122297   -0.0346393    0.0590988
6-9 months     JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     1                    0                 -0.0030742   -0.0141718    0.0080233
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                 -0.0260925   -0.0674968    0.0153118
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                 -0.0186869   -0.0437953    0.0064215
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                 -0.0202785   -0.0576934    0.0171363
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                  0.0532695   -0.0628848    0.1694239
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0099242   -0.0314861    0.0513344
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                 -0.0035793   -0.0597895    0.0526310
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                  0.0238731   -0.0250546    0.0728008
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.0201006   -0.0500016    0.0902028
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0202177   -0.0463639    0.0867994
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                  0.0301855   -0.0068445    0.0672155
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0081658   -0.0349878    0.0186562
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0384466    0.0212267    0.0556666
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0148156   -0.0226047    0.0522360
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                  0.0476847   -0.0102467    0.1056162
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0176159    0.0023757    0.0328560
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0360819    0.0032564    0.0689074
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0173600   -0.0612896    0.0265696
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0004570   -0.0137173    0.0146312
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0223079   -0.0261664    0.0707822
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                 -0.0031012   -0.0496513    0.0434488
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0123163   -0.0367484    0.0121159
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                  0.0002643   -0.0133286    0.0138571
9-12 months    CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    0                 -0.0145833   -0.0851521    0.0559855
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                 -0.0054166   -0.0386716    0.0278384
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                  0.0058509   -0.0334153    0.0451171
9-12 months    Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Guatemala BSC    GUATEMALA                      1                    0                  0.0047881   -0.0519759    0.0615522
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0348643    0.0030359    0.0666927
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                 -0.0306465   -0.0765370    0.0152440
9-12 months    JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     1                    0                  0.0011267   -0.0073219    0.0095753
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0219301   -0.0727913    0.0289311
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                 -0.0018825   -0.0355708    0.0318057
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                 -0.0134010   -0.0542363    0.0274343
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                  0.0307893   -0.0688948    0.1304735
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0196466   -0.0197878    0.0590810
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                 -0.0449255   -0.0794769   -0.0103741
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                 -0.0131075   -0.0498380    0.0236230
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                 -0.0156133   -0.0857109    0.0544843
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0297223   -0.0177413    0.0771859
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                 -0.0161071   -0.0496169    0.0174028
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0060750   -0.0181289    0.0302788
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                 -0.0372864   -0.0561530   -0.0184197
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0294504   -0.0618315    0.0029307
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.0230778   -0.0787141    0.0325586
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                 -0.0039357   -0.0234228    0.0155514
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                  0.0402795    0.0016043    0.0789546
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0234110   -0.0565851    0.0097631
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                 -0.0001490   -0.0150793    0.0147814
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0047386   -0.0287232    0.0382005
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.0275067   -0.0132987    0.0683120
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                 -0.0092017   -0.0314376    0.0130341
12-15 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    0                  0.0390756   -0.0129872    0.0911383
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.0046051   -0.0409626    0.0317523
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0058476   -0.0297013    0.0413966
12-15 months   Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Guatemala BSC    GUATEMALA                      1                    0                 -0.0021589   -0.0636842    0.0593663
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0128720   -0.0290313    0.0547753
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.0351588   -0.0749796    0.0046620
12-15 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0028155   -0.0117446    0.0061136
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                  0.0300960   -0.0087709    0.0689629
12-15 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   LCNI-5           MALAWI                         1                    0                  0.0082332   -0.0588182    0.0752846
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0060711   -0.0328157    0.0449580
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                  0.0666236   -0.0376225    0.1708698
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                 -0.0087176   -0.0463990    0.0289637
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0351636   -0.0928126    0.0224854
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0023555   -0.0531357    0.0578467
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0610235   -0.0249215    0.1469685
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0356923   -0.1020515    0.0306668
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                  0.0220634   -0.0118054    0.0559323
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0272401   -0.0561399    0.0016597
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0236593   -0.0654051    0.0180864
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.0075998   -0.0917892    0.0765896
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                 -0.0225224   -0.0431817   -0.0018632
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0207098   -0.0518678    0.0104482
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0332850   -0.0725178    0.0059479
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0062503   -0.0179886    0.0304893
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0183223   -0.0489612    0.0123165
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0188107   -0.0260786    0.0637001
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0021390   -0.0259848    0.0302627
15-18 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    0                 -0.0631032   -0.1112446   -0.0149618
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0095835   -0.0396692    0.0205023
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                 -0.0058450   -0.0446504    0.0329605
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0099592   -0.0425527    0.0226342
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                  0.0447568    0.0034531    0.0860605
15-18 months   JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     1                    0                 -0.0089114   -0.0184612    0.0006385
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                 -0.0296953   -0.0663377    0.0069472
15-18 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   LCNI-5           MALAWI                         1                    0                  0.0146765   -0.0477095    0.0770625
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0036581   -0.0517273    0.0444111
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                  0.0438432   -0.0242548    0.1119412
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                 -0.0117295   -0.0593195    0.0358606
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0146076   -0.0750995    0.0458843
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                 -0.0115474   -0.0628260    0.0397313
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0212248   -0.1331964    0.1756461
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0180302   -0.0454040    0.0814644
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0444854   -0.0777548   -0.0112160
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0178600   -0.0448459    0.0091259
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0282864   -0.0115907    0.0681635
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                  0.0259463   -0.0079456    0.0598381
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                 -0.0067712   -0.0388678    0.0253253
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0453244   -0.0991036    0.0084547
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0051591   -0.0336991    0.0233808
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0162931   -0.0452598    0.0126737
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                  0.0175691   -0.0289147    0.0640530
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0118562   -0.0137673    0.0374797
18-21 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    0                 -0.0026546   -0.0763833    0.0710741
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0270706   -0.0589039    0.0047627
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0218745   -0.0563845    0.0126355
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0131789   -0.0609809    0.0346231
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                  0.0250725   -0.0151217    0.0652667
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0079603   -0.0476710    0.0317503
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.0266379   -0.0138362    0.0671121
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.0291212   -0.1191960    0.0609535
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                  0.0072934   -0.0354200    0.0500068
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0099959   -0.0380888    0.0580806
18-21 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    0                 -0.0087378   -0.0738984    0.0564228
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.0196889   -0.1612253    0.1218476
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0303004   -0.1041383    0.0435375
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0227439   -0.0612823    0.0157944
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0229748   -0.0580147    0.0120651
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0260323   -0.0066423    0.0587069
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0035728   -0.0327761    0.0399217
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0200436   -0.0113152    0.0514024
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                 -0.0295323   -0.0825683    0.0235036
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                  0.0010289   -0.0224194    0.0244771
21-24 months   CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    0                  0.1334418   -0.0385510    0.3054345
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                 -0.0070511   -0.0505629    0.0364608
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0698503   -0.0009581    0.1406587
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                 -0.0366001   -0.0935063    0.0203061
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0151546   -0.0492895    0.0189802
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                 -0.0512570   -0.1036226    0.0011085
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                 -0.0382116   -0.0809948    0.0045715
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0010520   -0.0680505    0.0659465
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0073408   -0.0448045    0.0301230
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                  0.0522136   -0.0269131    0.1313403
21-24 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    0                  0.0500792   -0.0153697    0.1155282
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                 -0.1102817   -0.1820370   -0.0385264
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0037773   -0.0910328    0.0834782
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0392462   -0.0044954    0.0829878
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0233306   -0.0155049    0.0621661
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0251674   -0.0561802    0.0058453
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0196456   -0.0448197    0.0841110


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0142139   -0.0264486   -0.0019792
0-3 months     CMIN             BANGLADESH                     0                    NA                -0.0083173   -0.0685736    0.0519390
0-3 months     COHORTS          GUATEMALA                      0                    NA                -0.0140460   -0.0200172   -0.0080749
0-3 months     COHORTS          INDIA                          0                    NA                -0.0094919   -0.0112224   -0.0077614
0-3 months     EE               PAKISTAN                       0                    NA                -0.0368115   -0.0572684   -0.0163545
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0003096   -0.0073916    0.0067723
0-3 months     IRC              INDIA                          0                    NA                -0.0056725   -0.0129694    0.0016244
0-3 months     JiVitA-3         BANGLADESH                     0                    NA                -0.0135855   -0.0153066   -0.0118644
0-3 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0071205   -0.0138262   -0.0004147
0-3 months     Keneba           GAMBIA                         0                    NA                -0.0033978   -0.0070131    0.0002175
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0109759   -0.0227308    0.0007791
0-3 months     MAL-ED           BRAZIL                         0                    NA                -0.0066129   -0.0174045    0.0041787
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0041679   -0.0139900    0.0056543
0-3 months     MAL-ED           NEPAL                          0                    NA                -0.0084237   -0.0195353    0.0026880
0-3 months     MAL-ED           PERU                           0                    NA                -0.0047357   -0.0127186    0.0032473
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0135960    0.0021480    0.0250441
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0096069   -0.0225118    0.0032981
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0011561   -0.0096025    0.0072903
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0101724   -0.0161364   -0.0042084
0-3 months     PROBIT           BELARUS                        0                    NA                -0.0002200   -0.0005345    0.0000945
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0039286   -0.0087834    0.0009263
0-3 months     ResPak           PAKISTAN                       0                    NA                 0.0069033   -0.0272247    0.0410312
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.0136612   -0.0211437   -0.0061786
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0072803   -0.0100152   -0.0045454
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.0035543   -0.0052566   -0.0018520
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0034263   -0.0132278    0.0063752
3-6 months     CMIN             BANGLADESH                     0                    NA                 0.0153876   -0.0029196    0.0336947
3-6 months     COHORTS          GUATEMALA                      0                    NA                -0.0018477   -0.0065465    0.0028512
3-6 months     COHORTS          INDIA                          0                    NA                -0.0015069   -0.0028390   -0.0001748
3-6 months     CONTENT          PERU                           0                    NA                 0.0036556   -0.0035768    0.0108881
3-6 months     EE               PAKISTAN                       0                    NA                -0.0000735   -0.0162930    0.0161459
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0015906   -0.0041663    0.0073474
3-6 months     IRC              INDIA                          0                    NA                -0.0071538   -0.0146356    0.0003280
3-6 months     JiVitA-3         BANGLADESH                     0                    NA                 0.0040712    0.0023550    0.0057874
3-6 months     JiVitA-4         BANGLADESH                     0                    NA                 0.0033944   -0.0016138    0.0084027
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0009072   -0.0020872    0.0039015
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0016314   -0.0094571    0.0061942
3-6 months     MAL-ED           BRAZIL                         0                    NA                -0.0065556   -0.0188036    0.0056924
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0044850   -0.0032038    0.0121738
3-6 months     MAL-ED           NEPAL                          0                    NA                 0.0087309   -0.0012665    0.0187284
3-6 months     MAL-ED           PERU                           0                    NA                -0.0004186   -0.0068028    0.0059657
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0046262   -0.0078013    0.0170537
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004539   -0.0104886    0.0095809
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0040650   -0.0135282    0.0053982
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0010342   -0.0042491    0.0063176
3-6 months     PROBIT           BELARUS                        0                    NA                -0.0000137   -0.0003324    0.0003049
3-6 months     PROVIDE          BANGLADESH                     0                    NA                 0.0021235   -0.0025614    0.0068084
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0110578   -0.0061097    0.0282254
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0011213   -0.0057871    0.0035444
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0033840    0.0007364    0.0060317
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025591    0.0009862    0.0041320
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0003563   -0.0083590    0.0076463
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0159077   -0.0003835    0.0321990
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0006269   -0.0042717    0.0055255
6-9 months     COHORTS          INDIA                          0                    NA                -0.0016294   -0.0030655   -0.0001934
6-9 months     CONTENT          PERU                           0                    NA                -0.0012238   -0.0072209    0.0047732
6-9 months     EE               PAKISTAN                       0                    NA                 0.0080221   -0.0057623    0.0218066
6-9 months     GMS-Nepal        NEPAL                          0                    NA                 0.0047351   -0.0026559    0.0121262
6-9 months     Guatemala BSC    GUATEMALA                      0                    NA                 0.0108942   -0.0017545    0.0235429
6-9 months     IRC              INDIA                          0                    NA                 0.0026679   -0.0032613    0.0085972
6-9 months     JiVitA-4         BANGLADESH                     0                    NA                -0.0008436   -0.0037976    0.0021105
6-9 months     Keneba           GAMBIA                         0                    NA                -0.0019794   -0.0059285    0.0019697
6-9 months     LCNI-5           MALAWI                         0                    NA                -0.0065487   -0.0157086    0.0026112
6-9 months     MAL-ED           BANGLADESH                     0                    NA                -0.0032056   -0.0090538    0.0026425
6-9 months     MAL-ED           BRAZIL                         0                    NA                 0.0064262   -0.0061628    0.0190152
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0014698   -0.0048853    0.0078248
6-9 months     MAL-ED           NEPAL                          0                    NA                -0.0006656   -0.0070063    0.0056752
6-9 months     MAL-ED           PERU                           0                    NA                 0.0030001   -0.0034226    0.0094228
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0026827   -0.0038306    0.0091960
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038197   -0.0074953    0.0151347
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0046263   -0.0012051    0.0104578
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0011877   -0.0049171    0.0025416
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0002679   -0.0001446    0.0006804
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0016573   -0.0023706    0.0056852
6-9 months     ResPak           PAKISTAN                       0                    NA                 0.0113700   -0.0037607    0.0265008
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0049194    0.0010040    0.0088349
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0141463    0.0011943    0.0270982
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0013618   -0.0041620    0.0014384
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0001036   -0.0013515    0.0015587
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049854   -0.0046703    0.0146411
9-12 months    CMIN             BANGLADESH                     0                    NA                -0.0027437   -0.0226298    0.0171424
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0024477   -0.0068471    0.0019516
9-12 months    COHORTS          INDIA                          0                    NA                 0.0002423   -0.0012797    0.0017643
9-12 months    CONTENT          PERU                           0                    NA                 0.0008542   -0.0055285    0.0072369
9-12 months    EE               PAKISTAN                       0                    NA                -0.0047143   -0.0192448    0.0098162
9-12 months    GMS-Nepal        NEPAL                          0                    NA                 0.0014766   -0.0053593    0.0083124
9-12 months    Guatemala BSC    GUATEMALA                      0                    NA                 0.0012639   -0.0136830    0.0162108
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0077614    0.0007371    0.0147857
9-12 months    IRC              INDIA                          0                    NA                -0.0035086   -0.0093084    0.0022913
9-12 months    JiVitA-4         BANGLADESH                     0                    NA                -0.0001206   -0.0023891    0.0021479
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0018874   -0.0061182    0.0023433
9-12 months    LCNI-5           MALAWI                         0                    NA                -0.0010955   -0.0143366    0.0121455
9-12 months    MAL-ED           BANGLADESH                     0                    NA                -0.0012501   -0.0080388    0.0055385
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0038925   -0.0072930    0.0150780
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0031167   -0.0025574    0.0087908
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0004886   -0.0044291    0.0054063
9-12 months    MAL-ED           PERU                           0                    NA                -0.0022779   -0.0071654    0.0026097
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0022358   -0.0058542    0.0103259
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0052484   -0.0025083    0.0130051
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                -0.0025161   -0.0076840    0.0026519
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0009431   -0.0024739    0.0043602
9-12 months    PROBIT           BELARUS                        0                    NA                -0.0002369   -0.0006937    0.0002199
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0030957   -0.0065558    0.0003643
9-12 months    ResPak           PAKISTAN                       0                    NA                 0.0003506   -0.0153523    0.0160534
9-12 months    SAS-CompFeed     INDIA                          0                    NA                -0.0009845   -0.0063257    0.0043566
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0152824   -0.0001299    0.0306947
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0013393   -0.0033791    0.0007005
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000300   -0.0015908    0.0015309
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0005053   -0.0070155    0.0080261
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0111956   -0.0055172    0.0279084
12-15 months   COHORTS          GUATEMALA                      0                    NA                -0.0011770   -0.0060667    0.0037128
12-15 months   CONTENT          PERU                           0                    NA                 0.0023797   -0.0027171    0.0074765
12-15 months   EE               PAKISTAN                       0                    NA                -0.0025893   -0.0189601    0.0137816
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0006163   -0.0053656    0.0065983
12-15 months   Guatemala BSC    GUATEMALA                      0                    NA                -0.0007116   -0.0169863    0.0155632
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0028233   -0.0054881    0.0111348
12-15 months   IRC              INDIA                          0                    NA                -0.0018456   -0.0068236    0.0031323
12-15 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0008886   -0.0033627    0.0015856
12-15 months   Keneba           GAMBIA                         0                    NA                 0.0029226   -0.0004888    0.0063340
12-15 months   LCNI-5           MALAWI                         0                    NA                 0.0041612   -0.0249822    0.0333046
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0009619   -0.0050935    0.0070173
12-15 months   MAL-ED           BRAZIL                         0                    NA                 0.0085495   -0.0036879    0.0207868
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0016403   -0.0082706    0.0049899
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0023825   -0.0087193    0.0039542
12-15 months   MAL-ED           PERU                           0                    NA                -0.0004827   -0.0075069    0.0065414
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0019754   -0.0073279    0.0112788
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0061922   -0.0163471    0.0039628
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0024859   -0.0027547    0.0077265
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0039483   -0.0081565    0.0002600
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0013796   -0.0054560    0.0026969
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0040432   -0.0311617    0.0230754
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0061666   -0.0123204   -0.0000128
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0084314   -0.0204945    0.0036316
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0009833   -0.0033791    0.0014125
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0006247   -0.0024647    0.0037140
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0062820   -0.0132157    0.0006517
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0071848   -0.0111243    0.0254938
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0004106   -0.0055451    0.0063663
15-18 months   CONTENT          PERU                           0                    NA                -0.0051898   -0.0098363   -0.0005434
15-18 months   EE               PAKISTAN                       0                    NA                -0.0034686   -0.0163234    0.0093862
15-18 months   GMS-Nepal        NEPAL                          0                    NA                -0.0022511   -0.0089552    0.0044530
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0022915   -0.0088378    0.0042547
15-18 months   IRC              INDIA                          0                    NA                 0.0054223    0.0004656    0.0103790
15-18 months   JiVitA-4         BANGLADESH                     0                    NA                -0.0021281   -0.0048202    0.0005639
15-18 months   Keneba           GAMBIA                         0                    NA                -0.0029238   -0.0063934    0.0005458
15-18 months   LCNI-5           MALAWI                         0                    NA                 0.0031762   -0.0221365    0.0284889
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0004561   -0.0072258    0.0063137
15-18 months   MAL-ED           BRAZIL                         0                    NA                 0.0046400   -0.0020786    0.0113585
15-18 months   MAL-ED           INDIA                          0                    NA                -0.0019284   -0.0089878    0.0051309
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0008445   -0.0078386    0.0061496
15-18 months   MAL-ED           PERU                           0                    NA                -0.0015447   -0.0080878    0.0049984
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0043581   -0.0084132    0.0171295
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012901   -0.0090689    0.0116492
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0090638   -0.0150012   -0.0031263
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0025662   -0.0064422    0.0013099
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0020737   -0.0016690    0.0058165
15-18 months   SAS-CompFeed     INDIA                          0                    NA                 0.0072918   -0.0016952    0.0162787
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                -0.0029579   -0.0154304    0.0095147
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0025031   -0.0059770    0.0009709
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0007150   -0.0052401    0.0038100
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0027551   -0.0093244    0.0038142
18-21 months   CMIN             BANGLADESH                     0                    NA                 0.0060509   -0.0124116    0.0245135
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0027418   -0.0030566    0.0085402
18-21 months   CONTENT          PERU                           0                    NA                -0.0022254   -0.0076911    0.0032403
18-21 months   EE               PAKISTAN                       0                    NA                -0.0098142   -0.0217786    0.0021501
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0022548   -0.0082274    0.0037178
18-21 months   IRC              INDIA                          0                    NA                 0.0000773   -0.0058234    0.0059779
18-21 months   Keneba           GAMBIA                         0                    NA                 0.0025720   -0.0014504    0.0065945
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0027257   -0.0172399    0.0117886
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0047218   -0.0017950    0.0112385
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0029429   -0.0118176    0.0059319
18-21 months   MAL-ED           INDIA                          0                    NA                 0.0016713   -0.0051049    0.0084476
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0026324   -0.0028928    0.0081575
18-21 months   MAL-ED           PERU                           0                    NA                -0.0019818   -0.0097994    0.0058359
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0011867   -0.0142078    0.0118343
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0051494   -0.0167447    0.0064460
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0028504   -0.0093669    0.0036660
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0021821   -0.0065228    0.0021587
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0023027   -0.0009770    0.0055824
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011584   -0.0057194    0.0080363
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0041630   -0.0025217    0.0108477
21-24 months   CMIN             BANGLADESH                     0                    NA                -0.0188147   -0.0426109    0.0049815
21-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0014182   -0.0045828    0.0074192
21-24 months   CONTENT          PERU                           0                    NA                 0.0175581   -0.0093379    0.0444541
21-24 months   EE               PAKISTAN                       0                    NA                -0.0037780   -0.0209456    0.0133895
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0095928   -0.0026756    0.0218611
21-24 months   IRC              INDIA                          0                    NA                -0.0075697   -0.0144701   -0.0006692
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0015316   -0.0047995    0.0017363
21-24 months   LCNI-5           MALAWI                         0                    NA                -0.0196124   -0.0395343    0.0003095
21-24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0059425   -0.0124065    0.0005216
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0006470   -0.0094379    0.0081438
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0004675   -0.0061224    0.0051873
21-24 months   MAL-ED           NEPAL                          0                    NA                 0.0032249   -0.0064078    0.0128575
21-24 months   MAL-ED           PERU                           0                    NA                 0.0065689   -0.0044341    0.0175718
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0127251   -0.0219824   -0.0034678
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0006893   -0.0130829    0.0117044
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0058996   -0.0015437    0.0133430
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0029519   -0.0021586    0.0080624
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0028697   -0.0060717    0.0003323
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0028286   -0.0115247    0.0171819
