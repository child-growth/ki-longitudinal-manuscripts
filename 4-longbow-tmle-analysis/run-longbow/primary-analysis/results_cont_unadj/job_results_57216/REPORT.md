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
0-3 months     CMC-V-BCS-2002   INDIA                          1               68    68
0-3 months     CMC-V-BCS-2002   INDIA                          0                0    68
0-3 months     CONTENT          PERU                           1               27    29
0-3 months     CONTENT          PERU                           0                2    29
0-3 months     GMS-Nepal        NEPAL                          1               72   398
0-3 months     GMS-Nepal        NEPAL                          0              326   398
0-3 months     IRC              INDIA                          1              280   280
0-3 months     IRC              INDIA                          0                0   280
0-3 months     MAL-ED           BANGLADESH                     1              217   236
0-3 months     MAL-ED           BANGLADESH                     0               19   236
0-3 months     MAL-ED           BRAZIL                         1              161   163
0-3 months     MAL-ED           BRAZIL                         0                2   163
0-3 months     MAL-ED           INDIA                          1              166   177
0-3 months     MAL-ED           INDIA                          0               11   177
0-3 months     MAL-ED           NEPAL                          1               61   150
0-3 months     MAL-ED           NEPAL                          0               89   150
0-3 months     MAL-ED           PERU                           1               53   254
0-3 months     MAL-ED           PERU                           0              201   254
0-3 months     MAL-ED           SOUTH AFRICA                   1              178   198
0-3 months     MAL-ED           SOUTH AFRICA                   0               20   198
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               10   223
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              213   223
0-3 months     NIH-Birth        BANGLADESH                     1              501   564
0-3 months     NIH-Birth        BANGLADESH                     0               63   564
0-3 months     NIH-Crypto       BANGLADESH                     1              547   721
0-3 months     NIH-Crypto       BANGLADESH                     0              174   721
0-3 months     PROVIDE          BANGLADESH                     1              586   640
0-3 months     PROVIDE          BANGLADESH                     0               54   640
3-6 months     CMC-V-BCS-2002   INDIA                          1              214   214
3-6 months     CMC-V-BCS-2002   INDIA                          0                0   214
3-6 months     CONTENT          PERU                           1              200   214
3-6 months     CONTENT          PERU                           0               14   214
3-6 months     GMS-Nepal        NEPAL                          1               69   370
3-6 months     GMS-Nepal        NEPAL                          0              301   370
3-6 months     IRC              INDIA                          1              297   297
3-6 months     IRC              INDIA                          0                0   297
3-6 months     MAL-ED           BANGLADESH                     1              214   231
3-6 months     MAL-ED           BANGLADESH                     0               17   231
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
3-6 months     NIH-Birth        BANGLADESH                     1              463   521
3-6 months     NIH-Birth        BANGLADESH                     0               58   521
3-6 months     NIH-Crypto       BANGLADESH                     1              521   695
3-6 months     NIH-Crypto       BANGLADESH                     0              174   695
3-6 months     PROVIDE          BANGLADESH                     1              551   598
3-6 months     PROVIDE          BANGLADESH                     0               47   598
6-9 months     CMC-V-BCS-2002   INDIA                          1              219   219
6-9 months     CMC-V-BCS-2002   INDIA                          0                0   219
6-9 months     CONTENT          PERU                           1              200   214
6-9 months     CONTENT          PERU                           0               14   214
6-9 months     GMS-Nepal        NEPAL                          1               68   381
6-9 months     GMS-Nepal        NEPAL                          0              313   381
6-9 months     IRC              INDIA                          1              303   303
6-9 months     IRC              INDIA                          0                0   303
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
6-9 months     NIH-Crypto       BANGLADESH                     1              513   688
6-9 months     NIH-Crypto       BANGLADESH                     0              175   688
6-9 months     PROVIDE          BANGLADESH                     1              522   565
6-9 months     PROVIDE          BANGLADESH                     0               43   565
9-12 months    CMC-V-BCS-2002   INDIA                          1              224   224
9-12 months    CMC-V-BCS-2002   INDIA                          0                0   224
9-12 months    CONTENT          PERU                           1              198   212
9-12 months    CONTENT          PERU                           0               14   212
9-12 months    GMS-Nepal        NEPAL                          1               68   370
9-12 months    GMS-Nepal        NEPAL                          0              302   370
9-12 months    IRC              INDIA                          1              299   299
9-12 months    IRC              INDIA                          0                0   299
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
9-12 months    NIH-Birth        BANGLADESH                     1              426   480
9-12 months    NIH-Birth        BANGLADESH                     0               54   480
9-12 months    NIH-Crypto       BANGLADESH                     1              501   674
9-12 months    NIH-Crypto       BANGLADESH                     0              173   674
9-12 months    PROVIDE          BANGLADESH                     1              521   566
9-12 months    PROVIDE          BANGLADESH                     0               45   566
12-15 months   CMC-V-BCS-2002   INDIA                          1              233   233
12-15 months   CMC-V-BCS-2002   INDIA                          0                0   233
12-15 months   CONTENT          PERU                           1              185   199
12-15 months   CONTENT          PERU                           0               14   199
12-15 months   GMS-Nepal        NEPAL                          1               69   369
12-15 months   GMS-Nepal        NEPAL                          0              300   369
12-15 months   IRC              INDIA                          1              292   292
12-15 months   IRC              INDIA                          0                0   292
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
12-15 months   NIH-Crypto       BANGLADESH                     1              489   660
12-15 months   NIH-Crypto       BANGLADESH                     0              171   660
12-15 months   PROVIDE          BANGLADESH                     1              490   532
12-15 months   PROVIDE          BANGLADESH                     0               42   532
15-18 months   CMC-V-BCS-2002   INDIA                          1              226   226
15-18 months   CMC-V-BCS-2002   INDIA                          0                0   226
15-18 months   CONTENT          PERU                           1              176   189
15-18 months   CONTENT          PERU                           0               13   189
15-18 months   GMS-Nepal        NEPAL                          1               71   375
15-18 months   GMS-Nepal        NEPAL                          0              304   375
15-18 months   IRC              INDIA                          1              284   284
15-18 months   IRC              INDIA                          0                0   284
15-18 months   MAL-ED           BANGLADESH                     1              195   212
15-18 months   MAL-ED           BANGLADESH                     0               17   212
15-18 months   MAL-ED           BRAZIL                         1              173   175
15-18 months   MAL-ED           BRAZIL                         0                2   175
15-18 months   MAL-ED           INDIA                          1              211   226
15-18 months   MAL-ED           INDIA                          0               15   226
15-18 months   MAL-ED           NEPAL                          1               96   220
15-18 months   MAL-ED           NEPAL                          0              124   220
15-18 months   MAL-ED           PERU                           1               48   213
15-18 months   MAL-ED           PERU                           0              165   213
15-18 months   MAL-ED           SOUTH AFRICA                   1              206   225
15-18 months   MAL-ED           SOUTH AFRICA                   0               19   225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   215
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              203   215
15-18 months   NIH-Birth        BANGLADESH                     1              400   448
15-18 months   NIH-Birth        BANGLADESH                     0               48   448
15-18 months   NIH-Crypto       BANGLADESH                     1              434   604
15-18 months   NIH-Crypto       BANGLADESH                     0              170   604
15-18 months   PROVIDE          BANGLADESH                     1              487   528
15-18 months   PROVIDE          BANGLADESH                     0               41   528
18-21 months   CMC-V-BCS-2002   INDIA                          1              213   213
18-21 months   CMC-V-BCS-2002   INDIA                          0                0   213
18-21 months   CONTENT          PERU                           1              171   183
18-21 months   CONTENT          PERU                           0               12   183
18-21 months   GMS-Nepal        NEPAL                          1               64   342
18-21 months   GMS-Nepal        NEPAL                          0              278   342
18-21 months   IRC              INDIA                          1              283   283
18-21 months   IRC              INDIA                          0                0   283
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   202
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              190   202
18-21 months   NIH-Birth        BANGLADESH                     1              372   421
18-21 months   NIH-Birth        BANGLADESH                     0               49   421
18-21 months   NIH-Crypto       BANGLADESH                     1              381   546
18-21 months   NIH-Crypto       BANGLADESH                     0              165   546
18-21 months   PROVIDE          BANGLADESH                     1              497   541
18-21 months   PROVIDE          BANGLADESH                     0               44   541
21-24 months   CMC-V-BCS-2002   INDIA                          1              213   213
21-24 months   CMC-V-BCS-2002   INDIA                          0                0   213
21-24 months   CONTENT          PERU                           1               33    38
21-24 months   CONTENT          PERU                           0                5    38
21-24 months   GMS-Nepal        NEPAL                          1               50   245
21-24 months   GMS-Nepal        NEPAL                          0              195   245
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12   202
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              190   202
21-24 months   NIH-Birth        BANGLADESH                     1              363   410
21-24 months   NIH-Birth        BANGLADESH                     0               47   410
21-24 months   NIH-Crypto       BANGLADESH                     1              324   490
21-24 months   NIH-Crypto       BANGLADESH                     0              166   490
21-24 months   PROVIDE          BANGLADESH                     1              435   471
21-24 months   PROVIDE          BANGLADESH                     0               36   471


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
![](/tmp/47dd3de0-75b9-424e-86d8-324643579650/9a41dd40-53af-4780-b571-4af07f9af00f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/47dd3de0-75b9-424e-86d8-324643579650/9a41dd40-53af-4780-b571-4af07f9af00f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/47dd3de0-75b9-424e-86d8-324643579650/9a41dd40-53af-4780-b571-4af07f9af00f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                -0.0729085   -0.1309567   -0.0148603
0-3 months     GMS-Nepal    NEPAL                          0                    NA                -0.0113594   -0.0439957    0.0212769
0-3 months     MAL-ED       BANGLADESH                     1                    NA                -0.1216269   -0.1566598   -0.0865940
0-3 months     MAL-ED       BANGLADESH                     0                    NA                -0.0710204   -0.1920335    0.0499928
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0666661   -0.1127251   -0.0206072
0-3 months     MAL-ED       INDIA                          0                    NA                -0.1029883   -0.3844260    0.1784495
0-3 months     MAL-ED       NEPAL                          1                    NA                 0.0921189    0.0229420    0.1612957
0-3 months     MAL-ED       NEPAL                          0                    NA                 0.0347835   -0.0242017    0.0937687
0-3 months     MAL-ED       PERU                           1                    NA                -0.2121764   -0.2740329   -0.1503198
0-3 months     MAL-ED       PERU                           0                    NA                -0.2655193   -0.3042053   -0.2268332
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.1956833   -0.2501579   -0.1412087
0-3 months     MAL-ED       SOUTH AFRICA                   0                    NA                -0.1224793   -0.2510671    0.0061085
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0127987   -0.1397021    0.1141046
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1480235   -0.1888852   -0.1071619
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                -0.2333312   -0.2617732   -0.2048892
0-3 months     NIH-Birth    BANGLADESH                     0                    NA                -0.2225770   -0.2996409   -0.1455131
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.2099055   -0.2306501   -0.1891609
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.2983946   -0.3270580   -0.2697313
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.1852206   -0.2033338   -0.1671074
0-3 months     PROVIDE      BANGLADESH                     0                    NA                -0.2186381   -0.2792852   -0.1579909
3-6 months     CONTENT      PERU                           1                    NA                 0.0178061   -0.0055181    0.0411304
3-6 months     CONTENT      PERU                           0                    NA                 0.0113360   -0.0640355    0.0867074
3-6 months     GMS-Nepal    NEPAL                          1                    NA                -0.1563130   -0.2045052   -0.1081208
3-6 months     GMS-Nepal    NEPAL                          0                    NA                -0.1624181   -0.1859156   -0.1389206
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0163428   -0.0410660    0.0083804
3-6 months     MAL-ED       BANGLADESH                     0                    NA                -0.0992032   -0.1659812   -0.0324252
3-6 months     MAL-ED       INDIA                          1                    NA                -0.0358644   -0.0664227   -0.0053061
3-6 months     MAL-ED       INDIA                          0                    NA                -0.0385601   -0.1510093    0.0738892
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0154076   -0.0569859    0.0261708
3-6 months     MAL-ED       NEPAL                          0                    NA                -0.0291145   -0.0650593    0.0068302
3-6 months     MAL-ED       PERU                           1                    NA                 0.0452352   -0.0173387    0.1078091
3-6 months     MAL-ED       PERU                           0                    NA                 0.0203376   -0.0155962    0.0562714
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0009149   -0.0389357    0.0407655
3-6 months     MAL-ED       SOUTH AFRICA                   0                    NA                -0.0317692   -0.1529901    0.0894517
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0686403   -0.1988562    0.0615756
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0691872   -0.1025378   -0.0358366
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0472474   -0.0706810   -0.0238137
3-6 months     NIH-Birth    BANGLADESH                     0                    NA                -0.0738749   -0.1418397   -0.0059101
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0081609   -0.0099790    0.0263008
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                 0.0825065    0.0441852    0.1208279
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0235001   -0.0401668   -0.0068334
3-6 months     PROVIDE      BANGLADESH                     0                    NA                -0.0675537   -0.1185809   -0.0165264
6-9 months     CONTENT      PERU                           1                    NA                -0.0225469   -0.0433012   -0.0017926
6-9 months     CONTENT      PERU                           0                    NA                -0.0388435   -0.1319861    0.0542992
6-9 months     GMS-Nepal    NEPAL                          1                    NA                -0.0818176   -0.1194050   -0.0442303
6-9 months     GMS-Nepal    NEPAL                          0                    NA                -0.0392531   -0.0633069   -0.0151992
6-9 months     MAL-ED       BANGLADESH                     1                    NA                -0.0707996   -0.0887264   -0.0528728
6-9 months     MAL-ED       BANGLADESH                     0                    NA                -0.0599290   -0.1234833    0.0036253
6-9 months     MAL-ED       INDIA                          1                    NA                -0.0713043   -0.0945822   -0.0480264
6-9 months     MAL-ED       INDIA                          0                    NA                -0.0564502   -0.1656151    0.0527148
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0331465   -0.0604922   -0.0058009
6-9 months     MAL-ED       NEPAL                          0                    NA                -0.0321695   -0.0597156   -0.0046233
6-9 months     MAL-ED       PERU                           1                    NA                -0.0302800   -0.0828732    0.0223133
6-9 months     MAL-ED       PERU                           0                    NA                -0.0345785   -0.0616551   -0.0075019
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0171409   -0.0457346    0.0114528
6-9 months     MAL-ED       SOUTH AFRICA                   0                    NA                -0.0253781   -0.1508637    0.1001076
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0382039   -0.3095897    0.2331819
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0946288   -0.1274876   -0.0617699
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0551309   -0.0744452   -0.0358167
6-9 months     NIH-Birth    BANGLADESH                     0                    NA                -0.0922147   -0.1362353   -0.0481941
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0224971   -0.0374898   -0.0075043
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.0573559   -0.0810570   -0.0336548
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0590635   -0.0702462   -0.0478808
6-9 months     PROVIDE      BANGLADESH                     0                    NA                -0.0901108   -0.1323988   -0.0478228
9-12 months    CONTENT      PERU                           1                    NA                -0.0245699   -0.0411172   -0.0080227
9-12 months    CONTENT      PERU                           0                    NA                 0.0037429   -0.0706181    0.0781039
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0501915   -0.0766924   -0.0236905
9-12 months    GMS-Nepal    NEPAL                          0                    NA                -0.0827039   -0.1016471   -0.0637607
9-12 months    MAL-ED       BANGLADESH                     1                    NA                -0.0866815   -0.1036479   -0.0697152
9-12 months    MAL-ED       BANGLADESH                     0                    NA                -0.0936149   -0.1451380   -0.0420918
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0901082   -0.1061627   -0.0740537
9-12 months    MAL-ED       INDIA                          0                    NA                -0.1084586   -0.1864846   -0.0304326
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0529860   -0.0813221   -0.0246499
9-12 months    MAL-ED       NEPAL                          0                    NA                -0.0703722   -0.0911033   -0.0496412
9-12 months    MAL-ED       PERU                           1                    NA                -0.0492833   -0.0947201   -0.0038465
9-12 months    MAL-ED       PERU                           0                    NA                -0.0397311   -0.0640644   -0.0153978
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0863168   -0.1145966   -0.0580369
9-12 months    MAL-ED       SOUTH AFRICA                   0                    NA                -0.0684780   -0.1531999    0.0162438
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2276078   -0.5084195    0.0532039
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1523532   -0.1842201   -0.1204864
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0377425   -0.0529441   -0.0225409
9-12 months    NIH-Birth    BANGLADESH                     0                    NA                -0.0715848   -0.1168104   -0.0263593
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0368161   -0.0497924   -0.0238398
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                -0.0270114   -0.0470846   -0.0069383
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0608925   -0.0724767   -0.0493083
9-12 months    PROVIDE      BANGLADESH                     0                    NA                -0.0879913   -0.1195653   -0.0564173
12-15 months   CONTENT      PERU                           1                    NA                -0.0702596   -0.0871296   -0.0533896
12-15 months   CONTENT      PERU                           0                    NA                -0.1404629   -0.1900562   -0.0908696
12-15 months   GMS-Nepal    NEPAL                          1                    NA                -0.0771830   -0.0962293   -0.0581367
12-15 months   GMS-Nepal    NEPAL                          0                    NA                -0.0616167   -0.0765512   -0.0466822
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0513657   -0.0673777   -0.0353537
12-15 months   MAL-ED       BANGLADESH                     0                    NA                -0.1055710   -0.1620943   -0.0490477
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0528335   -0.0684429   -0.0372241
12-15 months   MAL-ED       INDIA                          0                    NA                -0.1123820   -0.1726852   -0.0520789
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0623075   -0.0868863   -0.0377287
12-15 months   MAL-ED       NEPAL                          0                    NA                -0.0537928   -0.0738019   -0.0337836
12-15 months   MAL-ED       PERU                           1                    NA                -0.0560843   -0.0930042   -0.0191644
12-15 months   MAL-ED       PERU                           0                    NA                -0.0680856   -0.0884980   -0.0476733
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0592785   -0.0834780   -0.0350790
12-15 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0581083   -0.1261308    0.0099142
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0645222   -0.1735735    0.0445290
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0701846   -0.0961446   -0.0442245
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                -0.1277767   -0.1460810   -0.1094723
12-15 months   NIH-Birth    BANGLADESH                     0                    NA                -0.1107587   -0.1533215   -0.0681960
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0384018   -0.0494441   -0.0273595
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0381297   -0.0566451   -0.0196142
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0399675   -0.0505567   -0.0293783
12-15 months   PROVIDE      BANGLADESH                     0                    NA                -0.0519149   -0.0847030   -0.0191267
15-18 months   CONTENT      PERU                           1                    NA                -0.0090375   -0.0261166    0.0080416
15-18 months   CONTENT      PERU                           0                    NA                -0.0322908   -0.0992847    0.0347031
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0804276   -0.1024298   -0.0584254
15-18 months   GMS-Nepal    NEPAL                          0                    NA                -0.0669579   -0.0852432   -0.0486727
15-18 months   MAL-ED       BANGLADESH                     1                    NA                -0.0442932   -0.0582081   -0.0303782
15-18 months   MAL-ED       BANGLADESH                     0                    NA                -0.0630128   -0.1149325   -0.0110930
15-18 months   MAL-ED       INDIA                          1                    NA                -0.0395448   -0.0527255   -0.0263641
15-18 months   MAL-ED       INDIA                          0                    NA                -0.0163215   -0.0701385    0.0374955
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0535217   -0.0756596   -0.0313838
15-18 months   MAL-ED       NEPAL                          0                    NA                -0.0531219   -0.0739195   -0.0323244
15-18 months   MAL-ED       PERU                           1                    NA                -0.0283176   -0.0642177    0.0075825
15-18 months   MAL-ED       PERU                           0                    NA                -0.0383078   -0.0553470   -0.0212687
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0272362   -0.0472978   -0.0071746
15-18 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0427663   -0.0993013    0.0137687
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0934435   -0.2054899    0.0186029
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0848486   -0.1077898   -0.0619075
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0570856   -0.0725591   -0.0416121
15-18 months   NIH-Birth    BANGLADESH                     0                    NA                -0.0637933   -0.1111478   -0.0164388
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0188233   -0.0284026   -0.0092440
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0120161   -0.0287780    0.0047458
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0368588   -0.0459802   -0.0277373
15-18 months   PROVIDE      BANGLADESH                     0                    NA                -0.0469674   -0.0775289   -0.0164059
18-21 months   CONTENT      PERU                           1                    NA                -0.0061864   -0.0219566    0.0095839
18-21 months   CONTENT      PERU                           0                    NA                -0.0156817   -0.0663759    0.0350124
18-21 months   GMS-Nepal    NEPAL                          1                    NA                 0.0281097    0.0086432    0.0475763
18-21 months   GMS-Nepal    NEPAL                          0                    NA                 0.0110371   -0.0061366    0.0282108
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0150704   -0.0271999   -0.0029409
18-21 months   MAL-ED       BANGLADESH                     0                    NA                -0.0209675   -0.0615614    0.0196264
18-21 months   MAL-ED       INDIA                          1                    NA                 0.0072168   -0.0045902    0.0190238
18-21 months   MAL-ED       INDIA                          0                    NA                -0.0145210   -0.0587811    0.0297390
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0151220   -0.0353729    0.0051288
18-21 months   MAL-ED       NEPAL                          0                    NA                -0.0377477   -0.0553518   -0.0201436
18-21 months   MAL-ED       PERU                           1                    NA                 0.0123540   -0.0194719    0.0441800
18-21 months   MAL-ED       PERU                           0                    NA                -0.0144938   -0.0317295    0.0027420
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0301651   -0.0507561   -0.0095741
18-21 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0547086   -0.0913676   -0.0180496
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0450826   -0.1533530    0.0631877
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0258901   -0.0494128   -0.0023673
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0375098   -0.0509309   -0.0240888
18-21 months   NIH-Birth    BANGLADESH                     0                    NA                -0.0506222   -0.0814359   -0.0198084
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0276901   -0.0374704   -0.0179098
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0286121   -0.0426336   -0.0145907
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.0124331   -0.0208665   -0.0039997
18-21 months   PROVIDE      BANGLADESH                     0                    NA                 0.0059270   -0.0250759    0.0369300
21-24 months   CONTENT      PERU                           1                    NA                 0.0255858   -0.0038252    0.0549968
21-24 months   CONTENT      PERU                           0                    NA                 0.0241676   -0.0473072    0.0956425
21-24 months   GMS-Nepal    NEPAL                          1                    NA                 0.0597656    0.0295332    0.0899980
21-24 months   GMS-Nepal    NEPAL                          0                    NA                 0.0574994    0.0343192    0.0806796
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0222079    0.0098625    0.0345532
21-24 months   MAL-ED       BANGLADESH                     0                    NA                 0.0663291    0.0153413    0.1173169
21-24 months   MAL-ED       INDIA                          1                    NA                 0.0281829    0.0168087    0.0395571
21-24 months   MAL-ED       INDIA                          0                    NA                 0.0523759    0.0143842    0.0903675
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0084254   -0.0126736    0.0295244
21-24 months   MAL-ED       NEPAL                          0                    NA                 0.0002945   -0.0182015    0.0187906
21-24 months   MAL-ED       PERU                           1                    NA                 0.0708265    0.0410523    0.1006007
21-24 months   MAL-ED       PERU                           0                    NA                 0.0526456    0.0348922    0.0703989
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0425621    0.0247973    0.0603269
21-24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.0596651    0.0151818    0.1041484
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0367778   -0.0748273    0.1483829
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0075901   -0.0145582    0.0297384
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0388998    0.0266885    0.0511112
21-24 months   NIH-Birth    BANGLADESH                     0                    NA                 0.0522295    0.0118181    0.0926409
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0520562    0.0420360    0.0620764
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                 0.0718508    0.0576467    0.0860548
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0454432    0.0364408    0.0544456
21-24 months   PROVIDE      BANGLADESH                     0                    NA                 0.0557922    0.0248863    0.0866981


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          NA                   NA                -0.0224939   -0.0513092    0.0063213
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                -0.1175527   -0.1512522   -0.0838531
0-3 months     MAL-ED       INDIA                          NA                   NA                -0.0689235   -0.1155446   -0.0223023
0-3 months     MAL-ED       NEPAL                          NA                   NA                 0.0580999    0.0129700    0.1032298
0-3 months     MAL-ED       PERU                           NA                   NA                -0.2543887   -0.2877193   -0.2210580
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.1882890   -0.2390479   -0.1375301
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1419596   -0.1815730   -0.1023462
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.2321299   -0.2588226   -0.2054373
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
3-6 months     CONTENT      PERU                           NA                   NA                 0.0173829   -0.0049673    0.0397330
3-6 months     GMS-Nepal    NEPAL                          NA                   NA                -0.1612796   -0.1824038   -0.1401554
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                -0.0224408   -0.0460321    0.0011506
3-6 months     MAL-ED       INDIA                          NA                   NA                -0.0360402   -0.0655320   -0.0065484
3-6 months     MAL-ED       NEPAL                          NA                   NA                -0.0230158   -0.0502389    0.0042072
3-6 months     MAL-ED       PERU                           NA                   NA                 0.0257461   -0.0055184    0.0570106
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0016619   -0.0396107    0.0362870
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0691618   -0.1015337   -0.0367899
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.0502117   -0.0723801   -0.0280432
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
6-9 months     CONTENT      PERU                           NA                   NA                -0.0236130   -0.0439514   -0.0032747
6-9 months     GMS-Nepal    NEPAL                          NA                   NA                -0.0468499   -0.0677826   -0.0259172
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                -0.0700232   -0.0872813   -0.0527650
6-9 months     MAL-ED       INDIA                          NA                   NA                -0.0703356   -0.0932354   -0.0474358
6-9 months     MAL-ED       NEPAL                          NA                   NA                -0.0326076   -0.0521325   -0.0130827
6-9 months     MAL-ED       PERU                           NA                   NA                -0.0335784   -0.0576919   -0.0094649
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0177828   -0.0459046    0.0103391
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0920985   -0.1257957   -0.0584013
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                -0.0592348   -0.0771184   -0.0413511
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
9-12 months    CONTENT      PERU                           NA                   NA                -0.0227002   -0.0389439   -0.0064565
9-12 months    GMS-Nepal    NEPAL                          NA                   NA                -0.0767286   -0.0929902   -0.0604671
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                -0.0872054   -0.1033675   -0.0710433
9-12 months    MAL-ED       INDIA                          NA                   NA                -0.0912399   -0.1070647   -0.0754152
9-12 months    MAL-ED       NEPAL                          NA                   NA                -0.0626189   -0.0797334   -0.0455044
9-12 months    MAL-ED       PERU                           NA                   NA                -0.0419261   -0.0633861   -0.0204661
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0848621   -0.1117463   -0.0579779
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1564210   -0.1902458   -0.1225963
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                -0.0415497   -0.0560004   -0.0270991
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
12-15 months   CONTENT      PERU                           NA                   NA                -0.0751985   -0.0914586   -0.0589385
12-15 months   GMS-Nepal    NEPAL                          NA                   NA                -0.0645275   -0.0771961   -0.0518588
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0557123   -0.0712495   -0.0401751
12-15 months   MAL-ED       INDIA                          NA                   NA                -0.0565224   -0.0717497   -0.0412950
12-15 months   MAL-ED       NEPAL                          NA                   NA                -0.0575728   -0.0731666   -0.0419791
12-15 months   MAL-ED       PERU                           NA                   NA                -0.0653532   -0.0832313   -0.0474751
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0591759   -0.0820448   -0.0363070
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0698812   -0.0951361   -0.0446264
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.1259269   -0.1428918   -0.1089620
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
15-18 months   CONTENT      PERU                           NA                   NA                -0.0106370   -0.0272168    0.0059428
15-18 months   GMS-Nepal    NEPAL                          NA                   NA                -0.0695082   -0.0849149   -0.0541014
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0457943   -0.0592710   -0.0323176
15-18 months   MAL-ED       INDIA                          NA                   NA                -0.0380035   -0.0508395   -0.0251674
15-18 months   MAL-ED       NEPAL                          NA                   NA                -0.0532964   -0.0684862   -0.0381066
15-18 months   MAL-ED       PERU                           NA                   NA                -0.0360565   -0.0515481   -0.0205649
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0285476   -0.0475339   -0.0095614
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0853284   -0.1078754   -0.0627813
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.0578043   -0.0725233   -0.0430852
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
18-21 months   CONTENT      PERU                           NA                   NA                -0.0068090   -0.0219193    0.0083013
18-21 months   GMS-Nepal    NEPAL                          NA                   NA                 0.0142320   -0.0002127    0.0286766
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                -0.0155219   -0.0271478   -0.0038959
18-21 months   MAL-ED       INDIA                          NA                   NA                 0.0057740   -0.0056559    0.0172040
18-21 months   MAL-ED       NEPAL                          NA                   NA                -0.0278747   -0.0412444   -0.0145050
18-21 months   MAL-ED       PERU                           NA                   NA                -0.0081141   -0.0233572    0.0071290
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                -0.0321665   -0.0513327   -0.0130003
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0270302   -0.0500801   -0.0039803
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                -0.0390360   -0.0514319   -0.0266400
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   CONTENT      PERU                           NA                   NA                 0.0253992   -0.0018188    0.0526172
21-24 months   GMS-Nepal    NEPAL                          NA                   NA                 0.0579619    0.0385077    0.0774161
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                 0.0256182    0.0134577    0.0377787
21-24 months   MAL-ED       INDIA                          NA                   NA                 0.0297886    0.0188457    0.0407315
21-24 months   MAL-ED       NEPAL                          NA                   NA                 0.0038795   -0.0100404    0.0177994
21-24 months   MAL-ED       PERU                           NA                   NA                 0.0569744    0.0416628    0.0722859
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                 0.0438721    0.0271077    0.0606365
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0093240   -0.0125589    0.0312069
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                 0.0404278    0.0286585    0.0521972
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL                          0                    1                  0.0615491   -0.0050446    0.1281428
0-3 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     0                    1                  0.0506065   -0.0753756    0.1765887
0-3 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          0                    1                 -0.0363221   -0.3215038    0.2488596
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.0573354   -0.1482457    0.0335750
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0533429   -0.1263007    0.0196149
0-3 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0732040   -0.0664467    0.2128547
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1352248   -0.2685445   -0.0019051
0-3 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     0                    1                  0.0107542   -0.0713907    0.0928991
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0884891   -0.1238717   -0.0531065
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.0334175   -0.0967117    0.0298768
3-6 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           0                    1                 -0.0064702   -0.0853680    0.0724277
3-6 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL                          0                    1                 -0.0061050   -0.0597205    0.0475104
3-6 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     0                    1                 -0.0828604   -0.1540681   -0.0116527
3-6 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          0                    1                 -0.0026957   -0.1192231    0.1138317
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                 -0.0137070   -0.0686686    0.0412546
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0248976   -0.0970552    0.0472601
3-6 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0326841   -0.1602873    0.0949191
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0005469   -0.1349658    0.1338720
3-6 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0266276   -0.0985188    0.0452637
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0743457    0.0319478    0.1167436
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.0440536   -0.0977337    0.0096266
6-9 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           0                    1                 -0.0162966   -0.1117235    0.0791304
6-9 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL                          0                    1                  0.0425646   -0.0020605    0.0871897
6-9 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     0                    1                  0.0108706   -0.0551636    0.0769048
6-9 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          0                    1                  0.0148541   -0.0967651    0.1264734
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                  0.0009771   -0.0378376    0.0397917
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0042985   -0.0634525    0.0548554
6-9 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0082371   -0.1369393    0.1204650
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0564249   -0.3297927    0.2169429
6-9 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0370838   -0.0851551    0.0109876
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0348588   -0.0629038   -0.0068137
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0310473   -0.0747889    0.0126943
9-12 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           0                    1                  0.0283128   -0.0478670    0.1044926
9-12 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL                          0                    1                 -0.0325124   -0.0650876    0.0000628
9-12 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     0                    1                 -0.0069334   -0.0611780    0.0473113
9-12 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          0                    1                 -0.0183504   -0.0980110    0.0613101
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0173862   -0.0524962    0.0177238
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                  0.0095522   -0.0419901    0.0610946
9-12 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0178387   -0.0714784    0.1071558
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0752546   -0.2073595    0.3578686
9-12 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     0                    1                 -0.0338424   -0.0815544    0.0138697
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0098047   -0.0140975    0.0337069
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0270988   -0.0607308    0.0065332
12-15 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           0                    1                 -0.0702033   -0.1225874   -0.0178193
12-15 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL                          0                    1                  0.0155663   -0.0086370    0.0397696
12-15 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     0                    1                 -0.0542054   -0.1129529    0.0045422
12-15 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          0                    1                 -0.0595485   -0.1218392    0.0027421
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0085147   -0.0231789    0.0402083
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0120013   -0.0541883    0.0301857
12-15 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0011702   -0.0710287    0.0733691
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0056623   -0.1177609    0.1064363
12-15 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     0                    1                  0.0170179   -0.0293139    0.0633497
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0002722   -0.0212860    0.0218303
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0119474   -0.0464030    0.0225083
15-18 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           0                    1                 -0.0232533   -0.0923899    0.0458834
15-18 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL                          0                    1                  0.0134697   -0.0151388    0.0420782
15-18 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     0                    1                 -0.0187196   -0.0724717    0.0350325
15-18 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          0                    1                  0.0232233   -0.0321843    0.0786309
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                  0.0003998   -0.0299749    0.0307745
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.0099902   -0.0497287    0.0297483
15-18 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0155301   -0.0755191    0.0444588
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0085949   -0.1057760    0.1229657
15-18 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0067077   -0.0565261    0.0431108
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0068072   -0.0124988    0.0261132
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0101086   -0.0420022    0.0217850
18-21 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           0                    1                 -0.0094954   -0.0625858    0.0435951
18-21 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL                          0                    1                 -0.0170727   -0.0430320    0.0088866
18-21 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     0                    1                 -0.0058971   -0.0482644    0.0364702
18-21 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          0                    1                 -0.0217379   -0.0675457    0.0240700
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                 -0.0226257   -0.0494585    0.0042072
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                 -0.0268478   -0.0630412    0.0093456
18-21 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0245435   -0.0665895    0.0175026
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0191926   -0.0916036    0.1299887
18-21 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0131124   -0.0467221    0.0204973
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0009220   -0.0180175    0.0161734
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                  0.0183602   -0.0137693    0.0504897
21-24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           0                    1                 -0.0014182   -0.0787077    0.0758713
21-24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL                          0                    1                 -0.0022662   -0.0403624    0.0358300
21-24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     0                    1                  0.0441213   -0.0083398    0.0965823
21-24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          0                    1                  0.0241930   -0.0154649    0.0638508
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                 -0.0081308   -0.0361892    0.0199275
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                 -0.0181810   -0.0528463    0.0164844
21-24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0171030   -0.0307964    0.0650024
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0291877   -0.1429692    0.0845939
21-24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     0                    1                  0.0133296   -0.0288864    0.0555457
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0197946    0.0024119    0.0371774
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0103490   -0.0218413    0.0425394


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                 0.0504146   -0.0041818    0.1050109
0-3 months     MAL-ED       BANGLADESH                     1                    NA                 0.0040743   -0.0062200    0.0143685
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0022573   -0.0200277    0.0155131
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0340190   -0.0881484    0.0201104
0-3 months     MAL-ED       PERU                           1                    NA                -0.0422123   -0.1000084    0.0155838
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0073943   -0.0070442    0.0218329
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1291609   -0.2565553   -0.0017665
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                 0.0012013   -0.0079788    0.0103813
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0213552   -0.0303309   -0.0123796
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.0028196   -0.0082084    0.0025692
3-6 months     CONTENT      PERU                           1                    NA                -0.0004233   -0.0055893    0.0047427
3-6 months     GMS-Nepal    NEPAL                          1                    NA                -0.0049665   -0.0485841    0.0386511
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0060979   -0.0120376   -0.0001583
3-6 months     MAL-ED       INDIA                          1                    NA                -0.0001758   -0.0077759    0.0074243
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0076083   -0.0381285    0.0229120
3-6 months     MAL-ED       PERU                           1                    NA                -0.0194891   -0.0759856    0.0370073
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0025768   -0.0126983    0.0075448
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0005215   -0.1287016    0.1276586
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0029643   -0.0109999    0.0050713
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0186132    0.0077313    0.0294950
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0034624   -0.0077873    0.0008624
6-9 months     CONTENT      PERU                           1                    NA                -0.0010661   -0.0073324    0.0052002
6-9 months     GMS-Nepal    NEPAL                          1                    NA                 0.0349677   -0.0017294    0.0716649
6-9 months     MAL-ED       BANGLADESH                     1                    NA                 0.0007765   -0.0039546    0.0055075
6-9 months     MAL-ED       INDIA                          1                    NA                 0.0009687   -0.0063262    0.0082637
6-9 months     MAL-ED       NEPAL                          1                    NA                 0.0005389   -0.0208701    0.0219480
6-9 months     MAL-ED       PERU                           1                    NA                -0.0032985   -0.0486906    0.0420937
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0006419   -0.0106747    0.0093909
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0538946   -0.3150083    0.2072190
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0041038   -0.0095212    0.0013136
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0088667   -0.0160900   -0.0016434
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0023629   -0.0057605    0.0010347
9-12 months    CONTENT      PERU                           1                    NA                 0.0018697   -0.0032497    0.0069891
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0265372   -0.0531566    0.0000823
9-12 months    MAL-ED       BANGLADESH                     1                    NA                -0.0005239   -0.0046294    0.0035817
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0011317   -0.0060783    0.0038148
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0096329   -0.0291191    0.0098533
9-12 months    MAL-ED       PERU                           1                    NA                 0.0073572   -0.0323447    0.0470592
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0014547   -0.0058558    0.0087651
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0711867   -0.1961603    0.3385338
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0038073   -0.0092596    0.0016451
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0025166   -0.0036270    0.0086603
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0021545   -0.0048959    0.0005869
12-15 months   CONTENT      PERU                           1                    NA                -0.0049389   -0.0093926   -0.0004852
12-15 months   GMS-Nepal    NEPAL                          1                    NA                 0.0126555   -0.0070317    0.0323428
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0043467   -0.0094592    0.0007659
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0036888   -0.0079793    0.0006016
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0047346   -0.0128975    0.0223668
12-15 months   MAL-ED       PERU                           1                    NA                -0.0092689   -0.0418575    0.0233198
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0001026   -0.0062307    0.0064360
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0053590   -0.1114524    0.1007344
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0018498   -0.0032096    0.0069091
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0000705   -0.0055150    0.0056560
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0009432   -0.0036772    0.0017907
15-18 months   CONTENT      PERU                           1                    NA                -0.0015994   -0.0064287    0.0032298
15-18 months   GMS-Nepal    NEPAL                          1                    NA                 0.0109194   -0.0122787    0.0341176
15-18 months   MAL-ED       BANGLADESH                     1                    NA                -0.0015011   -0.0058657    0.0028635
15-18 months   MAL-ED       INDIA                          1                    NA                 0.0015414   -0.0022129    0.0052956
15-18 months   MAL-ED       NEPAL                          1                    NA                 0.0002253   -0.0168950    0.0173457
15-18 months   MAL-ED       PERU                           1                    NA                -0.0077389   -0.0385274    0.0230496
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0013114   -0.0064086    0.0037858
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0081151   -0.0998725    0.1161028
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0007187   -0.0060598    0.0046225
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0019159   -0.0035234    0.0073552
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0007849   -0.0032723    0.0017024
18-21 months   CONTENT      PERU                           1                    NA                -0.0006226   -0.0041207    0.0028754
18-21 months   GMS-Nepal    NEPAL                          1                    NA                -0.0138778   -0.0349910    0.0072354
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0004515   -0.0037019    0.0027990
18-21 months   MAL-ED       INDIA                          1                    NA                -0.0014428   -0.0045643    0.0016787
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0127526   -0.0279495    0.0024442
18-21 months   MAL-ED       PERU                           1                    NA                -0.0204681   -0.0481063    0.0071700
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0020014   -0.0055373    0.0015345
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0180524   -0.0861637    0.1222685
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0015261   -0.0054586    0.0024063
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0002786   -0.0054450    0.0048877
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0014932   -0.0011539    0.0041404
21-24 months   CONTENT      PERU                           1                    NA                -0.0001866   -0.0103574    0.0099842
21-24 months   GMS-Nepal    NEPAL                          1                    NA                -0.0018037   -0.0321254    0.0285179
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0034103   -0.0009522    0.0077729
21-24 months   MAL-ED       INDIA                          1                    NA                 0.0016057   -0.0011415    0.0043530
21-24 months   MAL-ED       NEPAL                          1                    NA                -0.0045459   -0.0202422    0.0111504
21-24 months   MAL-ED       PERU                           1                    NA                -0.0138522   -0.0402870    0.0125827
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0013100   -0.0024049    0.0050249
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0274538   -0.1344803    0.0795727
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0015280   -0.0033288    0.0063849
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0067059    0.0007588    0.0126530
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0007910   -0.0016819    0.0032639
