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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        nrooms    n_cell      n
-------------  ---------------  -----------------------------  -------  -------  -----
0-3 months     CMC-V-BCS-2002   INDIA                          4+            12    331
0-3 months     CMC-V-BCS-2002   INDIA                          1            177    331
0-3 months     CMC-V-BCS-2002   INDIA                          2             93    331
0-3 months     CMC-V-BCS-2002   INDIA                          3             49    331
0-3 months     COHORTS          INDIA                          4+            93   4795
0-3 months     COHORTS          INDIA                          1           3140   4795
0-3 months     COHORTS          INDIA                          2           1392   4795
0-3 months     COHORTS          INDIA                          3            170   4795
0-3 months     CONTENT          PERU                           4+            12     29
0-3 months     CONTENT          PERU                           1              6     29
0-3 months     CONTENT          PERU                           2              7     29
0-3 months     CONTENT          PERU                           3              4     29
0-3 months     GMS-Nepal        NEPAL                          4+           243    509
0-3 months     GMS-Nepal        NEPAL                          1             34    509
0-3 months     GMS-Nepal        NEPAL                          2            106    509
0-3 months     GMS-Nepal        NEPAL                          3            126    509
0-3 months     IRC              INDIA                          4+            17    392
0-3 months     IRC              INDIA                          1            177    392
0-3 months     IRC              INDIA                          2            162    392
0-3 months     IRC              INDIA                          3             36    392
0-3 months     MAL-ED           BANGLADESH                     4+            11    239
0-3 months     MAL-ED           BANGLADESH                     1            150    239
0-3 months     MAL-ED           BANGLADESH                     2             50    239
0-3 months     MAL-ED           BANGLADESH                     3             28    239
0-3 months     MAL-ED           BRAZIL                         4+           127    210
0-3 months     MAL-ED           BRAZIL                         1              4    210
0-3 months     MAL-ED           BRAZIL                         2             20    210
0-3 months     MAL-ED           BRAZIL                         3             59    210
0-3 months     MAL-ED           INDIA                          4+            25    232
0-3 months     MAL-ED           INDIA                          1             84    232
0-3 months     MAL-ED           INDIA                          2             77    232
0-3 months     MAL-ED           INDIA                          3             46    232
0-3 months     MAL-ED           NEPAL                          4+           129    230
0-3 months     MAL-ED           NEPAL                          1             49    230
0-3 months     MAL-ED           NEPAL                          2             31    230
0-3 months     MAL-ED           NEPAL                          3             21    230
0-3 months     MAL-ED           PERU                           4+           138    270
0-3 months     MAL-ED           PERU                           1             19    270
0-3 months     MAL-ED           PERU                           2             51    270
0-3 months     MAL-ED           PERU                           3             62    270
0-3 months     MAL-ED           SOUTH AFRICA                   4+           195    254
0-3 months     MAL-ED           SOUTH AFRICA                   1             13    254
0-3 months     MAL-ED           SOUTH AFRICA                   2             21    254
0-3 months     MAL-ED           SOUTH AFRICA                   3             25    254
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98    233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13    233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             57    233
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             65    233
0-3 months     NIH-Crypto       BANGLADESH                     4+            91    725
0-3 months     NIH-Crypto       BANGLADESH                     1            347    725
0-3 months     NIH-Crypto       BANGLADESH                     2            184    725
0-3 months     NIH-Crypto       BANGLADESH                     3            103    725
0-3 months     PROVIDE          BANGLADESH                     4+            22    640
0-3 months     PROVIDE          BANGLADESH                     1            458    640
0-3 months     PROVIDE          BANGLADESH                     2            101    640
0-3 months     PROVIDE          BANGLADESH                     3             59    640
3-6 months     CMC-V-BCS-2002   INDIA                          4+            12    322
3-6 months     CMC-V-BCS-2002   INDIA                          1            171    322
3-6 months     CMC-V-BCS-2002   INDIA                          2             91    322
3-6 months     CMC-V-BCS-2002   INDIA                          3             48    322
3-6 months     COHORTS          INDIA                          4+            89   4850
3-6 months     COHORTS          INDIA                          1           3145   4850
3-6 months     COHORTS          INDIA                          2           1437   4850
3-6 months     COHORTS          INDIA                          3            179   4850
3-6 months     CONTENT          PERU                           4+            78    214
3-6 months     CONTENT          PERU                           1             44    214
3-6 months     CONTENT          PERU                           2             54    214
3-6 months     CONTENT          PERU                           3             38    214
3-6 months     GMS-Nepal        NEPAL                          4+           225    469
3-6 months     GMS-Nepal        NEPAL                          1             32    469
3-6 months     GMS-Nepal        NEPAL                          2             95    469
3-6 months     GMS-Nepal        NEPAL                          3            117    469
3-6 months     IRC              INDIA                          4+            17    397
3-6 months     IRC              INDIA                          1            181    397
3-6 months     IRC              INDIA                          2            163    397
3-6 months     IRC              INDIA                          3             36    397
3-6 months     MAL-ED           BANGLADESH                     4+            11    233
3-6 months     MAL-ED           BANGLADESH                     1            145    233
3-6 months     MAL-ED           BANGLADESH                     2             50    233
3-6 months     MAL-ED           BANGLADESH                     3             27    233
3-6 months     MAL-ED           BRAZIL                         4+           126    208
3-6 months     MAL-ED           BRAZIL                         1              4    208
3-6 months     MAL-ED           BRAZIL                         2             19    208
3-6 months     MAL-ED           BRAZIL                         3             59    208
3-6 months     MAL-ED           INDIA                          4+            25    230
3-6 months     MAL-ED           INDIA                          1             84    230
3-6 months     MAL-ED           INDIA                          2             75    230
3-6 months     MAL-ED           INDIA                          3             46    230
3-6 months     MAL-ED           NEPAL                          4+           130    233
3-6 months     MAL-ED           NEPAL                          1             51    233
3-6 months     MAL-ED           NEPAL                          2             31    233
3-6 months     MAL-ED           NEPAL                          3             21    233
3-6 months     MAL-ED           PERU                           4+           137    267
3-6 months     MAL-ED           PERU                           1             19    267
3-6 months     MAL-ED           PERU                           2             49    267
3-6 months     MAL-ED           PERU                           3             62    267
3-6 months     MAL-ED           SOUTH AFRICA                   4+           188    241
3-6 months     MAL-ED           SOUTH AFRICA                   1             12    241
3-6 months     MAL-ED           SOUTH AFRICA                   2             20    241
3-6 months     MAL-ED           SOUTH AFRICA                   3             21    241
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           104    239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             12    239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             60    239
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             63    239
3-6 months     NIH-Crypto       BANGLADESH                     4+            90    702
3-6 months     NIH-Crypto       BANGLADESH                     1            332    702
3-6 months     NIH-Crypto       BANGLADESH                     2            179    702
3-6 months     NIH-Crypto       BANGLADESH                     3            101    702
3-6 months     PROVIDE          BANGLADESH                     4+            21    601
3-6 months     PROVIDE          BANGLADESH                     1            427    601
3-6 months     PROVIDE          BANGLADESH                     2             94    601
3-6 months     PROVIDE          BANGLADESH                     3             59    601
6-9 months     CMC-V-BCS-2002   INDIA                          4+            14    325
6-9 months     CMC-V-BCS-2002   INDIA                          1            176    325
6-9 months     CMC-V-BCS-2002   INDIA                          2             86    325
6-9 months     CMC-V-BCS-2002   INDIA                          3             49    325
6-9 months     COHORTS          INDIA                          4+            85   4338
6-9 months     COHORTS          INDIA                          1           2781   4338
6-9 months     COHORTS          INDIA                          2           1317   4338
6-9 months     COHORTS          INDIA                          3            155   4338
6-9 months     CONTENT          PERU                           4+            78    214
6-9 months     CONTENT          PERU                           1             44    214
6-9 months     CONTENT          PERU                           2             54    214
6-9 months     CONTENT          PERU                           3             38    214
6-9 months     GMS-Nepal        NEPAL                          4+           225    477
6-9 months     GMS-Nepal        NEPAL                          1             33    477
6-9 months     GMS-Nepal        NEPAL                          2             97    477
6-9 months     GMS-Nepal        NEPAL                          3            122    477
6-9 months     IRC              INDIA                          4+            17    408
6-9 months     IRC              INDIA                          1            185    408
6-9 months     IRC              INDIA                          2            170    408
6-9 months     IRC              INDIA                          3             36    408
6-9 months     MAL-ED           BANGLADESH                     4+            11    224
6-9 months     MAL-ED           BANGLADESH                     1            142    224
6-9 months     MAL-ED           BANGLADESH                     2             45    224
6-9 months     MAL-ED           BANGLADESH                     3             26    224
6-9 months     MAL-ED           BRAZIL                         4+           118    198
6-9 months     MAL-ED           BRAZIL                         1              3    198
6-9 months     MAL-ED           BRAZIL                         2             18    198
6-9 months     MAL-ED           BRAZIL                         3             59    198
6-9 months     MAL-ED           INDIA                          4+            25    230
6-9 months     MAL-ED           INDIA                          1             83    230
6-9 months     MAL-ED           INDIA                          2             74    230
6-9 months     MAL-ED           INDIA                          3             48    230
6-9 months     MAL-ED           NEPAL                          4+           128    230
6-9 months     MAL-ED           NEPAL                          1             49    230
6-9 months     MAL-ED           NEPAL                          2             31    230
6-9 months     MAL-ED           NEPAL                          3             22    230
6-9 months     MAL-ED           PERU                           4+           130    245
6-9 months     MAL-ED           PERU                           1             19    245
6-9 months     MAL-ED           PERU                           2             44    245
6-9 months     MAL-ED           PERU                           3             52    245
6-9 months     MAL-ED           SOUTH AFRICA                   4+           182    231
6-9 months     MAL-ED           SOUTH AFRICA                   1             10    231
6-9 months     MAL-ED           SOUTH AFRICA                   2             18    231
6-9 months     MAL-ED           SOUTH AFRICA                   3             21    231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           100    225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11    225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             55    225
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59    225
6-9 months     NIH-Crypto       BANGLADESH                     4+            89    693
6-9 months     NIH-Crypto       BANGLADESH                     1            325    693
6-9 months     NIH-Crypto       BANGLADESH                     2            182    693
6-9 months     NIH-Crypto       BANGLADESH                     3             97    693
6-9 months     PROVIDE          BANGLADESH                     4+            20    576
6-9 months     PROVIDE          BANGLADESH                     1            412    576
6-9 months     PROVIDE          BANGLADESH                     2             89    576
6-9 months     PROVIDE          BANGLADESH                     3             55    576
9-12 months    CMC-V-BCS-2002   INDIA                          4+            14    327
9-12 months    CMC-V-BCS-2002   INDIA                          1            182    327
9-12 months    CMC-V-BCS-2002   INDIA                          2             85    327
9-12 months    CMC-V-BCS-2002   INDIA                          3             46    327
9-12 months    COHORTS          INDIA                          4+            77   3742
9-12 months    COHORTS          INDIA                          1           2355   3742
9-12 months    COHORTS          INDIA                          2           1175   3742
9-12 months    COHORTS          INDIA                          3            135   3742
9-12 months    CONTENT          PERU                           4+            77    212
9-12 months    CONTENT          PERU                           1             44    212
9-12 months    CONTENT          PERU                           2             53    212
9-12 months    CONTENT          PERU                           3             38    212
9-12 months    GMS-Nepal        NEPAL                          4+           213    454
9-12 months    GMS-Nepal        NEPAL                          1             33    454
9-12 months    GMS-Nepal        NEPAL                          2             93    454
9-12 months    GMS-Nepal        NEPAL                          3            115    454
9-12 months    IRC              INDIA                          4+            16    401
9-12 months    IRC              INDIA                          1            183    401
9-12 months    IRC              INDIA                          2            167    401
9-12 months    IRC              INDIA                          3             35    401
9-12 months    MAL-ED           BANGLADESH                     4+            11    225
9-12 months    MAL-ED           BANGLADESH                     1            144    225
9-12 months    MAL-ED           BANGLADESH                     2             43    225
9-12 months    MAL-ED           BANGLADESH                     3             27    225
9-12 months    MAL-ED           BRAZIL                         4+           117    194
9-12 months    MAL-ED           BRAZIL                         1              2    194
9-12 months    MAL-ED           BRAZIL                         2             18    194
9-12 months    MAL-ED           BRAZIL                         3             57    194
9-12 months    MAL-ED           INDIA                          4+            25    227
9-12 months    MAL-ED           INDIA                          1             81    227
9-12 months    MAL-ED           INDIA                          2             74    227
9-12 months    MAL-ED           INDIA                          3             47    227
9-12 months    MAL-ED           NEPAL                          4+           128    229
9-12 months    MAL-ED           NEPAL                          1             48    229
9-12 months    MAL-ED           NEPAL                          2             31    229
9-12 months    MAL-ED           NEPAL                          3             22    229
9-12 months    MAL-ED           PERU                           4+           123    235
9-12 months    MAL-ED           PERU                           1             18    235
9-12 months    MAL-ED           PERU                           2             43    235
9-12 months    MAL-ED           PERU                           3             51    235
9-12 months    MAL-ED           SOUTH AFRICA                   4+           182    233
9-12 months    MAL-ED           SOUTH AFRICA                   1             11    233
9-12 months    MAL-ED           SOUTH AFRICA                   2             17    233
9-12 months    MAL-ED           SOUTH AFRICA                   3             23    233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           102    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             52    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59    224
9-12 months    NIH-Crypto       BANGLADESH                     4+            88    683
9-12 months    NIH-Crypto       BANGLADESH                     1            316    683
9-12 months    NIH-Crypto       BANGLADESH                     2            180    683
9-12 months    NIH-Crypto       BANGLADESH                     3             99    683
9-12 months    PROVIDE          BANGLADESH                     4+            20    569
9-12 months    PROVIDE          BANGLADESH                     1            405    569
9-12 months    PROVIDE          BANGLADESH                     2             90    569
9-12 months    PROVIDE          BANGLADESH                     3             54    569
12-15 months   CMC-V-BCS-2002   INDIA                          4+            13    334
12-15 months   CMC-V-BCS-2002   INDIA                          1            183    334
12-15 months   CMC-V-BCS-2002   INDIA                          2             92    334
12-15 months   CMC-V-BCS-2002   INDIA                          3             46    334
12-15 months   CONTENT          PERU                           4+            70    199
12-15 months   CONTENT          PERU                           1             41    199
12-15 months   CONTENT          PERU                           2             51    199
12-15 months   CONTENT          PERU                           3             37    199
12-15 months   GMS-Nepal        NEPAL                          4+           214    452
12-15 months   GMS-Nepal        NEPAL                          1             34    452
12-15 months   GMS-Nepal        NEPAL                          2             95    452
12-15 months   GMS-Nepal        NEPAL                          3            109    452
12-15 months   IRC              INDIA                          4+            15    390
12-15 months   IRC              INDIA                          1            178    390
12-15 months   IRC              INDIA                          2            162    390
12-15 months   IRC              INDIA                          3             35    390
12-15 months   MAL-ED           BANGLADESH                     4+            10    212
12-15 months   MAL-ED           BANGLADESH                     1            135    212
12-15 months   MAL-ED           BANGLADESH                     2             40    212
12-15 months   MAL-ED           BANGLADESH                     3             27    212
12-15 months   MAL-ED           BRAZIL                         4+           113    184
12-15 months   MAL-ED           BRAZIL                         1              2    184
12-15 months   MAL-ED           BRAZIL                         2             17    184
12-15 months   MAL-ED           BRAZIL                         3             52    184
12-15 months   MAL-ED           INDIA                          4+            25    226
12-15 months   MAL-ED           INDIA                          1             81    226
12-15 months   MAL-ED           INDIA                          2             73    226
12-15 months   MAL-ED           INDIA                          3             47    226
12-15 months   MAL-ED           NEPAL                          4+           129    230
12-15 months   MAL-ED           NEPAL                          1             48    230
12-15 months   MAL-ED           NEPAL                          2             31    230
12-15 months   MAL-ED           NEPAL                          3             22    230
12-15 months   MAL-ED           PERU                           4+           116    224
12-15 months   MAL-ED           PERU                           1             17    224
12-15 months   MAL-ED           PERU                           2             40    224
12-15 months   MAL-ED           PERU                           3             51    224
12-15 months   MAL-ED           SOUTH AFRICA                   4+           173    228
12-15 months   MAL-ED           SOUTH AFRICA                   1             14    228
12-15 months   MAL-ED           SOUTH AFRICA                   2             18    228
12-15 months   MAL-ED           SOUTH AFRICA                   3             23    228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           103    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             11    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             53    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             59    226
12-15 months   NIH-Crypto       BANGLADESH                     4+            89    666
12-15 months   NIH-Crypto       BANGLADESH                     1            307    666
12-15 months   NIH-Crypto       BANGLADESH                     2            176    666
12-15 months   NIH-Crypto       BANGLADESH                     3             94    666
12-15 months   PROVIDE          BANGLADESH                     4+            20    537
12-15 months   PROVIDE          BANGLADESH                     1            375    537
12-15 months   PROVIDE          BANGLADESH                     2             88    537
12-15 months   PROVIDE          BANGLADESH                     3             54    537
15-18 months   CMC-V-BCS-2002   INDIA                          4+            11    325
15-18 months   CMC-V-BCS-2002   INDIA                          1            173    325
15-18 months   CMC-V-BCS-2002   INDIA                          2             93    325
15-18 months   CMC-V-BCS-2002   INDIA                          3             48    325
15-18 months   CONTENT          PERU                           4+            67    189
15-18 months   CONTENT          PERU                           1             36    189
15-18 months   CONTENT          PERU                           2             49    189
15-18 months   CONTENT          PERU                           3             37    189
15-18 months   GMS-Nepal        NEPAL                          4+           224    477
15-18 months   GMS-Nepal        NEPAL                          1             35    477
15-18 months   GMS-Nepal        NEPAL                          2            104    477
15-18 months   GMS-Nepal        NEPAL                          3            114    477
15-18 months   IRC              INDIA                          4+            15    381
15-18 months   IRC              INDIA                          1            172    381
15-18 months   IRC              INDIA                          2            159    381
15-18 months   IRC              INDIA                          3             35    381
15-18 months   MAL-ED           BANGLADESH                     4+            10    212
15-18 months   MAL-ED           BANGLADESH                     1            134    212
15-18 months   MAL-ED           BANGLADESH                     2             41    212
15-18 months   MAL-ED           BANGLADESH                     3             27    212
15-18 months   MAL-ED           BRAZIL                         4+           108    175
15-18 months   MAL-ED           BRAZIL                         1              1    175
15-18 months   MAL-ED           BRAZIL                         2             17    175
15-18 months   MAL-ED           BRAZIL                         3             49    175
15-18 months   MAL-ED           INDIA                          4+            25    226
15-18 months   MAL-ED           INDIA                          1             82    226
15-18 months   MAL-ED           INDIA                          2             72    226
15-18 months   MAL-ED           INDIA                          3             47    226
15-18 months   MAL-ED           NEPAL                          4+           127    227
15-18 months   MAL-ED           NEPAL                          1             47    227
15-18 months   MAL-ED           NEPAL                          2             31    227
15-18 months   MAL-ED           NEPAL                          3             22    227
15-18 months   MAL-ED           PERU                           4+           112    214
15-18 months   MAL-ED           PERU                           1             17    214
15-18 months   MAL-ED           PERU                           2             38    214
15-18 months   MAL-ED           PERU                           3             47    214
15-18 months   MAL-ED           SOUTH AFRICA                   4+           172    225
15-18 months   MAL-ED           SOUTH AFRICA                   1             13    225
15-18 months   MAL-ED           SOUTH AFRICA                   2             19    225
15-18 months   MAL-ED           SOUTH AFRICA                   3             21    225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           102    220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             10    220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             50    220
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58    220
15-18 months   NIH-Crypto       BANGLADESH                     4+            84    605
15-18 months   NIH-Crypto       BANGLADESH                     1            269    605
15-18 months   NIH-Crypto       BANGLADESH                     2            165    605
15-18 months   NIH-Crypto       BANGLADESH                     3             87    605
15-18 months   PROVIDE          BANGLADESH                     4+            22    533
15-18 months   PROVIDE          BANGLADESH                     1            368    533
15-18 months   PROVIDE          BANGLADESH                     2             87    533
15-18 months   PROVIDE          BANGLADESH                     3             56    533
18-21 months   CMC-V-BCS-2002   INDIA                          4+            11    310
18-21 months   CMC-V-BCS-2002   INDIA                          1            167    310
18-21 months   CMC-V-BCS-2002   INDIA                          2             85    310
18-21 months   CMC-V-BCS-2002   INDIA                          3             47    310
18-21 months   CONTENT          PERU                           4+            66    183
18-21 months   CONTENT          PERU                           1             34    183
18-21 months   CONTENT          PERU                           2             47    183
18-21 months   CONTENT          PERU                           3             36    183
18-21 months   GMS-Nepal        NEPAL                          4+           206    447
18-21 months   GMS-Nepal        NEPAL                          1             30    447
18-21 months   GMS-Nepal        NEPAL                          2            102    447
18-21 months   GMS-Nepal        NEPAL                          3            109    447
18-21 months   IRC              INDIA                          4+            15    378
18-21 months   IRC              INDIA                          1            169    378
18-21 months   IRC              INDIA                          2            161    378
18-21 months   IRC              INDIA                          3             33    378
18-21 months   MAL-ED           BANGLADESH                     4+            11    209
18-21 months   MAL-ED           BANGLADESH                     1            131    209
18-21 months   MAL-ED           BANGLADESH                     2             40    209
18-21 months   MAL-ED           BANGLADESH                     3             27    209
18-21 months   MAL-ED           BRAZIL                         4+           104    167
18-21 months   MAL-ED           BRAZIL                         1              0    167
18-21 months   MAL-ED           BRAZIL                         2             16    167
18-21 months   MAL-ED           BRAZIL                         3             47    167
18-21 months   MAL-ED           INDIA                          4+            25    226
18-21 months   MAL-ED           INDIA                          1             82    226
18-21 months   MAL-ED           INDIA                          2             72    226
18-21 months   MAL-ED           INDIA                          3             47    226
18-21 months   MAL-ED           NEPAL                          4+           127    227
18-21 months   MAL-ED           NEPAL                          1             47    227
18-21 months   MAL-ED           NEPAL                          2             31    227
18-21 months   MAL-ED           NEPAL                          3             22    227
18-21 months   MAL-ED           PERU                           4+           110    202
18-21 months   MAL-ED           PERU                           1             16    202
18-21 months   MAL-ED           PERU                           2             32    202
18-21 months   MAL-ED           PERU                           3             44    202
18-21 months   MAL-ED           SOUTH AFRICA                   4+           178    233
18-21 months   MAL-ED           SOUTH AFRICA                   1             13    233
18-21 months   MAL-ED           SOUTH AFRICA                   2             20    233
18-21 months   MAL-ED           SOUTH AFRICA                   3             22    233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            98    208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             46    208
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             55    208
18-21 months   NIH-Crypto       BANGLADESH                     4+            83    547
18-21 months   NIH-Crypto       BANGLADESH                     1            237    547
18-21 months   NIH-Crypto       BANGLADESH                     2            149    547
18-21 months   NIH-Crypto       BANGLADESH                     3             78    547
18-21 months   PROVIDE          BANGLADESH                     4+            21    542
18-21 months   PROVIDE          BANGLADESH                     1            378    542
18-21 months   PROVIDE          BANGLADESH                     2             88    542
18-21 months   PROVIDE          BANGLADESH                     3             55    542
21-24 months   CMC-V-BCS-2002   INDIA                          4+            12    311
21-24 months   CMC-V-BCS-2002   INDIA                          1            170    311
21-24 months   CMC-V-BCS-2002   INDIA                          2             85    311
21-24 months   CMC-V-BCS-2002   INDIA                          3             44    311
21-24 months   CONTENT          PERU                           4+            10     38
21-24 months   CONTENT          PERU                           1              7     38
21-24 months   CONTENT          PERU                           2             12     38
21-24 months   CONTENT          PERU                           3              9     38
21-24 months   GMS-Nepal        NEPAL                          4+           163    343
21-24 months   GMS-Nepal        NEPAL                          1             24    343
21-24 months   GMS-Nepal        NEPAL                          2             74    343
21-24 months   GMS-Nepal        NEPAL                          3             82    343
21-24 months   IRC              INDIA                          4+            15    387
21-24 months   IRC              INDIA                          1            175    387
21-24 months   IRC              INDIA                          2            163    387
21-24 months   IRC              INDIA                          3             34    387
21-24 months   MAL-ED           BANGLADESH                     4+            11    207
21-24 months   MAL-ED           BANGLADESH                     1            130    207
21-24 months   MAL-ED           BANGLADESH                     2             39    207
21-24 months   MAL-ED           BANGLADESH                     3             27    207
21-24 months   MAL-ED           BRAZIL                         4+           102    165
21-24 months   MAL-ED           BRAZIL                         1              0    165
21-24 months   MAL-ED           BRAZIL                         2             15    165
21-24 months   MAL-ED           BRAZIL                         3             48    165
21-24 months   MAL-ED           INDIA                          4+            25    226
21-24 months   MAL-ED           INDIA                          1             82    226
21-24 months   MAL-ED           INDIA                          2             73    226
21-24 months   MAL-ED           INDIA                          3             46    226
21-24 months   MAL-ED           NEPAL                          4+           127    227
21-24 months   MAL-ED           NEPAL                          1             47    227
21-24 months   MAL-ED           NEPAL                          2             31    227
21-24 months   MAL-ED           NEPAL                          3             22    227
21-24 months   MAL-ED           PERU                           4+           105    189
21-24 months   MAL-ED           PERU                           1             15    189
21-24 months   MAL-ED           PERU                           2             28    189
21-24 months   MAL-ED           PERU                           3             41    189
21-24 months   MAL-ED           SOUTH AFRICA                   4+           181    235
21-24 months   MAL-ED           SOUTH AFRICA                   1             13    235
21-24 months   MAL-ED           SOUTH AFRICA                   2             19    235
21-24 months   MAL-ED           SOUTH AFRICA                   3             22    235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            96    206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             47    206
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             54    206
21-24 months   NIH-Crypto       BANGLADESH                     4+            81    493
21-24 months   NIH-Crypto       BANGLADESH                     1            206    493
21-24 months   NIH-Crypto       BANGLADESH                     2            133    493
21-24 months   NIH-Crypto       BANGLADESH                     3             73    493
21-24 months   PROVIDE          BANGLADESH                     4+            18    485
21-24 months   PROVIDE          BANGLADESH                     1            340    485
21-24 months   PROVIDE          BANGLADESH                     2             80    485
21-24 months   PROVIDE          BANGLADESH                     3             47    485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CONTENT, country: PERU
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/487d9376-2f23-472d-b684-90ed18b32098/8ef6c498-dca1-4126-bb6d-36847e3fceb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/487d9376-2f23-472d-b684-90ed18b32098/8ef6c498-dca1-4126-bb6d-36847e3fceb5/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/487d9376-2f23-472d-b684-90ed18b32098/8ef6c498-dca1-4126-bb6d-36847e3fceb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.7802291    0.6778392   0.8826189
0-3 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.7213753    0.6911600   0.7515905
0-3 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.7520931    0.7044311   0.7997550
0-3 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.8201096    0.7549030   0.8853163
0-3 months     COHORTS          INDIA                          4+                   NA                0.8804957    0.8520959   0.9088955
0-3 months     COHORTS          INDIA                          1                    NA                0.7914118    0.7846645   0.7981591
0-3 months     COHORTS          INDIA                          2                    NA                0.8305268    0.8205760   0.8404776
0-3 months     COHORTS          INDIA                          3                    NA                0.8280853    0.8012421   0.8549286
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                0.8185954    0.7941432   0.8430476
0-3 months     GMS-Nepal        NEPAL                          1                    NA                0.8000360    0.7323936   0.8676783
0-3 months     GMS-Nepal        NEPAL                          2                    NA                0.8397901    0.8024379   0.8771423
0-3 months     GMS-Nepal        NEPAL                          3                    NA                0.8397741    0.8060672   0.8734810
0-3 months     IRC              INDIA                          4+                   NA                0.8345484    0.7658753   0.9032215
0-3 months     IRC              INDIA                          1                    NA                0.7747419    0.7442306   0.8052532
0-3 months     IRC              INDIA                          2                    NA                0.7492004    0.7187542   0.7796466
0-3 months     IRC              INDIA                          3                    NA                0.7829115    0.7339626   0.8318603
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                0.9058615    0.7904470   1.0212759
0-3 months     MAL-ED           BANGLADESH                     1                    NA                0.8671907    0.8366601   0.8977212
0-3 months     MAL-ED           BANGLADESH                     2                    NA                0.8988027    0.8462315   0.9513739
0-3 months     MAL-ED           BANGLADESH                     3                    NA                0.8813183    0.8267240   0.9359126
0-3 months     MAL-ED           INDIA                          4+                   NA                0.7773246    0.7217065   0.8329427
0-3 months     MAL-ED           INDIA                          1                    NA                0.7444915    0.7030105   0.7859726
0-3 months     MAL-ED           INDIA                          2                    NA                0.7731459    0.7354834   0.8108085
0-3 months     MAL-ED           INDIA                          3                    NA                0.7573815    0.7087166   0.8060464
0-3 months     MAL-ED           NEPAL                          4+                   NA                0.9500179    0.9167771   0.9832587
0-3 months     MAL-ED           NEPAL                          1                    NA                0.9357832    0.8682750   1.0032915
0-3 months     MAL-ED           NEPAL                          2                    NA                1.0452436    0.9757010   1.1147862
0-3 months     MAL-ED           NEPAL                          3                    NA                0.9291316    0.8451660   1.0130971
0-3 months     MAL-ED           PERU                           4+                   NA                0.9844378    0.9458011   1.0230745
0-3 months     MAL-ED           PERU                           1                    NA                0.8724245    0.7871178   0.9577312
0-3 months     MAL-ED           PERU                           2                    NA                0.9799347    0.9264162   1.0334532
0-3 months     MAL-ED           PERU                           3                    NA                0.9647107    0.9157020   1.0137194
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.9385098    0.9054518   0.9715679
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.8851970    0.8184713   0.9519227
0-3 months     MAL-ED           SOUTH AFRICA                   2                    NA                1.0140030    0.9192493   1.1087567
0-3 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.9610385    0.8914399   1.0306370
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8981599    0.8512467   0.9450731
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9311474    0.8099511   1.0523436
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.8556560    0.7940900   0.9172221
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8813882    0.8230421   0.9397344
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.8932136    0.8519937   0.9344335
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                0.8777231    0.8568979   0.8985482
0-3 months     NIH-Crypto       BANGLADESH                     2                    NA                0.8689072    0.8415203   0.8962941
0-3 months     NIH-Crypto       BANGLADESH                     3                    NA                0.9276422    0.8858208   0.9694637
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                0.9272083    0.8478473   1.0065693
0-3 months     PROVIDE          BANGLADESH                     1                    NA                0.8928840    0.8752113   0.9105567
0-3 months     PROVIDE          BANGLADESH                     2                    NA                0.9275878    0.8914086   0.9637671
0-3 months     PROVIDE          BANGLADESH                     3                    NA                0.9157348    0.8716315   0.9598381
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.5286535    0.4357142   0.6215929
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.4524446    0.4299892   0.4749000
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.4954427    0.4553761   0.5355093
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.5042353    0.4489925   0.5594781
3-6 months     COHORTS          INDIA                          4+                   NA                0.5212816    0.4968982   0.5456650
3-6 months     COHORTS          INDIA                          1                    NA                0.4614008    0.4559282   0.4668733
3-6 months     COHORTS          INDIA                          2                    NA                0.5032261    0.4949005   0.5115517
3-6 months     COHORTS          INDIA                          3                    NA                0.4942769    0.4730771   0.5154767
3-6 months     CONTENT          PERU                           4+                   NA                0.5990338    0.5658631   0.6322046
3-6 months     CONTENT          PERU                           1                    NA                0.5405336    0.5002122   0.5808549
3-6 months     CONTENT          PERU                           2                    NA                0.5934034    0.5465430   0.6402638
3-6 months     CONTENT          PERU                           3                    NA                0.6146746    0.5648419   0.6645073
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                0.4892998    0.4700958   0.5085039
3-6 months     GMS-Nepal        NEPAL                          1                    NA                0.4905293    0.4329315   0.5481271
3-6 months     GMS-Nepal        NEPAL                          2                    NA                0.4914394    0.4617330   0.5211458
3-6 months     GMS-Nepal        NEPAL                          3                    NA                0.5205449    0.4914423   0.5496474
3-6 months     IRC              INDIA                          4+                   NA                0.3910542    0.3231347   0.4589737
3-6 months     IRC              INDIA                          1                    NA                0.4532173    0.4292926   0.4771419
3-6 months     IRC              INDIA                          2                    NA                0.4981469    0.4682560   0.5280378
3-6 months     IRC              INDIA                          3                    NA                0.4286260    0.3749977   0.4822543
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                0.4753587    0.3971617   0.5535557
3-6 months     MAL-ED           BANGLADESH                     1                    NA                0.4643895    0.4436738   0.4851052
3-6 months     MAL-ED           BANGLADESH                     2                    NA                0.5076369    0.4691990   0.5460748
3-6 months     MAL-ED           BANGLADESH                     3                    NA                0.4683780    0.4251143   0.5116417
3-6 months     MAL-ED           INDIA                          4+                   NA                0.4279092    0.3891369   0.4666814
3-6 months     MAL-ED           INDIA                          1                    NA                0.4387502    0.4097679   0.4677325
3-6 months     MAL-ED           INDIA                          2                    NA                0.4519994    0.4228544   0.4811444
3-6 months     MAL-ED           INDIA                          3                    NA                0.4553962    0.4089975   0.5017950
3-6 months     MAL-ED           NEPAL                          4+                   NA                0.5331307    0.5064446   0.5598169
3-6 months     MAL-ED           NEPAL                          1                    NA                0.4935646    0.4407794   0.5463498
3-6 months     MAL-ED           NEPAL                          2                    NA                0.5234801    0.4816309   0.5653293
3-6 months     MAL-ED           NEPAL                          3                    NA                0.5168197    0.4712589   0.5623804
3-6 months     MAL-ED           PERU                           4+                   NA                0.4931633    0.4659265   0.5204000
3-6 months     MAL-ED           PERU                           1                    NA                0.4699049    0.4194824   0.5203275
3-6 months     MAL-ED           PERU                           2                    NA                0.5179245    0.4663001   0.5695489
3-6 months     MAL-ED           PERU                           3                    NA                0.5025561    0.4694145   0.5356977
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.4786795    0.4493950   0.5079641
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.3784351    0.3000352   0.4568350
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                0.4854727    0.3789555   0.5919900
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.3935324    0.3190573   0.4680076
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4506611    0.4158282   0.4854941
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4505136    0.3138424   0.5871848
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4556722    0.4110748   0.5002696
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4704563    0.4201630   0.5207495
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.5182941    0.4846833   0.5519048
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                0.4847676    0.4691417   0.5003935
3-6 months     NIH-Crypto       BANGLADESH                     2                    NA                0.4968951    0.4741614   0.5196289
3-6 months     NIH-Crypto       BANGLADESH                     3                    NA                0.5257489    0.4994626   0.5520353
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                0.4884617    0.4414460   0.5354774
3-6 months     PROVIDE          BANGLADESH                     1                    NA                0.4836149    0.4677156   0.4995143
3-6 months     PROVIDE          BANGLADESH                     2                    NA                0.5042625    0.4783756   0.5301494
3-6 months     PROVIDE          BANGLADESH                     3                    NA                0.5044710    0.4553810   0.5535609
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                0.2614173    0.2174650   0.3053695
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                0.2482290    0.2254846   0.2709735
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                0.2661538    0.2362994   0.2960082
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                0.2883473    0.2471799   0.3295148
6-9 months     COHORTS          INDIA                          4+                   NA                0.3189841    0.2981143   0.3398539
6-9 months     COHORTS          INDIA                          1                    NA                0.2544136    0.2486295   0.2601977
6-9 months     COHORTS          INDIA                          2                    NA                0.3020105    0.2936929   0.3103281
6-9 months     COHORTS          INDIA                          3                    NA                0.3378227    0.3126804   0.3629650
6-9 months     CONTENT          PERU                           4+                   NA                0.3208512    0.2920728   0.3496297
6-9 months     CONTENT          PERU                           1                    NA                0.2766692    0.2372658   0.3160727
6-9 months     CONTENT          PERU                           2                    NA                0.3122911    0.2744095   0.3501728
6-9 months     CONTENT          PERU                           3                    NA                0.3803475    0.3259917   0.4347033
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                0.1873020    0.1690560   0.2055480
6-9 months     GMS-Nepal        NEPAL                          1                    NA                0.1971314    0.1608000   0.2334629
6-9 months     GMS-Nepal        NEPAL                          2                    NA                0.1845863    0.1578539   0.2113186
6-9 months     GMS-Nepal        NEPAL                          3                    NA                0.1873810    0.1640098   0.2107521
6-9 months     IRC              INDIA                          4+                   NA                0.2266451    0.1650416   0.2882486
6-9 months     IRC              INDIA                          1                    NA                0.2636349    0.2428228   0.2844471
6-9 months     IRC              INDIA                          2                    NA                0.2704418    0.2478154   0.2930682
6-9 months     IRC              INDIA                          3                    NA                0.2345856    0.2022865   0.2668846
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                0.2741174    0.1952714   0.3529634
6-9 months     MAL-ED           BANGLADESH                     1                    NA                0.2367348    0.2179249   0.2555447
6-9 months     MAL-ED           BANGLADESH                     2                    NA                0.2509671    0.2205562   0.2813780
6-9 months     MAL-ED           BANGLADESH                     3                    NA                0.2490158    0.2158414   0.2821902
6-9 months     MAL-ED           INDIA                          4+                   NA                0.2039684    0.1675924   0.2403444
6-9 months     MAL-ED           INDIA                          1                    NA                0.2583480    0.2319036   0.2847924
6-9 months     MAL-ED           INDIA                          2                    NA                0.2088192    0.1865401   0.2310982
6-9 months     MAL-ED           INDIA                          3                    NA                0.2359290    0.1997378   0.2721201
6-9 months     MAL-ED           NEPAL                          4+                   NA                0.2676950    0.2498201   0.2855699
6-9 months     MAL-ED           NEPAL                          1                    NA                0.2693147    0.2353645   0.3032650
6-9 months     MAL-ED           NEPAL                          2                    NA                0.2654167    0.2201425   0.3106910
6-9 months     MAL-ED           NEPAL                          3                    NA                0.2869343    0.2395403   0.3343283
6-9 months     MAL-ED           PERU                           4+                   NA                0.2678968    0.2483460   0.2874476
6-9 months     MAL-ED           PERU                           1                    NA                0.2683639    0.2104038   0.3263240
6-9 months     MAL-ED           PERU                           2                    NA                0.2542442    0.2253407   0.2831476
6-9 months     MAL-ED           PERU                           3                    NA                0.2486368    0.2054217   0.2918518
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                0.2540332    0.2306457   0.2774208
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                0.2471043    0.1584012   0.3358074
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                0.3197593    0.2269324   0.4125863
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                0.2599031    0.1981959   0.3216104
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.2642906    0.2312268   0.2973543
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2420644    0.1366173   0.3475115
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2046971    0.1660112   0.2433830
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2251015    0.1663400   0.2838629
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                0.3208669    0.2926973   0.3490366
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                0.2555888    0.2409424   0.2702352
6-9 months     NIH-Crypto       BANGLADESH                     2                    NA                0.2523459    0.2344936   0.2701982
6-9 months     NIH-Crypto       BANGLADESH                     3                    NA                0.2869458    0.2503841   0.3235076
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                0.3086886    0.2618907   0.3554865
6-9 months     PROVIDE          BANGLADESH                     1                    NA                0.2387768    0.2239052   0.2536484
6-9 months     PROVIDE          BANGLADESH                     2                    NA                0.2622425    0.2359512   0.2885337
6-9 months     PROVIDE          BANGLADESH                     3                    NA                0.2841791    0.2499927   0.3183655
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                0.2477374    0.1948481   0.3006267
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2087823    0.1845775   0.2329872
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.1787018    0.1480637   0.2093399
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.2777352    0.2301620   0.3253084
9-12 months    COHORTS          INDIA                          4+                   NA                0.2675341    0.2417533   0.2933149
9-12 months    COHORTS          INDIA                          1                    NA                0.2019405    0.1958631   0.2080179
9-12 months    COHORTS          INDIA                          2                    NA                0.2303266    0.2217422   0.2389110
9-12 months    COHORTS          INDIA                          3                    NA                0.2416351    0.2173058   0.2659645
9-12 months    CONTENT          PERU                           4+                   NA                0.2401922    0.2083116   0.2720728
9-12 months    CONTENT          PERU                           1                    NA                0.1894319    0.1558130   0.2230508
9-12 months    CONTENT          PERU                           2                    NA                0.2177791    0.1839786   0.2515796
9-12 months    CONTENT          PERU                           3                    NA                0.2427864    0.1971094   0.2884633
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                0.1496957    0.1307979   0.1685935
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.1423251    0.1050411   0.1796092
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.1278271    0.0978032   0.1578510
9-12 months    GMS-Nepal        NEPAL                          3                    NA                0.1469735    0.1230134   0.1709336
9-12 months    IRC              INDIA                          4+                   NA                0.2022063    0.1415706   0.2628420
9-12 months    IRC              INDIA                          1                    NA                0.2069789    0.1854537   0.2285042
9-12 months    IRC              INDIA                          2                    NA                0.2202919    0.1975660   0.2430179
9-12 months    IRC              INDIA                          3                    NA                0.2112424    0.1722486   0.2502362
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                0.2216750    0.1406143   0.3027358
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.1721895    0.1545230   0.1898560
9-12 months    MAL-ED           BANGLADESH                     2                    NA                0.1676823    0.1406797   0.1946850
9-12 months    MAL-ED           BANGLADESH                     3                    NA                0.1662495    0.1346218   0.1978772
9-12 months    MAL-ED           INDIA                          4+                   NA                0.1883482    0.1414103   0.2352860
9-12 months    MAL-ED           INDIA                          1                    NA                0.1806911    0.1575008   0.2038814
9-12 months    MAL-ED           INDIA                          2                    NA                0.1770606    0.1517234   0.2023977
9-12 months    MAL-ED           INDIA                          3                    NA                0.1734131    0.1453155   0.2015108
9-12 months    MAL-ED           NEPAL                          4+                   NA                0.1903448    0.1723170   0.2083727
9-12 months    MAL-ED           NEPAL                          1                    NA                0.1587909    0.1174496   0.2001323
9-12 months    MAL-ED           NEPAL                          2                    NA                0.2030956    0.1707810   0.2354102
9-12 months    MAL-ED           NEPAL                          3                    NA                0.1959138    0.1663317   0.2254960
9-12 months    MAL-ED           PERU                           4+                   NA                0.1831060    0.1625972   0.2036147
9-12 months    MAL-ED           PERU                           1                    NA                0.1408660    0.1171126   0.1646194
9-12 months    MAL-ED           PERU                           2                    NA                0.1999823    0.1651503   0.2348144
9-12 months    MAL-ED           PERU                           3                    NA                0.2039429    0.1651320   0.2427539
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                0.2154540    0.1897647   0.2411434
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.2752076    0.2153258   0.3350894
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                0.1863580    0.1096071   0.2631088
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                0.2001810    0.1350753   0.2652867
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1824931    0.1524274   0.2125588
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1230091    0.0040962   0.2419221
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1426708    0.1011656   0.1841760
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1694375    0.1335589   0.2053160
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                0.2246066    0.1980607   0.2511526
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1834510    0.1678983   0.1990037
9-12 months    NIH-Crypto       BANGLADESH                     2                    NA                0.1894757    0.1717181   0.2072332
9-12 months    NIH-Crypto       BANGLADESH                     3                    NA                0.2352176    0.2040584   0.2663769
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                0.1742635    0.1267788   0.2217481
9-12 months    PROVIDE          BANGLADESH                     1                    NA                0.1765065    0.1657354   0.1872776
9-12 months    PROVIDE          BANGLADESH                     2                    NA                0.1848003    0.1580273   0.2115733
9-12 months    PROVIDE          BANGLADESH                     3                    NA                0.1743154    0.1453186   0.2033122
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1272088    0.0677814   0.1866361
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1634138    0.1437596   0.1830680
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1457498    0.1216664   0.1698332
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1149670    0.0809035   0.1490305
12-15 months   CONTENT          PERU                           4+                   NA                0.1735869    0.1437949   0.2033789
12-15 months   CONTENT          PERU                           1                    NA                0.1881758    0.1524831   0.2238685
12-15 months   CONTENT          PERU                           2                    NA                0.2062744    0.1644079   0.2481408
12-15 months   CONTENT          PERU                           3                    NA                0.1526500    0.1099262   0.1953738
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                0.1610779    0.1407695   0.1813864
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.1464995    0.1045994   0.1883996
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.1982167    0.1715908   0.2248427
12-15 months   GMS-Nepal        NEPAL                          3                    NA                0.1789939    0.1539855   0.2040022
12-15 months   IRC              INDIA                          4+                   NA                0.1851520    0.1369845   0.2333195
12-15 months   IRC              INDIA                          1                    NA                0.1846096    0.1643473   0.2048719
12-15 months   IRC              INDIA                          2                    NA                0.1754583    0.1566190   0.1942975
12-15 months   IRC              INDIA                          3                    NA                0.2075816    0.1669551   0.2482081
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                0.1773764    0.1129436   0.2418093
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.1354199    0.1146983   0.1561414
12-15 months   MAL-ED           BANGLADESH                     2                    NA                0.1301601    0.0961241   0.1641961
12-15 months   MAL-ED           BANGLADESH                     3                    NA                0.1271918    0.0900181   0.1643655
12-15 months   MAL-ED           INDIA                          4+                   NA                0.1726005    0.1322777   0.2129234
12-15 months   MAL-ED           INDIA                          1                    NA                0.1789932    0.1528342   0.2051523
12-15 months   MAL-ED           INDIA                          2                    NA                0.1807936    0.1523176   0.2092695
12-15 months   MAL-ED           INDIA                          3                    NA                0.1553763    0.1186282   0.1921243
12-15 months   MAL-ED           NEPAL                          4+                   NA                0.1533751    0.1343257   0.1724245
12-15 months   MAL-ED           NEPAL                          1                    NA                0.1563223    0.1059462   0.2066983
12-15 months   MAL-ED           NEPAL                          2                    NA                0.1583707    0.1178612   0.1988801
12-15 months   MAL-ED           NEPAL                          3                    NA                0.1327839    0.0855168   0.1800511
12-15 months   MAL-ED           PERU                           4+                   NA                0.1488128    0.1253326   0.1722930
12-15 months   MAL-ED           PERU                           1                    NA                0.1917434    0.1454815   0.2380053
12-15 months   MAL-ED           PERU                           2                    NA                0.1047840    0.0683536   0.1412144
12-15 months   MAL-ED           PERU                           3                    NA                0.1379658    0.1016931   0.1742384
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1962564    0.1683377   0.2241752
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1018781   -0.0602358   0.2639920
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1681672    0.0943022   0.2420322
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.2079620    0.1410107   0.2749134
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1373411    0.1036874   0.1709947
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2592984    0.1344394   0.3841575
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1802910    0.1237305   0.2368515
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1606865    0.1140506   0.2073223
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1752050    0.1464556   0.2039544
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1558042    0.1418905   0.1697178
12-15 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1683242    0.1476347   0.1890137
12-15 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1724889    0.1370984   0.2078793
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                0.2319343    0.1611782   0.3026904
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.1796749    0.1654705   0.1938793
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.1633982    0.1367891   0.1900074
12-15 months   PROVIDE          BANGLADESH                     3                    NA                0.1903994    0.1566203   0.2241786
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1975055    0.1217900   0.2732209
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1366871    0.1190305   0.1543437
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1746037    0.1419253   0.2072822
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1542094    0.1289221   0.1794968
15-18 months   CONTENT          PERU                           4+                   NA                0.1654856    0.1446223   0.1863489
15-18 months   CONTENT          PERU                           1                    NA                0.1920336    0.1496180   0.2344492
15-18 months   CONTENT          PERU                           2                    NA                0.1461094    0.0999299   0.1922890
15-18 months   CONTENT          PERU                           3                    NA                0.1943380    0.1524262   0.2362497
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                0.2348576    0.2124883   0.2572268
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.2530596    0.2039716   0.3021477
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.2195797    0.1894894   0.2496700
15-18 months   GMS-Nepal        NEPAL                          3                    NA                0.2428555    0.2090017   0.2767092
15-18 months   IRC              INDIA                          4+                   NA                0.1675454    0.1164704   0.2186205
15-18 months   IRC              INDIA                          1                    NA                0.1476743    0.1266313   0.1687172
15-18 months   IRC              INDIA                          2                    NA                0.1838583    0.1635186   0.2041981
15-18 months   IRC              INDIA                          3                    NA                0.1105114    0.0703253   0.1506974
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                0.1199594    0.0584147   0.1815041
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.1418722    0.1231969   0.1605474
15-18 months   MAL-ED           BANGLADESH                     2                    NA                0.1548401    0.1122073   0.1974729
15-18 months   MAL-ED           BANGLADESH                     3                    NA                0.1374883    0.0968559   0.1781206
15-18 months   MAL-ED           INDIA                          4+                   NA                0.1488591    0.1084641   0.1892541
15-18 months   MAL-ED           INDIA                          1                    NA                0.1634351    0.1391281   0.1877422
15-18 months   MAL-ED           INDIA                          2                    NA                0.1541657    0.1271213   0.1812101
15-18 months   MAL-ED           INDIA                          3                    NA                0.1812503    0.1474469   0.2150538
15-18 months   MAL-ED           NEPAL                          4+                   NA                0.1703972    0.1509475   0.1898468
15-18 months   MAL-ED           NEPAL                          1                    NA                0.1734128    0.1322170   0.2146085
15-18 months   MAL-ED           NEPAL                          2                    NA                0.1679154    0.1257153   0.2101155
15-18 months   MAL-ED           NEPAL                          3                    NA                0.1993746    0.1504965   0.2482527
15-18 months   MAL-ED           PERU                           4+                   NA                0.1546013    0.1308009   0.1784018
15-18 months   MAL-ED           PERU                           1                    NA                0.1564015    0.0862176   0.2265854
15-18 months   MAL-ED           PERU                           2                    NA                0.1390948    0.0884417   0.1897479
15-18 months   MAL-ED           PERU                           3                    NA                0.1281839    0.0858674   0.1705004
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.2301734    0.1981496   0.2621971
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.2155575    0.0349705   0.3961444
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.2406799    0.1540004   0.3273595
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.1593985    0.0954728   0.2233241
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1240937    0.0933280   0.1548593
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1704906    0.0465134   0.2944678
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1537718    0.1046648   0.2028789
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1614731    0.1131422   0.2098041
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1880096    0.1578736   0.2181457
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1585283    0.1439702   0.1730864
15-18 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1491867    0.1276256   0.1707478
15-18 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1663407    0.1384508   0.1942305
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                0.2160530    0.1628602   0.2692459
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.1530006    0.1392236   0.1667776
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.1559784    0.1252017   0.1867552
15-18 months   PROVIDE          BANGLADESH                     3                    NA                0.1554967    0.1164199   0.1945735
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1637873    0.1102604   0.2173142
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1373422    0.1208371   0.1538474
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1183739    0.0783842   0.1583636
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1515437    0.1180215   0.1850659
18-21 months   CONTENT          PERU                           4+                   NA                0.2018387    0.1677491   0.2359283
18-21 months   CONTENT          PERU                           1                    NA                0.1881992    0.1526109   0.2237875
18-21 months   CONTENT          PERU                           2                    NA                0.1846472    0.1518274   0.2174671
18-21 months   CONTENT          PERU                           3                    NA                0.1879881    0.1400774   0.2358987
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                0.1336976    0.1111777   0.1562175
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.0756511    0.0164957   0.1348065
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.1676255    0.1369231   0.1983279
18-21 months   GMS-Nepal        NEPAL                          3                    NA                0.1535911    0.1207282   0.1864541
18-21 months   IRC              INDIA                          4+                   NA                0.2681102    0.1670015   0.3692189
18-21 months   IRC              INDIA                          1                    NA                0.1568367    0.1363288   0.1773446
18-21 months   IRC              INDIA                          2                    NA                0.1617472    0.1431509   0.1803435
18-21 months   IRC              INDIA                          3                    NA                0.1154458    0.0787446   0.1521470
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                0.1702074    0.0838798   0.2565350
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.1284246    0.1076339   0.1492152
18-21 months   MAL-ED           BANGLADESH                     2                    NA                0.1671211    0.1306031   0.2036392
18-21 months   MAL-ED           BANGLADESH                     3                    NA                0.1646895    0.1153457   0.2140332
18-21 months   MAL-ED           INDIA                          4+                   NA                0.2021296    0.1649752   0.2392841
18-21 months   MAL-ED           INDIA                          1                    NA                0.1892936    0.1643563   0.2142309
18-21 months   MAL-ED           INDIA                          2                    NA                0.1613257    0.1339201   0.1887314
18-21 months   MAL-ED           INDIA                          3                    NA                0.1453586    0.1146734   0.1760438
18-21 months   MAL-ED           NEPAL                          4+                   NA                0.1633684    0.1423731   0.1843638
18-21 months   MAL-ED           NEPAL                          1                    NA                0.1348514    0.1018222   0.1678806
18-21 months   MAL-ED           NEPAL                          2                    NA                0.1308274    0.0698110   0.1918438
18-21 months   MAL-ED           NEPAL                          3                    NA                0.1064083    0.0326527   0.1801640
18-21 months   MAL-ED           PERU                           4+                   NA                0.1644041    0.1370852   0.1917230
18-21 months   MAL-ED           PERU                           1                    NA                0.1898493    0.1361696   0.2435291
18-21 months   MAL-ED           PERU                           2                    NA                0.1669255    0.1199412   0.2139099
18-21 months   MAL-ED           PERU                           3                    NA                0.1402846    0.1041912   0.1763779
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1775000    0.1477033   0.2072967
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1039567   -0.0382785   0.2461920
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1991243    0.1180505   0.2801980
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.1968493    0.1085620   0.2851367
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1466844    0.1099825   0.1833863
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1503309   -0.0013370   0.3019988
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1247956    0.0665246   0.1830666
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1631445    0.1238131   0.2024759
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1374174    0.1101785   0.1646563
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1378875    0.1226581   0.1531169
18-21 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1535549    0.1314066   0.1757032
18-21 months   NIH-Crypto       BANGLADESH                     3                    NA                0.1419341    0.1124025   0.1714658
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                0.1705665    0.1222471   0.2188860
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.1268512    0.1132854   0.1404170
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.1472030    0.1172666   0.1771394
18-21 months   PROVIDE          BANGLADESH                     3                    NA                0.1331466    0.0969023   0.1693909
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.1480672    0.0847830   0.2113514
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.1423525    0.1256823   0.1590227
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.1619890    0.1310896   0.1928885
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.1459513    0.1049063   0.1869962
21-24 months   CONTENT          PERU                           4+                   NA                0.1756855    0.0697331   0.2816379
21-24 months   CONTENT          PERU                           1                    NA                0.1792042    0.0676774   0.2907310
21-24 months   CONTENT          PERU                           2                    NA                0.2696916    0.1841620   0.3552212
21-24 months   CONTENT          PERU                           3                    NA                0.1731815    0.1024381   0.2439249
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.1833896    0.1472938   0.2194854
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.2311236    0.1445272   0.3177201
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.1708395    0.1192404   0.2224387
21-24 months   GMS-Nepal        NEPAL                          3                    NA                0.1532536    0.1042386   0.2022686
21-24 months   IRC              INDIA                          4+                   NA                0.1703603    0.1047443   0.2359763
21-24 months   IRC              INDIA                          1                    NA                0.1782821    0.1566347   0.1999295
21-24 months   IRC              INDIA                          2                    NA                0.1728604    0.1528223   0.1928985
21-24 months   IRC              INDIA                          3                    NA                0.2015620    0.1553502   0.2477739
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                0.1313261    0.0699170   0.1927352
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.1565359    0.1389686   0.1741033
21-24 months   MAL-ED           BANGLADESH                     2                    NA                0.1473144    0.1058989   0.1887299
21-24 months   MAL-ED           BANGLADESH                     3                    NA                0.1462370    0.1010678   0.1914063
21-24 months   MAL-ED           INDIA                          4+                   NA                0.1427132    0.1014690   0.1839573
21-24 months   MAL-ED           INDIA                          1                    NA                0.1508977    0.1289998   0.1727956
21-24 months   MAL-ED           INDIA                          2                    NA                0.1689534    0.1446076   0.1932993
21-24 months   MAL-ED           INDIA                          3                    NA                0.1530881    0.1280005   0.1781757
21-24 months   MAL-ED           NEPAL                          4+                   NA                0.1662723    0.1369575   0.1955872
21-24 months   MAL-ED           NEPAL                          1                    NA                0.1610323    0.1246821   0.1973825
21-24 months   MAL-ED           NEPAL                          2                    NA                0.1781458    0.1368067   0.2194849
21-24 months   MAL-ED           NEPAL                          3                    NA                0.1893058    0.1260188   0.2525927
21-24 months   MAL-ED           PERU                           4+                   NA                0.1822544    0.1531359   0.2113729
21-24 months   MAL-ED           PERU                           1                    NA                0.1953912    0.1492968   0.2414856
21-24 months   MAL-ED           PERU                           2                    NA                0.1386069    0.0942679   0.1829460
21-24 months   MAL-ED           PERU                           3                    NA                0.2036270    0.1669822   0.2402719
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.1801957    0.1537309   0.2066605
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.3000619    0.1739127   0.4262111
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.1586998    0.0907984   0.2266012
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.2076211    0.1278115   0.2874307
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.1709775    0.1316376   0.2103174
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0468868   -0.1172676   0.2110412
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0962359    0.0404165   0.1520554
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1435694    0.0907097   0.1964290
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.1970984    0.1674679   0.2267289
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.1627490    0.1442238   0.1812741
21-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.1663928    0.1426969   0.1900887
21-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.2010709    0.1633615   0.2387803
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.1494725    0.1079303   0.1910147
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.1375133    0.1243258   0.1507008
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.1414702    0.1101663   0.1727742
21-24 months   PROVIDE          BANGLADESH                     3                    NA                0.1721922    0.1316062   0.2127783


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          INDIA                          NA                   NA                0.8057950   0.8003517   0.8112383
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7675304   0.7480134   0.7870474
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9579130   0.9310445   0.9847815
0-3 months     MAL-ED           PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8849237   0.8543694   0.9154779
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4751567   0.4562440   0.4940693
3-6 months     COHORTS          INDIA                          NA                   NA                0.4761053   0.4716349   0.4805758
3-6 months     CONTENT          PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4667726   0.4491630   0.4843822
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5217163   0.5015380   0.5418946
3-6 months     MAL-ED           PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4571297   0.4330666   0.4811928
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2595889   0.2435057   0.2756721
6-9 months     COHORTS          INDIA                          NA                   NA                0.2731093   0.2684405   0.2777781
6-9 months     CONTENT          PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1874500   0.1753777   0.1995223
6-9 months     IRC              INDIA                          NA                   NA                0.2623667   0.2484364   0.2762970
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2695733   0.2550952   0.2840514
6-9 months     MAL-ED           PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2383604   0.2142762   0.2624446
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2123308   0.1948351   0.2298265
9-12 months    COHORTS          INDIA                          NA                   NA                0.2136356   0.2088035   0.2184677
9-12 months    CONTENT          PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439907   0.1312935   0.1566879
9-12 months    IRC              INDIA                          NA                   NA                0.2127049   0.1984247   0.2269852
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1859920   0.1715885   0.2003955
9-12 months    MAL-ED           PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668888   0.1466505   0.1871271
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1504668   0.1366572   0.1642764
12-15 months   CONTENT          PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1721075   0.1589812   0.1852337
12-15 months   IRC              INDIA                          NA                   NA                0.1828907   0.1700739   0.1957075
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1526939   0.1360899   0.1692979
12-15 months   MAL-ED           PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1594440   0.1347422   0.1841458
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1521835   0.1380291   0.1663379
15-18 months   CONTENT          PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   IRC              INDIA                          NA                   NA                0.1601431   0.1465285   0.1737577
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1734910   0.1577405   0.1892416
15-18 months   MAL-ED           PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1428022   0.1198308   0.1657736
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1352327   0.1200477   0.1504178
18-21 months   CONTENT          PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1597303   0.1463244   0.1731363
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1474997   0.1298460   0.1651535
18-21 months   MAL-ED           PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1463538   0.1214615   0.1712461
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1484491   0.1344875   0.1624106
21-24 months   CONTENT          PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1768175   0.1523979   0.2012370
21-24 months   IRC              INDIA                          NA                   NA                0.1777368   0.1639302   0.1915434
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1690412   0.1491342   0.1889482
21-24 months   MAL-ED           PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1413187   0.1136523   0.1689851
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.0588538   -0.1656089    0.0479013
0-3 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.0281360   -0.1410756    0.0848036
0-3 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0398806   -0.0815097    0.1612708
0-3 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    4+                -0.0890839   -0.1182743   -0.0598936
0-3 months     COHORTS          INDIA                          2                    4+                -0.0499689   -0.0800616   -0.0198763
0-3 months     COHORTS          INDIA                          3                    4+                -0.0524104   -0.0914887   -0.0133321
0-3 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    4+                -0.0185594   -0.0904857    0.0533669
0-3 months     GMS-Nepal        NEPAL                          2                    4+                 0.0211948   -0.0234493    0.0658389
0-3 months     GMS-Nepal        NEPAL                          3                    4+                 0.0211787   -0.0204634    0.0628208
0-3 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    4+                -0.0598065   -0.1349526    0.0153396
0-3 months     IRC              INDIA                          2                    4+                -0.0853480   -0.1604677   -0.0102284
0-3 months     IRC              INDIA                          3                    4+                -0.0516369   -0.1359696    0.0326957
0-3 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    4+                -0.0386708   -0.1580551    0.0807135
0-3 months     MAL-ED           BANGLADESH                     2                    4+                -0.0070588   -0.1338824    0.1197648
0-3 months     MAL-ED           BANGLADESH                     3                    4+                -0.0245431   -0.1522186    0.1031324
0-3 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    4+                -0.0328331   -0.1022164    0.0365503
0-3 months     MAL-ED           INDIA                          2                    4+                -0.0041787   -0.0713489    0.0629916
0-3 months     MAL-ED           INDIA                          3                    4+                -0.0199431   -0.0938461    0.0539599
0-3 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    4+                -0.0142346   -0.0894830    0.0610138
0-3 months     MAL-ED           NEPAL                          2                    4+                 0.0952257    0.0181470    0.1723044
0-3 months     MAL-ED           NEPAL                          3                    4+                -0.0208863   -0.1111922    0.0694196
0-3 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    4+                -0.1120133   -0.2056617   -0.0183649
0-3 months     MAL-ED           PERU                           2                    4+                -0.0045031   -0.0705109    0.0615047
0-3 months     MAL-ED           PERU                           3                    4+                -0.0197271   -0.0821342    0.0426800
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0533129   -0.1277786    0.0211529
0-3 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0754932   -0.0248617    0.1758481
0-3 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0225286   -0.0545220    0.0995792
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0329875   -0.0969717    0.1629466
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0425039   -0.1199069    0.0348992
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0167717   -0.0916390    0.0580957
0-3 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0154905   -0.0616724    0.0306914
0-3 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0243063   -0.0737949    0.0251823
0-3 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0344287   -0.0242919    0.0931493
0-3 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    4+                -0.0343243   -0.1156292    0.0469807
0-3 months     PROVIDE          BANGLADESH                     2                    4+                 0.0003795   -0.0868392    0.0875983
0-3 months     PROVIDE          BANGLADESH                     3                    4+                -0.0114735   -0.1022660    0.0793190
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.0762090   -0.1718226    0.0194047
3-6 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.0332108   -0.1344188    0.0679971
3-6 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.0244182   -0.1325362    0.0836997
3-6 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    4+                -0.0598809   -0.0848709   -0.0348909
3-6 months     COHORTS          INDIA                          2                    4+                -0.0180555   -0.0438211    0.0077101
3-6 months     COHORTS          INDIA                          3                    4+                -0.0270047   -0.0593154    0.0053060
3-6 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    4+                -0.0585003   -0.1107124   -0.0062881
3-6 months     CONTENT          PERU                           2                    4+                -0.0056304   -0.0630429    0.0517821
3-6 months     CONTENT          PERU                           3                    4+                 0.0156408   -0.0442223    0.0755039
3-6 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    4+                 0.0012295   -0.0594855    0.0619444
3-6 months     GMS-Nepal        NEPAL                          2                    4+                 0.0021396   -0.0332336    0.0375128
3-6 months     GMS-Nepal        NEPAL                          3                    4+                 0.0312450   -0.0036226    0.0661127
3-6 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    4+                 0.0621631   -0.0098470    0.1341731
3-6 months     IRC              INDIA                          2                    4+                 0.1070927    0.0328867    0.1812986
3-6 months     IRC              INDIA                          3                    4+                 0.0375718   -0.0489675    0.1241111
3-6 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    4+                -0.0109692   -0.0918637    0.0699252
3-6 months     MAL-ED           BANGLADESH                     2                    4+                 0.0322782   -0.0548552    0.1194117
3-6 months     MAL-ED           BANGLADESH                     3                    4+                -0.0069807   -0.0963480    0.0823866
3-6 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    4+                 0.0108410   -0.0375662    0.0592483
3-6 months     MAL-ED           INDIA                          2                    4+                 0.0240902   -0.0244146    0.0725950
3-6 months     MAL-ED           INDIA                          3                    4+                 0.0274870   -0.0329789    0.0879530
3-6 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    4+                -0.0395661   -0.0987136    0.0195814
3-6 months     MAL-ED           NEPAL                          2                    4+                -0.0096506   -0.0592843    0.0399831
3-6 months     MAL-ED           NEPAL                          3                    4+                -0.0163111   -0.0691120    0.0364898
3-6 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    4+                -0.0232583   -0.0805668    0.0340502
3-6 months     MAL-ED           PERU                           2                    4+                 0.0247612   -0.0336076    0.0831301
3-6 months     MAL-ED           PERU                           3                    4+                 0.0093928   -0.0335048    0.0522905
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1002444   -0.1839351   -0.0165537
3-6 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0067932   -0.1036763    0.1172627
3-6 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0851471   -0.1651729   -0.0051213
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0001476   -0.1411878    0.1408927
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0050110   -0.0515775    0.0615996
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0197951   -0.0413829    0.0809731
3-6 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0335265   -0.0705919    0.0035390
3-6 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0213989   -0.0619761    0.0191782
3-6 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0074548   -0.0352143    0.0501240
3-6 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    4+                -0.0048468   -0.0544781    0.0447846
3-6 months     PROVIDE          BANGLADESH                     2                    4+                 0.0158008   -0.0378705    0.0694721
3-6 months     PROVIDE          BANGLADESH                     3                    4+                 0.0160093   -0.0519635    0.0839820
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.0131882   -0.0626767    0.0363002
6-9 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.0047365   -0.0483962    0.0578692
6-9 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0269300   -0.0332909    0.0871509
6-9 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    4+                -0.0645705   -0.0862270   -0.0429140
6-9 months     COHORTS          INDIA                          2                    4+                -0.0169736   -0.0394398    0.0054926
6-9 months     COHORTS          INDIA                          3                    4+                 0.0188386   -0.0138368    0.0515140
6-9 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    4+                -0.0441820   -0.0929758    0.0046118
6-9 months     CONTENT          PERU                           2                    4+                -0.0085601   -0.0561333    0.0390132
6-9 months     CONTENT          PERU                           3                    4+                 0.0594963   -0.0020078    0.1210003
6-9 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    4+                 0.0098294   -0.0308264    0.0504852
6-9 months     GMS-Nepal        NEPAL                          2                    4+                -0.0027157   -0.0350814    0.0296499
6-9 months     GMS-Nepal        NEPAL                          3                    4+                 0.0000790   -0.0295711    0.0297291
6-9 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    4+                 0.0369899   -0.0280343    0.1020140
6-9 months     IRC              INDIA                          2                    4+                 0.0437967   -0.0218306    0.1094240
6-9 months     IRC              INDIA                          3                    4+                 0.0079405   -0.0616168    0.0774978
6-9 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    4+                -0.0373826   -0.1184413    0.0436761
6-9 months     MAL-ED           BANGLADESH                     2                    4+                -0.0231503   -0.1076578    0.0613572
6-9 months     MAL-ED           BANGLADESH                     3                    4+                -0.0251016   -0.1106425    0.0604392
6-9 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    4+                 0.0543796    0.0094072    0.0993520
6-9 months     MAL-ED           INDIA                          2                    4+                 0.0048508   -0.0378056    0.0475072
6-9 months     MAL-ED           INDIA                          3                    4+                 0.0319606   -0.0193523    0.0832735
6-9 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    4+                 0.0016197   -0.0367486    0.0399881
6-9 months     MAL-ED           NEPAL                          2                    4+                -0.0022783   -0.0509534    0.0463968
6-9 months     MAL-ED           NEPAL                          3                    4+                 0.0192393   -0.0314134    0.0698920
6-9 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    4+                 0.0004671   -0.0607016    0.0616357
6-9 months     MAL-ED           PERU                           2                    4+                -0.0136526   -0.0485474    0.0212421
6-9 months     MAL-ED           PERU                           3                    4+                -0.0192600   -0.0666918    0.0281718
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.0069289   -0.0986634    0.0848056
6-9 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0657261   -0.0300017    0.1614539
6-9 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0058699   -0.0601207    0.0718605
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0222262   -0.1327355    0.0882832
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0595935   -0.1104837   -0.0087033
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0391891   -0.1066141    0.0282359
6-9 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0652781   -0.0970279   -0.0335284
6-9 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0685211   -0.1018713   -0.0351709
6-9 months     NIH-Crypto       BANGLADESH                     3                    4+                -0.0339211   -0.0800762    0.0122340
6-9 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    4+                -0.0699118   -0.1190159   -0.0208078
6-9 months     PROVIDE          BANGLADESH                     2                    4+                -0.0464461   -0.1001236    0.0072314
6-9 months     PROVIDE          BANGLADESH                     3                    4+                -0.0245095   -0.0824643    0.0334452
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.0389551   -0.0971200    0.0192098
9-12 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.0690356   -0.1301582   -0.0079130
9-12 months    CMC-V-BCS-2002   INDIA                          3                    4+                 0.0299978   -0.0411393    0.1011349
9-12 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    4+                -0.0655937   -0.0920811   -0.0391062
9-12 months    COHORTS          INDIA                          2                    4+                -0.0372075   -0.0643800   -0.0100351
9-12 months    COHORTS          INDIA                          3                    4+                -0.0258990   -0.0613471    0.0095491
9-12 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    4+                -0.0507603   -0.0970917   -0.0044288
9-12 months    CONTENT          PERU                           2                    4+                -0.0224131   -0.0688765    0.0240503
9-12 months    CONTENT          PERU                           3                    4+                 0.0025942   -0.0531082    0.0582966
9-12 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    4+                -0.0073706   -0.0491704    0.0344293
9-12 months    GMS-Nepal        NEPAL                          2                    4+                -0.0218686   -0.0573448    0.0136076
9-12 months    GMS-Nepal        NEPAL                          3                    4+                -0.0027222   -0.0332381    0.0277936
9-12 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    4+                 0.0047726   -0.0595704    0.0691156
9-12 months    IRC              INDIA                          2                    4+                 0.0180856   -0.0466690    0.0828402
9-12 months    IRC              INDIA                          3                    4+                 0.0090361   -0.0630555    0.0811277
9-12 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    4+                -0.0494856   -0.1324491    0.0334780
9-12 months    MAL-ED           BANGLADESH                     2                    4+                -0.0539927   -0.1394327    0.0314473
9-12 months    MAL-ED           BANGLADESH                     3                    4+                -0.0554255   -0.1424379    0.0315869
9-12 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    4+                -0.0076571   -0.0600112    0.0446971
9-12 months    MAL-ED           INDIA                          2                    4+                -0.0112876   -0.0646274    0.0420522
9-12 months    MAL-ED           INDIA                          3                    4+                -0.0149350   -0.0696401    0.0397700
9-12 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    4+                -0.0315539   -0.0766550    0.0135472
9-12 months    MAL-ED           NEPAL                          2                    4+                 0.0127507   -0.0242525    0.0497539
9-12 months    MAL-ED           NEPAL                          3                    4+                 0.0055690   -0.0290736    0.0402116
9-12 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    4+                -0.0422400   -0.0736220   -0.0108579
9-12 months    MAL-ED           PERU                           2                    4+                 0.0168764   -0.0235449    0.0572976
9-12 months    MAL-ED           PERU                           3                    4+                 0.0208370   -0.0230595    0.0647335
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    4+                 0.0597536   -0.0054061    0.1249132
9-12 months    MAL-ED           SOUTH AFRICA                   2                    4+                -0.0290961   -0.1100321    0.0518399
9-12 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.0152730   -0.0852637    0.0547176
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0594840   -0.1821389    0.0631710
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0398223   -0.0910729    0.0114284
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0130556   -0.0598661    0.0337548
9-12 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0411556   -0.0719221   -0.0103892
9-12 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0351309   -0.0670687   -0.0031932
9-12 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.0106110   -0.0303229    0.0515449
9-12 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    4+                 0.0022431   -0.0464479    0.0509340
9-12 months    PROVIDE          BANGLADESH                     2                    4+                 0.0105368   -0.0439755    0.0650491
9-12 months    PROVIDE          BANGLADESH                     3                    4+                 0.0000519   -0.0555863    0.0556901
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0362050   -0.0263881    0.0987982
12-15 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0185410   -0.0455809    0.0826630
12-15 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0122418   -0.0807394    0.0562559
12-15 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    4+                 0.0145890   -0.0319033    0.0610812
12-15 months   CONTENT          PERU                           2                    4+                 0.0326875   -0.0186970    0.0840720
12-15 months   CONTENT          PERU                           3                    4+                -0.0209369   -0.0730223    0.0311485
12-15 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    4+                -0.0145785   -0.0611408    0.0319839
12-15 months   GMS-Nepal        NEPAL                          2                    4+                 0.0371388    0.0036518    0.0706257
12-15 months   GMS-Nepal        NEPAL                          3                    4+                 0.0179159   -0.0142997    0.0501316
12-15 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    4+                -0.0005424   -0.0527982    0.0517135
12-15 months   IRC              INDIA                          2                    4+                -0.0096937   -0.0614144    0.0420269
12-15 months   IRC              INDIA                          3                    4+                 0.0224296   -0.0405833    0.0854425
12-15 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    4+                -0.0419566   -0.1096395    0.0257263
12-15 months   MAL-ED           BANGLADESH                     2                    4+                -0.0472164   -0.1200864    0.0256537
12-15 months   MAL-ED           BANGLADESH                     3                    4+                -0.0501846   -0.1245720    0.0242027
12-15 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    4+                 0.0063927   -0.0416722    0.0544576
12-15 months   MAL-ED           INDIA                          2                    4+                 0.0081930   -0.0411711    0.0575571
12-15 months   MAL-ED           INDIA                          3                    4+                -0.0172242   -0.0717802    0.0373317
12-15 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    4+                 0.0029471   -0.0509103    0.0568046
12-15 months   MAL-ED           NEPAL                          2                    4+                 0.0049955   -0.0397694    0.0497604
12-15 months   MAL-ED           NEPAL                          3                    4+                -0.0205912   -0.0715526    0.0303702
12-15 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    4+                 0.0429306   -0.0089489    0.0948101
12-15 months   MAL-ED           PERU                           2                    4+                -0.0440288   -0.0873704   -0.0006872
12-15 months   MAL-ED           PERU                           3                    4+                -0.0108470   -0.0540561    0.0323620
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0943783   -0.2588787    0.0701220
12-15 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0280892   -0.1070544    0.0508759
12-15 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0117056   -0.0608336    0.0842448
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.1219573   -0.0073576    0.2512722
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0429499   -0.0228654    0.1087652
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0233454   -0.0341652    0.0808560
12-15 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0194008   -0.0513401    0.0125385
12-15 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0068808   -0.0423009    0.0285393
12-15 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0027161   -0.0483123    0.0428801
12-15 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    4+                -0.0522594   -0.1244272    0.0199084
12-15 months   PROVIDE          BANGLADESH                     2                    4+                -0.0685361   -0.1441302    0.0070581
12-15 months   PROVIDE          BANGLADESH                     3                    4+                -0.0415349   -0.1199406    0.0368709
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0608183   -0.1385653    0.0169286
15-18 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0229017   -0.1053682    0.0595647
15-18 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0432960   -0.1231226    0.0365305
15-18 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    4+                 0.0265480   -0.0207210    0.0738170
15-18 months   CONTENT          PERU                           2                    4+                -0.0193762   -0.0700500    0.0312976
15-18 months   CONTENT          PERU                           3                    4+                 0.0288524   -0.0179651    0.0756698
15-18 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    4+                 0.0182021   -0.0357425    0.0721467
15-18 months   GMS-Nepal        NEPAL                          2                    4+                -0.0152779   -0.0527720    0.0222163
15-18 months   GMS-Nepal        NEPAL                          3                    4+                 0.0079979   -0.0325787    0.0485745
15-18 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    4+                -0.0198711   -0.0751112    0.0353689
15-18 months   IRC              INDIA                          2                    4+                 0.0163129   -0.0386631    0.0712890
15-18 months   IRC              INDIA                          3                    4+                -0.0570341   -0.1220231    0.0079550
15-18 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    4+                 0.0219128   -0.0424030    0.0862285
15-18 months   MAL-ED           BANGLADESH                     2                    4+                 0.0348807   -0.0399878    0.1097493
15-18 months   MAL-ED           BANGLADESH                     3                    4+                 0.0175289   -0.0562189    0.0912767
15-18 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    4+                 0.0145761   -0.0325683    0.0617204
15-18 months   MAL-ED           INDIA                          2                    4+                 0.0053067   -0.0433057    0.0539190
15-18 months   MAL-ED           INDIA                          3                    4+                 0.0323912   -0.0202816    0.0850641
15-18 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    4+                 0.0030156   -0.0425407    0.0485719
15-18 months   MAL-ED           NEPAL                          2                    4+                -0.0024818   -0.0489483    0.0439847
15-18 months   MAL-ED           NEPAL                          3                    4+                 0.0289774   -0.0236282    0.0815831
15-18 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    4+                 0.0018002   -0.0723095    0.0759098
15-18 months   MAL-ED           PERU                           2                    4+                -0.0155065   -0.0714726    0.0404595
15-18 months   MAL-ED           PERU                           3                    4+                -0.0264175   -0.0749679    0.0221330
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0146159   -0.1980202    0.1687885
15-18 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0105066   -0.0818994    0.1029125
15-18 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0707749   -0.1422732    0.0007234
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0463969   -0.0813406    0.1741345
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0296782   -0.0282703    0.0876267
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0373795   -0.0199128    0.0946718
15-18 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0294814   -0.0629496    0.0039868
15-18 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0388230   -0.0758779   -0.0017681
15-18 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0216690   -0.0627302    0.0193923
15-18 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    4+                -0.0630525   -0.1180005   -0.0081045
15-18 months   PROVIDE          BANGLADESH                     2                    4+                -0.0600746   -0.1215293    0.0013801
15-18 months   PROVIDE          BANGLADESH                     3                    4+                -0.0605563   -0.1265600    0.0054473
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0264451   -0.0824589    0.0295688
18-21 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0454134   -0.1122288    0.0214021
18-21 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0122436   -0.0754011    0.0509139
18-21 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    4+                -0.0136395   -0.0629206    0.0356416
18-21 months   CONTENT          PERU                           2                    4+                -0.0171914   -0.0645121    0.0301292
18-21 months   CONTENT          PERU                           3                    4+                -0.0138506   -0.0726514    0.0449502
18-21 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    4+                -0.0580465   -0.1213435    0.0052505
18-21 months   GMS-Nepal        NEPAL                          2                    4+                 0.0339279   -0.0041482    0.0720039
18-21 months   GMS-Nepal        NEPAL                          3                    4+                 0.0198935   -0.0199451    0.0597322
18-21 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    4+                -0.1112736   -0.2144411   -0.0081060
18-21 months   IRC              INDIA                          2                    4+                -0.1063630   -0.2091676   -0.0035584
18-21 months   IRC              INDIA                          3                    4+                -0.1526644   -0.2602281   -0.0451008
18-21 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    4+                -0.0417828   -0.1305787    0.0470131
18-21 months   MAL-ED           BANGLADESH                     2                    4+                -0.0030863   -0.0968200    0.0906475
18-21 months   MAL-ED           BANGLADESH                     3                    4+                -0.0055179   -0.1049526    0.0939168
18-21 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    4+                -0.0128360   -0.0575833    0.0319113
18-21 months   MAL-ED           INDIA                          2                    4+                -0.0408039   -0.0869723    0.0053645
18-21 months   MAL-ED           INDIA                          3                    4+                -0.0567710   -0.1049585   -0.0085836
18-21 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    4+                -0.0285170   -0.0676544    0.0106204
18-21 months   MAL-ED           NEPAL                          2                    4+                -0.0325410   -0.0970686    0.0319865
18-21 months   MAL-ED           NEPAL                          3                    4+                -0.0569601   -0.1336458    0.0197256
18-21 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    4+                 0.0254452   -0.0347863    0.0856767
18-21 months   MAL-ED           PERU                           2                    4+                 0.0025214   -0.0518279    0.0568708
18-21 months   MAL-ED           PERU                           3                    4+                -0.0241196   -0.0693860    0.0211469
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0735432   -0.2188660    0.0717795
18-21 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0216243   -0.0647516    0.1080002
18-21 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0193494   -0.0738306    0.1125293
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0036465   -0.1523989    0.1596920
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0218888   -0.0907549    0.0469773
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0164600   -0.0373357    0.0702558
18-21 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    4+                 0.0004700   -0.0307372    0.0316773
18-21 months   NIH-Crypto       BANGLADESH                     2                    4+                 0.0161374   -0.0189696    0.0512445
18-21 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0045167   -0.0356589    0.0446923
18-21 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    4+                -0.0437153   -0.0939029    0.0064723
18-21 months   PROVIDE          BANGLADESH                     2                    4+                -0.0233635   -0.0802051    0.0334780
18-21 months   PROVIDE          BANGLADESH                     3                    4+                -0.0374200   -0.0978221    0.0229821
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.0057147   -0.0711577    0.0597283
21-24 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0139218   -0.0565031    0.0843467
21-24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0021159   -0.0775453    0.0733134
21-24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    4+                 0.0035187   -0.1503128    0.1573502
21-24 months   CONTENT          PERU                           2                    4+                 0.0940061   -0.0421601    0.2301722
21-24 months   CONTENT          PERU                           3                    4+                -0.0025040   -0.1299032    0.1248951
21-24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    4+                 0.0477340   -0.0460841    0.1415522
21-24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0125501   -0.0755213    0.0504212
21-24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0301360   -0.0910079    0.0307359
21-24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    4+                 0.0079218   -0.0611729    0.0770164
21-24 months   IRC              INDIA                          2                    4+                 0.0025001   -0.0661074    0.0711076
21-24 months   IRC              INDIA                          3                    4+                 0.0312017   -0.0490541    0.1114576
21-24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    4+                 0.0252098   -0.0386626    0.0890822
21-24 months   MAL-ED           BANGLADESH                     2                    4+                 0.0159883   -0.0580814    0.0900580
21-24 months   MAL-ED           BANGLADESH                     3                    4+                 0.0149109   -0.0613212    0.0911430
21-24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    4+                 0.0081845   -0.0385123    0.0548814
21-24 months   MAL-ED           INDIA                          2                    4+                 0.0262403   -0.0216534    0.0741339
21-24 months   MAL-ED           INDIA                          3                    4+                 0.0103749   -0.0379000    0.0586498
21-24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    4+                -0.0052400   -0.0519379    0.0414579
21-24 months   MAL-ED           NEPAL                          2                    4+                 0.0118735   -0.0388048    0.0625517
21-24 months   MAL-ED           NEPAL                          3                    4+                 0.0230334   -0.0467133    0.0927801
21-24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    4+                 0.0131368   -0.0413846    0.0676582
21-24 months   MAL-ED           PERU                           2                    4+                -0.0436475   -0.0966931    0.0093982
21-24 months   MAL-ED           PERU                           3                    4+                 0.0213726   -0.0254327    0.0681779
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.1198662   -0.0090292    0.2487615
21-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0214959   -0.0943724    0.0513806
21-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.0274254   -0.0566576    0.1115085
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1240907   -0.2928932    0.0447119
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0747416   -0.1430309   -0.0064522
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0274081   -0.0933003    0.0384840
21-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0343494   -0.0692944    0.0005955
21-24 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0307056   -0.0686458    0.0072347
21-24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0039725   -0.0439855    0.0519305
21-24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    4+                -0.0119592   -0.0555443    0.0316260
21-24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0080023   -0.0600185    0.0440140
21-24 months   PROVIDE          BANGLADESH                     3                    4+                 0.0227197   -0.0353576    0.0807971


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0334732   -0.1348869    0.0679405
0-3 months     COHORTS          INDIA                          4+                   NA                -0.0747007   -0.1029116   -0.0464899
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0084168   -0.0093320    0.0261656
0-3 months     IRC              INDIA                          4+                   NA                -0.0670180   -0.1354861    0.0014500
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0286225   -0.1411161    0.0838712
0-3 months     MAL-ED           INDIA                          4+                   NA                -0.0172290   -0.0714554    0.0369975
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0078952   -0.0163412    0.0321315
0-3 months     MAL-ED           PERU                           4+                   NA                -0.0132629   -0.0384245    0.0118986
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0057303   -0.0080009    0.0194616
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0132362   -0.0490560    0.0225835
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0086916   -0.0472167    0.0298334
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0255611   -0.1035541    0.0524319
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0534969   -0.1448840    0.0378902
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0451763   -0.0693591   -0.0209935
3-6 months     CONTENT          PERU                           4+                   NA                -0.0106715   -0.0379259    0.0165829
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0083119   -0.0060277    0.0226514
3-6 months     IRC              INDIA                          4+                   NA                 0.0757184    0.0084274    0.1430094
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0007086   -0.0769676    0.0755504
3-6 months     MAL-ED           INDIA                          4+                   NA                 0.0173122   -0.0212121    0.0558366
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0114145   -0.0294323    0.0066033
3-6 months     MAL-ED           PERU                           4+                   NA                 0.0050702   -0.0133642    0.0235046
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0118471   -0.0257361    0.0020418
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0064686   -0.0206684    0.0336055
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0202397   -0.0512632    0.0107838
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                 0.0005994   -0.0465857    0.0477846
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0018284   -0.0468177    0.0431609
6-9 months     COHORTS          INDIA                          4+                   NA                -0.0458748   -0.0667451   -0.0250045
6-9 months     CONTENT          PERU                           4+                   NA                -0.0006794   -0.0252469    0.0238881
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0001480   -0.0126811    0.0129770
6-9 months     IRC              INDIA                          4+                   NA                 0.0357216   -0.0248820    0.0963252
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                -0.0312622   -0.1075315    0.0450070
6-9 months     MAL-ED           INDIA                          4+                   NA                 0.0278547   -0.0076316    0.0633409
6-9 months     MAL-ED           NEPAL                          4+                   NA                 0.0018783   -0.0112936    0.0150501
6-9 months     MAL-ED           PERU                           4+                   NA                -0.0065035   -0.0212206    0.0082136
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0053552   -0.0059751    0.0166855
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0259302   -0.0524163    0.0005560
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0533573   -0.0798370   -0.0268775
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0595233   -0.1062480   -0.0127985
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0354066   -0.0889216    0.0181085
9-12 months    COHORTS          INDIA                          4+                   NA                -0.0538985   -0.0794869   -0.0283101
9-12 months    CONTENT          PERU                           4+                   NA                -0.0156734   -0.0403075    0.0089607
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0057050   -0.0192417    0.0078318
9-12 months    IRC              INDIA                          4+                   NA                 0.0104986   -0.0493947    0.0703920
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                -0.0486404   -0.1268397    0.0295588
9-12 months    MAL-ED           INDIA                          4+                   NA                -0.0095042   -0.0532702    0.0342618
9-12 months    MAL-ED           NEPAL                          4+                   NA                -0.0043528   -0.0173582    0.0086526
9-12 months    MAL-ED           PERU                           4+                   NA                 0.0043747   -0.0102795    0.0190289
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0008095   -0.0116010    0.0099819
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0156043   -0.0377470    0.0065384
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0267617   -0.0518850   -0.0016384
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                 0.0032681   -0.0434590    0.0499952
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0232580   -0.0354565    0.0819726
12-15 months   CONTENT          PERU                           4+                   NA                 0.0074902   -0.0172470    0.0322274
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0110295   -0.0029060    0.0249650
12-15 months   IRC              INDIA                          4+                   NA                -0.0022613   -0.0502812    0.0457586
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0420178   -0.1053321    0.0212965
12-15 months   MAL-ED           INDIA                          4+                   NA                 0.0013556   -0.0376144    0.0403256
12-15 months   MAL-ED           NEPAL                          4+                   NA                -0.0006812   -0.0158969    0.0145344
12-15 months   MAL-ED           PERU                           4+                   NA                -0.0070738   -0.0231667    0.0090191
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0068319   -0.0221231    0.0084593
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0221029   -0.0045505    0.0487563
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0111447   -0.0379164    0.0156270
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0519019   -0.1209709    0.0171670
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0453220   -0.1197875    0.0291435
15-18 months   CONTENT          PERU                           4+                   NA                 0.0056817   -0.0158754    0.0272387
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0000840   -0.0163005    0.0161325
15-18 months   IRC              INDIA                          4+                   NA                -0.0074023   -0.0582807    0.0434761
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0228288   -0.0377845    0.0834421
15-18 months   MAL-ED           INDIA                          4+                   NA                 0.0137155   -0.0249385    0.0523695
15-18 months   MAL-ED           NEPAL                          4+                   NA                 0.0030938   -0.0111569    0.0173446
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0084125   -0.0265594    0.0097345
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0065629   -0.0227677    0.0096418
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0187086   -0.0057152    0.0431324
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0268124   -0.0545070    0.0008823
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0597016   -0.1119932   -0.0074100
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.0285545   -0.0823354    0.0252263
18-21 months   CONTENT          PERU                           4+                   NA                -0.0096741   -0.0357466    0.0163984
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0086972   -0.0080620    0.0254564
18-21 months   IRC              INDIA                          4+                   NA                -0.1083799   -0.2063153   -0.0104445
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0274927   -0.1108851    0.0558996
18-21 months   MAL-ED           INDIA                          4+                   NA                -0.0294632   -0.0654833    0.0065570
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0158687   -0.0319692    0.0002318
18-21 months   MAL-ED           PERU                           4+                   NA                -0.0028389   -0.0199668    0.0142890
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0004201   -0.0158024    0.0149621
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0003306   -0.0267378    0.0260766
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0052435   -0.0198936    0.0303806
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0380784   -0.0858781    0.0097214
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0003819   -0.0619941    0.0627578
21-24 months   CONTENT          PERU                           4+                   NA                 0.0297412   -0.0581539    0.1176364
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0065721   -0.0322799    0.0191356
21-24 months   IRC              INDIA                          4+                   NA                 0.0073765   -0.0571397    0.0718926
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0207895   -0.0392028    0.0807817
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0135572   -0.0251474    0.0522617
21-24 months   MAL-ED           NEPAL                          4+                   NA                 0.0027689   -0.0143798    0.0199175
21-24 months   MAL-ED           PERU                           4+                   NA                -0.0007873   -0.0179707    0.0163961
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0074604   -0.0061612    0.0210820
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0296588   -0.0591649   -0.0001527
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0220483   -0.0493831    0.0052864
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0075020   -0.0490768    0.0340728
