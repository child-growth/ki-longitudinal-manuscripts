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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        enwast    n_cell       n
-------------  ---------------  -----------------------------  -------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          0             71      83
0-3 months     CMC-V-BCS-2002   INDIA                          1             12      83
0-3 months     CMIN             BANGLADESH                     0             34      37
0-3 months     CMIN             BANGLADESH                     1              3      37
0-3 months     COHORTS          GUATEMALA                      0            498     668
0-3 months     COHORTS          GUATEMALA                      1            170     668
0-3 months     COHORTS          INDIA                          0           4979    6082
0-3 months     COHORTS          INDIA                          1           1103    6082
0-3 months     CONTENT          PERU                           0             29      29
0-3 months     CONTENT          PERU                           1              0      29
0-3 months     EE               PAKISTAN                       0            208     239
0-3 months     EE               PAKISTAN                       1             31     239
0-3 months     GMS-Nepal        NEPAL                          0            379     472
0-3 months     GMS-Nepal        NEPAL                          1             93     472
0-3 months     IRC              INDIA                          0            245     355
0-3 months     IRC              INDIA                          1            110     355
0-3 months     Keneba           GAMBIA                         0            896    1227
0-3 months     Keneba           GAMBIA                         1            331    1227
0-3 months     MAL-ED           BANGLADESH                     0            192     231
0-3 months     MAL-ED           BANGLADESH                     1             39     231
0-3 months     MAL-ED           BRAZIL                         0            155     161
0-3 months     MAL-ED           BRAZIL                         1              6     161
0-3 months     MAL-ED           INDIA                          0            149     180
0-3 months     MAL-ED           INDIA                          1             31     180
0-3 months     MAL-ED           NEPAL                          0            137     152
0-3 months     MAL-ED           NEPAL                          1             15     152
0-3 months     MAL-ED           PERU                           0            252     258
0-3 months     MAL-ED           PERU                           1              6     258
0-3 months     MAL-ED           SOUTH AFRICA                   0            196     210
0-3 months     MAL-ED           SOUTH AFRICA                   1             14     210
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            216     219
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     219
0-3 months     NIH-Birth        BANGLADESH                     0            389     543
0-3 months     NIH-Birth        BANGLADESH                     1            154     543
0-3 months     NIH-Crypto       BANGLADESH                     0            523     701
0-3 months     NIH-Crypto       BANGLADESH                     1            178     701
0-3 months     PROBIT           BELARUS                        0          12364   15317
0-3 months     PROBIT           BELARUS                        1           2953   15317
0-3 months     PROVIDE          BANGLADESH                     0            497     632
0-3 months     PROVIDE          BANGLADESH                     1            135     632
0-3 months     ResPak           PAKISTAN                       0             59      71
0-3 months     ResPak           PAKISTAN                       1             12      71
0-3 months     SAS-CompFeed     INDIA                          0           1024    1147
0-3 months     SAS-CompFeed     INDIA                          1            123    1147
0-3 months     ZVITAMBO         ZIMBABWE                       0           6327    7555
0-3 months     ZVITAMBO         ZIMBABWE                       1           1228    7555
3-6 months     CMC-V-BCS-2002   INDIA                          0            224     301
3-6 months     CMC-V-BCS-2002   INDIA                          1             77     301
3-6 months     CMIN             BANGLADESH                     0            166     177
3-6 months     CMIN             BANGLADESH                     1             11     177
3-6 months     COHORTS          GUATEMALA                      0            600     752
3-6 months     COHORTS          GUATEMALA                      1            152     752
3-6 months     COHORTS          INDIA                          0           5085    6181
3-6 months     COHORTS          INDIA                          1           1096    6181
3-6 months     CONTENT          PERU                           0            213     214
3-6 months     CONTENT          PERU                           1              1     214
3-6 months     EE               PAKISTAN                       0            194     222
3-6 months     EE               PAKISTAN                       1             28     222
3-6 months     GMS-Nepal        NEPAL                          0            352     437
3-6 months     GMS-Nepal        NEPAL                          1             85     437
3-6 months     IRC              INDIA                          0            262     373
3-6 months     IRC              INDIA                          1            111     373
3-6 months     Keneba           GAMBIA                         0           1073    1352
3-6 months     Keneba           GAMBIA                         1            279    1352
3-6 months     MAL-ED           BANGLADESH                     0            182     219
3-6 months     MAL-ED           BANGLADESH                     1             37     219
3-6 months     MAL-ED           BRAZIL                         0            191     198
3-6 months     MAL-ED           BRAZIL                         1              7     198
3-6 months     MAL-ED           INDIA                          0            184     227
3-6 months     MAL-ED           INDIA                          1             43     227
3-6 months     MAL-ED           NEPAL                          0            199     229
3-6 months     MAL-ED           NEPAL                          1             30     229
3-6 months     MAL-ED           PERU                           0            255     260
3-6 months     MAL-ED           PERU                           1              5     260
3-6 months     MAL-ED           SOUTH AFRICA                   0            226     242
3-6 months     MAL-ED           SOUTH AFRICA                   1             16     242
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            228     231
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     231
3-6 months     NIH-Birth        BANGLADESH                     0            359     502
3-6 months     NIH-Birth        BANGLADESH                     1            143     502
3-6 months     NIH-Crypto       BANGLADESH                     0            502     675
3-6 months     NIH-Crypto       BANGLADESH                     1            173     675
3-6 months     PROBIT           BELARUS                        0          10706   13303
3-6 months     PROBIT           BELARUS                        1           2597   13303
3-6 months     PROVIDE          BANGLADESH                     0            467     591
3-6 months     PROVIDE          BANGLADESH                     1            124     591
3-6 months     ResPak           PAKISTAN                       0            124     151
3-6 months     ResPak           PAKISTAN                       1             27     151
3-6 months     SAS-CompFeed     INDIA                          0            916    1027
3-6 months     SAS-CompFeed     INDIA                          1            111    1027
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1556    1654
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             98    1654
3-6 months     ZVITAMBO         ZIMBABWE                       0           4915    5818
3-6 months     ZVITAMBO         ZIMBABWE                       1            903    5818
6-9 months     CMC-V-BCS-2002   INDIA                          0            229     308
6-9 months     CMC-V-BCS-2002   INDIA                          1             79     308
6-9 months     CMIN             BANGLADESH                     0            159     168
6-9 months     CMIN             BANGLADESH                     1              9     168
6-9 months     COHORTS          GUATEMALA                      0            613     771
6-9 months     COHORTS          GUATEMALA                      1            158     771
6-9 months     COHORTS          INDIA                          0           4676    5665
6-9 months     COHORTS          INDIA                          1            989    5665
6-9 months     CONTENT          PERU                           0            213     214
6-9 months     CONTENT          PERU                           1              1     214
6-9 months     EE               PAKISTAN                       0            209     241
6-9 months     EE               PAKISTAN                       1             32     241
6-9 months     GMS-Nepal        NEPAL                          0            360     451
6-9 months     GMS-Nepal        NEPAL                          1             91     451
6-9 months     Guatemala BSC    GUATEMALA                      0            210     213
6-9 months     Guatemala BSC    GUATEMALA                      1              3     213
6-9 months     IRC              INDIA                          0            268     382
6-9 months     IRC              INDIA                          1            114     382
6-9 months     Keneba           GAMBIA                         0            720     881
6-9 months     Keneba           GAMBIA                         1            161     881
6-9 months     LCNI-5           MALAWI                         0            555     564
6-9 months     LCNI-5           MALAWI                         1              9     564
6-9 months     MAL-ED           BANGLADESH                     0            176     213
6-9 months     MAL-ED           BANGLADESH                     1             37     213
6-9 months     MAL-ED           BRAZIL                         0            181     188
6-9 months     MAL-ED           BRAZIL                         1              7     188
6-9 months     MAL-ED           INDIA                          0            184     227
6-9 months     MAL-ED           INDIA                          1             43     227
6-9 months     MAL-ED           NEPAL                          0            197     227
6-9 months     MAL-ED           NEPAL                          1             30     227
6-9 months     MAL-ED           PERU                           0            233     238
6-9 months     MAL-ED           PERU                           1              5     238
6-9 months     MAL-ED           SOUTH AFRICA                   0            215     230
6-9 months     MAL-ED           SOUTH AFRICA                   1             15     230
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            214     217
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     217
6-9 months     NIH-Birth        BANGLADESH                     0            342     478
6-9 months     NIH-Birth        BANGLADESH                     1            136     478
6-9 months     NIH-Crypto       BANGLADESH                     0            499     668
6-9 months     NIH-Crypto       BANGLADESH                     1            169     668
6-9 months     PROBIT           BELARUS                        0           9994   12422
6-9 months     PROBIT           BELARUS                        1           2428   12422
6-9 months     PROVIDE          BANGLADESH                     0            443     558
6-9 months     PROVIDE          BANGLADESH                     1            115     558
6-9 months     ResPak           PAKISTAN                       0            109     139
6-9 months     ResPak           PAKISTAN                       1             30     139
6-9 months     SAS-CompFeed     INDIA                          0            928    1043
6-9 months     SAS-CompFeed     INDIA                          1            115    1043
6-9 months     SAS-FoodSuppl    INDIA                          0            260     314
6-9 months     SAS-FoodSuppl    INDIA                          1             54     314
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1388    1481
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             93    1481
6-9 months     ZVITAMBO         ZIMBABWE                       0           4724    5594
6-9 months     ZVITAMBO         ZIMBABWE                       1            870    5594
9-12 months    CMC-V-BCS-2002   INDIA                          0            233     311
9-12 months    CMC-V-BCS-2002   INDIA                          1             78     311
9-12 months    CMIN             BANGLADESH                     0            145     154
9-12 months    CMIN             BANGLADESH                     1              9     154
9-12 months    COHORTS          GUATEMALA                      0            715     878
9-12 months    COHORTS          GUATEMALA                      1            163     878
9-12 months    COHORTS          INDIA                          0           4046    4879
9-12 months    COHORTS          INDIA                          1            833    4879
9-12 months    CONTENT          PERU                           0            211     212
9-12 months    CONTENT          PERU                           1              1     212
9-12 months    EE               PAKISTAN                       0            223     258
9-12 months    EE               PAKISTAN                       1             35     258
9-12 months    GMS-Nepal        NEPAL                          0            349     439
9-12 months    GMS-Nepal        NEPAL                          1             90     439
9-12 months    Guatemala BSC    GUATEMALA                      0            182     186
9-12 months    Guatemala BSC    GUATEMALA                      1              4     186
9-12 months    iLiNS-Zinc       BURKINA FASO                   0            930    1119
9-12 months    iLiNS-Zinc       BURKINA FASO                   1            189    1119
9-12 months    IRC              INDIA                          0            265     375
9-12 months    IRC              INDIA                          1            110     375
9-12 months    Keneba           GAMBIA                         0            700     862
9-12 months    Keneba           GAMBIA                         1            162     862
9-12 months    LCNI-5           MALAWI                         0            380     386
9-12 months    LCNI-5           MALAWI                         1              6     386
9-12 months    MAL-ED           BANGLADESH                     0            176     214
9-12 months    MAL-ED           BANGLADESH                     1             38     214
9-12 months    MAL-ED           BRAZIL                         0            177     184
9-12 months    MAL-ED           BRAZIL                         1              7     184
9-12 months    MAL-ED           INDIA                          0            180     223
9-12 months    MAL-ED           INDIA                          1             43     223
9-12 months    MAL-ED           NEPAL                          0            196     226
9-12 months    MAL-ED           NEPAL                          1             30     226
9-12 months    MAL-ED           PERU                           0            223     228
9-12 months    MAL-ED           PERU                           1              5     228
9-12 months    MAL-ED           SOUTH AFRICA                   0            217     232
9-12 months    MAL-ED           SOUTH AFRICA                   1             15     232
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            213     216
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     216
9-12 months    NIH-Birth        BANGLADESH                     0            328     463
9-12 months    NIH-Birth        BANGLADESH                     1            135     463
9-12 months    NIH-Crypto       BANGLADESH                     0            485     654
9-12 months    NIH-Crypto       BANGLADESH                     1            169     654
9-12 months    PROBIT           BELARUS                        0          10250   12677
9-12 months    PROBIT           BELARUS                        1           2427   12677
9-12 months    PROVIDE          BANGLADESH                     0            442     558
9-12 months    PROVIDE          BANGLADESH                     1            116     558
9-12 months    ResPak           PAKISTAN                       0            103     133
9-12 months    ResPak           PAKISTAN                       1             30     133
9-12 months    SAS-CompFeed     INDIA                          0            927    1047
9-12 months    SAS-CompFeed     INDIA                          1            120    1047
9-12 months    SAS-FoodSuppl    INDIA                          0            257     311
9-12 months    SAS-FoodSuppl    INDIA                          1             54     311
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1009    1077
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             68    1077
9-12 months    ZVITAMBO         ZIMBABWE                       0           4738    5601
9-12 months    ZVITAMBO         ZIMBABWE                       1            863    5601
12-15 months   CMC-V-BCS-2002   INDIA                          0            239     322
12-15 months   CMC-V-BCS-2002   INDIA                          1             83     322
12-15 months   CMIN             BANGLADESH                     0            149     155
12-15 months   CMIN             BANGLADESH                     1              6     155
12-15 months   COHORTS          GUATEMALA                      0            689     837
12-15 months   COHORTS          GUATEMALA                      1            148     837
12-15 months   CONTENT          PERU                           0            198     199
12-15 months   CONTENT          PERU                           1              1     199
12-15 months   EE               PAKISTAN                       0            201     233
12-15 months   EE               PAKISTAN                       1             32     233
12-15 months   GMS-Nepal        NEPAL                          0            351     436
12-15 months   GMS-Nepal        NEPAL                          1             85     436
12-15 months   Guatemala BSC    GUATEMALA                      0             94      97
12-15 months   Guatemala BSC    GUATEMALA                      1              3      97
12-15 months   iLiNS-Zinc       BURKINA FASO                   0            815     978
12-15 months   iLiNS-Zinc       BURKINA FASO                   1            163     978
12-15 months   IRC              INDIA                          0            258     366
12-15 months   IRC              INDIA                          1            108     366
12-15 months   Keneba           GAMBIA                         0           1042    1303
12-15 months   Keneba           GAMBIA                         1            261    1303
12-15 months   LCNI-5           MALAWI                         0            126     127
12-15 months   LCNI-5           MALAWI                         1              1     127
12-15 months   MAL-ED           BANGLADESH                     0            164     202
12-15 months   MAL-ED           BANGLADESH                     1             38     202
12-15 months   MAL-ED           BRAZIL                         0            168     174
12-15 months   MAL-ED           BRAZIL                         1              6     174
12-15 months   MAL-ED           INDIA                          0            180     222
12-15 months   MAL-ED           INDIA                          1             42     222
12-15 months   MAL-ED           NEPAL                          0            197     227
12-15 months   MAL-ED           NEPAL                          1             30     227
12-15 months   MAL-ED           PERU                           0            212     217
12-15 months   MAL-ED           PERU                           1              5     217
12-15 months   MAL-ED           SOUTH AFRICA                   0            211     227
12-15 months   MAL-ED           SOUTH AFRICA                   1             16     227
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            214     217
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     217
12-15 months   NIH-Birth        BANGLADESH                     0            317     441
12-15 months   NIH-Birth        BANGLADESH                     1            124     441
12-15 months   NIH-Crypto       BANGLADESH                     0            475     641
12-15 months   NIH-Crypto       BANGLADESH                     1            166     641
12-15 months   PROBIT           BELARUS                        0            839    1000
12-15 months   PROBIT           BELARUS                        1            161    1000
12-15 months   PROVIDE          BANGLADESH                     0            420     527
12-15 months   PROVIDE          BANGLADESH                     1            107     527
12-15 months   ResPak           PAKISTAN                       0             71      87
12-15 months   ResPak           PAKISTAN                       1             16      87
12-15 months   SAS-CompFeed     INDIA                          0            938    1063
12-15 months   SAS-CompFeed     INDIA                          1            125    1063
12-15 months   SAS-FoodSuppl    INDIA                          0            253     303
12-15 months   SAS-FoodSuppl    INDIA                          1             50     303
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            744     787
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             43     787
12-15 months   ZVITAMBO         ZIMBABWE                       0           2008    2367
12-15 months   ZVITAMBO         ZIMBABWE                       1            359    2367
15-18 months   CMC-V-BCS-2002   INDIA                          0            229     314
15-18 months   CMC-V-BCS-2002   INDIA                          1             85     314
15-18 months   CMIN             BANGLADESH                     0            147     156
15-18 months   CMIN             BANGLADESH                     1              9     156
15-18 months   COHORTS          GUATEMALA                      0            613     744
15-18 months   COHORTS          GUATEMALA                      1            131     744
15-18 months   CONTENT          PERU                           0            188     189
15-18 months   CONTENT          PERU                           1              1     189
15-18 months   EE               PAKISTAN                       0            184     218
15-18 months   EE               PAKISTAN                       1             34     218
15-18 months   GMS-Nepal        NEPAL                          0            359     445
15-18 months   GMS-Nepal        NEPAL                          1             86     445
15-18 months   iLiNS-Zinc       BURKINA FASO                   0            841    1021
15-18 months   iLiNS-Zinc       BURKINA FASO                   1            180    1021
15-18 months   IRC              INDIA                          0            254     358
15-18 months   IRC              INDIA                          1            104     358
15-18 months   Keneba           GAMBIA                         0           1062    1325
15-18 months   Keneba           GAMBIA                         1            263    1325
15-18 months   LCNI-5           MALAWI                         0            119     120
15-18 months   LCNI-5           MALAWI                         1              1     120
15-18 months   MAL-ED           BANGLADESH                     0            165     202
15-18 months   MAL-ED           BANGLADESH                     1             37     202
15-18 months   MAL-ED           BRAZIL                         0            160     166
15-18 months   MAL-ED           BRAZIL                         1              6     166
15-18 months   MAL-ED           INDIA                          0            180     222
15-18 months   MAL-ED           INDIA                          1             42     222
15-18 months   MAL-ED           NEPAL                          0            194     224
15-18 months   MAL-ED           NEPAL                          1             30     224
15-18 months   MAL-ED           PERU                           0            201     206
15-18 months   MAL-ED           PERU                           1              5     206
15-18 months   MAL-ED           SOUTH AFRICA                   0            210     224
15-18 months   MAL-ED           SOUTH AFRICA                   1             14     224
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            205     208
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     208
15-18 months   NIH-Birth        BANGLADESH                     0            307     428
15-18 months   NIH-Birth        BANGLADESH                     1            121     428
15-18 months   NIH-Crypto       BANGLADESH                     0            425     585
15-18 months   NIH-Crypto       BANGLADESH                     1            160     585
15-18 months   PROBIT           BELARUS                        0            243     275
15-18 months   PROBIT           BELARUS                        1             32     275
15-18 months   PROVIDE          BANGLADESH                     0            417     524
15-18 months   PROVIDE          BANGLADESH                     1            107     524
15-18 months   SAS-CompFeed     INDIA                          0            944    1065
15-18 months   SAS-CompFeed     INDIA                          1            121    1065
15-18 months   SAS-FoodSuppl    INDIA                          0            246     291
15-18 months   SAS-FoodSuppl    INDIA                          1             45     291
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            624     660
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             36     660
15-18 months   ZVITAMBO         ZIMBABWE                       0           1616    1887
15-18 months   ZVITAMBO         ZIMBABWE                       1            271    1887
18-21 months   CMC-V-BCS-2002   INDIA                          0            218     299
18-21 months   CMC-V-BCS-2002   INDIA                          1             81     299
18-21 months   CMIN             BANGLADESH                     0            149     158
18-21 months   CMIN             BANGLADESH                     1              9     158
18-21 months   COHORTS          GUATEMALA                      0            615     742
18-21 months   COHORTS          GUATEMALA                      1            127     742
18-21 months   CONTENT          PERU                           0            182     183
18-21 months   CONTENT          PERU                           1              1     183
18-21 months   EE               PAKISTAN                       0            175     208
18-21 months   EE               PAKISTAN                       1             33     208
18-21 months   GMS-Nepal        NEPAL                          0            329     413
18-21 months   GMS-Nepal        NEPAL                          1             84     413
18-21 months   IRC              INDIA                          0            253     354
18-21 months   IRC              INDIA                          1            101     354
18-21 months   Keneba           GAMBIA                         0           1059    1316
18-21 months   Keneba           GAMBIA                         1            257    1316
18-21 months   LCNI-5           MALAWI                         0            471     477
18-21 months   LCNI-5           MALAWI                         1              6     477
18-21 months   MAL-ED           BANGLADESH                     0            161     198
18-21 months   MAL-ED           BANGLADESH                     1             37     198
18-21 months   MAL-ED           BRAZIL                         0            152     158
18-21 months   MAL-ED           BRAZIL                         1              6     158
18-21 months   MAL-ED           INDIA                          0            179     222
18-21 months   MAL-ED           INDIA                          1             43     222
18-21 months   MAL-ED           NEPAL                          0            194     224
18-21 months   MAL-ED           NEPAL                          1             30     224
18-21 months   MAL-ED           PERU                           0            193     197
18-21 months   MAL-ED           PERU                           1              4     197
18-21 months   MAL-ED           SOUTH AFRICA                   0            217     232
18-21 months   MAL-ED           SOUTH AFRICA                   1             15     232
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            192     195
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     195
18-21 months   NIH-Birth        BANGLADESH                     0            286     403
18-21 months   NIH-Birth        BANGLADESH                     1            117     403
18-21 months   NIH-Crypto       BANGLADESH                     0            382     532
18-21 months   NIH-Crypto       BANGLADESH                     1            150     532
18-21 months   PROBIT           BELARUS                        0            198     218
18-21 months   PROBIT           BELARUS                        1             20     218
18-21 months   PROVIDE          BANGLADESH                     0            426     534
18-21 months   PROVIDE          BANGLADESH                     1            108     534
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              8       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       9
18-21 months   ZVITAMBO         ZIMBABWE                       0           1311    1483
18-21 months   ZVITAMBO         ZIMBABWE                       1            172    1483
21-24 months   CMC-V-BCS-2002   INDIA                          0            226     302
21-24 months   CMC-V-BCS-2002   INDIA                          1             76     302
21-24 months   CMIN             BANGLADESH                     0            123     130
21-24 months   CMIN             BANGLADESH                     1              7     130
21-24 months   COHORTS          GUATEMALA                      0            686     823
21-24 months   COHORTS          GUATEMALA                      1            137     823
21-24 months   CONTENT          PERU                           0             38      38
21-24 months   CONTENT          PERU                           1              0      38
21-24 months   EE               PAKISTAN                       0             74      91
21-24 months   EE               PAKISTAN                       1             17      91
21-24 months   GMS-Nepal        NEPAL                          0            259     318
21-24 months   GMS-Nepal        NEPAL                          1             59     318
21-24 months   IRC              INDIA                          0            259     365
21-24 months   IRC              INDIA                          1            106     365
21-24 months   Keneba           GAMBIA                         0            939    1172
21-24 months   Keneba           GAMBIA                         1            233    1172
21-24 months   LCNI-5           MALAWI                         0            403     410
21-24 months   LCNI-5           MALAWI                         1              7     410
21-24 months   MAL-ED           BANGLADESH                     0            159     196
21-24 months   MAL-ED           BANGLADESH                     1             37     196
21-24 months   MAL-ED           BRAZIL                         0            150     156
21-24 months   MAL-ED           BRAZIL                         1              6     156
21-24 months   MAL-ED           INDIA                          0            179     222
21-24 months   MAL-ED           INDIA                          1             43     222
21-24 months   MAL-ED           NEPAL                          0            194     224
21-24 months   MAL-ED           NEPAL                          1             30     224
21-24 months   MAL-ED           PERU                           0            182     185
21-24 months   MAL-ED           PERU                           1              3     185
21-24 months   MAL-ED           SOUTH AFRICA                   0            219     234
21-24 months   MAL-ED           SOUTH AFRICA                   1             15     234
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0            192     195
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              3     195
21-24 months   NIH-Birth        BANGLADESH                     0            280     392
21-24 months   NIH-Birth        BANGLADESH                     1            112     392
21-24 months   NIH-Crypto       BANGLADESH                     0            346     476
21-24 months   NIH-Crypto       BANGLADESH                     1            130     476
21-24 months   PROBIT           BELARUS                        0            190     209
21-24 months   PROBIT           BELARUS                        1             19     209
21-24 months   PROVIDE          BANGLADESH                     0            370     464
21-24 months   PROVIDE          BANGLADESH                     1             94     464
21-24 months   ZVITAMBO         ZIMBABWE                       0            975    1075
21-24 months   ZVITAMBO         ZIMBABWE                       1            100    1075


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

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 12-15 months, studyid: LCNI-5, country: MALAWI
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: LCNI-5, country: MALAWI
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/32d483d0-1bef-413e-9d76-1bdb26a8d1d7/a359b7c0-79cb-4087-a5e8-0cceca2664d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/32d483d0-1bef-413e-9d76-1bdb26a8d1d7/a359b7c0-79cb-4087-a5e8-0cceca2664d8/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/32d483d0-1bef-413e-9d76-1bdb26a8d1d7/a359b7c0-79cb-4087-a5e8-0cceca2664d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                3.5093452    3.2828998   3.7357905
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                2.7549192    2.1488903   3.3609480
0-3 months     COHORTS          GUATEMALA                      0                    NA                2.6217731    2.5716906   2.6718557
0-3 months     COHORTS          GUATEMALA                      1                    NA                2.4439996    2.3549273   2.5330718
0-3 months     COHORTS          INDIA                          0                    NA                3.5198971    3.5045561   3.5352382
0-3 months     COHORTS          INDIA                          1                    NA                3.3674041    3.3311591   3.4036492
0-3 months     EE               PAKISTAN                       0                    NA                3.0409550    2.9530752   3.1288348
0-3 months     EE               PAKISTAN                       1                    NA                2.5351964    2.2498555   2.8205372
0-3 months     GMS-Nepal        NEPAL                          0                    NA                3.6105512    3.5531155   3.6679869
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.4755248    3.3506724   3.6003772
0-3 months     IRC              INDIA                          0                    NA                3.4474496    3.3345695   3.5603297
0-3 months     IRC              INDIA                          1                    NA                2.2519499    2.1018203   2.4020795
0-3 months     Keneba           GAMBIA                         0                    NA                3.2040638    3.1584881   3.2496395
0-3 months     Keneba           GAMBIA                         1                    NA                2.6714058    2.5801254   2.7626862
0-3 months     MAL-ED           BANGLADESH                     0                    NA                3.3565156    3.2865988   3.4264324
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.1220815    2.9316111   3.3125519
0-3 months     MAL-ED           BRAZIL                         0                    NA                3.7781071    3.6657672   3.8904471
0-3 months     MAL-ED           BRAZIL                         1                    NA                3.4724173    3.0205687   3.9242659
0-3 months     MAL-ED           INDIA                          0                    NA                3.3880993    3.2785294   3.4976691
0-3 months     MAL-ED           INDIA                          1                    NA                3.0719663    2.8852299   3.2587026
0-3 months     MAL-ED           NEPAL                          0                    NA                3.6105012    3.5102939   3.7107085
0-3 months     MAL-ED           NEPAL                          1                    NA                3.6469485    3.4396658   3.8542313
0-3 months     MAL-ED           PERU                           0                    NA                3.0316053    2.9648866   3.0983239
0-3 months     MAL-ED           PERU                           1                    NA                3.4305949    3.0675066   3.7936833
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                3.2187160    3.1194185   3.3180136
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                2.7762475    2.4525177   3.0999773
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                3.1543989    3.0927449   3.2160528
0-3 months     NIH-Birth        BANGLADESH                     1                    NA                2.9402138    2.8395476   3.0408799
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                3.1644396    3.1220468   3.2068325
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.0177671    2.9455108   3.0900234
0-3 months     PROBIT           BELARUS                        0                    NA                2.9093163    2.8098793   3.0087532
0-3 months     PROBIT           BELARUS                        1                    NA                2.4079156    2.2963218   2.5195095
0-3 months     PROVIDE          BANGLADESH                     0                    NA                3.2736538    3.2313627   3.3159450
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.1851724    3.1074811   3.2628636
0-3 months     ResPak           PAKISTAN                       0                    NA                2.9394916    2.6350152   3.2439681
0-3 months     ResPak           PAKISTAN                       1                    NA                2.3832192    1.7060937   3.0603447
0-3 months     SAS-CompFeed     INDIA                          0                    NA                3.3436994    3.2928999   3.3944989
0-3 months     SAS-CompFeed     INDIA                          1                    NA                3.1636240    3.0360377   3.2912103
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                3.4386324    3.4177303   3.4595346
0-3 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.5394716    2.4900724   2.5888708
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.8193510    1.6987712   1.9399308
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.7306079    1.5462708   1.9149450
3-6 months     CMIN             BANGLADESH                     0                    NA                1.9450224    1.8702352   2.0198095
3-6 months     CMIN             BANGLADESH                     1                    NA                1.9015849    1.6579994   2.1451703
3-6 months     COHORTS          GUATEMALA                      0                    NA                1.7688402    1.7333606   1.8043198
3-6 months     COHORTS          GUATEMALA                      1                    NA                1.7117730    1.6457196   1.7778264
3-6 months     COHORTS          INDIA                          0                    NA                1.8699294    1.8565773   1.8832815
3-6 months     COHORTS          INDIA                          1                    NA                1.8500938    1.8194674   1.8807203
3-6 months     EE               PAKISTAN                       0                    NA                2.0473933    1.9801855   2.1146011
3-6 months     EE               PAKISTAN                       1                    NA                2.1545428    1.9801659   2.3289197
3-6 months     GMS-Nepal        NEPAL                          0                    NA                1.6800173    1.6360817   1.7239529
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.7470266    1.6511614   1.8428918
3-6 months     IRC              INDIA                          0                    NA                1.8473741    1.7724479   1.9223003
3-6 months     IRC              INDIA                          1                    NA                1.9472137    1.8178238   2.0766036
3-6 months     Keneba           GAMBIA                         0                    NA                1.9752307    1.9295063   2.0209550
3-6 months     Keneba           GAMBIA                         1                    NA                2.0416344    1.9555545   2.1277143
3-6 months     MAL-ED           BANGLADESH                     0                    NA                1.9297791    1.8760597   1.9834985
3-6 months     MAL-ED           BANGLADESH                     1                    NA                1.9081865    1.7726892   2.0436838
3-6 months     MAL-ED           BRAZIL                         0                    NA                2.1365488    2.0519147   2.2211830
3-6 months     MAL-ED           BRAZIL                         1                    NA                2.2063105    1.9044224   2.5081986
3-6 months     MAL-ED           INDIA                          0                    NA                1.8565991    1.7857668   1.9274314
3-6 months     MAL-ED           INDIA                          1                    NA                1.9836096    1.8716749   2.0955442
3-6 months     MAL-ED           NEPAL                          0                    NA                1.9568448    1.8946400   2.0190496
3-6 months     MAL-ED           NEPAL                          1                    NA                1.9510930    1.8304156   2.0717704
3-6 months     MAL-ED           PERU                           0                    NA                2.0086162    1.9413042   2.0759282
3-6 months     MAL-ED           PERU                           1                    NA                1.8686035    1.5955103   2.1416968
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.9580975    1.8745636   2.0416314
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                2.0905775    1.7843831   2.3967719
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                1.8299641    1.7729799   1.8869483
3-6 months     NIH-Birth        BANGLADESH                     1                    NA                1.8498550    1.7564873   1.9432227
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                1.9928583    1.9503612   2.0353554
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                2.0219061    1.9505243   2.0932879
3-6 months     PROBIT           BELARUS                        0                    NA                2.1168808    2.0817768   2.1519848
3-6 months     PROBIT           BELARUS                        1                    NA                1.9873308    1.9150881   2.0595734
3-6 months     PROVIDE          BANGLADESH                     0                    NA                1.9754202    1.9379368   2.0129035
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9378776    1.8589635   2.0167917
3-6 months     ResPak           PAKISTAN                       0                    NA                2.0182023    1.8561453   2.1802593
3-6 months     ResPak           PAKISTAN                       1                    NA                2.1988882    1.8898030   2.5079733
3-6 months     SAS-CompFeed     INDIA                          0                    NA                1.9333374    1.8790717   1.9876031
3-6 months     SAS-CompFeed     INDIA                          1                    NA                1.8754365    1.7430184   2.0078545
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.7895560    1.7526557   1.8264564
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.9206989    1.7659473   2.0754506
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.9563625    1.9342676   1.9784573
3-6 months     ZVITAMBO         ZIMBABWE                       1                    NA                2.0679685    2.0190854   2.1168515
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                1.2308223    1.1376678   1.3239767
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.1840066    1.0428923   1.3251208
6-9 months     CMIN             BANGLADESH                     0                    NA                1.2392432    1.1772351   1.3012513
6-9 months     CMIN             BANGLADESH                     1                    NA                1.4630969    1.2321459   1.6940479
6-9 months     COHORTS          GUATEMALA                      0                    NA                1.1006896    1.0701026   1.1312765
6-9 months     COHORTS          GUATEMALA                      1                    NA                1.1095947    1.0495799   1.1696096
6-9 months     COHORTS          INDIA                          0                    NA                1.1876649    1.1755425   1.1997874
6-9 months     COHORTS          INDIA                          1                    NA                1.2188783    1.1908478   1.2469088
6-9 months     EE               PAKISTAN                       0                    NA                1.1762181    1.1228919   1.2295443
6-9 months     EE               PAKISTAN                       1                    NA                1.2125048    1.0480123   1.3769973
6-9 months     GMS-Nepal        NEPAL                          0                    NA                1.3236151    1.2781959   1.3690343
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.2996188    1.1924528   1.4067848
6-9 months     IRC              INDIA                          0                    NA                1.3617140    1.3079704   1.4154576
6-9 months     IRC              INDIA                          1                    NA                1.3525194    1.2521013   1.4529376
6-9 months     Keneba           GAMBIA                         0                    NA                1.4021878    1.3462703   1.4581053
6-9 months     Keneba           GAMBIA                         1                    NA                1.4420831    1.3095678   1.5745984
6-9 months     LCNI-5           MALAWI                         0                    NA                1.4629897    1.4275925   1.4983870
6-9 months     LCNI-5           MALAWI                         1                    NA                1.4217952    0.9439919   1.8995985
6-9 months     MAL-ED           BANGLADESH                     0                    NA                1.2419000    1.1973451   1.2864550
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.2792540    1.1746491   1.3838588
6-9 months     MAL-ED           BRAZIL                         0                    NA                1.4879067    1.4031459   1.5726675
6-9 months     MAL-ED           BRAZIL                         1                    NA                1.4747760    0.9942225   1.9553294
6-9 months     MAL-ED           INDIA                          0                    NA                1.2376355    1.1836743   1.2915967
6-9 months     MAL-ED           INDIA                          1                    NA                1.3273694    1.2252100   1.4295287
6-9 months     MAL-ED           NEPAL                          0                    NA                1.3379926    1.2907641   1.3852211
6-9 months     MAL-ED           NEPAL                          1                    NA                1.4604314    1.3339207   1.5869421
6-9 months     MAL-ED           PERU                           0                    NA                1.3349321    1.2799287   1.3899356
6-9 months     MAL-ED           PERU                           1                    NA                1.1299731    0.7282474   1.5316988
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                1.3728937    1.3077936   1.4379938
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.3259644    1.0857031   1.5662257
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                1.2378320    1.1898166   1.2858474
6-9 months     NIH-Birth        BANGLADESH                     1                    NA                1.2889953    1.2056247   1.3723658
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                1.3328844    1.2983340   1.3674347
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3143226    1.2557434   1.3729017
6-9 months     PROBIT           BELARUS                        0                    NA                1.5720112    1.5410578   1.6029646
6-9 months     PROBIT           BELARUS                        1                    NA                1.5944983    1.5257278   1.6632689
6-9 months     PROVIDE          BANGLADESH                     0                    NA                1.2684279    1.2395879   1.2972678
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.3393560    1.2865850   1.3921270
6-9 months     ResPak           PAKISTAN                       0                    NA                1.4367075    1.3218256   1.5515893
6-9 months     ResPak           PAKISTAN                       1                    NA                1.4242089    1.1742605   1.6741573
6-9 months     SAS-CompFeed     INDIA                          0                    NA                1.2068882    1.1860030   1.2277734
6-9 months     SAS-CompFeed     INDIA                          1                    NA                1.2238749    1.1484795   1.2992704
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                1.1378850    1.0946912   1.1810788
6-9 months     SAS-FoodSuppl    INDIA                          1                    NA                1.1653919    1.0553889   1.2753950
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.3258307    1.2879327   1.3637287
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2879932    1.1458485   1.4301379
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                1.3408848    1.3193920   1.3623777
6-9 months     ZVITAMBO         ZIMBABWE                       1                    NA                1.3579867    1.3109893   1.4049840
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.9010358    0.8188935   0.9831781
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.9053379    0.7848059   1.0258700
9-12 months    CMIN             BANGLADESH                     0                    NA                0.9574410    0.8938125   1.0210696
9-12 months    CMIN             BANGLADESH                     1                    NA                0.9948732    0.8367399   1.1530064
9-12 months    COHORTS          GUATEMALA                      0                    NA                0.9517572    0.9240022   0.9795121
9-12 months    COHORTS          GUATEMALA                      1                    NA                0.9131345    0.8533548   0.9729143
9-12 months    COHORTS          INDIA                          0                    NA                1.0032358    0.9899884   1.0164831
9-12 months    COHORTS          INDIA                          1                    NA                0.9923557    0.9637206   1.0209908
9-12 months    EE               PAKISTAN                       0                    NA                0.9036673    0.8621860   0.9451487
9-12 months    EE               PAKISTAN                       1                    NA                0.9491293    0.8510002   1.0472584
9-12 months    GMS-Nepal        NEPAL                          0                    NA                0.9990945    0.9632191   1.0349698
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.9948337    0.9035035   1.0861639
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                1.1113605    1.0769127   1.1458084
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    NA                1.0014550    0.9346106   1.0682995
9-12 months    IRC              INDIA                          0                    NA                1.0851319    1.0402120   1.1300518
9-12 months    IRC              INDIA                          1                    NA                1.2214785    1.1345283   1.3084287
9-12 months    Keneba           GAMBIA                         0                    NA                0.9915215    0.9427052   1.0403377
9-12 months    Keneba           GAMBIA                         1                    NA                0.9492949    0.8629160   1.0356739
9-12 months    LCNI-5           MALAWI                         0                    NA                1.0971251    1.0492817   1.1449686
9-12 months    LCNI-5           MALAWI                         1                    NA                1.1954920    1.0297792   1.3612049
9-12 months    MAL-ED           BANGLADESH                     0                    NA                0.9759657    0.9312345   1.0206969
9-12 months    MAL-ED           BANGLADESH                     1                    NA                1.0224910    0.9348781   1.1101039
9-12 months    MAL-ED           BRAZIL                         0                    NA                1.2921684    1.2134424   1.3708943
9-12 months    MAL-ED           BRAZIL                         1                    NA                1.3536480    0.9894964   1.7177996
9-12 months    MAL-ED           INDIA                          0                    NA                0.9656972    0.9218153   1.0095791
9-12 months    MAL-ED           INDIA                          1                    NA                1.0569800    0.9782101   1.1357499
9-12 months    MAL-ED           NEPAL                          0                    NA                1.0814120    1.0364030   1.1264210
9-12 months    MAL-ED           NEPAL                          1                    NA                1.1526438    1.0557745   1.2495130
9-12 months    MAL-ED           PERU                           0                    NA                1.0868018    1.0360160   1.1375876
9-12 months    MAL-ED           PERU                           1                    NA                1.1885976    0.8175296   1.5596656
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                1.0025204    0.9351057   1.0699351
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                1.1146710    0.9130583   1.3162836
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                1.0894555    1.0480439   1.1308671
9-12 months    NIH-Birth        BANGLADESH                     1                    NA                1.0902457    1.0216396   1.1588519
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                1.1048399    1.0749129   1.1347670
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1685752    1.1159389   1.2212115
9-12 months    PROBIT           BELARUS                        0                    NA                1.3737305    1.3270193   1.4204417
9-12 months    PROBIT           BELARUS                        1                    NA                1.3641270    1.2695308   1.4587231
9-12 months    PROVIDE          BANGLADESH                     0                    NA                1.0531262    1.0222555   1.0839970
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0327048    0.9751656   1.0902440
9-12 months    ResPak           PAKISTAN                       0                    NA                1.2023201    1.0435531   1.3610870
9-12 months    ResPak           PAKISTAN                       1                    NA                1.1179973    0.9498455   1.2861490
9-12 months    SAS-CompFeed     INDIA                          0                    NA                0.9982443    0.9704293   1.0260593
9-12 months    SAS-CompFeed     INDIA                          1                    NA                1.0706337    0.9445708   1.1966966
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                0.8492688    0.6854474   1.0130902
9-12 months    SAS-FoodSuppl    INDIA                          1                    NA                0.6269388    0.5661606   0.6877170
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.0857119    1.0507766   1.1206472
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1105666    0.9548545   1.2662787
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                1.0687670    1.0485814   1.0889526
9-12 months    ZVITAMBO         ZIMBABWE                       1                    NA                1.1208139    1.0772454   1.1643824
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.8363114    0.7534978   0.9191250
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8884744    0.7538406   1.0231082
12-15 months   CMIN             BANGLADESH                     0                    NA                0.8638612    0.8055649   0.9221575
12-15 months   CMIN             BANGLADESH                     1                    NA                0.9882519    0.8369379   1.1395659
12-15 months   COHORTS          GUATEMALA                      0                    NA                0.7807764    0.7518362   0.8097167
12-15 months   COHORTS          GUATEMALA                      1                    NA                0.8150330    0.7411634   0.8889026
12-15 months   EE               PAKISTAN                       0                    NA                1.0088799    0.9690774   1.0486824
12-15 months   EE               PAKISTAN                       1                    NA                0.8971620    0.8044381   0.9898860
12-15 months   GMS-Nepal        NEPAL                          0                    NA                0.8709319    0.8358343   0.9060295
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.9054209    0.8490364   0.9618055
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9512269    0.8992415   1.0032122
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                1.0388351    0.9785312   1.0991391
12-15 months   IRC              INDIA                          0                    NA                0.9860436    0.9315829   1.0405043
12-15 months   IRC              INDIA                          1                    NA                0.8728051    0.8101766   0.9354335
12-15 months   Keneba           GAMBIA                         0                    NA                0.9448177    0.9099502   0.9796851
12-15 months   Keneba           GAMBIA                         1                    NA                0.9021273    0.8320529   0.9722018
12-15 months   MAL-ED           BANGLADESH                     0                    NA                0.8924219    0.8474638   0.9373800
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9885966    0.8900201   1.0871731
12-15 months   MAL-ED           BRAZIL                         0                    NA                1.1392953    1.0782654   1.2003252
12-15 months   MAL-ED           BRAZIL                         1                    NA                1.0108767    0.6776390   1.3441144
12-15 months   MAL-ED           INDIA                          0                    NA                0.9133099    0.8702106   0.9564092
12-15 months   MAL-ED           INDIA                          1                    NA                0.8857126    0.7903231   0.9811022
12-15 months   MAL-ED           NEPAL                          0                    NA                0.9555800    0.9125062   0.9986538
12-15 months   MAL-ED           NEPAL                          1                    NA                0.9261617    0.8208786   1.0314447
12-15 months   MAL-ED           PERU                           0                    NA                0.8943075    0.8467734   0.9418417
12-15 months   MAL-ED           PERU                           1                    NA                0.9282217    0.5654871   1.2909563
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.9134323    0.8531388   0.9737258
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.0133714    0.8141418   1.2126010
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                0.7136436    0.6715780   0.7557093
12-15 months   NIH-Birth        BANGLADESH                     1                    NA                0.7785434    0.6560563   0.9010305
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9713613    0.9430381   0.9996845
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9711587    0.9197770   1.0225403
12-15 months   PROBIT           BELARUS                        0                    NA                1.1899134    0.8259602   1.5538665
12-15 months   PROBIT           BELARUS                        1                    NA                1.1604112    0.5243712   1.7964512
12-15 months   PROVIDE          BANGLADESH                     0                    NA                0.9665906    0.9370947   0.9960866
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9322771    0.8756564   0.9888978
12-15 months   ResPak           PAKISTAN                       0                    NA                1.3325629    1.1300184   1.5351073
12-15 months   ResPak           PAKISTAN                       1                    NA                1.1468715    0.9971923   1.2965508
12-15 months   SAS-CompFeed     INDIA                          0                    NA                0.8316238    0.7895475   0.8737001
12-15 months   SAS-CompFeed     INDIA                          1                    NA                0.7615110    0.6907461   0.8322758
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                1.0092817    0.9106710   1.1078923
12-15 months   SAS-FoodSuppl    INDIA                          1                    NA                1.1153369    0.9076431   1.3230307
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9289891    0.8910537   0.9669246
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9604492    0.8027018   1.1181967
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.9236862    0.8934657   0.9539067
12-15 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.9189941    0.8539544   0.9840337
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7446260    0.6687121   0.8205400
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7337445    0.6161467   0.8513423
15-18 months   CMIN             BANGLADESH                     0                    NA                0.7417603    0.6877075   0.7958130
15-18 months   CMIN             BANGLADESH                     1                    NA                0.7633725    0.5269193   0.9998256
15-18 months   COHORTS          GUATEMALA                      0                    NA                0.7450029    0.7108249   0.7791809
15-18 months   COHORTS          GUATEMALA                      1                    NA                0.7652939    0.6973913   0.8331965
15-18 months   EE               PAKISTAN                       0                    NA                0.8569646    0.8160563   0.8978728
15-18 months   EE               PAKISTAN                       1                    NA                0.7599402    0.6813067   0.8385736
15-18 months   GMS-Nepal        NEPAL                          0                    NA                0.7350055    0.6923372   0.7776739
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7918625    0.7277809   0.8559440
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.9360654    0.8986567   0.9734741
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.8610555    0.7672874   0.9548235
15-18 months   IRC              INDIA                          0                    NA                0.8646514    0.8176241   0.9116787
15-18 months   IRC              INDIA                          1                    NA                0.8455388    0.7765664   0.9145113
15-18 months   Keneba           GAMBIA                         0                    NA                0.8753819    0.8404334   0.9103305
15-18 months   Keneba           GAMBIA                         1                    NA                0.8898039    0.8255935   0.9540144
15-18 months   MAL-ED           BANGLADESH                     0                    NA                0.8411761    0.7999672   0.8823849
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.7833620    0.6915673   0.8751566
15-18 months   MAL-ED           BRAZIL                         0                    NA                1.0002657    0.9386855   1.0618459
15-18 months   MAL-ED           BRAZIL                         1                    NA                0.7350532    0.4417441   1.0283622
15-18 months   MAL-ED           INDIA                          0                    NA                0.8340702    0.7928043   0.8753361
15-18 months   MAL-ED           INDIA                          1                    NA                0.9028319    0.8241033   0.9815604
15-18 months   MAL-ED           NEPAL                          0                    NA                0.8451311    0.7981445   0.8921177
15-18 months   MAL-ED           NEPAL                          1                    NA                0.8228501    0.7511521   0.8945481
15-18 months   MAL-ED           PERU                           0                    NA                0.8501980    0.8062357   0.8941602
15-18 months   MAL-ED           PERU                           1                    NA                0.8532168    0.6715079   1.0349257
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8882617    0.8325038   0.9440196
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.9000501    0.7846656   1.0154346
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                0.7591085    0.7102321   0.8079850
15-18 months   NIH-Birth        BANGLADESH                     1                    NA                0.7806752    0.7028815   0.8584690
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                0.9233247    0.8961168   0.9505325
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8968769    0.8505990   0.9431548
15-18 months   PROBIT           BELARUS                        0                    NA                1.0236341    0.6428443   1.4044238
15-18 months   PROBIT           BELARUS                        1                    NA                1.1127004   -1.4315430   3.6569437
15-18 months   PROVIDE          BANGLADESH                     0                    NA                0.8463207    0.8196340   0.8730074
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8916586    0.8352511   0.9480662
15-18 months   SAS-CompFeed     INDIA                          0                    NA                0.9158816    0.8862394   0.9455238
15-18 months   SAS-CompFeed     INDIA                          1                    NA                0.8965170    0.8140908   0.9789433
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                0.7871971    0.7488630   0.8255313
15-18 months   SAS-FoodSuppl    INDIA                          1                    NA                0.8362728    0.7399178   0.9326277
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.9399868    0.8967839   0.9831896
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9011341    0.7069632   1.0953050
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.8114433    0.7777063   0.8451802
15-18 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7694937    0.6876138   0.8513737
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6535898    0.5803927   0.7267868
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8145037    0.6855375   0.9434699
18-21 months   CMIN             BANGLADESH                     0                    NA                0.8135132    0.7611717   0.8658546
18-21 months   CMIN             BANGLADESH                     1                    NA                0.7293530    0.6021913   0.8565147
18-21 months   COHORTS          GUATEMALA                      0                    NA                0.7408448    0.7088381   0.7728516
18-21 months   COHORTS          GUATEMALA                      1                    NA                0.7410490    0.6765693   0.8055286
18-21 months   EE               PAKISTAN                       0                    NA                0.7229205    0.6816407   0.7642003
18-21 months   EE               PAKISTAN                       1                    NA                0.7195780    0.6283631   0.8107929
18-21 months   GMS-Nepal        NEPAL                          0                    NA                0.9173274    0.8743525   0.9603023
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8654354    0.8159258   0.9149451
18-21 months   IRC              INDIA                          0                    NA                0.7825752    0.7368204   0.8283300
18-21 months   IRC              INDIA                          1                    NA                0.7091710    0.6287369   0.7896051
18-21 months   Keneba           GAMBIA                         0                    NA                0.8204443    0.7833426   0.8575460
18-21 months   Keneba           GAMBIA                         1                    NA                0.7911445    0.7164534   0.8658357
18-21 months   LCNI-5           MALAWI                         0                    NA                0.8182133    0.7709281   0.8654985
18-21 months   LCNI-5           MALAWI                         1                    NA                0.8005479    0.6302424   0.9708533
18-21 months   MAL-ED           BANGLADESH                     0                    NA                0.8111723    0.7731978   0.8491468
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.8448536    0.7512825   0.9384247
18-21 months   MAL-ED           BRAZIL                         0                    NA                0.9261699    0.8503394   1.0020005
18-21 months   MAL-ED           BRAZIL                         1                    NA                0.6920940    0.4344292   0.9497587
18-21 months   MAL-ED           INDIA                          0                    NA                0.8814458    0.8422596   0.9206320
18-21 months   MAL-ED           INDIA                          1                    NA                0.8666522    0.7802630   0.9530414
18-21 months   MAL-ED           NEPAL                          0                    NA                0.8111240    0.7699228   0.8523251
18-21 months   MAL-ED           NEPAL                          1                    NA                0.8441280    0.7380659   0.9501900
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.7802029    0.7228255   0.8375803
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7931696    0.5599991   1.0263400
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                0.7330338    0.6897795   0.7762882
18-21 months   NIH-Birth        BANGLADESH                     1                    NA                0.7220271    0.6505917   0.7934625
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                0.7944955    0.7672548   0.8217362
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8005356    0.7531279   0.8479433
18-21 months   PROBIT           BELARUS                        0                    NA                0.9011952    0.2403109   1.5620794
18-21 months   PROBIT           BELARUS                        1                    NA                0.8320654    0.0373323   1.6267985
18-21 months   PROVIDE          BANGLADESH                     0                    NA                0.8296714    0.8034670   0.8558757
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8567720    0.7992934   0.9142506
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.6657309    0.6279922   0.7034696
18-21 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7125952    0.6026164   0.8225740
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7141987    0.6396066   0.7887908
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7038719    0.5961153   0.8116285
21-24 months   CMIN             BANGLADESH                     0                    NA                0.7602098    0.6996900   0.8207295
21-24 months   CMIN             BANGLADESH                     1                    NA                0.6354145    0.4457099   0.8251190
21-24 months   COHORTS          GUATEMALA                      0                    NA                0.6773572    0.6516702   0.7030442
21-24 months   COHORTS          GUATEMALA                      1                    NA                0.6982641    0.6428519   0.7536762
21-24 months   EE               PAKISTAN                       0                    NA                0.6468685    0.6050192   0.6887177
21-24 months   EE               PAKISTAN                       1                    NA                0.6686183    0.5730253   0.7642113
21-24 months   GMS-Nepal        NEPAL                          0                    NA                0.7790816    0.7244976   0.8336655
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.8721416    0.7780275   0.9662556
21-24 months   IRC              INDIA                          0                    NA                0.7051912    0.6544195   0.7559628
21-24 months   IRC              INDIA                          1                    NA                0.7213809    0.6487207   0.7940411
21-24 months   Keneba           GAMBIA                         0                    NA                0.7196825    0.6807894   0.7585755
21-24 months   Keneba           GAMBIA                         1                    NA                0.6898312    0.6274633   0.7521991
21-24 months   LCNI-5           MALAWI                         0                    NA                0.7468706    0.7003626   0.7933786
21-24 months   LCNI-5           MALAWI                         1                    NA                1.0070991    0.7644408   1.2497575
21-24 months   MAL-ED           BANGLADESH                     0                    NA                0.7687942    0.7287870   0.8088013
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.7861139    0.6996562   0.8725717
21-24 months   MAL-ED           BRAZIL                         0                    NA                0.8019938    0.7554147   0.8485730
21-24 months   MAL-ED           BRAZIL                         1                    NA                0.7257307    0.5276036   0.9238578
21-24 months   MAL-ED           INDIA                          0                    NA                0.8320995    0.7971761   0.8670228
21-24 months   MAL-ED           INDIA                          1                    NA                0.7927613    0.7221565   0.8633660
21-24 months   MAL-ED           NEPAL                          0                    NA                0.7807635    0.7396577   0.8218693
21-24 months   MAL-ED           NEPAL                          1                    NA                0.7526322    0.6641796   0.8410848
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.8235160    0.7756008   0.8714311
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.0877436    0.7091058   1.4663814
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.7080731    0.6648865   0.7512598
21-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.7568729    0.6885650   0.8251808
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.8050728    0.7755280   0.8346175
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7934258    0.7465185   0.8403330
21-24 months   PROBIT           BELARUS                        0                    NA                0.8552034    0.3899827   1.3204241
21-24 months   PROBIT           BELARUS                        1                    NA                1.5284833   -0.1945483   3.2515149
21-24 months   PROVIDE          BANGLADESH                     0                    NA                0.7679355    0.7393758   0.7964952
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7612456    0.7040208   0.8184704
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.7066215    0.6647402   0.7485029
21-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.7072336    0.5698676   0.8445996


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4002715   3.1800517   3.6204913
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5765313   2.5324584   2.6206043
0-3 months     COHORTS          INDIA                          NA                   NA                3.4922418   3.4779900   3.5064936
0-3 months     EE               PAKISTAN                       NA                   NA                2.9753545   2.8876891   3.0630199
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5839464   3.5314522   3.6364407
0-3 months     IRC              INDIA                          NA                   NA                3.0770131   2.9695444   3.1844818
0-3 months     Keneba           GAMBIA                         NA                   NA                3.0603720   3.0169082   3.1038358
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3169358   3.2495564   3.3843152
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7667150   3.6568915   3.8765385
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3336541   3.2358460   3.4314623
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6140980   3.5214759   3.7067201
0-3 months     MAL-ED           PERU                           NA                   NA                3.0408841   2.9747929   3.1069753
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1892181   3.0928914   3.2855449
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.0936539   3.0404374   3.1468704
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1271961   3.0903268   3.1640655
0-3 months     PROBIT           BELARUS                        NA                   NA                2.8126501   2.6991627   2.9261374
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2547535   3.2174779   3.2920291
0-3 months     ResPak           PAKISTAN                       NA                   NA                2.8454737   2.5635176   3.1274299
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3243888   3.2748676   3.3739100
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.2924816   3.2718212   3.3131420
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.7966493   1.6951848   1.8981138
3-6 months     CMIN             BANGLADESH                     NA                   NA                1.9423229   1.8705517   2.0140940
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7573053   1.7259638   1.7886469
3-6 months     COHORTS          INDIA                          NA                   NA                1.8664122   1.8541571   1.8786673
3-6 months     EE               PAKISTAN                       NA                   NA                2.0609077   1.9980184   2.1237969
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.6930511   1.6529721   1.7331301
3-6 months     IRC              INDIA                          NA                   NA                1.8770851   1.8117096   1.9424606
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9889338   1.9485053   2.0293623
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9261310   1.8759489   1.9763132
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1390151   2.0566588   2.2213715
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8806583   1.8191105   1.9422062
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9560913   1.8997707   2.0124120
3-6 months     MAL-ED           PERU                           NA                   NA                2.0059237   1.9398988   2.0719486
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9668565   1.8861545   2.0475586
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8356302   1.7869609   1.8842995
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0003032   1.9637722   2.0368341
3-6 months     PROBIT           BELARUS                        NA                   NA                2.0915902   2.0504899   2.1326904
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9675432   1.9335883   2.0014982
3-6 months     ResPak           PAKISTAN                       NA                   NA                2.0505104   1.9059854   2.1950354
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9270794   1.8778608   1.9762979
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7973263   1.7613908   1.8332618
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9736846   1.9535093   1.9938599
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2188143   1.1406327   1.2969960
6-9 months     CMIN             BANGLADESH                     NA                   NA                1.2512354   1.1907738   1.3116969
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1025145   1.0752614   1.1297675
6-9 months     COHORTS          INDIA                          NA                   NA                1.1931142   1.1819712   1.2042571
6-9 months     EE               PAKISTAN                       NA                   NA                1.1810362   1.1298686   1.2322038
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3187732   1.2765504   1.3609961
6-9 months     IRC              INDIA                          NA                   NA                1.3589701   1.3108047   1.4071355
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4094786   1.3577498   1.4612073
6-9 months     LCNI-5           MALAWI                         NA                   NA                1.4623324   1.4258089   1.4988559
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2483888   1.2072891   1.2894884
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4874178   1.4038736   1.5709619
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2546335   1.2065851   1.3026819
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3541739   1.3095793   1.3987686
6-9 months     MAL-ED           PERU                           NA                   NA                1.3306263   1.2759374   1.3853151
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3698331   1.3069758   1.4326904
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2523889   1.2105899   1.2941879
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3281884   1.2984204   1.3579563
6-9 months     PROBIT           BELARUS                        NA                   NA                1.5764065   1.5452994   1.6075137
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2830457   1.2575860   1.3085054
6-9 months     ResPak           PAKISTAN                       NA                   NA                1.4340099   1.3290024   1.5390175
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2087611   1.1890379   1.2284844
6-9 months     SAS-FoodSuppl    INDIA                          NA                   NA                1.1426155   1.1021386   1.1830923
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3234547   1.2868291   1.3600802
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3435446   1.3239772   1.3631119
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9021148   0.8335498   0.9706797
9-12 months    CMIN             BANGLADESH                     NA                   NA                0.9596286   0.8989940   1.0202632
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9445869   0.9193873   0.9697865
9-12 months    COHORTS          INDIA                          NA                   NA                1.0013782   0.9893533   1.0134031
9-12 months    EE               PAKISTAN                       NA                   NA                0.9098347   0.8715418   0.9481275
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9982210   0.9641032   1.0323387
9-12 months    iLiNS-Zinc       BURKINA FASO                   NA                   NA                1.0927974   1.0590753   1.1265195
9-12 months    IRC              INDIA                          NA                   NA                1.1251269   1.0839232   1.1663307
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9835856   0.9407344   1.0264369
9-12 months    LCNI-5           MALAWI                         NA                   NA                1.0986541   1.0518074   1.1455009
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9842272   0.9442133   1.0242411
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2945073   1.2175008   1.3715138
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9832988   0.9444691   1.0221285
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0908675   1.0496486   1.1320865
9-12 months    MAL-ED           PERU                           NA                   NA                1.0890342   1.0386192   1.1394491
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0097715   0.9452841   1.0742589
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0896859   1.0541780   1.1251939
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1213098   1.0951919   1.1474276
9-12 months    PROBIT           BELARUS                        NA                   NA                1.3718919   1.3218100   1.4219737
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0488809   1.0216502   1.0761116
9-12 months    ResPak           PAKISTAN                       NA                   NA                1.1832999   1.0544874   1.3121123
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0065411   0.9717565   1.0413257
9-12 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.8106649   0.6745544   0.9467754
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0872812   1.0531050   1.1214573
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0767864   1.0584322   1.0951406
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8497572   0.7791257   0.9203886
12-15 months   CMIN             BANGLADESH                     NA                   NA                0.8686763   0.8122040   0.9251486
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7868337   0.7596505   0.8140170
12-15 months   EE               PAKISTAN                       NA                   NA                0.9935367   0.9565824   1.0304910
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8776557   0.8473104   0.9080009
12-15 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9658283   0.9236309   1.0080257
12-15 months   IRC              INDIA                          NA                   NA                0.9526289   0.9096939   0.9955640
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9362665   0.9050358   0.9674972
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9105142   0.8692446   0.9517838
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1348671   1.0747303   1.1950039
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9080888   0.8687328   0.9474448
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9516921   0.9117841   0.9916000
12-15 months   MAL-ED           PERU                           NA                   NA                0.8950890   0.8478594   0.9423185
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9204765   0.8626040   0.9783489
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7318921   0.6859800   0.7778042
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9713088   0.9464579   0.9961598
12-15 months   PROBIT           BELARUS                        NA                   NA                1.1851635   0.8584644   1.5118627
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9596237   0.9334295   0.9858180
12-15 months   ResPak           PAKISTAN                       NA                   NA                1.2984127   1.1301531   1.4666724
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8233791   0.7811678   0.8655904
12-15 months   SAS-FoodSuppl    INDIA                          NA                   NA                1.0267825   0.9374856   1.1160794
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9307080   0.8938207   0.9675954
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9229745   0.8955051   0.9504439
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7416804   0.6778145   0.8055463
15-18 months   CMIN             BANGLADESH                     NA                   NA                0.7430071   0.6902717   0.7957426
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7485756   0.7179775   0.7791738
15-18 months   EE               PAKISTAN                       NA                   NA                0.8418323   0.8048928   0.8787718
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7459936   0.7093517   0.7826355
15-18 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.9228413   0.8852625   0.9604201
15-18 months   IRC              INDIA                          NA                   NA                0.8590992   0.8201691   0.8980292
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8782446   0.8474682   0.9090209
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8305864   0.7928331   0.8683396
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.9906797   0.9299147   1.0514447
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8470792   0.8102831   0.8838752
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8421471   0.8003239   0.8839702
15-18 months   MAL-ED           PERU                           NA                   NA                0.8502712   0.8071679   0.8933746
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8889985   0.8362290   0.9417679
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7652057   0.7238094   0.8066019
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9160911   0.8926000   0.9395821
15-18 months   PROBIT           BELARUS                        NA                   NA                1.0339982   0.5968654   1.4711310
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8555786   0.8313681   0.8797891
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9136815   0.8834641   0.9438989
15-18 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.7947861   0.7590601   0.8305122
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9378676   0.8956651   0.9800700
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.8054187   0.7742184   0.8366190
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6971818   0.6328805   0.7614832
18-21 months   CMIN             BANGLADESH                     NA                   NA                0.8087193   0.7587374   0.8587011
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7408798   0.7121472   0.7696123
18-21 months   EE               PAKISTAN                       NA                   NA                0.7223902   0.6847648   0.7600156
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9067731   0.8710316   0.9425146
18-21 months   IRC              INDIA                          NA                   NA                0.7616322   0.7215333   0.8017310
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8147224   0.7814877   0.8479571
18-21 months   LCNI-5           MALAWI                         NA                   NA                0.8179911   0.7716915   0.8642907
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8174663   0.7819336   0.8529990
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9172810   0.8433449   0.9912171
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8785804   0.8428187   0.9143421
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8155441   0.7771093   0.8539790
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7810413   0.7252949   0.8367877
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7298383   0.6927892   0.7668875
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7961985   0.7725063   0.8198907
18-21 months   PROBIT           BELARUS                        NA                   NA                0.8948530   0.2840229   1.5056831
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8351524   0.8112151   0.8590897
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6711663   0.6354411   0.7068915
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7115999   0.6495390   0.7736608
21-24 months   CMIN             BANGLADESH                     NA                   NA                0.7534900   0.6951222   0.8118578
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6808374   0.6575179   0.7041570
21-24 months   EE               PAKISTAN                       NA                   NA                0.6509316   0.6124595   0.6894037
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7963474   0.7484187   0.8442761
21-24 months   IRC              INDIA                          NA                   NA                0.7098929   0.6681343   0.7516515
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7137479   0.6802038   0.7472920
21-24 months   LCNI-5           MALAWI                         NA                   NA                0.7513135   0.7054477   0.7971793
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7720637   0.7357237   0.8084037
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7990606   0.7535707   0.8445505
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8244799   0.7931087   0.8558511
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7769959   0.7394551   0.8145368
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8404536   0.7887901   0.8921172
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7220159   0.6854476   0.7585843
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.8018919   0.7768810   0.8269028
21-24 months   PROBIT           BELARUS                        NA                   NA                0.9164106   0.4532958   1.3795255
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7665802   0.7410242   0.7921362
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7066785   0.6666014   0.7467556


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.7544260   -1.4013793   -0.1074728
0-3 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      1                    0                 -0.1777736   -0.2799603   -0.0755868
0-3 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    0                 -0.1524930   -0.1918510   -0.1131350
0-3 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       1                    0                 -0.5057586   -0.8043256   -0.2071916
0-3 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    0                 -0.1350264   -0.2724564    0.0024035
0-3 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    0                 -1.1954997   -1.3833316   -1.0076678
0-3 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         1                    0                 -0.5326580   -0.6346837   -0.4306322
0-3 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    0                 -0.2344341   -0.4373315   -0.0315368
0-3 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         1                    0                 -0.3056898   -0.7712942    0.1599145
0-3 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    0                 -0.3161330   -0.5326417   -0.0996243
0-3 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    0                  0.0364473   -0.1937866    0.2666812
0-3 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    0                  0.3989897    0.0298223    0.7681571
0-3 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.4424685   -0.7810848   -0.1038523
0-3 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     1                    0                 -0.2141851   -0.3322312   -0.0961390
0-3 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.1466725   -0.2304468   -0.0628983
0-3 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROBIT           BELARUS                        1                    0                 -0.5014006   -0.6049326   -0.3978687
0-3 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    0                 -0.0884815   -0.1769375   -0.0000254
0-3 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       1                    0                 -0.5562724   -1.2987041    0.1861593
0-3 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          1                    0                 -0.1800755   -0.3108132   -0.0493377
0-3 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       1                    0                 -0.8991609   -0.9528002   -0.8455215
3-6 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0887431   -0.3090149    0.1315286
3-6 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     CMIN             BANGLADESH                     1                    0                 -0.0434375   -0.2982452    0.2113702
3-6 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      1                    0                 -0.0570672   -0.1320462    0.0179118
3-6 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    0                 -0.0198356   -0.0532460    0.0135749
3-6 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       1                    0                  0.1071495   -0.0797307    0.2940296
3-6 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    0                  0.0670093   -0.0384443    0.1724630
3-6 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    0                  0.0998396   -0.0496786    0.2493577
3-6 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         1                    0                  0.0664038   -0.0310666    0.1638741
3-6 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    0                 -0.0215927   -0.1673503    0.1241650
3-6 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         1                    0                  0.0697617   -0.2437657    0.3832890
3-6 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    0                  0.1270105   -0.0054531    0.2594740
3-6 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    0                 -0.0057518   -0.1415181    0.1300144
3-6 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    0                 -0.1400127   -0.4212792    0.1412537
3-6 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    0                  0.1324800   -0.1849045    0.4498645
3-6 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     1                    0                  0.0198910   -0.0894924    0.1292744
3-6 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    0                  0.0290478   -0.0540267    0.1121222
3-6 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROBIT           BELARUS                        1                    0                 -0.1295501   -0.1928746   -0.0662255
3-6 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    0                 -0.0375425   -0.1249064    0.0498213
3-6 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ResPak           PAKISTAN                       1                    0                  0.1806859   -0.1683071    0.5296788
3-6 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          1                    0                 -0.0579009   -0.2052451    0.0894433
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.1311429   -0.0279473    0.2902331
3-6 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.1116060    0.0579615    0.1652505
6-9 months     CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    0                 -0.0468157   -0.2159044    0.1222729
6-9 months     CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     CMIN             BANGLADESH                     1                    0                  0.2238537   -0.0152767    0.4629842
6-9 months     COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      1                    0                  0.0089052   -0.0584546    0.0762650
6-9 months     COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    0                  0.0312134    0.0006738    0.0617529
6-9 months     EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       1                    0                  0.0362867   -0.1366337    0.2092071
6-9 months     GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    0                 -0.0239963   -0.1403898    0.0923973
6-9 months     IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    0                 -0.0091946   -0.1230900    0.1047009
6-9 months     Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         1                    0                  0.0398953   -0.1039347    0.1837252
6-9 months     LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     LCNI-5           MALAWI                         1                    0                 -0.0411946   -0.5203072    0.4379181
6-9 months     MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    0                  0.0373539   -0.0763444    0.1510523
6-9 months     MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         1                    0                 -0.0131307   -0.5011020    0.4748406
6-9 months     MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    0                  0.0897339   -0.0258012    0.2052689
6-9 months     MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    0                  0.1224388   -0.0126000    0.2574777
6-9 months     MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    0                 -0.2049591   -0.6104328    0.2005146
6-9 months     MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    0                 -0.0469293   -0.2958540    0.2019955
6-9 months     NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     1                    0                  0.0511633   -0.0450455    0.1473721
6-9 months     NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    0                 -0.0185618   -0.0865709    0.0494473
6-9 months     PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROBIT           BELARUS                        1                    0                  0.0224871   -0.0462241    0.0911984
6-9 months     PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    0                  0.0709281    0.0107906    0.1310656
6-9 months     ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ResPak           PAKISTAN                       1                    0                 -0.0124986   -0.2875841    0.2625870
6-9 months     SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          1                    0                  0.0169868   -0.0631541    0.0971276
6-9 months     SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-FoodSuppl    INDIA                          1                    0                  0.0275070   -0.0906725    0.1456864
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0378375   -0.1849476    0.1092726
6-9 months     ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       1                    0                  0.0171018   -0.0345769    0.0687806
9-12 months    CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    0                  0.0043021   -0.1415586    0.1501628
9-12 months    CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    CMIN             BANGLADESH                     1                    0                  0.0374321   -0.1330224    0.2078866
9-12 months    COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      1                    0                 -0.0386226   -0.1045313    0.0272861
9-12 months    COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    0                 -0.0108800   -0.0424310    0.0206709
9-12 months    EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       1                    0                  0.0454620   -0.0610745    0.1519984
9-12 months    GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    0                 -0.0042607   -0.1023844    0.0938629
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.1099055   -0.1718793   -0.0479317
9-12 months    IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    0                  0.1363466    0.0384787    0.2342146
9-12 months    Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         1                    0                 -0.0422265   -0.1414453    0.0569922
9-12 months    LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    LCNI-5           MALAWI                         1                    0                  0.0983669   -0.0741142    0.2708480
9-12 months    MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    0                  0.0465253   -0.0518459    0.1448965
9-12 months    MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         1                    0                  0.0614796   -0.3110847    0.4340440
9-12 months    MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    0                  0.0912828    0.0011145    0.1814511
9-12 months    MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    0                  0.0712318   -0.0355833    0.1780469
9-12 months    MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    0                  0.1017958   -0.2727314    0.4763230
9-12 months    MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    0                  0.1121506   -0.1004345    0.3247356
9-12 months    NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     1                    0                  0.0007902   -0.0793454    0.0809259
9-12 months    NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    0                  0.0637353    0.0031860    0.1242845
9-12 months    PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROBIT           BELARUS                        1                    0                 -0.0096035   -0.0883777    0.0691707
9-12 months    PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    0                 -0.0204214   -0.0857189    0.0448761
9-12 months    ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ResPak           PAKISTAN                       1                    0                 -0.0843228   -0.3155844    0.1469388
9-12 months    SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          1                    0                  0.0723894   -0.0425898    0.1873687
9-12 months    SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-FoodSuppl    INDIA                          1                    0                 -0.2223300   -0.3970624   -0.0475975
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0248547   -0.1347282    0.1844377
9-12 months    ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       1                    0                  0.0520469    0.0040295    0.1000643
12-15 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.0521630   -0.1059014    0.2102273
12-15 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   CMIN             BANGLADESH                     1                    0                  0.1243907   -0.0377648    0.2865461
12-15 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      1                    0                  0.0342566   -0.0450798    0.1135929
12-15 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       1                    0                 -0.1117179   -0.2126236   -0.0108122
12-15 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    0                  0.0344890   -0.0319267    0.1009048
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  0.0876083    0.0030605    0.1721560
12-15 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    0                 -0.1132385   -0.1962343   -0.0302428
12-15 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         1                    0                 -0.0426903   -0.1209602    0.0355795
12-15 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    0                  0.0961747   -0.0121700    0.2045193
12-15 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         1                    0                 -0.1284187   -0.4671988    0.2103615
12-15 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    0                 -0.0275973   -0.1322716    0.0770771
12-15 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    0                 -0.0294183   -0.1431719    0.0843353
12-15 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    0                  0.0339142   -0.3319217    0.3997501
12-15 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0999391   -0.1082140    0.3080922
12-15 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     1                    0                  0.0648997   -0.0646094    0.1944088
12-15 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0002027   -0.0588736    0.0584683
12-15 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROBIT           BELARUS                        1                    0                 -0.0295022   -0.7474243    0.6884199
12-15 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    0                 -0.0343135   -0.0981565    0.0295294
12-15 months   ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ResPak           PAKISTAN                       1                    0                 -0.1856913   -0.4375407    0.0661581
12-15 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          1                    0                 -0.0701128   -0.1308437   -0.0093820
12-15 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-FoodSuppl    INDIA                          1                    0                  0.1060552   -0.1238595    0.3359700
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0314601   -0.1307846    0.1937048
12-15 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0046921   -0.0764099    0.0670256
15-18 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0108815   -0.1508536    0.1290905
15-18 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   CMIN             BANGLADESH                     1                    0                  0.0216122   -0.2209404    0.2641649
15-18 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      1                    0                  0.0202911   -0.0557280    0.0963101
15-18 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       1                    0                 -0.0970244   -0.1856625   -0.0083863
15-18 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    0                  0.0568569   -0.0201303    0.1338442
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 -0.0750099   -0.1734693    0.0234495
15-18 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    0                 -0.0191126   -0.1025917    0.0643665
15-18 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         1                    0                  0.0144220   -0.0586833    0.0875273
15-18 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    0                 -0.0578141   -0.1584343    0.0428061
15-18 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         1                    0                 -0.2652125   -0.5649162    0.0344912
15-18 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    0                  0.0687617   -0.0201262    0.1576495
15-18 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    0                 -0.0222810   -0.1080035    0.0634414
15-18 months   MAL-ED           PERU                           0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    0                  0.0030188   -0.1839325    0.1899702
15-18 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0117885   -0.1163619    0.1399389
15-18 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     1                    0                  0.0215667   -0.0703070    0.1134404
15-18 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0264478   -0.0801312    0.0272357
15-18 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROBIT           BELARUS                        1                    0                  0.0890663   -2.4970448    2.6751774
15-18 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    0                  0.0453380   -0.0170639    0.1077398
15-18 months   SAS-CompFeed     INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          1                    0                 -0.0193646   -0.0996132    0.0608839
15-18 months   SAS-FoodSuppl    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-FoodSuppl    INDIA                          1                    0                  0.0490756   -0.0546248    0.1527761
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0388527   -0.2377719    0.1600665
15-18 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       1                    0                 -0.0419495   -0.1305075    0.0466084
18-21 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    0                  0.1609140    0.0126234    0.3092045
18-21 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   CMIN             BANGLADESH                     1                    0                 -0.0841602   -0.2216728    0.0533524
18-21 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      1                    0                  0.0002041   -0.0717824    0.0721906
18-21 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       1                    0                 -0.0033425   -0.1034634    0.0967783
18-21 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    0                 -0.0518920   -0.1174515    0.0136676
18-21 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    0                 -0.0734042   -0.1659414    0.0191331
18-21 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         1                    0                 -0.0292998   -0.1126983    0.0540987
18-21 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   LCNI-5           MALAWI                         1                    0                 -0.0176654   -0.1944134    0.1590825
18-21 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    0                  0.0336813   -0.0673019    0.1346646
18-21 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         1                    0                 -0.2340760   -0.5026675    0.0345155
18-21 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    0                 -0.0147936   -0.1096548    0.0800676
18-21 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    0                  0.0330040   -0.0807795    0.1467876
18-21 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.0129667   -0.2271596    0.2530930
18-21 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     1                    0                 -0.0110067   -0.0945169    0.0725035
18-21 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    0                  0.0060401   -0.0486366    0.0607169
18-21 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROBIT           BELARUS                        1                    0                 -0.0691297   -1.0737288    0.9354693
18-21 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    0                  0.0271006   -0.0360695    0.0902707
18-21 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0468643   -0.0694093    0.1631379
21-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    0                 -0.0103268   -0.1413820    0.1207285
21-24 months   CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   CMIN             BANGLADESH                     1                    0                 -0.1247953   -0.3239195    0.0743289
21-24 months   COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      1                    0                  0.0209069   -0.0401695    0.0819833
21-24 months   EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       1                    0                  0.0217498   -0.0826024    0.1261020
21-24 months   GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    0                  0.0930600   -0.0157374    0.2018573
21-24 months   IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    0                  0.0161897   -0.0724515    0.1048310
21-24 months   Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         1                    0                 -0.0298513   -0.1033524    0.0436499
21-24 months   LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   LCNI-5           MALAWI                         1                    0                  0.2602285    0.0131535    0.5073035
21-24 months   MAL-ED           BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    0                  0.0173198   -0.0779458    0.1125853
21-24 months   MAL-ED           BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         1                    0                 -0.0762632   -0.2797919    0.1272656
21-24 months   MAL-ED           INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    0                 -0.0393382   -0.1181080    0.0394316
21-24 months   MAL-ED           NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    0                 -0.0281313   -0.1256687    0.0694061
21-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  0.2642277   -0.1174298    0.6458851
21-24 months   NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     1                    0                  0.0487998   -0.0320152    0.1296147
21-24 months   NIH-Crypto       BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    0                 -0.0116470   -0.0670833    0.0437893
21-24 months   PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROBIT           BELARUS                        1                    0                  0.6732799   -1.1602972    2.5068571
21-24 months   PROVIDE          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    0                 -0.0066899   -0.0706456    0.0572658
21-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  0.0006121   -0.1429966    0.1442208


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.1090736   -0.2188301    0.0006828
0-3 months     COHORTS          GUATEMALA                      0                    NA                -0.0452418   -0.0719031   -0.0185805
0-3 months     COHORTS          INDIA                          0                    NA                -0.0276553   -0.0349443   -0.0203664
0-3 months     EE               PAKISTAN                       0                    NA                -0.0656005   -0.1099376   -0.0212634
0-3 months     GMS-Nepal        NEPAL                          0                    NA                -0.0266048   -0.0541141    0.0009046
0-3 months     IRC              INDIA                          0                    NA                -0.3704365   -0.4523146   -0.2885585
0-3 months     Keneba           GAMBIA                         0                    NA                -0.1436918   -0.1742308   -0.1131527
0-3 months     MAL-ED           BANGLADESH                     0                    NA                -0.0395798   -0.0756664   -0.0034932
0-3 months     MAL-ED           BRAZIL                         0                    NA                -0.0113922   -0.0309262    0.0081418
0-3 months     MAL-ED           INDIA                          0                    NA                -0.0544451   -0.0956292   -0.0132610
0-3 months     MAL-ED           NEPAL                          0                    NA                 0.0035968   -0.0191897    0.0263833
0-3 months     MAL-ED           PERU                           0                    NA                 0.0092788   -0.0025207    0.0210783
0-3 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0294979   -0.0565812   -0.0024146
0-3 months     NIH-Birth        BANGLADESH                     0                    NA                -0.0607449   -0.0951964   -0.0262935
0-3 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0372435   -0.0590351   -0.0154520
0-3 months     PROBIT           BELARUS                        0                    NA                -0.0966662   -0.1397491   -0.0535833
0-3 months     PROVIDE          BANGLADESH                     0                    NA                -0.0189003   -0.0380059    0.0002053
0-3 months     ResPak           PAKISTAN                       0                    NA                -0.0940179   -0.2286678    0.0406320
0-3 months     SAS-CompFeed     INDIA                          0                    NA                -0.0193106   -0.0362195   -0.0024017
0-3 months     ZVITAMBO         ZIMBABWE                       0                    NA                -0.1461508   -0.1576391   -0.1346626
3-6 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0227017   -0.0792204    0.0338170
3-6 months     CMIN             BANGLADESH                     0                    NA                -0.0026995   -0.0186106    0.0132116
3-6 months     COHORTS          GUATEMALA                      0                    NA                -0.0115349   -0.0267786    0.0037088
3-6 months     COHORTS          INDIA                          0                    NA                -0.0035172   -0.0094445    0.0024101
3-6 months     EE               PAKISTAN                       0                    NA                 0.0135143   -0.0105182    0.0375469
3-6 months     GMS-Nepal        NEPAL                          0                    NA                 0.0130339   -0.0076283    0.0336960
3-6 months     IRC              INDIA                          0                    NA                 0.0297110   -0.0150248    0.0744468
3-6 months     Keneba           GAMBIA                         0                    NA                 0.0137031   -0.0064619    0.0338682
3-6 months     MAL-ED           BANGLADESH                     0                    NA                -0.0036481   -0.0282972    0.0210011
3-6 months     MAL-ED           BRAZIL                         0                    NA                 0.0024663   -0.0087630    0.0136957
3-6 months     MAL-ED           INDIA                          0                    NA                 0.0240592   -0.0018583    0.0499768
3-6 months     MAL-ED           NEPAL                          0                    NA                -0.0007535   -0.0185413    0.0170342
3-6 months     MAL-ED           PERU                           0                    NA                -0.0026926   -0.0101039    0.0047188
3-6 months     MAL-ED           SOUTH AFRICA                   0                    NA                 0.0087590   -0.0126327    0.0301507
3-6 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0056661   -0.0255028    0.0368351
3-6 months     NIH-Crypto       BANGLADESH                     0                    NA                 0.0074448   -0.0138684    0.0287580
3-6 months     PROBIT           BELARUS                        0                    NA                -0.0252906   -0.0429586   -0.0076227
3-6 months     PROVIDE          BANGLADESH                     0                    NA                -0.0078769   -0.0262485    0.0104947
3-6 months     ResPak           PAKISTAN                       0                    NA                 0.0323081   -0.0310707    0.0956868
3-6 months     SAS-CompFeed     INDIA                          0                    NA                -0.0062580   -0.0239461    0.0114301
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0077703   -0.0017733    0.0173138
3-6 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0173221    0.0089316    0.0257127
6-9 months     CMC-V-BCS-2002   INDIA                          0                    NA                -0.0120079   -0.0554383    0.0314225
6-9 months     CMIN             BANGLADESH                     0                    NA                 0.0119922   -0.0029260    0.0269104
6-9 months     COHORTS          GUATEMALA                      0                    NA                 0.0018249   -0.0119814    0.0156312
6-9 months     COHORTS          INDIA                          0                    NA                 0.0054493    0.0001087    0.0107898
6-9 months     EE               PAKISTAN                       0                    NA                 0.0048182   -0.0181950    0.0278313
6-9 months     GMS-Nepal        NEPAL                          0                    NA                -0.0048418   -0.0283438    0.0186602
6-9 months     IRC              INDIA                          0                    NA                -0.0027439   -0.0367363    0.0312484
6-9 months     Keneba           GAMBIA                         0                    NA                 0.0072907   -0.0190135    0.0335949
6-9 months     LCNI-5           MALAWI                         0                    NA                -0.0006574   -0.0126428    0.0113280
6-9 months     MAL-ED           BANGLADESH                     0                    NA                 0.0064887   -0.0133534    0.0263308
6-9 months     MAL-ED           BRAZIL                         0                    NA                -0.0004889   -0.0186615    0.0176837
6-9 months     MAL-ED           INDIA                          0                    NA                 0.0169980   -0.0053624    0.0393585
6-9 months     MAL-ED           NEPAL                          0                    NA                 0.0161813   -0.0024660    0.0348287
6-9 months     MAL-ED           PERU                           0                    NA                -0.0043059   -0.0151114    0.0064997
6-9 months     MAL-ED           SOUTH AFRICA                   0                    NA                -0.0030606   -0.0193640    0.0132428
6-9 months     NIH-Birth        BANGLADESH                     0                    NA                 0.0145569   -0.0128946    0.0420084
6-9 months     NIH-Crypto       BANGLADESH                     0                    NA                -0.0046960   -0.0219128    0.0125208
6-9 months     PROBIT           BELARUS                        0                    NA                 0.0043953   -0.0092566    0.0180472
6-9 months     PROVIDE          BANGLADESH                     0                    NA                 0.0146178    0.0019969    0.0272387
6-9 months     ResPak           PAKISTAN                       0                    NA                -0.0026975   -0.0620747    0.0566796
6-9 months     SAS-CompFeed     INDIA                          0                    NA                 0.0018729   -0.0071629    0.0109088
6-9 months     SAS-FoodSuppl    INDIA                          0                    NA                 0.0047305   -0.0156259    0.0250869
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023760   -0.0116257    0.0068736
6-9 months     ZVITAMBO         ZIMBABWE                       0                    NA                 0.0026597   -0.0053792    0.0106987
9-12 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0010790   -0.0355040    0.0376620
9-12 months    CMIN             BANGLADESH                     0                    NA                 0.0021876   -0.0078707    0.0122459
9-12 months    COHORTS          GUATEMALA                      0                    NA                -0.0071703   -0.0194465    0.0051059
9-12 months    COHORTS          INDIA                          0                    NA                -0.0018576   -0.0072455    0.0035304
9-12 months    EE               PAKISTAN                       0                    NA                 0.0061673   -0.0084101    0.0207447
9-12 months    GMS-Nepal        NEPAL                          0                    NA                -0.0008735   -0.0209906    0.0192436
9-12 months    iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0185631   -0.0297655   -0.0073607
9-12 months    IRC              INDIA                          0                    NA                 0.0399950    0.0106058    0.0693842
9-12 months    Keneba           GAMBIA                         0                    NA                -0.0079358   -0.0266150    0.0107434
9-12 months    LCNI-5           MALAWI                         0                    NA                 0.0015290   -0.0029510    0.0060091
9-12 months    MAL-ED           BANGLADESH                     0                    NA                 0.0082615   -0.0093687    0.0258917
9-12 months    MAL-ED           BRAZIL                         0                    NA                 0.0023389   -0.0119368    0.0166146
9-12 months    MAL-ED           INDIA                          0                    NA                 0.0176016   -0.0004189    0.0356221
9-12 months    MAL-ED           NEPAL                          0                    NA                 0.0094555   -0.0050709    0.0239820
9-12 months    MAL-ED           PERU                           0                    NA                 0.0022324   -0.0073296    0.0117943
9-12 months    MAL-ED           SOUTH AFRICA                   0                    NA                 0.0072511   -0.0069463    0.0214485
9-12 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0002304   -0.0231353    0.0235961
9-12 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0164698    0.0006776    0.0322620
9-12 months    PROBIT           BELARUS                        0                    NA                -0.0018386   -0.0167629    0.0130858
9-12 months    PROVIDE          BANGLADESH                     0                    NA                -0.0042453   -0.0178371    0.0093465
9-12 months    ResPak           PAKISTAN                       0                    NA                -0.0190202   -0.0715298    0.0334894
9-12 months    SAS-CompFeed     INDIA                          0                    NA                 0.0082968   -0.0045729    0.0211664
9-12 months    SAS-FoodSuppl    INDIA                          0                    NA                -0.0386039   -0.0703587   -0.0068491
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0015693   -0.0085130    0.0116516
9-12 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0080194    0.0006045    0.0154342
12-15 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0134457   -0.0273739    0.0542654
12-15 months   CMIN             BANGLADESH                     0                    NA                 0.0048151   -0.0025172    0.0121474
12-15 months   COHORTS          GUATEMALA                      0                    NA                 0.0060573   -0.0079990    0.0201137
12-15 months   EE               PAKISTAN                       0                    NA                -0.0153432   -0.0300584   -0.0006280
12-15 months   GMS-Nepal        NEPAL                          0                    NA                 0.0067238   -0.0062878    0.0197353
12-15 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0146014    0.0001265    0.0290763
12-15 months   IRC              INDIA                          0                    NA                -0.0334147   -0.0584718   -0.0083575
12-15 months   Keneba           GAMBIA                         0                    NA                -0.0085512   -0.0242566    0.0071543
12-15 months   MAL-ED           BANGLADESH                     0                    NA                 0.0180923   -0.0029413    0.0391258
12-15 months   MAL-ED           BRAZIL                         0                    NA                -0.0044282   -0.0166210    0.0077645
12-15 months   MAL-ED           INDIA                          0                    NA                -0.0052211   -0.0250756    0.0146334
12-15 months   MAL-ED           NEPAL                          0                    NA                -0.0038879   -0.0189774    0.0112016
12-15 months   MAL-ED           PERU                           0                    NA                 0.0007814   -0.0083896    0.0099525
12-15 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0070442   -0.0080017    0.0220900
12-15 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0182485   -0.0182687    0.0547656
12-15 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0000525   -0.0152465    0.0151416
12-15 months   PROBIT           BELARUS                        0                    NA                -0.0047499   -0.1196515    0.1101518
12-15 months   PROVIDE          BANGLADESH                     0                    NA                -0.0069669   -0.0199829    0.0060491
12-15 months   ResPak           PAKISTAN                       0                    NA                -0.0341501   -0.0828989    0.0145986
12-15 months   SAS-CompFeed     INDIA                          0                    NA                -0.0082447   -0.0161439   -0.0003455
12-15 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0175009   -0.0206978    0.0556995
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017189   -0.0071599    0.0105977
12-15 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0007116   -0.0115892    0.0101659
15-18 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0029456   -0.0408399    0.0349487
15-18 months   CMIN             BANGLADESH                     0                    NA                 0.0012469   -0.0127690    0.0152628
15-18 months   COHORTS          GUATEMALA                      0                    NA                 0.0035728   -0.0098239    0.0169694
15-18 months   EE               PAKISTAN                       0                    NA                -0.0151322   -0.0297284   -0.0005361
15-18 months   GMS-Nepal        NEPAL                          0                    NA                 0.0109881   -0.0040362    0.0260123
15-18 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                -0.0132241   -0.0319271    0.0054790
15-18 months   IRC              INDIA                          0                    NA                -0.0055523   -0.0298199    0.0187154
15-18 months   Keneba           GAMBIA                         0                    NA                 0.0028626   -0.0116514    0.0173766
15-18 months   MAL-ED           BANGLADESH                     0                    NA                -0.0105897   -0.0292776    0.0080982
15-18 months   MAL-ED           BRAZIL                         0                    NA                -0.0095860   -0.0227919    0.0036199
15-18 months   MAL-ED           INDIA                          0                    NA                 0.0130090   -0.0041784    0.0301963
15-18 months   MAL-ED           NEPAL                          0                    NA                -0.0029841   -0.0145079    0.0085397
15-18 months   MAL-ED           PERU                           0                    NA                 0.0000733   -0.0046009    0.0047475
15-18 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0007368   -0.0072814    0.0087549
15-18 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0060971   -0.0198929    0.0320871
15-18 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0072336   -0.0219473    0.0074802
15-18 months   PROBIT           BELARUS                        0                    NA                 0.0103641   -0.2924561    0.3131843
15-18 months   PROVIDE          BANGLADESH                     0                    NA                 0.0092579   -0.0035803    0.0220962
15-18 months   SAS-CompFeed     INDIA                          0                    NA                -0.0022001   -0.0113400    0.0069398
15-18 months   SAS-FoodSuppl    INDIA                          0                    NA                 0.0075890   -0.0085766    0.0237547
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0021192   -0.0129903    0.0087518
15-18 months   ZVITAMBO         ZIMBABWE                       0                    NA                -0.0060245   -0.0187600    0.0067110
18-21 months   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0435921    0.0026074    0.0845768
18-21 months   CMIN             BANGLADESH                     0                    NA                -0.0047939   -0.0132002    0.0036123
18-21 months   COHORTS          GUATEMALA                      0                    NA                 0.0000349   -0.0122862    0.0123561
18-21 months   EE               PAKISTAN                       0                    NA                -0.0005303   -0.0164157    0.0153551
18-21 months   GMS-Nepal        NEPAL                          0                    NA                -0.0105543   -0.0240401    0.0029315
18-21 months   IRC              INDIA                          0                    NA                -0.0209430   -0.0475703    0.0056843
18-21 months   Keneba           GAMBIA                         0                    NA                -0.0057219   -0.0220208    0.0105770
18-21 months   LCNI-5           MALAWI                         0                    NA                -0.0002222   -0.0046444    0.0042000
18-21 months   MAL-ED           BANGLADESH                     0                    NA                 0.0062940   -0.0126655    0.0252534
18-21 months   MAL-ED           BRAZIL                         0                    NA                -0.0088890   -0.0212587    0.0034808
18-21 months   MAL-ED           INDIA                          0                    NA                -0.0028654   -0.0212556    0.0155248
18-21 months   MAL-ED           NEPAL                          0                    NA                 0.0044202   -0.0108899    0.0197303
18-21 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0008384   -0.0146925    0.0163692
18-21 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0031955   -0.0274453    0.0210543
18-21 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0017030   -0.0137151    0.0171212
18-21 months   PROBIT           BELARUS                        0                    NA                -0.0063422   -0.1048930    0.0922087
18-21 months   PROVIDE          BANGLADESH                     0                    NA                 0.0054810   -0.0073283    0.0182904
18-21 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0054354   -0.0080718    0.0189425
21-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0025988   -0.0355835    0.0303859
21-24 months   CMIN             BANGLADESH                     0                    NA                -0.0067197   -0.0184922    0.0050527
21-24 months   COHORTS          GUATEMALA                      0                    NA                 0.0034802   -0.0067007    0.0136612
21-24 months   EE               PAKISTAN                       0                    NA                 0.0040632   -0.0155097    0.0236360
21-24 months   GMS-Nepal        NEPAL                          0                    NA                 0.0172658   -0.0033089    0.0378406
21-24 months   IRC              INDIA                          0                    NA                 0.0047017   -0.0210518    0.0304551
21-24 months   Keneba           GAMBIA                         0                    NA                -0.0059346   -0.0205630    0.0086938
21-24 months   LCNI-5           MALAWI                         0                    NA                 0.0044429   -0.0025447    0.0114306
21-24 months   MAL-ED           BANGLADESH                     0                    NA                 0.0032695   -0.0147394    0.0212785
21-24 months   MAL-ED           BRAZIL                         0                    NA                -0.0029332   -0.0110946    0.0052282
21-24 months   MAL-ED           INDIA                          0                    NA                -0.0076196   -0.0230138    0.0077747
21-24 months   MAL-ED           NEPAL                          0                    NA                -0.0037676   -0.0168910    0.0093558
21-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0169377   -0.0089003    0.0427757
21-24 months   NIH-Birth        BANGLADESH                     0                    NA                 0.0139428   -0.0092504    0.0371359
21-24 months   NIH-Crypto       BANGLADESH                     0                    NA                -0.0031809   -0.0183283    0.0119664
21-24 months   PROBIT           BELARUS                        0                    NA                 0.0612073   -0.1961173    0.3185318
21-24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0013553   -0.0143141    0.0116036
21-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000569   -0.0133020    0.0134159
