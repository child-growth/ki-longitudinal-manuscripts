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
0-3 months     CMC-V-BCS-2002   INDIA                          4+             4     88
0-3 months     CMC-V-BCS-2002   INDIA                          1             33     88
0-3 months     CMC-V-BCS-2002   INDIA                          2             33     88
0-3 months     CMC-V-BCS-2002   INDIA                          3             18     88
0-3 months     COHORTS          INDIA                          4+            89   4653
0-3 months     COHORTS          INDIA                          1           3049   4653
0-3 months     COHORTS          INDIA                          2           1351   4653
0-3 months     COHORTS          INDIA                          3            164   4653
0-3 months     CONTENT          PERU                           4+            12     29
0-3 months     CONTENT          PERU                           1              6     29
0-3 months     CONTENT          PERU                           2              7     29
0-3 months     CONTENT          PERU                           3              4     29
0-3 months     GMS-Nepal        NEPAL                          4+           242    509
0-3 months     GMS-Nepal        NEPAL                          1             34    509
0-3 months     GMS-Nepal        NEPAL                          2            108    509
0-3 months     GMS-Nepal        NEPAL                          3            125    509
0-3 months     IRC              INDIA                          4+            17    375
0-3 months     IRC              INDIA                          1            171    375
0-3 months     IRC              INDIA                          2            154    375
0-3 months     IRC              INDIA                          3             33    375
0-3 months     MAL-ED           BANGLADESH                     4+            11    236
0-3 months     MAL-ED           BANGLADESH                     1            148    236
0-3 months     MAL-ED           BANGLADESH                     2             49    236
0-3 months     MAL-ED           BANGLADESH                     3             28    236
0-3 months     MAL-ED           BRAZIL                         4+            99    163
0-3 months     MAL-ED           BRAZIL                         1              3    163
0-3 months     MAL-ED           BRAZIL                         2             18    163
0-3 months     MAL-ED           BRAZIL                         3             43    163
0-3 months     MAL-ED           INDIA                          4+            21    177
0-3 months     MAL-ED           INDIA                          1             67    177
0-3 months     MAL-ED           INDIA                          2             62    177
0-3 months     MAL-ED           INDIA                          3             27    177
0-3 months     MAL-ED           NEPAL                          4+            88    155
0-3 months     MAL-ED           NEPAL                          1             32    155
0-3 months     MAL-ED           NEPAL                          2             20    155
0-3 months     MAL-ED           NEPAL                          3             15    155
0-3 months     MAL-ED           PERU                           4+           131    254
0-3 months     MAL-ED           PERU                           1             17    254
0-3 months     MAL-ED           PERU                           2             47    254
0-3 months     MAL-ED           PERU                           3             59    254
0-3 months     MAL-ED           SOUTH AFRICA                   4+           145    198
0-3 months     MAL-ED           SOUTH AFRICA                   1             11    198
0-3 months     MAL-ED           SOUTH AFRICA                   2             19    198
0-3 months     MAL-ED           SOUTH AFRICA                   3             23    198
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            94    225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             13    225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             55    225
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             63    225
0-3 months     NIH-Crypto       BANGLADESH                     4+            91    721
0-3 months     NIH-Crypto       BANGLADESH                     1            345    721
0-3 months     NIH-Crypto       BANGLADESH                     2            183    721
0-3 months     NIH-Crypto       BANGLADESH                     3            102    721
0-3 months     PROVIDE          BANGLADESH                     4+            22    640
0-3 months     PROVIDE          BANGLADESH                     1            458    640
0-3 months     PROVIDE          BANGLADESH                     2            101    640
0-3 months     PROVIDE          BANGLADESH                     3             59    640
3-6 months     CMC-V-BCS-2002   INDIA                          4+            12    307
3-6 months     CMC-V-BCS-2002   INDIA                          1            161    307
3-6 months     CMC-V-BCS-2002   INDIA                          2             86    307
3-6 months     CMC-V-BCS-2002   INDIA                          3             48    307
3-6 months     COHORTS          INDIA                          4+            85   4710
3-6 months     COHORTS          INDIA                          1           3056   4710
3-6 months     COHORTS          INDIA                          2           1396   4710
3-6 months     COHORTS          INDIA                          3            173   4710
3-6 months     CONTENT          PERU                           4+            78    214
3-6 months     CONTENT          PERU                           1             44    214
3-6 months     CONTENT          PERU                           2             54    214
3-6 months     CONTENT          PERU                           3             38    214
3-6 months     GMS-Nepal        NEPAL                          4+           225    469
3-6 months     GMS-Nepal        NEPAL                          1             32    469
3-6 months     GMS-Nepal        NEPAL                          2             96    469
3-6 months     GMS-Nepal        NEPAL                          3            116    469
3-6 months     IRC              INDIA                          4+            17    395
3-6 months     IRC              INDIA                          1            180    395
3-6 months     IRC              INDIA                          2            163    395
3-6 months     IRC              INDIA                          3             35    395
3-6 months     MAL-ED           BANGLADESH                     4+            11    231
3-6 months     MAL-ED           BANGLADESH                     1            145    231
3-6 months     MAL-ED           BANGLADESH                     2             48    231
3-6 months     MAL-ED           BANGLADESH                     3             27    231
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
3-6 months     NIH-Crypto       BANGLADESH                     4+            90    695
3-6 months     NIH-Crypto       BANGLADESH                     1            328    695
3-6 months     NIH-Crypto       BANGLADESH                     2            177    695
3-6 months     NIH-Crypto       BANGLADESH                     3            100    695
3-6 months     PROVIDE          BANGLADESH                     4+            21    598
3-6 months     PROVIDE          BANGLADESH                     1            425    598
3-6 months     PROVIDE          BANGLADESH                     2             94    598
3-6 months     PROVIDE          BANGLADESH                     3             58    598
6-9 months     CMC-V-BCS-2002   INDIA                          4+            14    313
6-9 months     CMC-V-BCS-2002   INDIA                          1            168    313
6-9 months     CMC-V-BCS-2002   INDIA                          2             83    313
6-9 months     CMC-V-BCS-2002   INDIA                          3             48    313
6-9 months     COHORTS          INDIA                          4+            82   4321
6-9 months     COHORTS          INDIA                          1           2778   4321
6-9 months     COHORTS          INDIA                          2           1305   4321
6-9 months     COHORTS          INDIA                          3            156   4321
6-9 months     CONTENT          PERU                           4+            78    214
6-9 months     CONTENT          PERU                           1             44    214
6-9 months     CONTENT          PERU                           2             54    214
6-9 months     CONTENT          PERU                           3             38    214
6-9 months     GMS-Nepal        NEPAL                          4+           228    481
6-9 months     GMS-Nepal        NEPAL                          1             33    481
6-9 months     GMS-Nepal        NEPAL                          2             97    481
6-9 months     GMS-Nepal        NEPAL                          3            123    481
6-9 months     IRC              INDIA                          4+            17    405
6-9 months     IRC              INDIA                          1            183    405
6-9 months     IRC              INDIA                          2            170    405
6-9 months     IRC              INDIA                          3             35    405
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
6-9 months     NIH-Crypto       BANGLADESH                     4+            89    688
6-9 months     NIH-Crypto       BANGLADESH                     1            322    688
6-9 months     NIH-Crypto       BANGLADESH                     2            180    688
6-9 months     NIH-Crypto       BANGLADESH                     3             97    688
6-9 months     PROVIDE          BANGLADESH                     4+            20    565
6-9 months     PROVIDE          BANGLADESH                     1            404    565
6-9 months     PROVIDE          BANGLADESH                     2             87    565
6-9 months     PROVIDE          BANGLADESH                     3             54    565
9-12 months    CMC-V-BCS-2002   INDIA                          4+            14    317
9-12 months    CMC-V-BCS-2002   INDIA                          1            178    317
9-12 months    CMC-V-BCS-2002   INDIA                          2             81    317
9-12 months    CMC-V-BCS-2002   INDIA                          3             44    317
9-12 months    COHORTS          INDIA                          4+            74   3720
9-12 months    COHORTS          INDIA                          1           2349   3720
9-12 months    COHORTS          INDIA                          2           1162   3720
9-12 months    COHORTS          INDIA                          3            135   3720
9-12 months    CONTENT          PERU                           4+            77    212
9-12 months    CONTENT          PERU                           1             44    212
9-12 months    CONTENT          PERU                           2             53    212
9-12 months    CONTENT          PERU                           3             38    212
9-12 months    GMS-Nepal        NEPAL                          4+           223    469
9-12 months    GMS-Nepal        NEPAL                          1             33    469
9-12 months    GMS-Nepal        NEPAL                          2             97    469
9-12 months    GMS-Nepal        NEPAL                          3            116    469
9-12 months    IRC              INDIA                          4+            16    398
9-12 months    IRC              INDIA                          1            181    398
9-12 months    IRC              INDIA                          2            167    398
9-12 months    IRC              INDIA                          3             34    398
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             53    224
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58    224
9-12 months    NIH-Crypto       BANGLADESH                     4+            88    674
9-12 months    NIH-Crypto       BANGLADESH                     1            310    674
9-12 months    NIH-Crypto       BANGLADESH                     2            178    674
9-12 months    NIH-Crypto       BANGLADESH                     3             98    674
9-12 months    PROVIDE          BANGLADESH                     4+            20    566
9-12 months    PROVIDE          BANGLADESH                     1            403    566
9-12 months    PROVIDE          BANGLADESH                     2             89    566
9-12 months    PROVIDE          BANGLADESH                     3             54    566
12-15 months   CMC-V-BCS-2002   INDIA                          4+            13    329
12-15 months   CMC-V-BCS-2002   INDIA                          1            182    329
12-15 months   CMC-V-BCS-2002   INDIA                          2             89    329
12-15 months   CMC-V-BCS-2002   INDIA                          3             45    329
12-15 months   CONTENT          PERU                           4+            70    199
12-15 months   CONTENT          PERU                           1             41    199
12-15 months   CONTENT          PERU                           2             51    199
12-15 months   CONTENT          PERU                           3             37    199
12-15 months   GMS-Nepal        NEPAL                          4+           220    469
12-15 months   GMS-Nepal        NEPAL                          1             34    469
12-15 months   GMS-Nepal        NEPAL                          2            102    469
12-15 months   GMS-Nepal        NEPAL                          3            113    469
12-15 months   IRC              INDIA                          4+            15    388
12-15 months   IRC              INDIA                          1            177    388
12-15 months   IRC              INDIA                          2            162    388
12-15 months   IRC              INDIA                          3             34    388
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             54    226
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58    226
12-15 months   NIH-Crypto       BANGLADESH                     4+            89    660
12-15 months   NIH-Crypto       BANGLADESH                     1            303    660
12-15 months   NIH-Crypto       BANGLADESH                     2            175    660
12-15 months   NIH-Crypto       BANGLADESH                     3             93    660
12-15 months   PROVIDE          BANGLADESH                     4+            20    532
12-15 months   PROVIDE          BANGLADESH                     1            370    532
12-15 months   PROVIDE          BANGLADESH                     2             88    532
12-15 months   PROVIDE          BANGLADESH                     3             54    532
15-18 months   CMC-V-BCS-2002   INDIA                          4+            11    321
15-18 months   CMC-V-BCS-2002   INDIA                          1            172    321
15-18 months   CMC-V-BCS-2002   INDIA                          2             90    321
15-18 months   CMC-V-BCS-2002   INDIA                          3             48    321
15-18 months   CONTENT          PERU                           4+            67    189
15-18 months   CONTENT          PERU                           1             36    189
15-18 months   CONTENT          PERU                           2             49    189
15-18 months   CONTENT          PERU                           3             37    189
15-18 months   GMS-Nepal        NEPAL                          4+           222    480
15-18 months   GMS-Nepal        NEPAL                          1             35    480
15-18 months   GMS-Nepal        NEPAL                          2            106    480
15-18 months   GMS-Nepal        NEPAL                          3            117    480
15-18 months   IRC              INDIA                          4+            15    380
15-18 months   IRC              INDIA                          1            172    380
15-18 months   IRC              INDIA                          2            159    380
15-18 months   IRC              INDIA                          3             34    380
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
15-18 months   MAL-ED           PERU                           4+           112    213
15-18 months   MAL-ED           PERU                           1             17    213
15-18 months   MAL-ED           PERU                           2             37    213
15-18 months   MAL-ED           PERU                           3             47    213
15-18 months   MAL-ED           SOUTH AFRICA                   4+           172    225
15-18 months   MAL-ED           SOUTH AFRICA                   1             13    225
15-18 months   MAL-ED           SOUTH AFRICA                   2             19    225
15-18 months   MAL-ED           SOUTH AFRICA                   3             21    225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+           101    217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1             10    217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             48    217
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             58    217
15-18 months   NIH-Crypto       BANGLADESH                     4+            84    604
15-18 months   NIH-Crypto       BANGLADESH                     1            268    604
15-18 months   NIH-Crypto       BANGLADESH                     2            165    604
15-18 months   NIH-Crypto       BANGLADESH                     3             87    604
15-18 months   PROVIDE          BANGLADESH                     4+            22    528
15-18 months   PROVIDE          BANGLADESH                     1            363    528
15-18 months   PROVIDE          BANGLADESH                     2             87    528
15-18 months   PROVIDE          BANGLADESH                     3             56    528
18-21 months   CMC-V-BCS-2002   INDIA                          4+            11    305
18-21 months   CMC-V-BCS-2002   INDIA                          1            165    305
18-21 months   CMC-V-BCS-2002   INDIA                          2             82    305
18-21 months   CMC-V-BCS-2002   INDIA                          3             47    305
18-21 months   CONTENT          PERU                           4+            66    183
18-21 months   CONTENT          PERU                           1             34    183
18-21 months   CONTENT          PERU                           2             47    183
18-21 months   CONTENT          PERU                           3             36    183
18-21 months   GMS-Nepal        NEPAL                          4+           204    445
18-21 months   GMS-Nepal        NEPAL                          1             30    445
18-21 months   GMS-Nepal        NEPAL                          2            102    445
18-21 months   GMS-Nepal        NEPAL                          3            109    445
18-21 months   IRC              INDIA                          4+            15    377
18-21 months   IRC              INDIA                          1            169    377
18-21 months   IRC              INDIA                          2            161    377
18-21 months   IRC              INDIA                          3             32    377
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            96    204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             44    204
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             55    204
18-21 months   NIH-Crypto       BANGLADESH                     4+            83    546
18-21 months   NIH-Crypto       BANGLADESH                     1            237    546
18-21 months   NIH-Crypto       BANGLADESH                     2            148    546
18-21 months   NIH-Crypto       BANGLADESH                     3             78    546
18-21 months   PROVIDE          BANGLADESH                     4+            21    541
18-21 months   PROVIDE          BANGLADESH                     1            377    541
18-21 months   PROVIDE          BANGLADESH                     2             88    541
18-21 months   PROVIDE          BANGLADESH                     3             55    541
21-24 months   CMC-V-BCS-2002   INDIA                          4+            12    308
21-24 months   CMC-V-BCS-2002   INDIA                          1            169    308
21-24 months   CMC-V-BCS-2002   INDIA                          2             83    308
21-24 months   CMC-V-BCS-2002   INDIA                          3             44    308
21-24 months   CONTENT          PERU                           4+            10     38
21-24 months   CONTENT          PERU                           1              7     38
21-24 months   CONTENT          PERU                           2             12     38
21-24 months   CONTENT          PERU                           3              9     38
21-24 months   GMS-Nepal        NEPAL                          4+           161    342
21-24 months   GMS-Nepal        NEPAL                          1             25    342
21-24 months   GMS-Nepal        NEPAL                          2             74    342
21-24 months   GMS-Nepal        NEPAL                          3             82    342
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+            95    204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              9    204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2             46    204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3             54    204
21-24 months   NIH-Crypto       BANGLADESH                     4+            81    490
21-24 months   NIH-Crypto       BANGLADESH                     1            205    490
21-24 months   NIH-Crypto       BANGLADESH                     2            132    490
21-24 months   NIH-Crypto       BANGLADESH                     3             72    490
21-24 months   PROVIDE          BANGLADESH                     4+            18    471
21-24 months   PROVIDE          BANGLADESH                     1            327    471
21-24 months   PROVIDE          BANGLADESH                     2             80    471
21-24 months   PROVIDE          BANGLADESH                     3             46    471


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

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/108c98e1-9324-4591-86e1-b5e202abea9f/98ec1336-1e6f-4134-8929-2b7bb9b16e2f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/108c98e1-9324-4591-86e1-b5e202abea9f/98ec1336-1e6f-4134-8929-2b7bb9b16e2f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/108c98e1-9324-4591-86e1-b5e202abea9f/98ec1336-1e6f-4134-8929-2b7bb9b16e2f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          4+                   NA                3.6482013   3.5610410   3.7353616
0-3 months     COHORTS          INDIA                          1                    NA                3.4532825   3.4327031   3.4738618
0-3 months     COHORTS          INDIA                          2                    NA                3.5651873   3.5344953   3.5958792
0-3 months     COHORTS          INDIA                          3                    NA                3.5838063   3.4925634   3.6750492
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                3.5673158   3.4916598   3.6429718
0-3 months     GMS-Nepal        NEPAL                          1                    NA                3.5802913   3.3708805   3.7897021
0-3 months     GMS-Nepal        NEPAL                          2                    NA                3.6005355   3.4974949   3.7035762
0-3 months     GMS-Nepal        NEPAL                          3                    NA                3.6639737   3.5619176   3.7660299
0-3 months     IRC              INDIA                          4+                   NA                2.7884160   2.2933872   3.2834448
0-3 months     IRC              INDIA                          1                    NA                3.1421396   2.9848289   3.2994502
0-3 months     IRC              INDIA                          2                    NA                3.1388657   2.9564203   3.3213111
0-3 months     IRC              INDIA                          3                    NA                3.2467999   2.8887621   3.6048376
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                3.1995653   2.9730500   3.4260806
0-3 months     MAL-ED           BANGLADESH                     1                    NA                3.3363980   3.2517415   3.4210545
0-3 months     MAL-ED           BANGLADESH                     2                    NA                3.3590283   3.2116604   3.5063963
0-3 months     MAL-ED           BANGLADESH                     3                    NA                3.4399958   3.2720497   3.6079420
0-3 months     MAL-ED           INDIA                          4+                   NA                3.3369286   3.0836012   3.5902559
0-3 months     MAL-ED           INDIA                          1                    NA                3.3204117   3.1667431   3.4740803
0-3 months     MAL-ED           INDIA                          2                    NA                3.3702511   3.2372977   3.5032044
0-3 months     MAL-ED           INDIA                          3                    NA                3.2600091   2.9999321   3.5200861
0-3 months     MAL-ED           NEPAL                          4+                   NA                3.6064918   3.4852525   3.7277312
0-3 months     MAL-ED           NEPAL                          1                    NA                3.6125912   3.4525873   3.7725951
0-3 months     MAL-ED           NEPAL                          2                    NA                3.7547827   3.4688004   4.0407650
0-3 months     MAL-ED           NEPAL                          3                    NA                3.5499296   3.1779771   3.9218821
0-3 months     MAL-ED           PERU                           4+                   NA                3.1044413   3.0203281   3.1885545
0-3 months     MAL-ED           PERU                           1                    NA                2.8152621   2.5297011   3.1008230
0-3 months     MAL-ED           PERU                           2                    NA                3.0691527   2.9184158   3.2198895
0-3 months     MAL-ED           PERU                           3                    NA                3.0762604   2.9319463   3.2205745
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                3.1801267   3.0567540   3.3034994
0-3 months     MAL-ED           SOUTH AFRICA                   1                    NA                3.0446526   2.7179939   3.3713113
0-3 months     MAL-ED           SOUTH AFRICA                   2                    NA                3.0941277   2.8010833   3.3871721
0-3 months     MAL-ED           SOUTH AFRICA                   3                    NA                3.2004254   2.9445371   3.4563138
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                3.2430744   3.1279810   3.3581678
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                3.2059621   2.9109315   3.5009927
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                3.2198452   3.0750509   3.3646394
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                3.3323890   3.1673395   3.4974385
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                3.0768542   2.9977976   3.1559108
0-3 months     NIH-Crypto       BANGLADESH                     1                    NA                3.1820090   3.1255315   3.2384865
0-3 months     NIH-Crypto       BANGLADESH                     2                    NA                3.0702580   2.9980804   3.1424356
0-3 months     NIH-Crypto       BANGLADESH                     3                    NA                3.1033480   3.0182655   3.1884305
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                3.4385899   3.2169050   3.6602748
0-3 months     PROVIDE          BANGLADESH                     1                    NA                3.2383405   3.1941452   3.2825359
0-3 months     PROVIDE          BANGLADESH                     2                    NA                3.2987070   3.2119810   3.3854329
0-3 months     PROVIDE          BANGLADESH                     3                    NA                3.2701274   3.1545559   3.3856989
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                2.1233582   1.6123257   2.6343907
3-6 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.8065195   1.6672833   1.9457556
3-6 months     CMC-V-BCS-2002   INDIA                          2                    NA                1.7379922   1.5500166   1.9259678
3-6 months     CMC-V-BCS-2002   INDIA                          3                    NA                1.8326177   1.5775689   2.0876666
3-6 months     COHORTS          INDIA                          4+                   NA                1.8985155   1.8205123   1.9765187
3-6 months     COHORTS          INDIA                          1                    NA                1.8327784   1.8155572   1.8499996
3-6 months     COHORTS          INDIA                          2                    NA                1.9107301   1.8847666   1.9366937
3-6 months     COHORTS          INDIA                          3                    NA                1.8422781   1.7676025   1.9169538
3-6 months     CONTENT          PERU                           4+                   NA                2.0348570   1.9559972   2.1137168
3-6 months     CONTENT          PERU                           1                    NA                1.9585537   1.8663040   2.0508034
3-6 months     CONTENT          PERU                           2                    NA                2.1984436   2.1050066   2.2918805
3-6 months     CONTENT          PERU                           3                    NA                2.1685325   2.0560500   2.2810150
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                1.6754898   1.6188532   1.7321265
3-6 months     GMS-Nepal        NEPAL                          1                    NA                1.7351789   1.6086924   1.8616654
3-6 months     GMS-Nepal        NEPAL                          2                    NA                1.7541830   1.6751342   1.8332318
3-6 months     GMS-Nepal        NEPAL                          3                    NA                1.7316821   1.6447216   1.8186427
3-6 months     IRC              INDIA                          4+                   NA                1.9259663   1.6390352   2.2128973
3-6 months     IRC              INDIA                          1                    NA                1.8402307   1.7534304   1.9270309
3-6 months     IRC              INDIA                          2                    NA                1.9232198   1.8173790   2.0290607
3-6 months     IRC              INDIA                          3                    NA                1.8149814   1.5925397   2.0374230
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                1.8899371   1.7132080   2.0666662
3-6 months     MAL-ED           BANGLADESH                     1                    NA                1.9197022   1.8540629   1.9853415
3-6 months     MAL-ED           BANGLADESH                     2                    NA                1.9735053   1.8745872   2.0724233
3-6 months     MAL-ED           BANGLADESH                     3                    NA                1.9040974   1.7504830   2.0577118
3-6 months     MAL-ED           INDIA                          4+                   NA                1.8900475   1.6956772   2.0844178
3-6 months     MAL-ED           INDIA                          1                    NA                1.8882096   1.7731442   2.0032750
3-6 months     MAL-ED           INDIA                          2                    NA                1.8673425   1.7720083   1.9626766
3-6 months     MAL-ED           INDIA                          3                    NA                1.9416753   1.7953006   2.0880501
3-6 months     MAL-ED           NEPAL                          4+                   NA                2.0125008   1.9391413   2.0858603
3-6 months     MAL-ED           NEPAL                          1                    NA                1.9297048   1.7993564   2.0600532
3-6 months     MAL-ED           NEPAL                          2                    NA                1.8604013   1.7141581   2.0066446
3-6 months     MAL-ED           NEPAL                          3                    NA                1.9050815   1.7368249   2.0733381
3-6 months     MAL-ED           PERU                           4+                   NA                1.9180311   1.8355903   2.0004718
3-6 months     MAL-ED           PERU                           1                    NA                2.2481347   2.0446168   2.4516526
3-6 months     MAL-ED           PERU                           2                    NA                2.0972149   1.9135919   2.2808380
3-6 months     MAL-ED           PERU                           3                    NA                2.0957867   1.9539713   2.2376021
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                1.9888221   1.8956251   2.0820191
3-6 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.8074142   1.5860165   2.0288119
3-6 months     MAL-ED           SOUTH AFRICA                   2                    NA                2.0643718   1.7801038   2.3486397
3-6 months     MAL-ED           SOUTH AFRICA                   3                    NA                1.8828571   1.6270322   2.1386821
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.8621236   1.7662340   1.9580132
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7921954   1.4231734   2.1612174
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                1.8027745   1.6533419   1.9522071
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                1.8104426   1.6847114   1.9361739
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                2.0659737   1.9594200   2.1725273
3-6 months     NIH-Crypto       BANGLADESH                     1                    NA                1.9566965   1.9080692   2.0053237
3-6 months     NIH-Crypto       BANGLADESH                     2                    NA                2.0095019   1.9351114   2.0838924
3-6 months     NIH-Crypto       BANGLADESH                     3                    NA                2.1061320   1.9999365   2.2123275
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                1.9907720   1.8324796   2.1490644
3-6 months     PROVIDE          BANGLADESH                     1                    NA                1.9631293   1.9227565   2.0035020
3-6 months     PROVIDE          BANGLADESH                     2                    NA                1.9534568   1.8693074   2.0376063
3-6 months     PROVIDE          BANGLADESH                     3                    NA                1.9957734   1.8838738   2.1076730
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                1.0452315   0.8074497   1.2830132
6-9 months     CMC-V-BCS-2002   INDIA                          1                    NA                1.2528243   1.1405958   1.3650528
6-9 months     CMC-V-BCS-2002   INDIA                          2                    NA                1.2289743   1.0891033   1.3688454
6-9 months     CMC-V-BCS-2002   INDIA                          3                    NA                1.1232135   0.9330333   1.3133937
6-9 months     COHORTS          INDIA                          4+                   NA                1.3223234   1.2554350   1.3892118
6-9 months     COHORTS          INDIA                          1                    NA                1.1615710   1.1454378   1.1777042
6-9 months     COHORTS          INDIA                          2                    NA                1.2089073   1.1853308   1.2324837
6-9 months     COHORTS          INDIA                          3                    NA                1.2371515   1.1765207   1.2977823
6-9 months     CONTENT          PERU                           4+                   NA                1.4426326   1.3733458   1.5119194
6-9 months     CONTENT          PERU                           1                    NA                1.3898211   1.2776331   1.5020092
6-9 months     CONTENT          PERU                           2                    NA                1.2848515   1.1783464   1.3913565
6-9 months     CONTENT          PERU                           3                    NA                1.4734001   1.3850034   1.5617969
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                1.2960172   1.2333353   1.3586992
6-9 months     GMS-Nepal        NEPAL                          1                    NA                1.3350781   1.2472907   1.4228655
6-9 months     GMS-Nepal        NEPAL                          2                    NA                1.3213424   1.2255323   1.4171525
6-9 months     GMS-Nepal        NEPAL                          3                    NA                1.3484126   1.2743700   1.4224552
6-9 months     IRC              INDIA                          4+                   NA                1.3643504   1.1717195   1.5569814
6-9 months     IRC              INDIA                          1                    NA                1.3526088   1.2898528   1.4153647
6-9 months     IRC              INDIA                          2                    NA                1.4022076   1.3193562   1.4850591
6-9 months     IRC              INDIA                          3                    NA                1.3154761   1.1235708   1.5073815
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                1.4122311   1.2959756   1.5284865
6-9 months     MAL-ED           BANGLADESH                     1                    NA                1.2371515   1.1858533   1.2884498
6-9 months     MAL-ED           BANGLADESH                     2                    NA                1.2316424   1.1399310   1.3233538
6-9 months     MAL-ED           BANGLADESH                     3                    NA                1.2664669   1.1710141   1.3619196
6-9 months     MAL-ED           INDIA                          4+                   NA                1.1617918   1.0207549   1.3028288
6-9 months     MAL-ED           INDIA                          1                    NA                1.2785912   1.1766548   1.3805275
6-9 months     MAL-ED           INDIA                          2                    NA                1.2816046   1.1984965   1.3647128
6-9 months     MAL-ED           INDIA                          3                    NA                1.1796841   1.0908105   1.2685577
6-9 months     MAL-ED           NEPAL                          4+                   NA                1.3720660   1.3108280   1.4333040
6-9 months     MAL-ED           NEPAL                          1                    NA                1.3118860   1.2169476   1.4068245
6-9 months     MAL-ED           NEPAL                          2                    NA                1.4022687   1.2991214   1.5054161
6-9 months     MAL-ED           NEPAL                          3                    NA                1.3075089   1.1721089   1.4429090
6-9 months     MAL-ED           PERU                           4+                   NA                1.2891282   1.2188055   1.3594509
6-9 months     MAL-ED           PERU                           1                    NA                1.4801556   1.2468067   1.7135044
6-9 months     MAL-ED           PERU                           2                    NA                1.3750404   1.2316081   1.5184726
6-9 months     MAL-ED           PERU                           3                    NA                1.2920721   1.1847853   1.3993589
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                1.3930276   1.3204730   1.4655822
6-9 months     MAL-ED           SOUTH AFRICA                   1                    NA                1.1936520   0.9193338   1.4679701
6-9 months     MAL-ED           SOUTH AFRICA                   2                    NA                1.3846282   1.1300958   1.6391607
6-9 months     MAL-ED           SOUTH AFRICA                   3                    NA                1.3180480   1.1356665   1.5004296
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                1.1857829   1.0488787   1.3226870
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1850547   0.8402674   1.5298420
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1787680   1.0625878   1.2949481
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                1.2114217   1.0760637   1.3467797
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                1.3695105   1.2798386   1.4591824
6-9 months     NIH-Crypto       BANGLADESH                     1                    NA                1.3405193   1.2989060   1.3821326
6-9 months     NIH-Crypto       BANGLADESH                     2                    NA                1.2954207   1.2362506   1.3545909
6-9 months     NIH-Crypto       BANGLADESH                     3                    NA                1.3107220   1.2364122   1.3850318
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                1.3612211   1.2079587   1.5144835
6-9 months     PROVIDE          BANGLADESH                     1                    NA                1.2688346   1.2394560   1.2982131
6-9 months     PROVIDE          BANGLADESH                     2                    NA                1.3073843   1.2409160   1.3738526
6-9 months     PROVIDE          BANGLADESH                     3                    NA                1.3146375   1.2352027   1.3940723
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                1.0631500   0.7674236   1.3588765
9-12 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.8699331   0.7857486   0.9541176
9-12 months    CMC-V-BCS-2002   INDIA                          2                    NA                0.9436169   0.7746697   1.1125641
9-12 months    CMC-V-BCS-2002   INDIA                          3                    NA                0.8859872   0.7593290   1.0126454
9-12 months    COHORTS          INDIA                          4+                   NA                1.0998614   1.0299100   1.1698127
9-12 months    COHORTS          INDIA                          1                    NA                0.9587509   0.9413036   0.9761983
9-12 months    COHORTS          INDIA                          2                    NA                1.0201224   0.9949594   1.0452855
9-12 months    COHORTS          INDIA                          3                    NA                1.0703410   1.0022087   1.1384733
9-12 months    CONTENT          PERU                           4+                   NA                1.2064494   1.1370205   1.2758783
9-12 months    CONTENT          PERU                           1                    NA                1.1394499   1.0633255   1.2155743
9-12 months    CONTENT          PERU                           2                    NA                1.2081077   1.1203283   1.2958871
9-12 months    CONTENT          PERU                           3                    NA                1.2729414   1.1959965   1.3498862
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                1.0051710   0.9562819   1.0540602
9-12 months    GMS-Nepal        NEPAL                          1                    NA                0.9463532   0.8403508   1.0523555
9-12 months    GMS-Nepal        NEPAL                          2                    NA                0.9307482   0.8484422   1.0130543
9-12 months    GMS-Nepal        NEPAL                          3                    NA                1.0566640   1.0066233   1.1067047
9-12 months    IRC              INDIA                          4+                   NA                1.0303783   0.8845176   1.1762391
9-12 months    IRC              INDIA                          1                    NA                1.1259300   1.0701733   1.1816866
9-12 months    IRC              INDIA                          2                    NA                1.1586905   1.0943911   1.2229899
9-12 months    IRC              INDIA                          3                    NA                1.0197702   0.8912354   1.1483050
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                0.9098553   0.7254700   1.0942406
9-12 months    MAL-ED           BANGLADESH                     1                    NA                0.9895101   0.9412830   1.0377372
9-12 months    MAL-ED           BANGLADESH                     2                    NA                1.0138745   0.9247721   1.1029769
9-12 months    MAL-ED           BANGLADESH                     3                    NA                0.9842800   0.8775280   1.0910319
9-12 months    MAL-ED           INDIA                          4+                   NA                0.9033871   0.7922476   1.0145267
9-12 months    MAL-ED           INDIA                          1                    NA                1.0189393   0.9523023   1.0855762
9-12 months    MAL-ED           INDIA                          2                    NA                0.9423037   0.8802972   1.0043102
9-12 months    MAL-ED           INDIA                          3                    NA                1.0200960   0.9360025   1.1041894
9-12 months    MAL-ED           NEPAL                          4+                   NA                1.0680982   1.0119275   1.1242689
9-12 months    MAL-ED           NEPAL                          1                    NA                1.1272939   1.0326084   1.2219794
9-12 months    MAL-ED           NEPAL                          2                    NA                1.1214399   1.0352332   1.2076466
9-12 months    MAL-ED           NEPAL                          3                    NA                1.0838180   0.9634017   1.2042343
9-12 months    MAL-ED           PERU                           4+                   NA                1.1563680   1.0837597   1.2289763
9-12 months    MAL-ED           PERU                           1                    NA                0.9511690   0.8273299   1.0750081
9-12 months    MAL-ED           PERU                           2                    NA                1.0082223   0.8947985   1.1216461
9-12 months    MAL-ED           PERU                           3                    NA                1.0871088   0.9793893   1.1948283
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                1.0225883   0.9512652   1.0939115
9-12 months    MAL-ED           SOUTH AFRICA                   1                    NA                1.0437763   0.8632906   1.2242619
9-12 months    MAL-ED           SOUTH AFRICA                   2                    NA                1.1366543   0.9062559   1.3670526
9-12 months    MAL-ED           SOUTH AFRICA                   3                    NA                0.8444426   0.5808910   1.1079942
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8212768   0.6862555   0.9562982
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8787955   0.5490360   1.2085549
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7904889   0.6394992   0.9414787
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8069520   0.6699409   0.9439631
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                1.1440126   1.0761224   1.2119028
9-12 months    NIH-Crypto       BANGLADESH                     1                    NA                1.1197784   1.0793858   1.1601710
9-12 months    NIH-Crypto       BANGLADESH                     2                    NA                1.0980988   1.0487282   1.1474693
9-12 months    NIH-Crypto       BANGLADESH                     3                    NA                1.1628142   1.0966397   1.2289887
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                1.0555919   0.9125267   1.1986572
9-12 months    PROVIDE          BANGLADESH                     1                    NA                1.0428609   1.0114426   1.0742791
9-12 months    PROVIDE          BANGLADESH                     2                    NA                1.0535723   0.9804369   1.1267078
9-12 months    PROVIDE          BANGLADESH                     3                    NA                1.0950582   1.0091794   1.1809369
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.7991604   0.6455485   0.9527722
12-15 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.8371670   0.7498754   0.9244585
12-15 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.8436890   0.6870357   1.0003423
12-15 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.9537273   0.7648190   1.1426356
12-15 months   CONTENT          PERU                           4+                   NA                0.9199918   0.8459794   0.9940042
12-15 months   CONTENT          PERU                           1                    NA                0.9417396   0.8471198   1.0363595
12-15 months   CONTENT          PERU                           2                    NA                0.9396169   0.8625300   1.0167038
12-15 months   CONTENT          PERU                           3                    NA                0.9180680   0.8181270   1.0180089
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                0.8998011   0.8526161   0.9469861
12-15 months   GMS-Nepal        NEPAL                          1                    NA                0.8278550   0.7315481   0.9241618
12-15 months   GMS-Nepal        NEPAL                          2                    NA                0.8631547   0.8134843   0.9128252
12-15 months   GMS-Nepal        NEPAL                          3                    NA                0.8711185   0.8158519   0.9263850
12-15 months   IRC              INDIA                          4+                   NA                0.8754554   0.7611143   0.9897964
12-15 months   IRC              INDIA                          1                    NA                0.9403005   0.8865541   0.9940470
12-15 months   IRC              INDIA                          2                    NA                0.9842858   0.9107321   1.0578394
12-15 months   IRC              INDIA                          3                    NA                0.9616789   0.8169762   1.1063816
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                1.0660402   0.9246739   1.2074065
12-15 months   MAL-ED           BANGLADESH                     1                    NA                0.9033781   0.8538477   0.9529084
12-15 months   MAL-ED           BANGLADESH                     2                    NA                0.8688802   0.7761163   0.9616442
12-15 months   MAL-ED           BANGLADESH                     3                    NA                0.9784313   0.8555062   1.1013564
12-15 months   MAL-ED           INDIA                          4+                   NA                1.0282198   0.9151570   1.1412825
12-15 months   MAL-ED           INDIA                          1                    NA                0.8643813   0.7964725   0.9322901
12-15 months   MAL-ED           INDIA                          2                    NA                0.9386261   0.8733032   1.0039489
12-15 months   MAL-ED           INDIA                          3                    NA                0.8836485   0.8012052   0.9660918
12-15 months   MAL-ED           NEPAL                          4+                   NA                0.9558812   0.9059010   1.0058615
12-15 months   MAL-ED           NEPAL                          1                    NA                0.8527043   0.7723313   0.9330773
12-15 months   MAL-ED           NEPAL                          2                    NA                1.0691939   0.9429814   1.1954063
12-15 months   MAL-ED           NEPAL                          3                    NA                0.9746074   0.8559914   1.0932235
12-15 months   MAL-ED           PERU                           4+                   NA                0.8629370   0.7976036   0.9282705
12-15 months   MAL-ED           PERU                           1                    NA                0.8740759   0.6761868   1.0719650
12-15 months   MAL-ED           PERU                           2                    NA                0.9206558   0.7989575   1.0423541
12-15 months   MAL-ED           PERU                           3                    NA                0.9404087   0.8668276   1.0139898
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.9114270   0.8441663   0.9786877
12-15 months   MAL-ED           SOUTH AFRICA                   1                    NA                1.1829101   0.9943505   1.3714697
12-15 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.8671457   0.6853116   1.0489799
12-15 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.8621427   0.6916999   1.0325856
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.8641977   0.7680286   0.9603668
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                1.0782318   0.7870544   1.3694093
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7542533   0.6113511   0.8971554
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.8954108   0.7879789   1.0028426
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                1.0071141   0.9429636   1.0712645
12-15 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9547043   0.9183296   0.9910791
12-15 months   NIH-Crypto       BANGLADESH                     2                    NA                0.9657616   0.9180408   1.0134824
12-15 months   NIH-Crypto       BANGLADESH                     3                    NA                1.0003785   0.9342401   1.0665169
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                1.0474300   0.9024617   1.1923982
12-15 months   PROVIDE          BANGLADESH                     1                    NA                0.9467012   0.9151415   0.9782608
12-15 months   PROVIDE          BANGLADESH                     2                    NA                0.9984601   0.9373325   1.0595877
12-15 months   PROVIDE          BANGLADESH                     3                    NA                0.9536019   0.8736448   1.0335589
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.9456881   0.7442111   1.1471651
15-18 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6767495   0.6008310   0.7526680
15-18 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.7990327   0.6570640   0.9410014
15-18 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.7681210   0.6028960   0.9333461
15-18 months   CONTENT          PERU                           4+                   NA                1.0043398   0.9242827   1.0843970
15-18 months   CONTENT          PERU                           1                    NA                0.9755167   0.8868228   1.0642107
15-18 months   CONTENT          PERU                           2                    NA                1.0150450   0.9233627   1.1067272
15-18 months   CONTENT          PERU                           3                    NA                0.9246433   0.8245243   1.0247622
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                0.7193130   0.6614128   0.7772132
15-18 months   GMS-Nepal        NEPAL                          1                    NA                0.7627662   0.6818334   0.8436990
15-18 months   GMS-Nepal        NEPAL                          2                    NA                0.7826980   0.7250170   0.8403790
15-18 months   GMS-Nepal        NEPAL                          3                    NA                0.7950997   0.7260204   0.8641789
15-18 months   IRC              INDIA                          4+                   NA                0.7606098   0.5790089   0.9422107
15-18 months   IRC              INDIA                          1                    NA                0.8579091   0.7943890   0.9214291
15-18 months   IRC              INDIA                          2                    NA                0.8677576   0.8101218   0.9253933
15-18 months   IRC              INDIA                          3                    NA                0.8691703   0.7658292   0.9725115
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                0.8822792   0.7233512   1.0412072
15-18 months   MAL-ED           BANGLADESH                     1                    NA                0.8178479   0.7740710   0.8616248
15-18 months   MAL-ED           BANGLADESH                     2                    NA                0.8097610   0.7177258   0.9017963
15-18 months   MAL-ED           BANGLADESH                     3                    NA                0.8555322   0.7393533   0.9717110
15-18 months   MAL-ED           INDIA                          4+                   NA                0.7616401   0.6617995   0.8614807
15-18 months   MAL-ED           INDIA                          1                    NA                0.8828940   0.8194087   0.9463793
15-18 months   MAL-ED           INDIA                          2                    NA                0.7837428   0.7248859   0.8425996
15-18 months   MAL-ED           INDIA                          3                    NA                0.9141275   0.8372318   0.9910233
15-18 months   MAL-ED           NEPAL                          4+                   NA                0.8293816   0.7769351   0.8818280
15-18 months   MAL-ED           NEPAL                          1                    NA                0.8511867   0.7674447   0.9349286
15-18 months   MAL-ED           NEPAL                          2                    NA                0.8168686   0.6828904   0.9508467
15-18 months   MAL-ED           NEPAL                          3                    NA                0.9186205   0.7699976   1.0672434
15-18 months   MAL-ED           PERU                           4+                   NA                0.8640171   0.8054168   0.9226174
15-18 months   MAL-ED           PERU                           1                    NA                0.7564213   0.6401080   0.8727346
15-18 months   MAL-ED           PERU                           2                    NA                0.8125445   0.7151615   0.9099275
15-18 months   MAL-ED           PERU                           3                    NA                0.8954792   0.8004555   0.9905029
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.8885899   0.8280965   0.9490833
15-18 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8835606   0.7008847   1.0662365
15-18 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.9131640   0.7339484   1.0923795
15-18 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.8540447   0.6711829   1.0369065
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.6792232   0.5928517   0.7655946
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6753822   0.3304301   1.0203344
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.7265590   0.5926214   0.8604967
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.6688639   0.5522750   0.7854529
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.9349455   0.8806905   0.9892004
15-18 months   NIH-Crypto       BANGLADESH                     1                    NA                0.9077507   0.8713935   0.9441079
15-18 months   NIH-Crypto       BANGLADESH                     2                    NA                0.8964783   0.8554149   0.9375417
15-18 months   NIH-Crypto       BANGLADESH                     3                    NA                0.9720621   0.9100818   1.0340425
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                0.9068840   0.7663472   1.0474207
15-18 months   PROVIDE          BANGLADESH                     1                    NA                0.8592392   0.8305585   0.8879199
15-18 months   PROVIDE          BANGLADESH                     2                    NA                0.8232191   0.7662302   0.8802080
15-18 months   PROVIDE          BANGLADESH                     3                    NA                0.8668818   0.7899258   0.9438377
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.9142892   0.6560286   1.1725498
18-21 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6505813   0.5692324   0.7319303
18-21 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.7857722   0.6598483   0.9116960
18-21 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.6736411   0.4863260   0.8609562
18-21 months   CONTENT          PERU                           4+                   NA                0.9508030   0.8739645   1.0276416
18-21 months   CONTENT          PERU                           1                    NA                0.8764324   0.7625200   0.9903449
18-21 months   CONTENT          PERU                           2                    NA                0.8599982   0.7830792   0.9369172
18-21 months   CONTENT          PERU                           3                    NA                0.9557324   0.8733765   1.0380882
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                0.9053764   0.8478175   0.9629353
18-21 months   GMS-Nepal        NEPAL                          1                    NA                0.8824780   0.7808823   0.9840736
18-21 months   GMS-Nepal        NEPAL                          2                    NA                0.8813347   0.8359675   0.9267019
18-21 months   GMS-Nepal        NEPAL                          3                    NA                0.9281307   0.8575649   0.9986966
18-21 months   IRC              INDIA                          4+                   NA                0.9417911   0.7182980   1.1652841
18-21 months   IRC              INDIA                          1                    NA                0.7385618   0.6809381   0.7961854
18-21 months   IRC              INDIA                          2                    NA                0.7795478   0.7230668   0.8360287
18-21 months   IRC              INDIA                          3                    NA                0.6997208   0.5646436   0.8347979
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                0.9368322   0.7840240   1.0896405
18-21 months   MAL-ED           BANGLADESH                     1                    NA                0.7835890   0.7439325   0.8232456
18-21 months   MAL-ED           BANGLADESH                     2                    NA                0.8483699   0.7547609   0.9419788
18-21 months   MAL-ED           BANGLADESH                     3                    NA                0.8558259   0.7627508   0.9489011
18-21 months   MAL-ED           INDIA                          4+                   NA                0.9181033   0.8328471   1.0033595
18-21 months   MAL-ED           INDIA                          1                    NA                0.9110055   0.8499895   0.9720215
18-21 months   MAL-ED           INDIA                          2                    NA                0.8430097   0.7794386   0.9065808
18-21 months   MAL-ED           INDIA                          3                    NA                0.8561009   0.7821183   0.9300836
18-21 months   MAL-ED           NEPAL                          4+                   NA                0.8523692   0.8028323   0.9019061
18-21 months   MAL-ED           NEPAL                          1                    NA                0.8191795   0.7376168   0.9007421
18-21 months   MAL-ED           NEPAL                          2                    NA                0.8264515   0.7335001   0.9194030
18-21 months   MAL-ED           NEPAL                          3                    NA                0.6080537   0.4801131   0.7359943
18-21 months   MAL-ED           PERU                           4+                   NA                0.8777233   0.8168879   0.9385587
18-21 months   MAL-ED           PERU                           1                    NA                0.7945863   0.6807630   0.9084096
18-21 months   MAL-ED           PERU                           2                    NA                0.8311842   0.7174744   0.9448941
18-21 months   MAL-ED           PERU                           3                    NA                0.7752461   0.6773500   0.8731422
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.7939765   0.7284764   0.8594767
18-21 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.7739941   0.5820365   0.9659518
18-21 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.7645295   0.6111660   0.9178931
18-21 months   MAL-ED           SOUTH AFRICA                   3                    NA                0.7076288   0.5294176   0.8858400
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7435774   0.6524664   0.8346885
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7995370   0.3703102   1.2287638
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6799996   0.5289758   0.8310234
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7857515   0.6534590   0.9180439
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.8689526   0.8100361   0.9278691
18-21 months   NIH-Crypto       BANGLADESH                     1                    NA                0.7571527   0.7213954   0.7929099
18-21 months   NIH-Crypto       BANGLADESH                     2                    NA                0.7943596   0.7483587   0.8403605
18-21 months   NIH-Crypto       BANGLADESH                     3                    NA                0.8519484   0.8001679   0.9037289
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                1.0063592   0.8933119   1.1194066
18-21 months   PROVIDE          BANGLADESH                     1                    NA                0.8195666   0.7904839   0.8486492
18-21 months   PROVIDE          BANGLADESH                     2                    NA                0.8560584   0.7992979   0.9128189
18-21 months   PROVIDE          BANGLADESH                     3                    NA                0.8843346   0.8156049   0.9530643
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                0.7049902   0.4543715   0.9556088
21-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7281958   0.6498352   0.8065563
21-24 months   CMC-V-BCS-2002   INDIA                          2                    NA                0.6707848   0.5390351   0.8025345
21-24 months   CMC-V-BCS-2002   INDIA                          3                    NA                0.6933824   0.5287108   0.8580539
21-24 months   CONTENT          PERU                           4+                   NA                0.8723352   0.7299557   1.0147147
21-24 months   CONTENT          PERU                           1                    NA                0.8823901   0.6161633   1.1486170
21-24 months   CONTENT          PERU                           2                    NA                0.9111434   0.7974266   1.0248603
21-24 months   CONTENT          PERU                           3                    NA                1.0776957   0.9629678   1.1924236
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                0.8168131   0.7411404   0.8924857
21-24 months   GMS-Nepal        NEPAL                          1                    NA                0.6119018   0.5150174   0.7087862
21-24 months   GMS-Nepal        NEPAL                          2                    NA                0.8041248   0.7228121   0.8854374
21-24 months   GMS-Nepal        NEPAL                          3                    NA                0.8165730   0.7335152   0.8996308
21-24 months   IRC              INDIA                          4+                   NA                0.6433111   0.4982252   0.7883970
21-24 months   IRC              INDIA                          1                    NA                0.6809430   0.6217156   0.7401705
21-24 months   IRC              INDIA                          2                    NA                0.7654360   0.6985461   0.8323259
21-24 months   IRC              INDIA                          3                    NA                0.6100325   0.4887108   0.7313542
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                0.7429798   0.6498336   0.8361259
21-24 months   MAL-ED           BANGLADESH                     1                    NA                0.7576316   0.7133011   0.8019621
21-24 months   MAL-ED           BANGLADESH                     2                    NA                0.8365071   0.7504820   0.9225322
21-24 months   MAL-ED           BANGLADESH                     3                    NA                0.7400340   0.6383650   0.8417029
21-24 months   MAL-ED           INDIA                          4+                   NA                0.7502285   0.6625112   0.8379459
21-24 months   MAL-ED           INDIA                          1                    NA                0.8421422   0.7876408   0.8966436
21-24 months   MAL-ED           INDIA                          2                    NA                0.8399620   0.7841670   0.8957570
21-24 months   MAL-ED           INDIA                          3                    NA                0.8140434   0.7584666   0.8696203
21-24 months   MAL-ED           NEPAL                          4+                   NA                0.7906142   0.7358867   0.8453418
21-24 months   MAL-ED           NEPAL                          1                    NA                0.7286715   0.6367974   0.8205456
21-24 months   MAL-ED           NEPAL                          2                    NA                0.7891992   0.6964553   0.8819431
21-24 months   MAL-ED           NEPAL                          3                    NA                0.8500536   0.7106849   0.9894223
21-24 months   MAL-ED           PERU                           4+                   NA                0.7332463   0.6744778   0.7920148
21-24 months   MAL-ED           PERU                           1                    NA                0.8661561   0.6685370   1.0637752
21-24 months   MAL-ED           PERU                           2                    NA                0.8209871   0.6931079   0.9488663
21-24 months   MAL-ED           PERU                           3                    NA                0.7528710   0.6508236   0.8549184
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                0.8103763   0.7568944   0.8638582
21-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.8092633   0.6256525   0.9928742
21-24 months   MAL-ED           SOUTH AFRICA                   2                    NA                0.9345852   0.7758871   1.0932832
21-24 months   MAL-ED           SOUTH AFRICA                   3                    NA                1.0148028   0.7500030   1.2796026
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.7905556   0.6956631   0.8854481
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6457188   0.3143334   0.9771041
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5517181   0.3978775   0.7055586
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    NA                0.7475741   0.6536756   0.8414726
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                0.7843297   0.7255011   0.8431583
21-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.8038946   0.7648046   0.8429846
21-24 months   NIH-Crypto       BANGLADESH                     2                    NA                0.7888125   0.7411972   0.8364278
21-24 months   NIH-Crypto       BANGLADESH                     3                    NA                0.8225273   0.7639505   0.8811042
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                0.8353397   0.7116344   0.9590449
21-24 months   PROVIDE          BANGLADESH                     1                    NA                0.7618563   0.7315396   0.7921730
21-24 months   PROVIDE          BANGLADESH                     2                    NA                0.7661019   0.7077557   0.8244481
21-24 months   PROVIDE          BANGLADESH                     3                    NA                0.7388528   0.6477604   0.8299452


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     COHORTS          INDIA                          NA                   NA                3.4941028   3.4773973   3.5108084
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1339697   3.0229598   3.2449797
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6214116   3.5288934   3.7139297
0-3 months     MAL-ED           PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2602600   3.1826202   3.3378997
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     COHORTS          INDIA                          NA                   NA                1.8574178   1.8434023   1.8714334
3-6 months     CONTENT          PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8759294   1.8124309   1.9394280
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9644601   1.9083113   2.0206088
3-6 months     MAL-ED           PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2173381   1.1398153   1.2948610
6-9 months     COHORTS          INDIA                          NA                   NA                1.1816465   1.1687340   1.1945589
6-9 months     CONTENT          PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3172026   1.2765236   1.3578817
6-9 months     IRC              INDIA                          NA                   NA                1.3707119   1.3221131   1.4193108
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3571408   1.3129874   1.4012943
6-9 months     MAL-ED           PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1907556   1.1129385   1.2685726
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.8995224   0.8316661   0.9673787
9-12 months    COHORTS          INDIA                          NA                   NA                0.9847780   0.9708596   0.9986963
9-12 months    CONTENT          PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9983761   0.9658898   1.0308625
9-12 months    IRC              INDIA                          NA                   NA                1.1267660   1.0874844   1.1660476
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0892372   1.0484769   1.1299974
9-12 months    MAL-ED           PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8131077   0.7319679   0.8942474
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8533724   0.7837188   0.9230260
12-15 months   CONTENT          PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8797046   0.8507834   0.9086259
12-15 months   IRC              INDIA                          NA                   NA                0.9580320   0.9164204   0.9996435
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9514124   0.9120195   0.9908054
12-15 months   MAL-ED           PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8563558   0.7920248   0.9206869
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7339135   0.6710399   0.7967871
15-18 months   CONTENT          PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8591967   0.8198344   0.8985590
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8408362   0.7994023   0.8822700
15-18 months   MAL-ED           PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6867479   0.6257076   0.7477883
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6999920   0.6362204   0.7637635
18-21 months   CONTENT          PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7608543   0.7223844   0.7993242
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8182798   0.7801724   0.8563871
18-21 months   MAL-ED           PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7437038   0.6761886   0.8112190
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7068472   0.6454809   0.7682134
21-24 months   CONTENT          PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7990312   0.7536798   0.8443825
21-24 months   IRC              INDIA                          NA                   NA                0.7088420   0.6678130   0.7498711
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7833565   0.7426056   0.8241074
21-24 months   MAL-ED           PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7189328   0.6544287   0.7834368
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          1                    4+                -0.1949188   -0.2844757   -0.1053620
0-3 months     COHORTS          INDIA                          2                    4+                -0.0830140   -0.1754203    0.0093922
0-3 months     COHORTS          INDIA                          3                    4+                -0.0643950   -0.1905782    0.0617882
0-3 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          1                    4+                 0.0129756   -0.2096827    0.2356339
0-3 months     GMS-Nepal        NEPAL                          2                    4+                 0.0332198   -0.0946129    0.1610525
0-3 months     GMS-Nepal        NEPAL                          3                    4+                 0.0966580   -0.0303825    0.2236985
0-3 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          1                    4+                 0.3537236   -0.1656993    0.8731465
0-3 months     IRC              INDIA                          2                    4+                 0.3504497   -0.1771295    0.8780290
0-3 months     IRC              INDIA                          3                    4+                 0.4583839   -0.1525536    1.0693214
0-3 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     1                    4+                 0.1368327   -0.1049852    0.3786506
0-3 months     MAL-ED           BANGLADESH                     2                    4+                 0.1594630   -0.1107711    0.4296972
0-3 months     MAL-ED           BANGLADESH                     3                    4+                 0.2404306   -0.0415537    0.5224148
0-3 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          1                    4+                -0.0165168   -0.3128086    0.2797749
0-3 months     MAL-ED           INDIA                          2                    4+                 0.0333225   -0.2527742    0.3194192
0-3 months     MAL-ED           INDIA                          3                    4+                -0.0769194   -0.4399825    0.2861436
0-3 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          1                    4+                 0.0060994   -0.1946498    0.2068485
0-3 months     MAL-ED           NEPAL                          2                    4+                 0.1482909   -0.1623292    0.4589110
0-3 months     MAL-ED           NEPAL                          3                    4+                -0.0565622   -0.4477753    0.3346508
0-3 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           1                    4+                -0.2891793   -0.5868705    0.0085120
0-3 months     MAL-ED           PERU                           2                    4+                -0.0352887   -0.2079057    0.1373283
0-3 months     MAL-ED           PERU                           3                    4+                -0.0281809   -0.1952186    0.1388567
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1354741   -0.4846542    0.2137060
0-3 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0859990   -0.4039547    0.2319568
0-3 months     MAL-ED           SOUTH AFRICA                   3                    4+                 0.0202988   -0.2637781    0.3043757
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0371123   -0.3537975    0.2795730
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0232292   -0.2081938    0.1617353
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0893146   -0.1119012    0.2905305
0-3 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     1                    4+                 0.1051548    0.0079970    0.2023127
0-3 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0065962   -0.1136455    0.1004531
0-3 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0264938   -0.0896483    0.1426359
0-3 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     1                    4+                -0.2002494   -0.4262968    0.0257980
0-3 months     PROVIDE          BANGLADESH                     2                    4+                -0.1398829   -0.3779283    0.0981624
0-3 months     PROVIDE          BANGLADESH                     3                    4+                -0.1684625   -0.4184644    0.0815394
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          1                    4+                -0.3168387   -0.8464999    0.2128224
3-6 months     CMC-V-BCS-2002   INDIA                          2                    4+                -0.3853660   -0.9298741    0.1591421
3-6 months     CMC-V-BCS-2002   INDIA                          3                    4+                -0.2907404   -0.8618833    0.2804024
3-6 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          1                    4+                -0.0657371   -0.1456187    0.0141445
3-6 months     COHORTS          INDIA                          2                    4+                 0.0122146   -0.0699961    0.0944254
3-6 months     COHORTS          INDIA                          3                    4+                -0.0562374   -0.1642233    0.0517485
3-6 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     CONTENT          PERU                           1                    4+                -0.0763033   -0.1976658    0.0450592
3-6 months     CONTENT          PERU                           2                    4+                 0.1635866    0.0413191    0.2858540
3-6 months     CONTENT          PERU                           3                    4+                 0.1336755   -0.0036969    0.2710479
3-6 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          1                    4+                 0.0596891   -0.0788986    0.1982768
3-6 months     GMS-Nepal        NEPAL                          2                    4+                 0.0786932   -0.0185510    0.1759373
3-6 months     GMS-Nepal        NEPAL                          3                    4+                 0.0561923   -0.0475856    0.1599702
3-6 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          1                    4+                -0.0857356   -0.3855084    0.2140372
3-6 months     IRC              INDIA                          2                    4+                -0.0027464   -0.3085760    0.3030831
3-6 months     IRC              INDIA                          3                    4+                -0.1109849   -0.4740410    0.2520712
3-6 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     1                    4+                 0.0297651   -0.1587600    0.2182902
3-6 months     MAL-ED           BANGLADESH                     2                    4+                 0.0835682   -0.1189607    0.2860971
3-6 months     MAL-ED           BANGLADESH                     3                    4+                 0.0141603   -0.2199989    0.2483196
3-6 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          1                    4+                -0.0018379   -0.2277137    0.2240379
3-6 months     MAL-ED           INDIA                          2                    4+                -0.0227050   -0.2391962    0.1937861
3-6 months     MAL-ED           INDIA                          3                    4+                 0.0516279   -0.1916937    0.2949494
3-6 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          1                    4+                -0.0827960   -0.2323697    0.0667778
3-6 months     MAL-ED           NEPAL                          2                    4+                -0.1520994   -0.3157109    0.0115120
3-6 months     MAL-ED           NEPAL                          3                    4+                -0.1074192   -0.2909728    0.0761343
3-6 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           1                    4+                 0.3301036    0.1105222    0.5496851
3-6 months     MAL-ED           PERU                           2                    4+                 0.1791839   -0.0220968    0.3804645
3-6 months     MAL-ED           PERU                           3                    4+                 0.1777556    0.0137188    0.3417925
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1814079   -0.4216216    0.0588058
3-6 months     MAL-ED           SOUTH AFRICA                   2                    4+                 0.0755497   -0.2236058    0.3747051
3-6 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.1059650   -0.3782370    0.1663071
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0699282   -0.4512051    0.3113487
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0593491   -0.2369016    0.1182035
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0516809   -0.2098049    0.1064430
3-6 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.1092772   -0.2264023    0.0078479
3-6 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0564717   -0.1864241    0.0734806
3-6 months     NIH-Crypto       BANGLADESH                     3                    4+                 0.0401584   -0.1102782    0.1905949
3-6 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     1                    4+                -0.0276427   -0.1910026    0.1357172
3-6 months     PROVIDE          BANGLADESH                     2                    4+                -0.0373151   -0.2165848    0.1419545
3-6 months     PROVIDE          BANGLADESH                     3                    4+                 0.0050014   -0.1888491    0.1988519
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          1                    4+                 0.2075928   -0.0553433    0.4705289
6-9 months     CMC-V-BCS-2002   INDIA                          2                    4+                 0.1837429   -0.0921268    0.4596125
6-9 months     CMC-V-BCS-2002   INDIA                          3                    4+                 0.0779820   -0.2264990    0.3824630
6-9 months     COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          1                    4+                -0.1607525   -0.2295590   -0.0919459
6-9 months     COHORTS          INDIA                          2                    4+                -0.1134162   -0.1843380   -0.0424943
6-9 months     COHORTS          INDIA                          3                    4+                -0.0851719   -0.1754501    0.0051062
6-9 months     CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     CONTENT          PERU                           1                    4+                -0.0528115   -0.1846705    0.0790476
6-9 months     CONTENT          PERU                           2                    4+                -0.1577811   -0.2848401   -0.0307221
6-9 months     CONTENT          PERU                           3                    4+                 0.0307676   -0.0815474    0.1430825
6-9 months     GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          1                    4+                 0.0390609   -0.0688078    0.1469295
6-9 months     GMS-Nepal        NEPAL                          2                    4+                 0.0253251   -0.0891676    0.1398179
6-9 months     GMS-Nepal        NEPAL                          3                    4+                 0.0523954   -0.0446166    0.1494074
6-9 months     IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          1                    4+                -0.0117417   -0.2143373    0.1908540
6-9 months     IRC              INDIA                          2                    4+                 0.0378572   -0.1718355    0.2475499
6-9 months     IRC              INDIA                          3                    4+                -0.0488743   -0.3207830    0.2230344
6-9 months     MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     1                    4+                -0.1750795   -0.3021497   -0.0480093
6-9 months     MAL-ED           BANGLADESH                     2                    4+                -0.1805887   -0.3286640   -0.0325133
6-9 months     MAL-ED           BANGLADESH                     3                    4+                -0.1457642   -0.2961855    0.0046571
6-9 months     MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          1                    4+                 0.1167993   -0.0572191    0.2908178
6-9 months     MAL-ED           INDIA                          2                    4+                 0.1198128   -0.0438893    0.2835149
6-9 months     MAL-ED           INDIA                          3                    4+                 0.0178922   -0.1488109    0.1845953
6-9 months     MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          1                    4+                -0.0601800   -0.1731552    0.0527952
6-9 months     MAL-ED           NEPAL                          2                    4+                 0.0302027   -0.0897534    0.1501588
6-9 months     MAL-ED           NEPAL                          3                    4+                -0.0645571   -0.2131615    0.0840473
6-9 months     MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           1                    4+                 0.1910273   -0.0526876    0.4347423
6-9 months     MAL-ED           PERU                           2                    4+                 0.0859121   -0.0738317    0.2456560
6-9 months     MAL-ED           PERU                           3                    4+                 0.0029439   -0.1253360    0.1312238
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   1                    4+                -0.1993756   -0.4831266    0.0843754
6-9 months     MAL-ED           SOUTH AFRICA                   2                    4+                -0.0083993   -0.2730708    0.2562721
6-9 months     MAL-ED           SOUTH AFRICA                   3                    4+                -0.0749796   -0.2712630    0.1213039
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0007282   -0.3717012    0.3702449
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0070149   -0.1865715    0.1725417
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0256388   -0.1668827    0.2181604
6-9 months     NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     1                    4+                -0.0289912   -0.1278483    0.0698659
6-9 months     NIH-Crypto       BANGLADESH                     2                    4+                -0.0740898   -0.1815242    0.0333446
6-9 months     NIH-Crypto       BANGLADESH                     3                    4+                -0.0587885   -0.1752488    0.0576717
6-9 months     PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     1                    4+                -0.0923865   -0.2484392    0.0636662
6-9 months     PROVIDE          BANGLADESH                     2                    4+                -0.0538368   -0.2208919    0.1132183
6-9 months     PROVIDE          BANGLADESH                     3                    4+                -0.0465836   -0.2192082    0.1260410
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          1                    4+                -0.1932169   -0.5006924    0.1142586
9-12 months    CMC-V-BCS-2002   INDIA                          2                    4+                -0.1195331   -0.4601168    0.2210507
9-12 months    CMC-V-BCS-2002   INDIA                          3                    4+                -0.1771628   -0.4988714    0.1445458
9-12 months    COHORTS          INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          1                    4+                -0.1411104   -0.2132048   -0.0690160
9-12 months    COHORTS          INDIA                          2                    4+                -0.0797389   -0.1540785   -0.0053994
9-12 months    COHORTS          INDIA                          3                    4+                -0.0295203   -0.1271687    0.0681280
9-12 months    CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    CONTENT          PERU                           1                    4+                -0.0669995   -0.1700300    0.0360311
9-12 months    CONTENT          PERU                           2                    4+                 0.0016583   -0.1102595    0.1135761
9-12 months    CONTENT          PERU                           3                    4+                 0.0664920   -0.0371462    0.1701301
9-12 months    GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          1                    4+                -0.0588179   -0.1755512    0.0579154
9-12 months    GMS-Nepal        NEPAL                          2                    4+                -0.0744228   -0.1701539    0.0213083
9-12 months    GMS-Nepal        NEPAL                          3                    4+                 0.0514930   -0.0184657    0.1214517
9-12 months    IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          1                    4+                 0.0955516   -0.0606027    0.2517059
9-12 months    IRC              INDIA                          2                    4+                 0.1283122   -0.0310923    0.2877166
9-12 months    IRC              INDIA                          3                    4+                -0.0106081   -0.2050215    0.1838053
9-12 months    MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     1                    4+                 0.0796548   -0.1109332    0.2702429
9-12 months    MAL-ED           BANGLADESH                     2                    4+                 0.1040192   -0.1007665    0.3088049
9-12 months    MAL-ED           BANGLADESH                     3                    4+                 0.0744247   -0.1386338    0.2874832
9-12 months    MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          1                    4+                 0.1155521   -0.0140337    0.2451379
9-12 months    MAL-ED           INDIA                          2                    4+                 0.0389165   -0.0883501    0.1661832
9-12 months    MAL-ED           INDIA                          3                    4+                 0.1167088   -0.0226601    0.2560778
9-12 months    MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          1                    4+                 0.0591957   -0.0508974    0.1692888
9-12 months    MAL-ED           NEPAL                          2                    4+                 0.0533417   -0.0495502    0.1562335
9-12 months    MAL-ED           NEPAL                          3                    4+                 0.0157198   -0.1171532    0.1485927
9-12 months    MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           1                    4+                -0.2051990   -0.3487542   -0.0616438
9-12 months    MAL-ED           PERU                           2                    4+                -0.1481457   -0.2828191   -0.0134723
9-12 months    MAL-ED           PERU                           3                    4+                -0.0692592   -0.1991648    0.0606464
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   1                    4+                 0.0211879   -0.1728792    0.2152550
9-12 months    MAL-ED           SOUTH AFRICA                   2                    4+                 0.1140659   -0.1271194    0.3552513
9-12 months    MAL-ED           SOUTH AFRICA                   3                    4+                -0.1781457   -0.4511777    0.0948862
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0575186   -0.2988128    0.4138500
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0307879   -0.2333433    0.1717674
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0143249   -0.2066860    0.1780363
9-12 months    NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     1                    4+                -0.0242342   -0.1032319    0.0547635
9-12 months    NIH-Crypto       BANGLADESH                     2                    4+                -0.0459138   -0.1298574    0.0380298
9-12 months    NIH-Crypto       BANGLADESH                     3                    4+                 0.0188016   -0.0760042    0.1136074
9-12 months    PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     1                    4+                -0.0127311   -0.1592056    0.1337434
9-12 months    PROVIDE          BANGLADESH                     2                    4+                -0.0020196   -0.1626947    0.1586554
9-12 months    PROVIDE          BANGLADESH                     3                    4+                 0.0394663   -0.1273955    0.2063280
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0380066   -0.1386751    0.2146883
12-15 months   CMC-V-BCS-2002   INDIA                          2                    4+                 0.0445287   -0.1748724    0.2639298
12-15 months   CMC-V-BCS-2002   INDIA                          3                    4+                 0.1545669   -0.0889140    0.3980478
12-15 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   CONTENT          PERU                           1                    4+                 0.0217479   -0.0983802    0.1418760
12-15 months   CONTENT          PERU                           2                    4+                 0.0196252   -0.0872403    0.1264906
12-15 months   CONTENT          PERU                           3                    4+                -0.0019238   -0.1262863    0.1224387
12-15 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          1                    4+                -0.0719461   -0.1791908    0.0352987
12-15 months   GMS-Nepal        NEPAL                          2                    4+                -0.0366463   -0.1051560    0.0318634
12-15 months   GMS-Nepal        NEPAL                          3                    4+                -0.0286826   -0.1013518    0.0439866
12-15 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          1                    4+                 0.0648452   -0.0614978    0.1911882
12-15 months   IRC              INDIA                          2                    4+                 0.1088304   -0.0271255    0.2447864
12-15 months   IRC              INDIA                          3                    4+                 0.0862236   -0.0982019    0.2706490
12-15 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     1                    4+                -0.1626621   -0.3124543   -0.0128700
12-15 months   MAL-ED           BANGLADESH                     2                    4+                -0.1971600   -0.3662445   -0.0280754
12-15 months   MAL-ED           BANGLADESH                     3                    4+                -0.0876089   -0.2749455    0.0997277
12-15 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          1                    4+                -0.1638385   -0.2957278   -0.0319492
12-15 months   MAL-ED           INDIA                          2                    4+                -0.0895937   -0.2201703    0.0409829
12-15 months   MAL-ED           INDIA                          3                    4+                -0.1445713   -0.2845001   -0.0046424
12-15 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          1                    4+                -0.1031770   -0.1978228   -0.0085311
12-15 months   MAL-ED           NEPAL                          2                    4+                 0.1133126   -0.0224357    0.2490610
12-15 months   MAL-ED           NEPAL                          3                    4+                 0.0187262   -0.1099898    0.1474421
12-15 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           1                    4+                 0.0111389   -0.1972563    0.2195340
12-15 months   MAL-ED           PERU                           2                    4+                 0.0577188   -0.0804077    0.1958452
12-15 months   MAL-ED           PERU                           3                    4+                 0.0774717   -0.0209287    0.1758721
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   1                    4+                 0.2714831    0.0712864    0.4716798
12-15 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0442813   -0.2381566    0.1495941
12-15 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0492842   -0.2325184    0.1339500
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.2140341   -0.0926136    0.5206818
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.1099444   -0.2821929    0.0623040
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0312130   -0.1129747    0.1754008
12-15 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0524097   -0.1261552    0.0213358
12-15 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0413525   -0.1213059    0.0386010
12-15 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0067356   -0.0988744    0.0854033
12-15 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     1                    4+                -0.1007288   -0.2490925    0.0476349
12-15 months   PROVIDE          BANGLADESH                     2                    4+                -0.0489698   -0.2062987    0.1083590
12-15 months   PROVIDE          BANGLADESH                     3                    4+                -0.0938281   -0.2593845    0.0717283
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.2689386   -0.4842444   -0.0536328
15-18 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.1466554   -0.3931267    0.0998158
15-18 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.1775671   -0.4381286    0.0829944
15-18 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   CONTENT          PERU                           1                    4+                -0.0288231   -0.1483043    0.0906581
15-18 months   CONTENT          PERU                           2                    4+                 0.0107051   -0.1110109    0.1324211
15-18 months   CONTENT          PERU                           3                    4+                -0.0796966   -0.2078876    0.0484945
15-18 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          1                    4+                 0.0434532   -0.0560583    0.1429647
15-18 months   GMS-Nepal        NEPAL                          2                    4+                 0.0633850   -0.0183434    0.1451134
15-18 months   GMS-Nepal        NEPAL                          3                    4+                 0.0757867   -0.0143486    0.1659220
15-18 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          1                    4+                 0.0972993   -0.0950901    0.2896887
15-18 months   IRC              INDIA                          2                    4+                 0.1071478   -0.0833799    0.2976754
15-18 months   IRC              INDIA                          3                    4+                 0.1085605   -0.1003851    0.3175062
15-18 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     1                    4+                -0.0644313   -0.2292782    0.1004157
15-18 months   MAL-ED           BANGLADESH                     2                    4+                -0.0725182   -0.2561716    0.1111353
15-18 months   MAL-ED           BANGLADESH                     3                    4+                -0.0267470   -0.2236115    0.1701175
15-18 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          1                    4+                 0.1212539    0.0029385    0.2395693
15-18 months   MAL-ED           INDIA                          2                    4+                 0.0221026   -0.0937951    0.1380003
15-18 months   MAL-ED           INDIA                          3                    4+                 0.1524874    0.0264672    0.2785077
15-18 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          1                    4+                 0.0218051   -0.0770045    0.1206147
15-18 months   MAL-ED           NEPAL                          2                    4+                -0.0125130   -0.1563906    0.1313646
15-18 months   MAL-ED           NEPAL                          3                    4+                 0.0892389   -0.0683663    0.2468441
15-18 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           1                    4+                -0.1075958   -0.2378371    0.0226454
15-18 months   MAL-ED           PERU                           2                    4+                -0.0514726   -0.1651275    0.0621823
15-18 months   MAL-ED           PERU                           3                    4+                 0.0314620   -0.0801780    0.1431021
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0050293   -0.1974610    0.1874024
15-18 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.0245741   -0.1645758    0.2137240
15-18 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0345452   -0.2271533    0.1580629
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.0038409   -0.3594418    0.3517600
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                 0.0473359   -0.1120358    0.2067075
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0103592   -0.1554558    0.1347374
15-18 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.0271948   -0.0925052    0.0381156
15-18 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0384672   -0.1065098    0.0295755
15-18 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0371167   -0.0452554    0.1194888
15-18 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     1                    4+                -0.0476448   -0.1910783    0.0957887
15-18 months   PROVIDE          BANGLADESH                     2                    4+                -0.0836649   -0.2353168    0.0679871
15-18 months   PROVIDE          BANGLADESH                     3                    4+                -0.0400022   -0.2002296    0.1202252
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          1                    4+                -0.2637079   -0.5344775    0.0070617
18-21 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.1285170   -0.4158415    0.1588074
18-21 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.2406481   -0.5596865    0.0783903
18-21 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   CONTENT          PERU                           1                    4+                -0.0743706   -0.2117759    0.0630347
18-21 months   CONTENT          PERU                           2                    4+                -0.0908048   -0.1995279    0.0179182
18-21 months   CONTENT          PERU                           3                    4+                 0.0049294   -0.1077057    0.1175644
18-21 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          1                    4+                -0.0228984   -0.1396662    0.0938693
18-21 months   GMS-Nepal        NEPAL                          2                    4+                -0.0240417   -0.0973303    0.0492469
18-21 months   GMS-Nepal        NEPAL                          3                    4+                 0.0227543   -0.0683092    0.1138179
18-21 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          1                    4+                -0.2032293   -0.4340314    0.0275728
18-21 months   IRC              INDIA                          2                    4+                -0.1622433   -0.3927628    0.0682762
18-21 months   IRC              INDIA                          3                    4+                -0.2420703   -0.5032120    0.0190713
18-21 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     1                    4+                -0.1532432   -0.3111134    0.0046270
18-21 months   MAL-ED           BANGLADESH                     2                    4+                -0.0884624   -0.2676633    0.0907386
18-21 months   MAL-ED           BANGLADESH                     3                    4+                -0.0810063   -0.2599290    0.0979164
18-21 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          1                    4+                -0.0070978   -0.1119384    0.0977429
18-21 months   MAL-ED           INDIA                          2                    4+                -0.0750936   -0.1814416    0.0312544
18-21 months   MAL-ED           INDIA                          3                    4+                -0.0620023   -0.1748830    0.0508783
18-21 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          1                    4+                -0.0331898   -0.1286171    0.0622375
18-21 months   MAL-ED           NEPAL                          2                    4+                -0.0259177   -0.1312452    0.0794098
18-21 months   MAL-ED           NEPAL                          3                    4+                -0.2443155   -0.3815114   -0.1071196
18-21 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           1                    4+                -0.0831370   -0.2121978    0.0459237
18-21 months   MAL-ED           PERU                           2                    4+                -0.0465391   -0.1754998    0.0824216
18-21 months   MAL-ED           PERU                           3                    4+                -0.1024772   -0.2177360    0.0127815
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0199824   -0.2228075    0.1828427
18-21 months   MAL-ED           SOUTH AFRICA                   2                    4+                -0.0294470   -0.1962123    0.1373182
18-21 months   MAL-ED           SOUTH AFRICA                   3                    4+                -0.0863478   -0.2762148    0.1035193
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                 0.0559595   -0.3828307    0.4947498
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.0635779   -0.2399565    0.1128007
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                 0.0421740   -0.1184576    0.2028057
18-21 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     1                    4+                -0.1117999   -0.1807182   -0.0428816
18-21 months   NIH-Crypto       BANGLADESH                     2                    4+                -0.0745930   -0.1493408    0.0001548
18-21 months   NIH-Crypto       BANGLADESH                     3                    4+                -0.0170042   -0.0954413    0.0614329
18-21 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     1                    4+                -0.1867926   -0.3035210   -0.0700643
18-21 months   PROVIDE          BANGLADESH                     2                    4+                -0.1503008   -0.2767977   -0.0238040
18-21 months   PROVIDE          BANGLADESH                     3                    4+                -0.1220246   -0.2543253    0.0102761
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          1                    4+                 0.0232056   -0.2393779    0.2857890
21-24 months   CMC-V-BCS-2002   INDIA                          2                    4+                -0.0342053   -0.3173443    0.2489336
21-24 months   CMC-V-BCS-2002   INDIA                          3                    4+                -0.0116078   -0.3114851    0.2882695
21-24 months   CONTENT          PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   CONTENT          PERU                           1                    4+                 0.0100549   -0.2918535    0.3119633
21-24 months   CONTENT          PERU                           2                    4+                 0.0388082   -0.1434099    0.2210263
21-24 months   CONTENT          PERU                           3                    4+                 0.2053605    0.0225097    0.3882113
21-24 months   GMS-Nepal        NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          1                    4+                -0.2049113   -0.3278459   -0.0819766
21-24 months   GMS-Nepal        NEPAL                          2                    4+                -0.0126883   -0.1237653    0.0983887
21-24 months   GMS-Nepal        NEPAL                          3                    4+                -0.0002401   -0.1126009    0.1121208
21-24 months   IRC              INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          1                    4+                 0.0376319   -0.1190774    0.1943412
21-24 months   IRC              INDIA                          2                    4+                 0.1221249   -0.0376380    0.2818878
21-24 months   IRC              INDIA                          3                    4+                -0.0332787   -0.2224053    0.1558480
21-24 months   MAL-ED           BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     1                    4+                 0.0146518   -0.0885054    0.1178090
21-24 months   MAL-ED           BANGLADESH                     2                    4+                 0.0935273   -0.0332659    0.2203206
21-24 months   MAL-ED           BANGLADESH                     3                    4+                -0.0029458   -0.1408327    0.1349410
21-24 months   MAL-ED           INDIA                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          1                    4+                 0.0919136   -0.0113565    0.1951838
21-24 months   MAL-ED           INDIA                          2                    4+                 0.0897335   -0.0142253    0.1936922
21-24 months   MAL-ED           INDIA                          3                    4+                 0.0638149   -0.0400269    0.1676567
21-24 months   MAL-ED           NEPAL                          4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          1                    4+                -0.0619427   -0.1688817    0.0449963
21-24 months   MAL-ED           NEPAL                          2                    4+                -0.0014150   -0.1091022    0.1062722
21-24 months   MAL-ED           NEPAL                          3                    4+                 0.0594394   -0.0902895    0.2091682
21-24 months   MAL-ED           PERU                           4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           1                    4+                 0.1329098   -0.0732626    0.3390821
21-24 months   MAL-ED           PERU                           2                    4+                 0.0877408   -0.0529959    0.2284775
21-24 months   MAL-ED           PERU                           3                    4+                 0.0196247   -0.0981353    0.1373847
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   1                    4+                -0.0011130   -0.1923543    0.1901283
21-24 months   MAL-ED           SOUTH AFRICA                   2                    4+                 0.1242088   -0.0432587    0.2916764
21-24 months   MAL-ED           SOUTH AFRICA                   3                    4+                 0.2044265   -0.0657202    0.4745732
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    4+                -0.1448369   -0.4895409    0.1998671
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                    4+                -0.2388376   -0.4195902   -0.0580849
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                    4+                -0.0429815   -0.1764788    0.0905158
21-24 months   NIH-Crypto       BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     1                    4+                 0.0195649   -0.0510668    0.0901966
21-24 months   NIH-Crypto       BANGLADESH                     2                    4+                 0.0044829   -0.0712009    0.0801666
21-24 months   NIH-Crypto       BANGLADESH                     3                    4+                 0.0381977   -0.0448208    0.1212161
21-24 months   PROVIDE          BANGLADESH                     4+                   4+                 0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     1                    4+                -0.0734834   -0.2008494    0.0538826
21-24 months   PROVIDE          BANGLADESH                     2                    4+                -0.0692378   -0.2060123    0.0675367
21-24 months   PROVIDE          BANGLADESH                     3                    4+                -0.0964869   -0.2501124    0.0571387


