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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        impfloor    n_cell     n
-------------  ---------------  -----------------------------  ---------  -------  ----
0-3 months     CMC-V-BCS-2002   INDIA                          1              229   229
0-3 months     CMC-V-BCS-2002   INDIA                          0                0   229
0-3 months     CONTENT          PERU                           1               27    29
0-3 months     CONTENT          PERU                           0                2    29
0-3 months     GMS-Nepal        NEPAL                          1               74   398
0-3 months     GMS-Nepal        NEPAL                          0              324   398
0-3 months     IRC              INDIA                          1              296   296
0-3 months     IRC              INDIA                          0                0   296
0-3 months     MAL-ED           BANGLADESH                     1              220   239
0-3 months     MAL-ED           BANGLADESH                     0               19   239
0-3 months     MAL-ED           BRAZIL                         1              208   210
0-3 months     MAL-ED           BRAZIL                         0                2   210
0-3 months     MAL-ED           INDIA                          1              217   232
0-3 months     MAL-ED           INDIA                          0               15   232
0-3 months     MAL-ED           NEPAL                          1               99   224
0-3 months     MAL-ED           NEPAL                          0              125   224
0-3 months     MAL-ED           PERU                           1               58   270
0-3 months     MAL-ED           PERU                           0              212   270
0-3 months     MAL-ED           SOUTH AFRICA                   1              234   254
0-3 months     MAL-ED           SOUTH AFRICA                   0               20   254
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13   231
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              218   231
0-3 months     NIH-Birth        BANGLADESH                     1              501   563
0-3 months     NIH-Birth        BANGLADESH                     0               62   563
0-3 months     NIH-Crypto       BANGLADESH                     1              550   725
0-3 months     NIH-Crypto       BANGLADESH                     0              175   725
0-3 months     PROVIDE          BANGLADESH                     1              586   640
0-3 months     PROVIDE          BANGLADESH                     0               54   640
3-6 months     CMC-V-BCS-2002   INDIA                          1              224   224
3-6 months     CMC-V-BCS-2002   INDIA                          0                0   224
3-6 months     CONTENT          PERU                           1              200   214
3-6 months     CONTENT          PERU                           0               14   214
3-6 months     GMS-Nepal        NEPAL                          1               70   370
3-6 months     GMS-Nepal        NEPAL                          0              300   370
3-6 months     IRC              INDIA                          1              299   299
3-6 months     IRC              INDIA                          0                0   299
3-6 months     MAL-ED           BANGLADESH                     1              215   233
3-6 months     MAL-ED           BANGLADESH                     0               18   233
3-6 months     MAL-ED           BRAZIL                         1              206   208
3-6 months     MAL-ED           BRAZIL                         0                2   208
3-6 months     MAL-ED           INDIA                          1              215   230
3-6 months     MAL-ED           INDIA                          0               15   230
3-6 months     MAL-ED           NEPAL                          1              101   227
3-6 months     MAL-ED           NEPAL                          0              126   227
3-6 months     MAL-ED           PERU                           1               58   267
3-6 months     MAL-ED           PERU                           0              209   267
3-6 months     MAL-ED           SOUTH AFRICA                   1              222   241
3-6 months     MAL-ED           SOUTH AFRICA                   0               19   241
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               11   237
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              226   237
3-6 months     NIH-Birth        BANGLADESH                     1              462   520
3-6 months     NIH-Birth        BANGLADESH                     0               58   520
3-6 months     NIH-Crypto       BANGLADESH                     1              527   702
3-6 months     NIH-Crypto       BANGLADESH                     0              175   702
3-6 months     PROVIDE          BANGLADESH                     1              554   601
3-6 months     PROVIDE          BANGLADESH                     0               47   601
6-9 months     CMC-V-BCS-2002   INDIA                          1              226   226
6-9 months     CMC-V-BCS-2002   INDIA                          0                0   226
6-9 months     CONTENT          PERU                           1              200   214
6-9 months     CONTENT          PERU                           0               14   214
6-9 months     GMS-Nepal        NEPAL                          1               68   376
6-9 months     GMS-Nepal        NEPAL                          0              308   376
6-9 months     IRC              INDIA                          1              306   306
6-9 months     IRC              INDIA                          0                0   306
6-9 months     MAL-ED           BANGLADESH                     1              208   224
6-9 months     MAL-ED           BANGLADESH                     0               16   224
6-9 months     MAL-ED           BRAZIL                         1              196   198
6-9 months     MAL-ED           BRAZIL                         0                2   198
6-9 months     MAL-ED           INDIA                          1              215   230
6-9 months     MAL-ED           INDIA                          0               15   230
6-9 months     MAL-ED           NEPAL                          1              100   223
6-9 months     MAL-ED           NEPAL                          0              123   223
6-9 months     MAL-ED           PERU                           1               57   245
6-9 months     MAL-ED           PERU                           0              188   245
6-9 months     MAL-ED           SOUTH AFRICA                   1              213   231
6-9 months     MAL-ED           SOUTH AFRICA                   0               18   231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               10   223
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              213   223
6-9 months     NIH-Birth        BANGLADESH                     1              442   497
6-9 months     NIH-Birth        BANGLADESH                     0               55   497
6-9 months     NIH-Crypto       BANGLADESH                     1              518   693
6-9 months     NIH-Crypto       BANGLADESH                     0              175   693
6-9 months     PROVIDE          BANGLADESH                     1              532   576
6-9 months     PROVIDE          BANGLADESH                     0               44   576
9-12 months    CMC-V-BCS-2002   INDIA                          1              228   228
9-12 months    CMC-V-BCS-2002   INDIA                          0                0   228
9-12 months    CONTENT          PERU                           1              198   212
9-12 months    CONTENT          PERU                           0               14   212
9-12 months    GMS-Nepal        NEPAL                          1               67   358
9-12 months    GMS-Nepal        NEPAL                          0              291   358
9-12 months    IRC              INDIA                          1              302   302
9-12 months    IRC              INDIA                          0                0   302
9-12 months    MAL-ED           BANGLADESH                     1              208   225
9-12 months    MAL-ED           BANGLADESH                     0               17   225
9-12 months    MAL-ED           BRAZIL                         1              192   194
9-12 months    MAL-ED           BRAZIL                         0                2   194
9-12 months    MAL-ED           INDIA                          1              213   227
9-12 months    MAL-ED           INDIA                          0               14   227
9-12 months    MAL-ED           NEPAL                          1               99   222
9-12 months    MAL-ED           NEPAL                          0              123   222
9-12 months    MAL-ED           PERU                           1               54   235
9-12 months    MAL-ED           PERU                           0              181   235
9-12 months    MAL-ED           SOUTH AFRICA                   1              214   233
9-12 months    MAL-ED           SOUTH AFRICA                   0               19   233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   222
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              210   222
9-12 months    NIH-Birth        BANGLADESH                     1              425   479
9-12 months    NIH-Birth        BANGLADESH                     0               54   479
9-12 months    NIH-Crypto       BANGLADESH                     1              510   683
9-12 months    NIH-Crypto       BANGLADESH                     0              173   683
9-12 months    PROVIDE          BANGLADESH                     1              524   569
9-12 months    PROVIDE          BANGLADESH                     0               45   569
12-15 months   CMC-V-BCS-2002   INDIA                          1              234   234
12-15 months   CMC-V-BCS-2002   INDIA                          0                0   234
12-15 months   CONTENT          PERU                           1              185   199
12-15 months   CONTENT          PERU                           0               14   199
12-15 months   GMS-Nepal        NEPAL                          1               66   355
12-15 months   GMS-Nepal        NEPAL                          0              289   355
12-15 months   IRC              INDIA                          1              294   294
12-15 months   IRC              INDIA                          0                0   294
12-15 months   MAL-ED           BANGLADESH                     1              195   212
12-15 months   MAL-ED           BANGLADESH                     0               17   212
12-15 months   MAL-ED           BRAZIL                         1              182   184
12-15 months   MAL-ED           BRAZIL                         0                2   184
12-15 months   MAL-ED           INDIA                          1              212   226
12-15 months   MAL-ED           INDIA                          0               14   226
12-15 months   MAL-ED           NEPAL                          1               99   223
12-15 months   MAL-ED           NEPAL                          0              124   223
12-15 months   MAL-ED           PERU                           1               51   224
12-15 months   MAL-ED           PERU                           0              173   224
12-15 months   MAL-ED           SOUTH AFRICA                   1              208   228
12-15 months   MAL-ED           SOUTH AFRICA                   0               20   228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   224
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              212   224
12-15 months   NIH-Birth        BANGLADESH                     1              410   460
12-15 months   NIH-Birth        BANGLADESH                     0               50   460
12-15 months   NIH-Crypto       BANGLADESH                     1              495   666
12-15 months   NIH-Crypto       BANGLADESH                     0              171   666
12-15 months   PROVIDE          BANGLADESH                     1              493   537
12-15 months   PROVIDE          BANGLADESH                     0               44   537
15-18 months   CMC-V-BCS-2002   INDIA                          1              228   228
15-18 months   CMC-V-BCS-2002   INDIA                          0                0   228
15-18 months   CONTENT          PERU                           1              176   189
15-18 months   CONTENT          PERU                           0               13   189
15-18 months   GMS-Nepal        NEPAL                          1               69   372
15-18 months   GMS-Nepal        NEPAL                          0              303   372
15-18 months   IRC              INDIA                          1              285   285
15-18 months   IRC              INDIA                          0                0   285
15-18 months   MAL-ED           BANGLADESH                     1              195   212
15-18 months   MAL-ED           BANGLADESH                     0               17   212
15-18 months   MAL-ED           BRAZIL                         1              173   175
15-18 months   MAL-ED           BRAZIL                         0                2   175
15-18 months   MAL-ED           INDIA                          1              211   226
15-18 months   MAL-ED           INDIA                          0               15   226
15-18 months   MAL-ED           NEPAL                          1               96   220
15-18 months   MAL-ED           NEPAL                          0              124   220
15-18 months   MAL-ED           PERU                           1               48   214
15-18 months   MAL-ED           PERU                           0              166   214
15-18 months   MAL-ED           SOUTH AFRICA                   1              206   225
15-18 months   MAL-ED           SOUTH AFRICA                   0               19   225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              206   218
15-18 months   NIH-Birth        BANGLADESH                     1              400   448
15-18 months   NIH-Birth        BANGLADESH                     0               48   448
15-18 months   NIH-Crypto       BANGLADESH                     1              435   605
15-18 months   NIH-Crypto       BANGLADESH                     0              170   605
15-18 months   PROVIDE          BANGLADESH                     1              490   533
15-18 months   PROVIDE          BANGLADESH                     0               43   533
18-21 months   CMC-V-BCS-2002   INDIA                          1              217   217
18-21 months   CMC-V-BCS-2002   INDIA                          0                0   217
18-21 months   CONTENT          PERU                           1              171   183
18-21 months   CONTENT          PERU                           0               12   183
18-21 months   GMS-Nepal        NEPAL                          1               64   343
18-21 months   GMS-Nepal        NEPAL                          0              279   343
18-21 months   IRC              INDIA                          1              284   284
18-21 months   IRC              INDIA                          0                0   284
18-21 months   MAL-ED           BANGLADESH                     1              193   209
18-21 months   MAL-ED           BANGLADESH                     0               16   209
18-21 months   MAL-ED           BRAZIL                         1              165   167
18-21 months   MAL-ED           BRAZIL                         0                2   167
18-21 months   MAL-ED           INDIA                          1              211   226
18-21 months   MAL-ED           INDIA                          0               15   226
18-21 months   MAL-ED           NEPAL                          1               96   220
18-21 months   MAL-ED           NEPAL                          0              124   220
18-21 months   MAL-ED           PERU                           1               48   202
18-21 months   MAL-ED           PERU                           0              154   202
18-21 months   MAL-ED           SOUTH AFRICA                   1              214   233
18-21 months   MAL-ED           SOUTH AFRICA                   0               19   233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   206
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              194   206
18-21 months   NIH-Birth        BANGLADESH                     1              372   421
18-21 months   NIH-Birth        BANGLADESH                     0               49   421
18-21 months   NIH-Crypto       BANGLADESH                     1              382   547
18-21 months   NIH-Crypto       BANGLADESH                     0              165   547
18-21 months   PROVIDE          BANGLADESH                     1              497   542
18-21 months   PROVIDE          BANGLADESH                     0               45   542
21-24 months   CMC-V-BCS-2002   INDIA                          1              216   216
21-24 months   CMC-V-BCS-2002   INDIA                          0                0   216
21-24 months   CONTENT          PERU                           1               33    38
21-24 months   CONTENT          PERU                           0                5    38
21-24 months   GMS-Nepal        NEPAL                          1               51   245
21-24 months   GMS-Nepal        NEPAL                          0              194   245
21-24 months   IRC              INDIA                          1              292   292
21-24 months   IRC              INDIA                          0                0   292
21-24 months   MAL-ED           BANGLADESH                     1              191   207
21-24 months   MAL-ED           BANGLADESH                     0               16   207
21-24 months   MAL-ED           BRAZIL                         1              163   165
21-24 months   MAL-ED           BRAZIL                         0                2   165
21-24 months   MAL-ED           INDIA                          1              211   226
21-24 months   MAL-ED           INDIA                          0               15   226
21-24 months   MAL-ED           NEPAL                          1               97   220
21-24 months   MAL-ED           NEPAL                          0              123   220
21-24 months   MAL-ED           PERU                           1               45   189
21-24 months   MAL-ED           PERU                           0              144   189
21-24 months   MAL-ED           SOUTH AFRICA                   1              217   235
21-24 months   MAL-ED           SOUTH AFRICA                   0               18   235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              192   204
21-24 months   NIH-Birth        BANGLADESH                     1              363   410
21-24 months   NIH-Birth        BANGLADESH                     0               47   410
21-24 months   NIH-Crypto       BANGLADESH                     1              327   493
21-24 months   NIH-Crypto       BANGLADESH                     0              166   493
21-24 months   PROVIDE          BANGLADESH                     1              445   485
21-24 months   PROVIDE          BANGLADESH                     0               40   485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
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
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
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
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/f663bc6f-3a58-4722-a159-fbdaac81141c/e172c0b8-8239-45dd-ab2c-a729fd566e78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f663bc6f-3a58-4722-a159-fbdaac81141c/e172c0b8-8239-45dd-ab2c-a729fd566e78/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f663bc6f-3a58-4722-a159-fbdaac81141c/e172c0b8-8239-45dd-ab2c-a729fd566e78/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                0.8046124   0.7617938   0.8474309
0-3 months     GMS-Nepal    NEPAL                          0                    NA                0.8266960   0.8050493   0.8483427
0-3 months     MAL-ED       BANGLADESH                     1                    NA                0.8788900   0.8541466   0.9036333
0-3 months     MAL-ED       BANGLADESH                     0                    NA                0.8581225   0.7773740   0.9388711
0-3 months     MAL-ED       INDIA                          1                    NA                0.7631395   0.7406302   0.7856488
0-3 months     MAL-ED       INDIA                          0                    NA                0.7160612   0.5882273   0.8438950
0-3 months     MAL-ED       NEPAL                          1                    NA                0.9745357   0.9316658   1.0174057
0-3 months     MAL-ED       NEPAL                          0                    NA                0.9503145   0.9157447   0.9848843
0-3 months     MAL-ED       PERU                           1                    NA                1.0245366   0.9593381   1.0897350
0-3 months     MAL-ED       PERU                           0                    NA                0.9565759   0.9292904   0.9838614
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.9449260   0.9157715   0.9740804
0-3 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.9362165   0.8444527   1.0279803
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8718044   0.7489646   0.9946443
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8838644   0.8521489   0.9155799
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                0.8239329   0.8058238   0.8420420
0-3 months     NIH-Birth    BANGLADESH                     0                    NA                0.7574854   0.7148942   0.8000767
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                0.8776050   0.8610036   0.8942064
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                0.9062610   0.8763243   0.9361977
0-3 months     PROVIDE      BANGLADESH                     1                    NA                0.9087246   0.8935431   0.9239061
0-3 months     PROVIDE      BANGLADESH                     0                    NA                0.8248443   0.7702237   0.8794650
3-6 months     CONTENT      PERU                           1                    NA                0.5897505   0.5678791   0.6116220
3-6 months     CONTENT      PERU                           0                    NA                0.5685307   0.4901766   0.6468848
3-6 months     GMS-Nepal    NEPAL                          1                    NA                0.5109668   0.4737495   0.5481841
3-6 months     GMS-Nepal    NEPAL                          0                    NA                0.4990788   0.4813891   0.5167685
3-6 months     MAL-ED       BANGLADESH                     1                    NA                0.4788668   0.4615681   0.4961656
3-6 months     MAL-ED       BANGLADESH                     0                    NA                0.4242832   0.3668148   0.4817515
3-6 months     MAL-ED       INDIA                          1                    NA                0.4445433   0.4264695   0.4626172
3-6 months     MAL-ED       INDIA                          0                    NA                0.4549408   0.3828867   0.5269950
3-6 months     MAL-ED       NEPAL                          1                    NA                0.5355689   0.5005454   0.5705925
3-6 months     MAL-ED       NEPAL                          0                    NA                0.5182511   0.4958594   0.5406428
3-6 months     MAL-ED       PERU                           1                    NA                0.4988976   0.4598791   0.5379160
3-6 months     MAL-ED       PERU                           0                    NA                0.4980492   0.4763904   0.5197080
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.4671220   0.4404465   0.4937976
3-6 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.4634484   0.3577274   0.5691693
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4292919   0.3327793   0.5258045
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4583364   0.4333449   0.4833279
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                0.4623160   0.4436681   0.4809639
3-6 months     NIH-Birth    BANGLADESH                     0                    NA                0.4427889   0.4013357   0.4842421
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                0.4990957   0.4860808   0.5121106
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                0.4949186   0.4740903   0.5157469
3-6 months     PROVIDE      BANGLADESH                     1                    NA                0.4923147   0.4784958   0.5061335
3-6 months     PROVIDE      BANGLADESH                     0                    NA                0.4507110   0.4159810   0.4854409
6-9 months     CONTENT      PERU                           1                    NA                0.3221506   0.3019234   0.3423779
6-9 months     CONTENT      PERU                           0                    NA                0.2919029   0.2223102   0.3614955
6-9 months     GMS-Nepal    NEPAL                          1                    NA                0.1837661   0.1621468   0.2053854
6-9 months     GMS-Nepal    NEPAL                          0                    NA                0.1910717   0.1745569   0.2075865
6-9 months     MAL-ED       BANGLADESH                     1                    NA                0.2448855   0.2294658   0.2603052
6-9 months     MAL-ED       BANGLADESH                     0                    NA                0.2164612   0.1853718   0.2475505
6-9 months     MAL-ED       INDIA                          1                    NA                0.2317264   0.2160301   0.2474226
6-9 months     MAL-ED       INDIA                          0                    NA                0.2332086   0.1886854   0.2777318
6-9 months     MAL-ED       NEPAL                          1                    NA                0.2805286   0.2548617   0.3061955
6-9 months     MAL-ED       NEPAL                          0                    NA                0.2588549   0.2429320   0.2747778
6-9 months     MAL-ED       PERU                           1                    NA                0.2843552   0.2527382   0.3159722
6-9 months     MAL-ED       PERU                           0                    NA                0.2544314   0.2367843   0.2720786
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.2557625   0.2336092   0.2779157
6-9 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.3022954   0.2401605   0.3644302
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1915312   0.1271814   0.2558809
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2410723   0.2158614   0.2662832
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                0.2403616   0.2258240   0.2548992
6-9 months     NIH-Birth    BANGLADESH                     0                    NA                0.2064896   0.1652929   0.2476863
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                0.2621099   0.2494989   0.2747209
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                0.2834932   0.2648633   0.3021230
6-9 months     PROVIDE      BANGLADESH                     1                    NA                0.2512141   0.2384623   0.2639659
6-9 months     PROVIDE      BANGLADESH                     0                    NA                0.2243939   0.1918133   0.2569745
9-12 months    CONTENT      PERU                           1                    NA                0.2260200   0.2075023   0.2445378
9-12 months    CONTENT      PERU                           0                    NA                0.2032863   0.1216239   0.2849487
9-12 months    GMS-Nepal    NEPAL                          1                    NA                0.1438204   0.1160801   0.1715606
9-12 months    GMS-Nepal    NEPAL                          0                    NA                0.1430151   0.1264680   0.1595623
9-12 months    MAL-ED       BANGLADESH                     1                    NA                0.1719261   0.1574220   0.1864301
9-12 months    MAL-ED       BANGLADESH                     0                    NA                0.1865981   0.1522879   0.2209084
9-12 months    MAL-ED       INDIA                          1                    NA                0.1799720   0.1655244   0.1944196
9-12 months    MAL-ED       INDIA                          0                    NA                0.1616817   0.1021838   0.2211797
9-12 months    MAL-ED       NEPAL                          1                    NA                0.1890378   0.1654174   0.2126583
9-12 months    MAL-ED       NEPAL                          0                    NA                0.1846581   0.1660420   0.2032743
9-12 months    MAL-ED       PERU                           1                    NA                0.1963880   0.1640300   0.2287459
9-12 months    MAL-ED       PERU                           0                    NA                0.1848232   0.1674642   0.2021822
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                0.2127763   0.1891942   0.2363584
9-12 months    MAL-ED       SOUTH AFRICA                   0                    NA                0.2356865   0.1840506   0.2873225
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2018069   0.1428212   0.2607927
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1648694   0.1435977   0.1861411
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                0.1637348   0.1495521   0.1779175
9-12 months    NIH-Birth    BANGLADESH                     0                    NA                0.1578907   0.1234849   0.1922966
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                0.1957053   0.1832932   0.2081174
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                0.2041524   0.1855905   0.2227144
9-12 months    PROVIDE      BANGLADESH                     1                    NA                0.1788468   0.1689570   0.1887366
9-12 months    PROVIDE      BANGLADESH                     0                    NA                0.1622167   0.1367575   0.1876759
12-15 months   CONTENT      PERU                           1                    NA                0.1793565   0.1599335   0.1987794
12-15 months   CONTENT      PERU                           0                    NA                0.2038137   0.1371652   0.2704622
12-15 months   GMS-Nepal    NEPAL                          1                    NA                0.2004094   0.1686314   0.2321873
12-15 months   GMS-Nepal    NEPAL                          0                    NA                0.1688845   0.1520473   0.1857217
12-15 months   MAL-ED       BANGLADESH                     1                    NA                0.1401215   0.1243995   0.1558435
12-15 months   MAL-ED       BANGLADESH                     0                    NA                0.0807257   0.0070468   0.1544046
12-15 months   MAL-ED       INDIA                          1                    NA                0.1771192   0.1607308   0.1935076
12-15 months   MAL-ED       INDIA                          0                    NA                0.1260582   0.0666874   0.1854290
12-15 months   MAL-ED       NEPAL                          1                    NA                0.1635252   0.1345533   0.1924971
12-15 months   MAL-ED       NEPAL                          0                    NA                0.1493671   0.1298739   0.1688603
12-15 months   MAL-ED       PERU                           1                    NA                0.1542786   0.1253958   0.1831614
12-15 months   MAL-ED       PERU                           0                    NA                0.1380424   0.1182091   0.1578756
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1899330   0.1656690   0.2141970
12-15 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.1841365   0.0458282   0.3224448
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1907961   0.0852023   0.2963900
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1575696   0.1319494   0.1831897
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                0.1307694   0.1177369   0.1438019
12-15 months   NIH-Birth    BANGLADESH                     0                    NA                0.1336931   0.1061247   0.1612614
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1715451   0.1593060   0.1837842
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1423937   0.1220005   0.1627870
12-15 months   PROVIDE      BANGLADESH                     1                    NA                0.1798330   0.1675340   0.1921321
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.1822660   0.1446204   0.2199115
15-18 months   CONTENT      PERU                           1                    NA                0.1708919   0.1520766   0.1897072
15-18 months   CONTENT      PERU                           0                    NA                0.1748952   0.0939118   0.2558787
15-18 months   GMS-Nepal    NEPAL                          1                    NA                0.2287255   0.1963438   0.2611073
15-18 months   GMS-Nepal    NEPAL                          0                    NA                0.2164291   0.1965716   0.2362865
15-18 months   MAL-ED       BANGLADESH                     1                    NA                0.1414327   0.1256297   0.1572356
15-18 months   MAL-ED       BANGLADESH                     0                    NA                0.1583369   0.0879156   0.2287581
15-18 months   MAL-ED       INDIA                          1                    NA                0.1617446   0.1462060   0.1772832
15-18 months   MAL-ED       INDIA                          0                    NA                0.1742499   0.1204319   0.2280679
15-18 months   MAL-ED       NEPAL                          1                    NA                0.1974760   0.1737802   0.2211718
15-18 months   MAL-ED       NEPAL                          0                    NA                0.1545521   0.1342938   0.1748105
15-18 months   MAL-ED       PERU                           1                    NA                0.1449080   0.1072149   0.1826012
15-18 months   MAL-ED       PERU                           0                    NA                0.1465592   0.1248227   0.1682958
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.2249042   0.1959609   0.2538476
15-18 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.2095829   0.0897165   0.3294494
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1291144   0.0371532   0.2210756
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1418656   0.1181508   0.1655805
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                0.1534222   0.1384982   0.1683462
15-18 months   NIH-Birth    BANGLADESH                     0                    NA                0.1481849   0.0931423   0.2032276
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1575789   0.1445373   0.1706205
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1704560   0.1534417   0.1874703
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.1604818   0.1481827   0.1727810
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.1092842   0.0715612   0.1470073
18-21 months   CONTENT      PERU                           1                    NA                0.1917938   0.1717914   0.2117963
18-21 months   CONTENT      PERU                           0                    NA                0.1974474   0.1584975   0.2363972
18-21 months   GMS-Nepal    NEPAL                          1                    NA                0.1652463   0.1265926   0.2039000
18-21 months   GMS-Nepal    NEPAL                          0                    NA                0.1568023   0.1363976   0.1772071
18-21 months   MAL-ED       BANGLADESH                     1                    NA                0.1437263   0.1262486   0.1612041
18-21 months   MAL-ED       BANGLADESH                     0                    NA                0.1305111   0.0644416   0.1965805
18-21 months   MAL-ED       INDIA                          1                    NA                0.1725558   0.1573951   0.1877164
18-21 months   MAL-ED       INDIA                          0                    NA                0.1742240   0.1034554   0.2449926
18-21 months   MAL-ED       NEPAL                          1                    NA                0.1467797   0.1162311   0.1773283
18-21 months   MAL-ED       NEPAL                          0                    NA                0.1514619   0.1301186   0.1728051
18-21 months   MAL-ED       PERU                           1                    NA                0.1738952   0.1337729   0.2140175
18-21 months   MAL-ED       PERU                           0                    NA                0.1577221   0.1362462   0.1791980
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1785865   0.1511326   0.2060404
18-21 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.1601105   0.0581901   0.2620308
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1186429   0.0419310   0.1953547
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1471690   0.1209910   0.1733470
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                0.1734837   0.1564068   0.1905607
18-21 months   NIH-Birth    BANGLADESH                     0                    NA                0.1676193   0.1184066   0.2168320
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1399089   0.1270343   0.1527836
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1490322   0.1296681   0.1683964
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.1301675   0.1181875   0.1421475
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.1581186   0.1202730   0.1959641
21-24 months   CONTENT      PERU                           1                    NA                0.2022749   0.1471026   0.2574472
21-24 months   CONTENT      PERU                           0                    NA                0.2262289   0.1481383   0.3043194
21-24 months   GMS-Nepal    NEPAL                          1                    NA                0.1085032   0.0483132   0.1686932
21-24 months   GMS-Nepal    NEPAL                          0                    NA                0.1886306   0.1546924   0.2225689
21-24 months   MAL-ED       BANGLADESH                     1                    NA                0.1495529   0.1341435   0.1649623
21-24 months   MAL-ED       BANGLADESH                     0                    NA                0.1827070   0.1178069   0.2476072
21-24 months   MAL-ED       INDIA                          1                    NA                0.1598280   0.1463242   0.1733317
21-24 months   MAL-ED       INDIA                          0                    NA                0.1062258   0.0555365   0.1569151
21-24 months   MAL-ED       NEPAL                          1                    NA                0.1683257   0.1381867   0.1984647
21-24 months   MAL-ED       NEPAL                          0                    NA                0.1698147   0.1419376   0.1976918
21-24 months   MAL-ED       PERU                           1                    NA                0.1730435   0.1359117   0.2101753
21-24 months   MAL-ED       PERU                           0                    NA                0.1840995   0.1609584   0.2072405
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1848720   0.1604780   0.2092659
21-24 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.2212206   0.1242905   0.3181507
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1859918   0.0925344   0.2794491
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1390942   0.1100543   0.1681342
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                0.1389189   0.1231059   0.1547319
21-24 months   NIH-Birth    BANGLADESH                     0                    NA                0.1577279   0.1079210   0.2075348
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1674164   0.1513519   0.1834809
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1900875   0.1705476   0.2096274
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.1398234   0.1280109   0.1516358
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.1658570   0.1222546   0.2094594


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL                          NA                   NA                0.8225900   0.8032347   0.8419453
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                0.8772390   0.8535646   0.9009134
0-3 months     MAL-ED       INDIA                          NA                   NA                0.7600956   0.7374283   0.7827630
0-3 months     MAL-ED       NEPAL                          NA                   NA                0.9610194   0.9339338   0.9881050
0-3 months     MAL-ED       PERU                           NA                   NA                0.9711748   0.9453625   0.9969872
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.9442402   0.9164250   0.9720554
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8831857   0.8524650   0.9139064
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                0.8166154   0.7997440   0.8334868
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
3-6 months     CONTENT      PERU                           NA                   NA                0.5883623   0.5672770   0.6094476
3-6 months     GMS-Nepal    NEPAL                          NA                   NA                0.5013279   0.4853427   0.5173130
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                0.4746501   0.4579760   0.4913241
3-6 months     MAL-ED       INDIA                          NA                   NA                0.4452214   0.4276818   0.4627610
3-6 months     MAL-ED       NEPAL                          NA                   NA                0.5259564   0.5059921   0.5459206
3-6 months     MAL-ED       PERU                           NA                   NA                0.4982335   0.4792789   0.5171881
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.4668324   0.4408845   0.4927803
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4569883   0.4327269   0.4812498
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                0.4601380   0.4429288   0.4773471
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
6-9 months     CONTENT      PERU                           NA                   NA                0.3201718   0.3007014   0.3396422
6-9 months     GMS-Nepal    NEPAL                          NA                   NA                0.1897505   0.1756658   0.2038351
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                0.2428552   0.2283339   0.2573765
6-9 months     MAL-ED       INDIA                          NA                   NA                0.2318230   0.2168658   0.2467803
6-9 months     MAL-ED       NEPAL                          NA                   NA                0.2685740   0.2540269   0.2831212
6-9 months     MAL-ED       PERU                           NA                   NA                0.2613933   0.2459015   0.2768851
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                0.2593884   0.2383337   0.2804432
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388507   0.2145606   0.2631408
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                0.2366132   0.2228723   0.2503541
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
9-12 months    CONTENT      PERU                           NA                   NA                0.2245187   0.2063866   0.2426509
9-12 months    GMS-Nepal    NEPAL                          NA                   NA                0.1431658   0.1287483   0.1575834
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                0.1730346   0.1593686   0.1867006
9-12 months    MAL-ED       INDIA                          NA                   NA                0.1788440   0.1647878   0.1929001
9-12 months    MAL-ED       NEPAL                          NA                   NA                0.1866112   0.1718660   0.2013565
9-12 months    MAL-ED       PERU                           NA                   NA                0.1874806   0.1721694   0.2027919
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                0.2146445   0.1925652   0.2367238
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1668661   0.1464634   0.1872687
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                0.1630760   0.1499069   0.1762450
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
12-15 months   CONTENT      PERU                           NA                   NA                0.1810771   0.1624014   0.1997528
12-15 months   GMS-Nepal    NEPAL                          NA                   NA                0.1747454   0.1597649   0.1897259
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                0.1353586   0.1195861   0.1511312
12-15 months   MAL-ED       INDIA                          NA                   NA                0.1739561   0.1580675   0.1898447
12-15 months   MAL-ED       NEPAL                          NA                   NA                0.1556525   0.1388069   0.1724982
12-15 months   MAL-ED       PERU                           NA                   NA                0.1417390   0.1250455   0.1584325
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1894245   0.1641813   0.2146678
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1593496   0.1344315   0.1842676
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1310872   0.1190907   0.1430837
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
15-18 months   CONTENT      PERU                           NA                   NA                0.1711673   0.1527815   0.1895531
15-18 months   GMS-Nepal    NEPAL                          NA                   NA                0.2187099   0.2014496   0.2359702
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                0.1427882   0.1271818   0.1583946
15-18 months   MAL-ED       INDIA                          NA                   NA                0.1625746   0.1476285   0.1775207
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.1732825   0.1576223   0.1889428
15-18 months   MAL-ED       PERU                           NA                   NA                0.1461889   0.1273267   0.1650511
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.2236104   0.1952383   0.2519826
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1411637   0.1181864   0.1641411
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1528611   0.1382886   0.1674335
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
18-21 months   CONTENT      PERU                           NA                   NA                0.1921646   0.1732990   0.2110302
18-21 months   GMS-Nepal    NEPAL                          NA                   NA                0.1583779   0.1402777   0.1764780
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                0.1427146   0.1257942   0.1596351
18-21 months   MAL-ED       INDIA                          NA                   NA                0.1726665   0.1577530   0.1875800
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.1494187   0.1314602   0.1673773
18-21 months   MAL-ED       PERU                           NA                   NA                0.1615652   0.1425950   0.1805355
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1770799   0.1505223   0.2036374
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1455073   0.1204358   0.1705787
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1728012   0.1566602   0.1889421
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   CONTENT      PERU                           NA                   NA                0.2054267   0.1563552   0.2544983
21-24 months   GMS-Nepal    NEPAL                          NA                   NA                0.1719511   0.1420206   0.2018815
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                0.1521155   0.1369898   0.1672413
21-24 months   MAL-ED       INDIA                          NA                   NA                0.1562703   0.1431057   0.1694349
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.1691582   0.1486761   0.1896402
21-24 months   MAL-ED       PERU                           NA                   NA                0.1814671   0.1617319   0.2012023
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.1876561   0.1639063   0.2114059
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1418529   0.1139325   0.1697734
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.1410750   0.1259441   0.1562059
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL                          0                    1                  0.0220836   -0.0258956    0.0700628
0-3 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     0                    1                 -0.0207674   -0.1052220    0.0636871
0-3 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          0                    1                 -0.0470783   -0.1768788    0.0827221
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.0242212   -0.0792930    0.0308506
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0679607   -0.1386384    0.0027170
0-3 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0087094   -0.1049933    0.0875744
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0120600   -0.1148081    0.1389280
0-3 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0664475   -0.1127287   -0.0201662
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0286560   -0.0055757    0.0628877
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.0838803   -0.1405715   -0.0271890
3-6 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           0                    1                 -0.0212198   -0.1025692    0.0601296
3-6 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL                          0                    1                 -0.0118880   -0.0530955    0.0293195
3-6 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     0                    1                 -0.0545837   -0.1145992    0.0054318
3-6 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          0                    1                  0.0103975   -0.0638889    0.0846839
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                 -0.0173179   -0.0588875    0.0242518
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0008484   -0.0454751    0.0437783
3-6 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0036736   -0.1127081    0.1053608
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0290445   -0.0706513    0.1287403
3-6 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0195271   -0.0649816    0.0259275
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0041771   -0.0287373    0.0203831
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.0416037   -0.0789819   -0.0042255
6-9 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           0                    1                 -0.0302478   -0.1027204    0.0422248
6-9 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL                          0                    1                  0.0073056   -0.0198998    0.0345110
6-9 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     0                    1                 -0.0284243   -0.0631275    0.0062789
6-9 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          0                    1                  0.0014822   -0.0457268    0.0486912
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0216737   -0.0518785    0.0085310
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0299238   -0.0661323    0.0062847
6-9 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0465329   -0.0194331    0.1124989
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0495411   -0.0195709    0.1186532
6-9 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0338720   -0.0775585    0.0098145
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0213833   -0.0011136    0.0438801
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0268202   -0.0618074    0.0081670
9-12 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           0                    1                 -0.0227337   -0.1064693    0.0610019
9-12 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL                          0                    1                 -0.0008052   -0.0331058    0.0314954
9-12 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     0                    1                  0.0146721   -0.0225779    0.0519221
9-12 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          0                    1                 -0.0182903   -0.0795173    0.0429367
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0043797   -0.0344544    0.0256950
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                 -0.0115648   -0.0482850    0.0251554
9-12 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0229102   -0.0338558    0.0796763
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0369375   -0.0996416    0.0257666
9-12 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     0                    1                 -0.0058441   -0.0430585    0.0313703
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0084471   -0.0138823    0.0307766
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0166301   -0.0439427    0.0106825
12-15 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           0                    1                  0.0244573   -0.0449638    0.0938783
12-15 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL                          0                    1                 -0.0315249   -0.0674878    0.0044380
12-15 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     0                    1                 -0.0593958   -0.1347335    0.0159419
12-15 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          0                    1                 -0.0510610   -0.1126522    0.0105302
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                 -0.0141581   -0.0490774    0.0207612
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0162362   -0.0512730    0.0188005
12-15 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0057965   -0.1462171    0.1346241
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0332266   -0.1418840    0.0754309
12-15 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     0                    1                  0.0029237   -0.0275699    0.0334173
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0291513   -0.0529354   -0.0053673
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                  0.0024329   -0.0371708    0.0420366
15-18 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           0                    1                  0.0040033   -0.0791371    0.0871438
15-18 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL                          0                    1                 -0.0122965   -0.0502819    0.0256890
15-18 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     0                    1                  0.0169042   -0.0552684    0.0890768
15-18 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          0                    1                  0.0125053   -0.0435110    0.0685216
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0429238   -0.0740990   -0.0117487
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                  0.0016512   -0.0418603    0.0451627
15-18 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0153213   -0.1386327    0.1079901
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0127512   -0.0822185    0.1077210
15-18 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0052372   -0.0622673    0.0517928
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0128771   -0.0085605    0.0343147
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0511976   -0.0908750   -0.0115201
18-21 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           0                    1                  0.0056535   -0.0381322    0.0494393
18-21 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL                          0                    1                 -0.0084440   -0.0521529    0.0352648
18-21 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     0                    1                 -0.0132153   -0.0815574    0.0551269
18-21 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          0                    1                  0.0016682   -0.0707061    0.0740425
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0046822   -0.0325838    0.0419482
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                 -0.0161731   -0.0616815    0.0293353
18-21 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0184760   -0.1240292    0.0870772
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0285261   -0.0525294    0.1095816
18-21 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0058644   -0.0579558    0.0462270
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0091233   -0.0141302    0.0323768
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                  0.0279510   -0.0117454    0.0676474
21-24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           0                    1                  0.0239540   -0.0716604    0.1195683
21-24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL                          0                    1                  0.0801275    0.0110287    0.1492262
21-24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     0                    1                  0.0331541   -0.0335503    0.0998586
21-24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          0                    1                 -0.0536022   -0.1060593   -0.0011450
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                  0.0014890   -0.0395657    0.0425437
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                  0.0110559   -0.0326966    0.0548084
21-24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0363487   -0.0636039    0.1363012
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0468975   -0.1447627    0.0509677
21-24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     0                    1                  0.0188090   -0.0334479    0.0710658
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0226712   -0.0026246    0.0479669
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0260336   -0.0191405    0.0712077


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                 0.0179776   -0.0210900    0.0570452
0-3 months     MAL-ED       BANGLADESH                     1                    NA                -0.0016510   -0.0084028    0.0051008
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0030439   -0.0115679    0.0054802
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0135163   -0.0442889    0.0172563
0-3 months     MAL-ED       PERU                           1                    NA                -0.0533617   -0.1089569    0.0022335
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0006858   -0.0082727    0.0069011
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0113813   -0.1083475    0.1311101
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0073175   -0.0126965   -0.0019385
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0069170   -0.0013940    0.0152279
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.0070774   -0.0121909   -0.0019639
3-6 months     CONTENT      PERU                           1                    NA                -0.0013882   -0.0067566    0.0039802
3-6 months     GMS-Nepal    NEPAL                          1                    NA                -0.0096389   -0.0430538    0.0237759
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0042168   -0.0092180    0.0007845
3-6 months     MAL-ED       INDIA                          1                    NA                 0.0006781   -0.0041781    0.0055343
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0096126   -0.0327137    0.0134886
3-6 months     MAL-ED       PERU                           1                    NA                -0.0006641   -0.0355966    0.0342684
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0002896   -0.0088866    0.0083074
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0276964   -0.0673753    0.1227682
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0021780   -0.0072755    0.0029194
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0010413   -0.0071653    0.0050827
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0032535   -0.0063102   -0.0001969
6-9 months     CONTENT      PERU                           1                    NA                -0.0019788   -0.0068252    0.0028676
6-9 months     GMS-Nepal    NEPAL                          1                    NA                 0.0059844   -0.0163027    0.0282715
6-9 months     MAL-ED       BANGLADESH                     1                    NA                -0.0020303   -0.0046888    0.0006282
6-9 months     MAL-ED       INDIA                          1                    NA                 0.0000967   -0.0029825    0.0031759
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0119546   -0.0286748    0.0047657
6-9 months     MAL-ED       PERU                           1                    NA                -0.0229619   -0.0507917    0.0048678
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0036259   -0.0017611    0.0090130
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0473196   -0.0187071    0.1133462
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0037484   -0.0086725    0.0011757
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0053998   -0.0003232    0.0111229
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0020488   -0.0047841    0.0006866
9-12 months    CONTENT      PERU                           1                    NA                -0.0015013   -0.0070832    0.0040807
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0006545   -0.0269101    0.0256010
9-12 months    MAL-ED       BANGLADESH                     1                    NA                 0.0011086   -0.0017513    0.0039684
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0011280   -0.0049475    0.0026914
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0024266   -0.0190921    0.0142389
9-12 months    MAL-ED       PERU                           1                    NA                -0.0089073   -0.0371966    0.0193819
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0018682   -0.0028306    0.0065670
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0349409   -0.0942658    0.0243840
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0006588   -0.0048575    0.0035398
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0021396   -0.0035230    0.0078023
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0013152   -0.0035066    0.0008761
12-15 months   CONTENT      PERU                           1                    NA                 0.0017206   -0.0032404    0.0066816
12-15 months   GMS-Nepal    NEPAL                          1                    NA                -0.0256640   -0.0549686    0.0036407
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0047629   -0.0111842    0.0016585
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0031631   -0.0073036    0.0009774
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0078727   -0.0273117    0.0115664
12-15 months   MAL-ED       PERU                           1                    NA                -0.0125396   -0.0396140    0.0145348
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0005085   -0.0128279    0.0118110
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0314466   -0.1342878    0.0713947
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0003178   -0.0029978    0.0036334
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0074848   -0.0136677   -0.0013019
12-15 months   PROVIDE      BANGLADESH                     1                    NA                 0.0001993   -0.0030461    0.0034448
15-18 months   CONTENT      PERU                           1                    NA                 0.0002754   -0.0054451    0.0059959
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0100157   -0.0409593    0.0209279
15-18 months   MAL-ED       BANGLADESH                     1                    NA                 0.0013555   -0.0044650    0.0071760
15-18 months   MAL-ED       INDIA                          1                    NA                 0.0008300   -0.0029101    0.0045701
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0241934   -0.0419896   -0.0063972
15-18 months   MAL-ED       PERU                           1                    NA                 0.0012809   -0.0324712    0.0350329
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0012938   -0.0117217    0.0091341
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0120493   -0.0776936    0.1017922
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0005611   -0.0066733    0.0055511
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0036184   -0.0024231    0.0096598
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0041304   -0.0075436   -0.0007172
18-21 months   CONTENT      PERU                           1                    NA                 0.0003707   -0.0025077    0.0032491
18-21 months   GMS-Nepal    NEPAL                          1                    NA                -0.0068685   -0.0424234    0.0286865
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0010117   -0.0062654    0.0042420
18-21 months   MAL-ED       INDIA                          1                    NA                 0.0001107   -0.0046932    0.0049146
18-21 months   MAL-ED       NEPAL                          1                    NA                 0.0026390   -0.0183677    0.0236458
18-21 months   MAL-ED       PERU                           1                    NA                -0.0123300   -0.0470375    0.0223776
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0015066   -0.0101385    0.0071253
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0268644   -0.0494749    0.1032037
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0006826   -0.0067481    0.0053830
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0027520   -0.0042711    0.0097751
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0023207   -0.0010386    0.0056799
21-24 months   CONTENT      PERU                           1                    NA                 0.0031518   -0.0096967    0.0160004
21-24 months   GMS-Nepal    NEPAL                          1                    NA                 0.0634479    0.0085809    0.1183149
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0025626   -0.0027331    0.0078584
21-24 months   MAL-ED       INDIA                          1                    NA                -0.0035577   -0.0074515    0.0003361
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0008325   -0.0221210    0.0237860
21-24 months   MAL-ED       PERU                           1                    NA                 0.0084236   -0.0249185    0.0417656
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0027842   -0.0049713    0.0105396
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0441388   -0.1362598    0.0479821
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0021562   -0.0038623    0.0081747
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0076337   -0.0009362    0.0162036
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0021471   -0.0016328    0.0059270