### Parameter: PAR


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     COHORTS          INDIA                          4+                   NA                -0.1540985   -0.2406788   -0.0675182
0-3 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0316526   -0.0220915    0.0853966
0-3 months     IRC              INDIA                          4+                   NA                 0.3455538   -0.1393777    0.8304852
0-3 months     MAL-ED           BANGLADESH                     4+                   NA                 0.1474449   -0.0779977    0.3728874
0-3 months     MAL-ED           INDIA                          4+                   NA                -0.0063133   -0.2450729    0.2324462
0-3 months     MAL-ED           NEPAL                          4+                   NA                 0.0149198   -0.0661243    0.0959638
0-3 months     MAL-ED           PERU                           4+                   NA                -0.0324303   -0.0956867    0.0308261
0-3 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0134208   -0.0693258    0.0424841
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0171856   -0.0734027    0.1077739
0-3 months     NIH-Crypto       BANGLADESH                     4+                   NA                 0.0523907   -0.0250486    0.1298300
0-3 months     PROVIDE          BANGLADESH                     4+                   NA                -0.1809089   -0.3980143    0.0361966
3-6 months     CMC-V-BCS-2002   INDIA                          4+                   NA                -0.3195702   -0.8204686    0.1813282
3-6 months     COHORTS          INDIA                          4+                   NA                -0.0410977   -0.1184069    0.0362115
3-6 months     CONTENT          PERU                           4+                   NA                 0.0493271   -0.0137837    0.1124379
3-6 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0340787   -0.0068652    0.0750225
3-6 months     IRC              INDIA                          4+                   NA                -0.0500368   -0.3315949    0.2315212
3-6 months     MAL-ED           BANGLADESH                     4+                   NA                 0.0377036   -0.1377446    0.2131518
3-6 months     MAL-ED           INDIA                          4+                   NA                 0.0022505   -0.1810915    0.1855926
3-6 months     MAL-ED           NEPAL                          4+                   NA                -0.0480407   -0.0983304    0.0022491
3-6 months     MAL-ED           PERU                           4+                   NA                 0.0976510    0.0327950    0.1625071
3-6 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0119965   -0.0525207    0.0285276
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0320334   -0.1081635    0.0440967
3-6 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0601764   -0.1588656    0.0385128
3-6 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0250262   -0.1813736    0.1313211
6-9 months     CMC-V-BCS-2002   INDIA                          4+                   NA                 0.1721067   -0.0676683    0.4118817
6-9 months     COHORTS          INDIA                          4+                   NA                -0.1406770   -0.2071381   -0.0742158
6-9 months     CONTENT          PERU                           4+                   NA                -0.0452090   -0.1046178    0.0141999
6-9 months     GMS-Nepal        NEPAL                          4+                   NA                 0.0211854   -0.0219307    0.0643015
6-9 months     IRC              INDIA                          4+                   NA                 0.0063615   -0.1843042    0.1970271
6-9 months     MAL-ED           BANGLADESH                     4+                   NA                -0.1641859   -0.2815143   -0.0468576
6-9 months     MAL-ED           INDIA                          4+                   NA                 0.0844318   -0.0506829    0.2195465
6-9 months     MAL-ED           NEPAL                          4+                   NA                -0.0149252   -0.0539842    0.0241338
6-9 months     MAL-ED           PERU                           4+                   NA                 0.0308683   -0.0206056    0.0823422
6-9 months     MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0161018   -0.0489530    0.0167494
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0049727   -0.0852383    0.0951837
6-9 months     NIH-Crypto       BANGLADESH                     4+                   NA                -0.0412410   -0.1238691    0.0413870
6-9 months     PROVIDE          BANGLADESH                     4+                   NA                -0.0788026   -0.2286800    0.0710748
9-12 months    CMC-V-BCS-2002   INDIA                          4+                   NA                -0.1636276   -0.4540307    0.1267755
9-12 months    COHORTS          INDIA                          4+                   NA                -0.1150834   -0.1846697   -0.0454971
9-12 months    CONTENT          PERU                           4+                   NA                -0.0015726   -0.0554934    0.0523482
9-12 months    GMS-Nepal        NEPAL                          4+                   NA                -0.0067949   -0.0410378    0.0274480
9-12 months    IRC              INDIA                          4+                   NA                 0.0963877   -0.0488977    0.2416730
9-12 months    MAL-ED           BANGLADESH                     4+                   NA                 0.0797893   -0.0995680    0.2591465
9-12 months    MAL-ED           INDIA                          4+                   NA                 0.0780831   -0.0272351    0.1834013
9-12 months    MAL-ED           NEPAL                          4+                   NA                 0.0211390   -0.0147692    0.0570471
9-12 months    MAL-ED           PERU                           4+                   NA                -0.0578556   -0.1062882   -0.0094230
9-12 months    MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0082625   -0.0449032    0.0283782
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0081692   -0.0987860    0.0824476
9-12 months    NIH-Crypto       BANGLADESH                     4+                   NA                -0.0205381   -0.0845258    0.0434496
9-12 months    PROVIDE          BANGLADESH                     4+                   NA                -0.0056169   -0.1461450    0.1349111
12-15 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0542120   -0.1088322    0.2172563
12-15 months   CONTENT          PERU                           4+                   NA                 0.0091526   -0.0493256    0.0676308
12-15 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0200964   -0.0513071    0.0111143
12-15 months   IRC              INDIA                          4+                   NA                 0.0825766   -0.0348735    0.2000267
12-15 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1519397   -0.2923947   -0.0114848
12-15 months   MAL-ED           INDIA                          4+                   NA                -0.1177261   -0.2249135   -0.0105388
12-15 months   MAL-ED           NEPAL                          4+                   NA                -0.0044688   -0.0397915    0.0308539
12-15 months   MAL-ED           PERU                           4+                   NA                 0.0287909   -0.0158230    0.0734049
12-15 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0082025   -0.0231221    0.0395270
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0078419   -0.0782474    0.0625636
12-15 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0359746   -0.0960458    0.0240966
12-15 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0876799   -0.2295249    0.0541651
15-18 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2117746   -0.4161370   -0.0074122
15-18 months   CONTENT          PERU                           4+                   NA                -0.0183167   -0.0809862    0.0443529
15-18 months   GMS-Nepal        NEPAL                          4+                   NA                 0.0356390   -0.0025500    0.0738280
15-18 months   IRC              INDIA                          4+                   NA                 0.0985869   -0.0800879    0.2772617
15-18 months   MAL-ED           BANGLADESH                     4+                   NA                -0.0581566   -0.2138461    0.0975329
15-18 months   MAL-ED           INDIA                          4+                   NA                 0.0827483   -0.0125517    0.1780483
15-18 months   MAL-ED           NEPAL                          4+                   NA                 0.0114546   -0.0258227    0.0487319
15-18 months   MAL-ED           PERU                           4+                   NA                -0.0105864   -0.0507250    0.0295522
15-18 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0014397   -0.0303799    0.0275006
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0075248   -0.0576028    0.0726523
15-18 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0172287   -0.0687224    0.0342650
15-18 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0507841   -0.1874765    0.0859082
18-21 months   CMC-V-BCS-2002   INDIA                          4+                   NA                -0.2142972   -0.4711129    0.0425185
18-21 months   CONTENT          PERU                           4+                   NA                -0.0361692   -0.0957757    0.0234372
18-21 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0014809   -0.0392704    0.0363087
18-21 months   IRC              INDIA                          4+                   NA                -0.1809368   -0.3987770    0.0369033
18-21 months   MAL-ED           BANGLADESH                     4+                   NA                -0.1234475   -0.2720214    0.0251264
18-21 months   MAL-ED           INDIA                          4+                   NA                -0.0393932   -0.1224872    0.0437008
18-21 months   MAL-ED           NEPAL                          4+                   NA                -0.0340895   -0.0681526   -0.0000263
18-21 months   MAL-ED           PERU                           4+                   NA                -0.0362794   -0.0770685    0.0045096
18-21 months   MAL-ED           SOUTH AFRICA                   4+                   NA                -0.0117955   -0.0404513    0.0168602
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                 0.0001264   -0.0709131    0.0711659
18-21 months   NIH-Crypto       BANGLADESH                     4+                   NA                -0.0711771   -0.1255883   -0.0167658
18-21 months   PROVIDE          BANGLADESH                     4+                   NA                -0.1670215   -0.2782108   -0.0558323
21-24 months   CMC-V-BCS-2002   INDIA                          4+                   NA                 0.0018570   -0.2465001    0.2502141
21-24 months   CONTENT          PERU                           4+                   NA                 0.0627455   -0.0642150    0.1897059
21-24 months   GMS-Nepal        NEPAL                          4+                   NA                -0.0177819   -0.0666861    0.0311223
21-24 months   IRC              INDIA                          4+                   NA                 0.0655309   -0.0797327    0.2107946
21-24 months   MAL-ED           BANGLADESH                     4+                   NA                 0.0264385   -0.0684955    0.1213725
21-24 months   MAL-ED           INDIA                          4+                   NA                 0.0753228   -0.0080081    0.1586536
21-24 months   MAL-ED           NEPAL                          4+                   NA                -0.0072577   -0.0433740    0.0288585
21-24 months   MAL-ED           PERU                           4+                   NA                 0.0278042   -0.0147991    0.0704076
21-24 months   MAL-ED           SOUTH AFRICA                   4+                   NA                 0.0291186   -0.0041101    0.0623474
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+                   NA                -0.0716228   -0.1407512   -0.0024945
21-24 months   NIH-Crypto       BANGLADESH                     4+                   NA                 0.0150057   -0.0390173    0.0690286
21-24 months   PROVIDE          BANGLADESH                     4+                   NA                -0.0722006   -0.1937661    0.0493649
