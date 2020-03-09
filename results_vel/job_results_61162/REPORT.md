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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nchldlt5
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        impfloor    n_cell       n
-------------  ---------------  -----------------------------  ---------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1              229     229
0-3 months     CMC-V-BCS-2002   INDIA                          0                0     229
0-3 months     CONTENT          PERU                           1               27      29
0-3 months     CONTENT          PERU                           0                2      29
0-3 months     GMS-Nepal        NEPAL                          1               74     398
0-3 months     GMS-Nepal        NEPAL                          0              324     398
0-3 months     IRC              INDIA                          1              296     296
0-3 months     IRC              INDIA                          0                0     296
0-3 months     JiVitA-3         BANGLADESH                     1             1346   20240
0-3 months     JiVitA-3         BANGLADESH                     0            18894   20240
0-3 months     JiVitA-4         BANGLADESH                     1              185    1793
0-3 months     JiVitA-4         BANGLADESH                     0             1608    1793
0-3 months     MAL-ED           BANGLADESH                     1              220     239
0-3 months     MAL-ED           BANGLADESH                     0               19     239
0-3 months     MAL-ED           BRAZIL                         1              208     210
0-3 months     MAL-ED           BRAZIL                         0                2     210
0-3 months     MAL-ED           INDIA                          1              217     232
0-3 months     MAL-ED           INDIA                          0               15     232
0-3 months     MAL-ED           NEPAL                          1               99     224
0-3 months     MAL-ED           NEPAL                          0              125     224
0-3 months     MAL-ED           PERU                           1               58     270
0-3 months     MAL-ED           PERU                           0              212     270
0-3 months     MAL-ED           SOUTH AFRICA                   1              234     254
0-3 months     MAL-ED           SOUTH AFRICA                   0               20     254
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               13     231
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              218     231
0-3 months     NIH-Birth        BANGLADESH                     1              501     563
0-3 months     NIH-Birth        BANGLADESH                     0               62     563
0-3 months     NIH-Crypto       BANGLADESH                     1              550     725
0-3 months     NIH-Crypto       BANGLADESH                     0              175     725
0-3 months     PROVIDE          BANGLADESH                     1              586     640
0-3 months     PROVIDE          BANGLADESH                     0               54     640
3-6 months     CMC-V-BCS-2002   INDIA                          1              224     224
3-6 months     CMC-V-BCS-2002   INDIA                          0                0     224
3-6 months     CONTENT          PERU                           1              200     214
3-6 months     CONTENT          PERU                           0               14     214
3-6 months     GMS-Nepal        NEPAL                          1               70     370
3-6 months     GMS-Nepal        NEPAL                          0              300     370
3-6 months     IRC              INDIA                          1              299     299
3-6 months     IRC              INDIA                          0                0     299
3-6 months     JiVitA-3         BANGLADESH                     1             1096   12690
3-6 months     JiVitA-3         BANGLADESH                     0            11594   12690
3-6 months     JiVitA-4         BANGLADESH                     1              198    1817
3-6 months     JiVitA-4         BANGLADESH                     0             1619    1817
3-6 months     MAL-ED           BANGLADESH                     1              215     233
3-6 months     MAL-ED           BANGLADESH                     0               18     233
3-6 months     MAL-ED           BRAZIL                         1              206     208
3-6 months     MAL-ED           BRAZIL                         0                2     208
3-6 months     MAL-ED           INDIA                          1              215     230
3-6 months     MAL-ED           INDIA                          0               15     230
3-6 months     MAL-ED           NEPAL                          1              101     227
3-6 months     MAL-ED           NEPAL                          0              126     227
3-6 months     MAL-ED           PERU                           1               58     267
3-6 months     MAL-ED           PERU                           0              209     267
3-6 months     MAL-ED           SOUTH AFRICA                   1              222     241
3-6 months     MAL-ED           SOUTH AFRICA                   0               19     241
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               11     237
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              226     237
3-6 months     NIH-Birth        BANGLADESH                     1              462     520
3-6 months     NIH-Birth        BANGLADESH                     0               58     520
3-6 months     NIH-Crypto       BANGLADESH                     1              527     702
3-6 months     NIH-Crypto       BANGLADESH                     0              175     702
3-6 months     PROVIDE          BANGLADESH                     1              554     601
3-6 months     PROVIDE          BANGLADESH                     0               47     601
6-9 months     CMC-V-BCS-2002   INDIA                          1              226     226
6-9 months     CMC-V-BCS-2002   INDIA                          0                0     226
6-9 months     CONTENT          PERU                           1              200     214
6-9 months     CONTENT          PERU                           0               14     214
6-9 months     GMS-Nepal        NEPAL                          1               68     376
6-9 months     GMS-Nepal        NEPAL                          0              308     376
6-9 months     IRC              INDIA                          1              306     306
6-9 months     IRC              INDIA                          0                0     306
6-9 months     JiVitA-4         BANGLADESH                     1              377    3070
6-9 months     JiVitA-4         BANGLADESH                     0             2693    3070
6-9 months     MAL-ED           BANGLADESH                     1              208     224
6-9 months     MAL-ED           BANGLADESH                     0               16     224
6-9 months     MAL-ED           BRAZIL                         1              196     198
6-9 months     MAL-ED           BRAZIL                         0                2     198
6-9 months     MAL-ED           INDIA                          1              215     230
6-9 months     MAL-ED           INDIA                          0               15     230
6-9 months     MAL-ED           NEPAL                          1              100     223
6-9 months     MAL-ED           NEPAL                          0              123     223
6-9 months     MAL-ED           PERU                           1               57     245
6-9 months     MAL-ED           PERU                           0              188     245
6-9 months     MAL-ED           SOUTH AFRICA                   1              213     231
6-9 months     MAL-ED           SOUTH AFRICA                   0               18     231
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               10     223
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              213     223
6-9 months     NIH-Birth        BANGLADESH                     1              442     497
6-9 months     NIH-Birth        BANGLADESH                     0               55     497
6-9 months     NIH-Crypto       BANGLADESH                     1              518     693
6-9 months     NIH-Crypto       BANGLADESH                     0              175     693
6-9 months     PROVIDE          BANGLADESH                     1              532     576
6-9 months     PROVIDE          BANGLADESH                     0               44     576
9-12 months    CMC-V-BCS-2002   INDIA                          1              228     228
9-12 months    CMC-V-BCS-2002   INDIA                          0                0     228
9-12 months    CONTENT          PERU                           1              198     212
9-12 months    CONTENT          PERU                           0               14     212
9-12 months    GMS-Nepal        NEPAL                          1               67     358
9-12 months    GMS-Nepal        NEPAL                          0              291     358
9-12 months    IRC              INDIA                          1              302     302
9-12 months    IRC              INDIA                          0                0     302
9-12 months    JiVitA-4         BANGLADESH                     1              407    3515
9-12 months    JiVitA-4         BANGLADESH                     0             3108    3515
9-12 months    MAL-ED           BANGLADESH                     1              208     225
9-12 months    MAL-ED           BANGLADESH                     0               17     225
9-12 months    MAL-ED           BRAZIL                         1              192     194
9-12 months    MAL-ED           BRAZIL                         0                2     194
9-12 months    MAL-ED           INDIA                          1              213     227
9-12 months    MAL-ED           INDIA                          0               14     227
9-12 months    MAL-ED           NEPAL                          1               99     222
9-12 months    MAL-ED           NEPAL                          0              123     222
9-12 months    MAL-ED           PERU                           1               54     235
9-12 months    MAL-ED           PERU                           0              181     235
9-12 months    MAL-ED           SOUTH AFRICA                   1              214     233
9-12 months    MAL-ED           SOUTH AFRICA                   0               19     233
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     222
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              210     222
9-12 months    NIH-Birth        BANGLADESH                     1              425     479
9-12 months    NIH-Birth        BANGLADESH                     0               54     479
9-12 months    NIH-Crypto       BANGLADESH                     1              510     683
9-12 months    NIH-Crypto       BANGLADESH                     0              173     683
9-12 months    PROVIDE          BANGLADESH                     1              524     569
9-12 months    PROVIDE          BANGLADESH                     0               45     569
12-15 months   CMC-V-BCS-2002   INDIA                          1              234     234
12-15 months   CMC-V-BCS-2002   INDIA                          0                0     234
12-15 months   CONTENT          PERU                           1              185     199
12-15 months   CONTENT          PERU                           0               14     199
12-15 months   GMS-Nepal        NEPAL                          1               66     355
12-15 months   GMS-Nepal        NEPAL                          0              289     355
12-15 months   IRC              INDIA                          1              294     294
12-15 months   IRC              INDIA                          0                0     294
12-15 months   JiVitA-4         BANGLADESH                     1              406    3548
12-15 months   JiVitA-4         BANGLADESH                     0             3142    3548
12-15 months   MAL-ED           BANGLADESH                     1              195     212
12-15 months   MAL-ED           BANGLADESH                     0               17     212
12-15 months   MAL-ED           BRAZIL                         1              182     184
12-15 months   MAL-ED           BRAZIL                         0                2     184
12-15 months   MAL-ED           INDIA                          1              212     226
12-15 months   MAL-ED           INDIA                          0               14     226
12-15 months   MAL-ED           NEPAL                          1               99     223
12-15 months   MAL-ED           NEPAL                          0              124     223
12-15 months   MAL-ED           PERU                           1               51     224
12-15 months   MAL-ED           PERU                           0              173     224
12-15 months   MAL-ED           SOUTH AFRICA                   1              208     228
12-15 months   MAL-ED           SOUTH AFRICA                   0               20     228
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     224
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              212     224
12-15 months   NIH-Birth        BANGLADESH                     1              410     460
12-15 months   NIH-Birth        BANGLADESH                     0               50     460
12-15 months   NIH-Crypto       BANGLADESH                     1              495     666
12-15 months   NIH-Crypto       BANGLADESH                     0              171     666
12-15 months   PROVIDE          BANGLADESH                     1              493     537
12-15 months   PROVIDE          BANGLADESH                     0               44     537
15-18 months   CMC-V-BCS-2002   INDIA                          1              228     228
15-18 months   CMC-V-BCS-2002   INDIA                          0                0     228
15-18 months   CONTENT          PERU                           1              176     189
15-18 months   CONTENT          PERU                           0               13     189
15-18 months   GMS-Nepal        NEPAL                          1               69     372
15-18 months   GMS-Nepal        NEPAL                          0              303     372
15-18 months   IRC              INDIA                          1              285     285
15-18 months   IRC              INDIA                          0                0     285
15-18 months   JiVitA-4         BANGLADESH                     1              403    3507
15-18 months   JiVitA-4         BANGLADESH                     0             3104    3507
15-18 months   MAL-ED           BANGLADESH                     1              195     212
15-18 months   MAL-ED           BANGLADESH                     0               17     212
15-18 months   MAL-ED           BRAZIL                         1              173     175
15-18 months   MAL-ED           BRAZIL                         0                2     175
15-18 months   MAL-ED           INDIA                          1              211     226
15-18 months   MAL-ED           INDIA                          0               15     226
15-18 months   MAL-ED           NEPAL                          1               96     220
15-18 months   MAL-ED           NEPAL                          0              124     220
15-18 months   MAL-ED           PERU                           1               48     214
15-18 months   MAL-ED           PERU                           0              166     214
15-18 months   MAL-ED           SOUTH AFRICA                   1              206     225
15-18 months   MAL-ED           SOUTH AFRICA                   0               19     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              206     218
15-18 months   NIH-Birth        BANGLADESH                     1              400     448
15-18 months   NIH-Birth        BANGLADESH                     0               48     448
15-18 months   NIH-Crypto       BANGLADESH                     1              435     605
15-18 months   NIH-Crypto       BANGLADESH                     0              170     605
15-18 months   PROVIDE          BANGLADESH                     1              490     533
15-18 months   PROVIDE          BANGLADESH                     0               43     533
18-21 months   CMC-V-BCS-2002   INDIA                          1              217     217
18-21 months   CMC-V-BCS-2002   INDIA                          0                0     217
18-21 months   CONTENT          PERU                           1              171     183
18-21 months   CONTENT          PERU                           0               12     183
18-21 months   GMS-Nepal        NEPAL                          1               64     343
18-21 months   GMS-Nepal        NEPAL                          0              279     343
18-21 months   IRC              INDIA                          1              284     284
18-21 months   IRC              INDIA                          0                0     284
18-21 months   MAL-ED           BANGLADESH                     1              193     209
18-21 months   MAL-ED           BANGLADESH                     0               16     209
18-21 months   MAL-ED           BRAZIL                         1              165     167
18-21 months   MAL-ED           BRAZIL                         0                2     167
18-21 months   MAL-ED           INDIA                          1              211     226
18-21 months   MAL-ED           INDIA                          0               15     226
18-21 months   MAL-ED           NEPAL                          1               96     220
18-21 months   MAL-ED           NEPAL                          0              124     220
18-21 months   MAL-ED           PERU                           1               48     202
18-21 months   MAL-ED           PERU                           0              154     202
18-21 months   MAL-ED           SOUTH AFRICA                   1              214     233
18-21 months   MAL-ED           SOUTH AFRICA                   0               19     233
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     206
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              194     206
18-21 months   NIH-Birth        BANGLADESH                     1              372     421
18-21 months   NIH-Birth        BANGLADESH                     0               49     421
18-21 months   NIH-Crypto       BANGLADESH                     1              382     547
18-21 months   NIH-Crypto       BANGLADESH                     0              165     547
18-21 months   PROVIDE          BANGLADESH                     1              497     542
18-21 months   PROVIDE          BANGLADESH                     0               45     542
21-24 months   CMC-V-BCS-2002   INDIA                          1              216     216
21-24 months   CMC-V-BCS-2002   INDIA                          0                0     216
21-24 months   CONTENT          PERU                           1               33      38
21-24 months   CONTENT          PERU                           0                5      38
21-24 months   GMS-Nepal        NEPAL                          1               51     245
21-24 months   GMS-Nepal        NEPAL                          0              194     245
21-24 months   IRC              INDIA                          1              292     292
21-24 months   IRC              INDIA                          0                0     292
21-24 months   MAL-ED           BANGLADESH                     1              191     207
21-24 months   MAL-ED           BANGLADESH                     0               16     207
21-24 months   MAL-ED           BRAZIL                         1              163     165
21-24 months   MAL-ED           BRAZIL                         0                2     165
21-24 months   MAL-ED           INDIA                          1              211     226
21-24 months   MAL-ED           INDIA                          0               15     226
21-24 months   MAL-ED           NEPAL                          1               97     220
21-24 months   MAL-ED           NEPAL                          0              123     220
21-24 months   MAL-ED           PERU                           1               45     189
21-24 months   MAL-ED           PERU                           0              144     189
21-24 months   MAL-ED           SOUTH AFRICA                   1              217     235
21-24 months   MAL-ED           SOUTH AFRICA                   0               18     235
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     204
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              192     204
21-24 months   NIH-Birth        BANGLADESH                     1              363     410
21-24 months   NIH-Birth        BANGLADESH                     0               47     410
21-24 months   NIH-Crypto       BANGLADESH                     1              327     493
21-24 months   NIH-Crypto       BANGLADESH                     0              166     493
21-24 months   PROVIDE          BANGLADESH                     1              445     485
21-24 months   PROVIDE          BANGLADESH                     0               40     485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f54a34bf-1bea-4d49-8386-838070bf33bc/12b4c9dc-b64f-43a2-8628-e09aee29d58c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f54a34bf-1bea-4d49-8386-838070bf33bc/12b4c9dc-b64f-43a2-8628-e09aee29d58c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/f54a34bf-1bea-4d49-8386-838070bf33bc/12b4c9dc-b64f-43a2-8628-e09aee29d58c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                0.7756117   0.7411022   0.8101212
0-3 months     GMS-Nepal    NEPAL                          0                    NA                0.8304762   0.8078867   0.8530657
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                0.8898410   0.8796678   0.9000143
0-3 months     JiVitA-3     BANGLADESH                     0                    NA                0.8705290   0.8673290   0.8737290
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                0.9061860   0.8721230   0.9402490
0-3 months     JiVitA-4     BANGLADESH                     0                    NA                0.8886008   0.8771577   0.9000440
0-3 months     MAL-ED       BANGLADESH                     1                    NA                0.8777677   0.8530540   0.9024814
0-3 months     MAL-ED       BANGLADESH                     0                    NA                0.8592696   0.7828582   0.9356809
0-3 months     MAL-ED       INDIA                          1                    NA                0.7623073   0.7398006   0.7848140
0-3 months     MAL-ED       INDIA                          0                    NA                0.7309760   0.5809904   0.8809617
0-3 months     MAL-ED       NEPAL                          1                    NA                0.9798814   0.9373558   1.0224071
0-3 months     MAL-ED       NEPAL                          0                    NA                0.9549179   0.9196697   0.9901660
0-3 months     MAL-ED       PERU                           1                    NA                1.0258966   0.9587225   1.0930708
0-3 months     MAL-ED       PERU                           0                    NA                0.9563000   0.9290254   0.9835747
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.9441436   0.9149733   0.9733139
0-3 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.9364577   0.8336483   1.0392672
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8567632   0.7516574   0.9618690
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8836872   0.8519759   0.9153985
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                0.8216466   0.8037930   0.8395002
0-3 months     NIH-Birth    BANGLADESH                     0                    NA                0.7656168   0.7140223   0.8172113
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                0.8810579   0.8645427   0.8975731
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                0.9098858   0.8748894   0.9448823
0-3 months     PROVIDE      BANGLADESH                     1                    NA                0.9087243   0.8935398   0.9239088
0-3 months     PROVIDE      BANGLADESH                     0                    NA                0.8142674   0.7579697   0.8705651
3-6 months     CONTENT      PERU                           1                    NA                0.5894450   0.5675325   0.6113575
3-6 months     CONTENT      PERU                           0                    NA                0.5791861   0.4902914   0.6680808
3-6 months     GMS-Nepal    NEPAL                          1                    NA                0.4695498   0.4343447   0.5047549
3-6 months     GMS-Nepal    NEPAL                          0                    NA                0.4954266   0.4738046   0.5170485
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                0.4363678   0.4254950   0.4472405
3-6 months     JiVitA-3     BANGLADESH                     0                    NA                0.4410737   0.4376366   0.4445108
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                0.4633601   0.4363418   0.4903783
3-6 months     JiVitA-4     BANGLADESH                     0                    NA                0.4376073   0.4274402   0.4477744
3-6 months     MAL-ED       BANGLADESH                     1                    NA                0.4786759   0.4613513   0.4960005
3-6 months     MAL-ED       BANGLADESH                     0                    NA                0.4269114   0.3597771   0.4940457
3-6 months     MAL-ED       INDIA                          1                    NA                0.4443449   0.4263176   0.4623721
3-6 months     MAL-ED       INDIA                          0                    NA                0.4412766   0.3825413   0.5000119
3-6 months     MAL-ED       NEPAL                          1                    NA                0.5240389   0.4889748   0.5591029
3-6 months     MAL-ED       NEPAL                          0                    NA                0.5261267   0.5029779   0.5492756
3-6 months     MAL-ED       PERU                           1                    NA                0.4970732   0.4564479   0.5376985
3-6 months     MAL-ED       PERU                           0                    NA                0.4985252   0.4767331   0.5203172
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.4670859   0.4404383   0.4937336
3-6 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.4447727   0.3313342   0.5582112
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3643974   0.2640420   0.4647527
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4580779   0.4330577   0.4830982
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                0.4620804   0.4435152   0.4806457
3-6 months     NIH-Birth    BANGLADESH                     0                    NA                0.4590929   0.4123174   0.5058685
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                0.5000851   0.4873729   0.5127973
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                0.4906709   0.4628419   0.5184999
3-6 months     PROVIDE      BANGLADESH                     1                    NA                0.4911873   0.4773735   0.5050011
3-6 months     PROVIDE      BANGLADESH                     0                    NA                0.4599556   0.4232308   0.4966804
6-9 months     CONTENT      PERU                           1                    NA                0.3221601   0.3019022   0.3424180
6-9 months     CONTENT      PERU                           0                    NA                0.2955567   0.2238403   0.3672730
6-9 months     GMS-Nepal    NEPAL                          1                    NA                0.1940614   0.1641216   0.2240012
6-9 months     GMS-Nepal    NEPAL                          0                    NA                0.1878151   0.1713120   0.2043183
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                0.2640032   0.2445884   0.2834180
6-9 months     JiVitA-4     BANGLADESH                     0                    NA                0.2390051   0.2332731   0.2447370
6-9 months     MAL-ED       BANGLADESH                     1                    NA                0.2452210   0.2297449   0.2606971
6-9 months     MAL-ED       BANGLADESH                     0                    NA                0.2083276   0.1684288   0.2482265
6-9 months     MAL-ED       INDIA                          1                    NA                0.2317041   0.2161073   0.2473008
6-9 months     MAL-ED       INDIA                          0                    NA                0.2311362   0.1839307   0.2783417
6-9 months     MAL-ED       NEPAL                          1                    NA                0.2778130   0.2492082   0.3064178
6-9 months     MAL-ED       NEPAL                          0                    NA                0.2582278   0.2409507   0.2755049
6-9 months     MAL-ED       PERU                           1                    NA                0.2871850   0.2536313   0.3207387
6-9 months     MAL-ED       PERU                           0                    NA                0.2545865   0.2367685   0.2724045
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                0.2556231   0.2334692   0.2777771
6-9 months     MAL-ED       SOUTH AFRICA                   0                    NA                0.2605419   0.1957943   0.3252894
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1903751   0.1231439   0.2576062
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2409737   0.2157563   0.2661910
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                0.2392953   0.2248936   0.2536971
6-9 months     NIH-Birth    BANGLADESH                     0                    NA                0.1949298   0.1440385   0.2458212
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                0.2625598   0.2498816   0.2752379
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                0.2869528   0.2649361   0.3089696
6-9 months     PROVIDE      BANGLADESH                     1                    NA                0.2505436   0.2377952   0.2632920
6-9 months     PROVIDE      BANGLADESH                     0                    NA                0.2396619   0.2034373   0.2758865
9-12 months    CONTENT      PERU                           1                    NA                0.2256464   0.2071530   0.2441398
9-12 months    CONTENT      PERU                           0                    NA                0.2010273   0.1346515   0.2674031
9-12 months    GMS-Nepal    NEPAL                          1                    NA                0.1170161   0.0698783   0.1641540
9-12 months    GMS-Nepal    NEPAL                          0                    NA                0.1475135   0.1305067   0.1645202
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                0.1614290   0.1467076   0.1761503
9-12 months    JiVitA-4     BANGLADESH                     0                    NA                0.1540690   0.1493709   0.1587670
9-12 months    MAL-ED       BANGLADESH                     1                    NA                0.1714422   0.1568911   0.1859933
9-12 months    MAL-ED       BANGLADESH                     0                    NA                0.2088570   0.1703777   0.2473364
9-12 months    MAL-ED       INDIA                          1                    NA                0.1800524   0.1655397   0.1945650
9-12 months    MAL-ED       INDIA                          0                    NA                0.1490260   0.0895834   0.2084687
9-12 months    MAL-ED       NEPAL                          1                    NA                0.1910788   0.1632902   0.2188673
9-12 months    MAL-ED       NEPAL                          0                    NA                0.1819809   0.1626844   0.2012773
9-12 months    MAL-ED       PERU                           1                    NA                0.1961261   0.1631324   0.2291197
9-12 months    MAL-ED       PERU                           0                    NA                0.1838989   0.1665655   0.2012323
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                0.2130434   0.1893684   0.2367183
9-12 months    MAL-ED       SOUTH AFRICA                   0                    NA                0.2331648   0.1791603   0.2871694
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2115935   0.1651194   0.2580676
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1652853   0.1436323   0.1869383
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                0.1626008   0.1485216   0.1766800
9-12 months    NIH-Birth    BANGLADESH                     0                    NA                0.1655205   0.1305369   0.2005042
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                0.1970242   0.1850049   0.2090436
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                0.2045050   0.1824685   0.2265414
9-12 months    PROVIDE      BANGLADESH                     1                    NA                0.1783472   0.1684594   0.1882350
9-12 months    PROVIDE      BANGLADESH                     0                    NA                0.1536688   0.1277137   0.1796240
12-15 months   CONTENT      PERU                           1                    NA                0.1803853   0.1606873   0.2000832
12-15 months   CONTENT      PERU                           0                    NA                0.2121992   0.1619104   0.2624881
12-15 months   GMS-Nepal    NEPAL                          1                    NA                0.2618368   0.2091778   0.3144958
12-15 months   GMS-Nepal    NEPAL                          0                    NA                0.1633526   0.1442823   0.1824229
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                0.1437189   0.1282020   0.1592359
12-15 months   JiVitA-4     BANGLADESH                     0                    NA                0.1301146   0.1258925   0.1343367
12-15 months   MAL-ED       BANGLADESH                     1                    NA                0.1400980   0.1243515   0.1558445
12-15 months   MAL-ED       BANGLADESH                     0                    NA                0.1076262   0.0297673   0.1854852
12-15 months   MAL-ED       INDIA                          1                    NA                0.1767491   0.1603435   0.1931548
12-15 months   MAL-ED       INDIA                          0                    NA                0.1049151   0.0418744   0.1679559
12-15 months   MAL-ED       NEPAL                          1                    NA                0.1677771   0.1357242   0.1998300
12-15 months   MAL-ED       NEPAL                          0                    NA                0.1500726   0.1291626   0.1709826
12-15 months   MAL-ED       PERU                           1                    NA                0.1445505   0.1144445   0.1746566
12-15 months   MAL-ED       PERU                           0                    NA                0.1409086   0.1207348   0.1610824
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1888785   0.1645066   0.2132504
12-15 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.2235847   0.0739942   0.3731752
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2852036   0.2117242   0.3586830
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1576163   0.1319688   0.1832638
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                0.1297649   0.1165844   0.1429454
12-15 months   NIH-Birth    BANGLADESH                     0                    NA                0.1401371   0.1084848   0.1717895
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1723820   0.1589174   0.1858465
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1402522   0.1141103   0.1663941
12-15 months   PROVIDE      BANGLADESH                     1                    NA                0.1792204   0.1669332   0.1915077
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.1916063   0.1538823   0.2293303
15-18 months   CONTENT      PERU                           1                    NA                0.1706379   0.1515151   0.1897607
15-18 months   CONTENT      PERU                           0                    NA                0.1612708   0.0737088   0.2488329
15-18 months   GMS-Nepal    NEPAL                          1                    NA                0.2414461   0.2058560   0.2770363
15-18 months   GMS-Nepal    NEPAL                          0                    NA                0.2185555   0.1950954   0.2420155
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                0.1553872   0.1396361   0.1711383
15-18 months   JiVitA-4     BANGLADESH                     0                    NA                0.1591609   0.1540105   0.1643112
15-18 months   MAL-ED       BANGLADESH                     1                    NA                0.1412443   0.1253953   0.1570933
15-18 months   MAL-ED       BANGLADESH                     0                    NA                0.1406697   0.0686661   0.2126732
15-18 months   MAL-ED       INDIA                          1                    NA                0.1610688   0.1455181   0.1766195
15-18 months   MAL-ED       INDIA                          0                    NA                0.1892113   0.1192641   0.2591585
15-18 months   MAL-ED       NEPAL                          1                    NA                0.1965129   0.1742319   0.2187938
15-18 months   MAL-ED       NEPAL                          0                    NA                0.1546153   0.1321085   0.1771220
15-18 months   MAL-ED       PERU                           1                    NA                0.1490642   0.1118062   0.1863221
15-18 months   MAL-ED       PERU                           0                    NA                0.1462963   0.1243755   0.1682172
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.2255468   0.1965801   0.2545135
15-18 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.2019008   0.0692896   0.3345119
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1063886   0.0440797   0.1686975
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1432275   0.1193676   0.1670875
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                0.1535905   0.1387147   0.1684662
15-18 months   NIH-Birth    BANGLADESH                     0                    NA                0.1381167   0.0816136   0.1946198
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1577744   0.1438808   0.1716679
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1713962   0.1531475   0.1896449
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.1600314   0.1477292   0.1723337
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.1120168   0.0728821   0.1511514
18-21 months   CONTENT      PERU                           1                    NA                0.1918037   0.1718627   0.2117447
18-21 months   CONTENT      PERU                           0                    NA                0.2378764   0.1919862   0.2837666
18-21 months   GMS-Nepal    NEPAL                          1                    NA                0.1204298   0.0706674   0.1701921
18-21 months   GMS-Nepal    NEPAL                          0                    NA                0.1554086   0.1314356   0.1793816
18-21 months   MAL-ED       BANGLADESH                     1                    NA                0.1435857   0.1260084   0.1611630
18-21 months   MAL-ED       BANGLADESH                     0                    NA                0.1237648   0.0491772   0.1983524
18-21 months   MAL-ED       INDIA                          1                    NA                0.1722093   0.1570560   0.1873627
18-21 months   MAL-ED       INDIA                          0                    NA                0.1808717   0.0848309   0.2769125
18-21 months   MAL-ED       NEPAL                          1                    NA                0.1501471   0.1205101   0.1797841
18-21 months   MAL-ED       NEPAL                          0                    NA                0.1516883   0.1307925   0.1725842
18-21 months   MAL-ED       PERU                           1                    NA                0.1733369   0.1312859   0.2153878
18-21 months   MAL-ED       PERU                           0                    NA                0.1574106   0.1359848   0.1788364
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1782643   0.1507138   0.2058148
18-21 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.1650569   0.0449740   0.2851399
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1109158   0.0362380   0.1855935
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1475388   0.1212903   0.1737873
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                0.1739327   0.1568839   0.1909815
18-21 months   NIH-Birth    BANGLADESH                     0                    NA                0.1687158   0.1170226   0.2204090
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1422773   0.1291209   0.1554336
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1560388   0.1308355   0.1812420
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.1298241   0.1178916   0.1417566
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.1602341   0.1195141   0.2009542
21-24 months   CONTENT      PERU                           1                    NA                0.2022749   0.1471026   0.2574472
21-24 months   CONTENT      PERU                           0                    NA                0.2262289   0.1481383   0.3043194
21-24 months   GMS-Nepal    NEPAL                          1                    NA                0.1001087   0.0512856   0.1489318
21-24 months   GMS-Nepal    NEPAL                          0                    NA                0.2042288   0.1646513   0.2438062
21-24 months   MAL-ED       BANGLADESH                     1                    NA                0.1498695   0.1343945   0.1653445
21-24 months   MAL-ED       BANGLADESH                     0                    NA                0.1750379   0.0993046   0.2507712
21-24 months   MAL-ED       INDIA                          1                    NA                0.1596947   0.1462365   0.1731529
21-24 months   MAL-ED       INDIA                          0                    NA                0.0993874   0.0463727   0.1524021
21-24 months   MAL-ED       NEPAL                          1                    NA                0.1669729   0.1331482   0.2007976
21-24 months   MAL-ED       NEPAL                          0                    NA                0.1724942   0.1450742   0.1999143
21-24 months   MAL-ED       PERU                           1                    NA                0.1806387   0.1424028   0.2188745
21-24 months   MAL-ED       PERU                           0                    NA                0.1823231   0.1592100   0.2054362
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.1855226   0.1610605   0.2099847
21-24 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.2232176   0.1030933   0.3433419
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1880325   0.0817101   0.2943550
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1391703   0.1101125   0.1682281
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                0.1387906   0.1229732   0.1546081
21-24 months   NIH-Birth    BANGLADESH                     0                    NA                0.1602970   0.1067825   0.2138116
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.1753661   0.1584941   0.1922381
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.1710617   0.1464440   0.1956794
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.1398348   0.1280568   0.1516128
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.1678259   0.1188890   0.2167629


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL                          NA                   NA                0.8225900   0.8032347   0.8419453
0-3 months     JiVitA-3     BANGLADESH                     NA                   NA                0.8710346   0.8679498   0.8741194
0-3 months     JiVitA-4     BANGLADESH                     NA                   NA                0.8897517   0.8792503   0.9002532
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
3-6 months     JiVitA-3     BANGLADESH                     NA                   NA                0.4414336   0.4384576   0.4444096
3-6 months     JiVitA-4     BANGLADESH                     NA                   NA                0.4391710   0.4303780   0.4479640
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
6-9 months     JiVitA-4     BANGLADESH                     NA                   NA                0.2398182   0.2345442   0.2450921
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
9-12 months    JiVitA-4     BANGLADESH                     NA                   NA                0.1545268   0.1502594   0.1587942
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
12-15 months   JiVitA-4     BANGLADESH                     NA                   NA                0.1304847   0.1263673   0.1346021
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
15-18 months   JiVitA-4     BANGLADESH                     NA                   NA                0.1595171   0.1548186   0.1642157
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
0-3 months     GMS-Nepal    NEPAL                          0                    1                  0.0548645    0.0136985    0.0960306
0-3 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH                     0                    1                 -0.0193120   -0.0297083   -0.0089157
0-3 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0175852   -0.0533743    0.0182040
0-3 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     0                    1                 -0.0184981   -0.0987376    0.0617413
0-3 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          0                    1                 -0.0313313   -0.1829555    0.1202930
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.0249636   -0.0805479    0.0306207
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0695966   -0.1420824    0.0028892
0-3 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0076859   -0.1145088    0.0991370
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0269240   -0.0828890    0.1367370
0-3 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0560298   -0.1104962   -0.0015634
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0288280   -0.0097088    0.0673647
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.0944569   -0.1528216   -0.0360922
3-6 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           0                    1                 -0.0102589   -0.1017855    0.0812678
3-6 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL                          0                    1                  0.0258768   -0.0156625    0.0674161
3-6 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH                     0                    1                  0.0047059   -0.0065055    0.0159174
3-6 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0257528   -0.0545223    0.0030167
3-6 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     0                    1                 -0.0517645   -0.1211255    0.0175965
3-6 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          0                    1                 -0.0030683   -0.0646717    0.0585351
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.0020878   -0.0405027    0.0446784
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                  0.0014520   -0.0451194    0.0480234
3-6 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0223132   -0.1385628    0.0939364
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0936806   -0.0096883    0.1970494
3-6 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0029875   -0.0533538    0.0473788
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0094142   -0.0399774    0.0211490
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.0312318   -0.0708124    0.0083489
6-9 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           0                    1                 -0.0266034   -0.1011536    0.0479468
6-9 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL                          0                    1                 -0.0062463   -0.0402691    0.0277766
6-9 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0249982   -0.0450626   -0.0049337
6-9 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     0                    1                 -0.0368934   -0.0801228    0.0063360
6-9 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          0                    1                 -0.0005679   -0.0502819    0.0491462
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0195853   -0.0530691    0.0138985
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0325985   -0.0708938    0.0056968
6-9 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0049187   -0.0636181    0.0734555
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0505986   -0.0213140    0.1225112
6-9 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0443655   -0.0973101    0.0085791
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0243931   -0.0010401    0.0498262
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0108817   -0.0493305    0.0275671
9-12 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           0                    1                 -0.0246191   -0.0937763    0.0445381
9-12 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL                          0                    1                  0.0304973   -0.0194315    0.0804261
9-12 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH                     0                    1                 -0.0073600   -0.0226850    0.0079649
9-12 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     0                    1                  0.0374148   -0.0038907    0.0787203
9-12 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          0                    1                 -0.0310263   -0.0922680    0.0302154
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0090979   -0.0437445    0.0255487
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                 -0.0122272   -0.0493813    0.0249270
9-12 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0201215   -0.0387760    0.0790190
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0463081   -0.0974079    0.0047916
9-12 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     0                    1                  0.0029197   -0.0345694    0.0404089
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0074807   -0.0175714    0.0325329
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0246784   -0.0524329    0.0030762
12-15 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           0                    1                  0.0318140   -0.0220193    0.0856472
12-15 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL                          0                    1                 -0.0984842   -0.1544675   -0.0425009
12-15 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH                     0                    1                 -0.0136043   -0.0294787    0.0022701
12-15 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     0                    1                 -0.0324718   -0.1121162    0.0471726
12-15 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          0                    1                 -0.0718340   -0.1369234   -0.0067446
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                 -0.0177045   -0.0560868    0.0206777
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0036419   -0.0400301    0.0327463
12-15 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0347062   -0.1169744    0.1863868
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1275873   -0.2053650   -0.0498096
12-15 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     0                    1                  0.0103723   -0.0239990    0.0447435
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0321297   -0.0615408   -0.0027187
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                  0.0123859   -0.0272972    0.0520690
15-18 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           0                    1                 -0.0093671   -0.0987936    0.0800594
15-18 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL                          0                    1                 -0.0228907   -0.0655891    0.0198077
15-18 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH                     0                    1                  0.0037736   -0.0128062    0.0203535
15-18 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     0                    1                 -0.0005746   -0.0739312    0.0727820
15-18 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          0                    1                  0.0281424   -0.0433489    0.0996338
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0418976   -0.0737369   -0.0100583
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.0027678   -0.0460377    0.0405021
15-18 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0236461   -0.1595080    0.1122159
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0368389   -0.0295617    0.1032396
15-18 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0154737   -0.0739333    0.0429858
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0136218   -0.0093347    0.0365783
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0480146   -0.0889665   -0.0070628
18-21 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           0                    1                  0.0460728   -0.0045116    0.0966571
18-21 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL                          0                    1                  0.0349788   -0.0208281    0.0907857
18-21 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     0                    1                 -0.0198209   -0.0966122    0.0569703
18-21 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          0                    1                  0.0086624   -0.0885551    0.1058799
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                  0.0015412   -0.0351357    0.0382182
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                 -0.0159263   -0.0631283    0.0312757
18-21 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0132073   -0.1363868    0.1099721
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0366230   -0.0424386    0.1156846
18-21 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0052169   -0.0597426    0.0493088
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0137615   -0.0146773    0.0422004
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                  0.0304100   -0.0120315    0.0728516
21-24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           0                    1                  0.0239540   -0.0716604    0.1195683
21-24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL                          0                    1                  0.1041201    0.0413738    0.1668664
21-24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     0                    1                  0.0251684   -0.0522049    0.1025418
21-24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          0                    1                 -0.0603073   -0.1148903   -0.0057243
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                  0.0055213   -0.0380785    0.0491212
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                  0.0016844   -0.0431417    0.0465105
21-24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0376950   -0.0849588    0.1603487
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0488622   -0.1591314    0.0614069
21-24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     0                    1                  0.0215064   -0.0343375    0.0773504
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0043044   -0.0342197    0.0256109
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0279911   -0.0224112    0.0783933


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                 0.0469783    0.0129805    0.0809761
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                -0.0188064   -0.0287221   -0.0088907
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0164343   -0.0494777    0.0166091
0-3 months     MAL-ED       BANGLADESH                     1                    NA                -0.0005287   -0.0072052    0.0061478
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0022117   -0.0107505    0.0063272
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0188620   -0.0508605    0.0131365
0-3 months     MAL-ED       PERU                           1                    NA                -0.0547218   -0.1121585    0.0027149
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0000966   -0.0075548    0.0077479
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0264225   -0.0777221    0.1305670
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0050312   -0.0102059    0.0001435
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0034641   -0.0050877    0.0120159
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.0070771   -0.0122005   -0.0019538
3-6 months     CONTENT      PERU                           1                    NA                -0.0010827   -0.0064186    0.0042533
3-6 months     GMS-Nepal    NEPAL                          1                    NA                 0.0317781   -0.0030944    0.0666506
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                 0.0050658   -0.0055691    0.0157008
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0241891   -0.0508638    0.0024857
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0040258   -0.0090071    0.0009554
3-6 months     MAL-ED       INDIA                          1                    NA                 0.0008765   -0.0040831    0.0058362
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0019175   -0.0233632    0.0271981
3-6 months     MAL-ED       PERU                           1                    NA                 0.0011603   -0.0354464    0.0377670
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0002536   -0.0087252    0.0082181
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0925910   -0.0063938    0.1915757
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0019425   -0.0070932    0.0032083
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0020307   -0.0083222    0.0042608
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0021262   -0.0052802    0.0010278
6-9 months     CONTENT      PERU                           1                    NA                -0.0019883   -0.0069618    0.0029853
6-9 months     GMS-Nepal    NEPAL                          1                    NA                -0.0043109   -0.0345891    0.0259673
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0241851   -0.0428240   -0.0055462
6-9 months     MAL-ED       BANGLADESH                     1                    NA                -0.0023658   -0.0053726    0.0006409
6-9 months     MAL-ED       INDIA                          1                    NA                 0.0001190   -0.0029402    0.0031782
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0092390   -0.0290838    0.0106058
6-9 months     MAL-ED       PERU                           1                    NA                -0.0257917   -0.0555681    0.0039846
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0037653   -0.0016327    0.0091632
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0484757   -0.0202734    0.1172247
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0026821   -0.0076697    0.0023055
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0049499   -0.0011729    0.0110728
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0013783   -0.0041227    0.0013662
9-12 months    CONTENT      PERU                           1                    NA                -0.0011277   -0.0068907    0.0046354
9-12 months    GMS-Nepal    NEPAL                          1                    NA                 0.0261497   -0.0191392    0.0714386
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                -0.0069022   -0.0212601    0.0074557
9-12 months    MAL-ED       BANGLADESH                     1                    NA                 0.0015924   -0.0015250    0.0047098
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0012084   -0.0051015    0.0026847
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0044675   -0.0254366    0.0165016
9-12 months    MAL-ED       PERU                           1                    NA                -0.0086454   -0.0373702    0.0200794
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0016011   -0.0031523    0.0063546
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0447274   -0.0925822    0.0031274
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                 0.0004752   -0.0035095    0.0044598
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0008207   -0.0048584    0.0064998
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0008156   -0.0030077    0.0013765
12-15 months   CONTENT      PERU                           1                    NA                 0.0006918   -0.0044203    0.0058039
12-15 months   GMS-Nepal    NEPAL                          1                    NA                -0.0870914   -0.1373425   -0.0368403
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0132342   -0.0278693    0.0014009
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0047394   -0.0111996    0.0017208
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0027930   -0.0068532    0.0012672
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0121246   -0.0350364    0.0107872
12-15 months   MAL-ED       PERU                           1                    NA                -0.0028115   -0.0308592    0.0252362
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0005460   -0.0117880    0.0128801
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1258540   -0.1995131   -0.0521950
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0013223   -0.0022830    0.0049276
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0083217   -0.0158939   -0.0007495
12-15 months   PROVIDE      BANGLADESH                     1                    NA                 0.0008119   -0.0025004    0.0041242
15-18 months   CONTENT      PERU                           1                    NA                 0.0005294   -0.0052306    0.0062894
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0227363   -0.0582354    0.0127629
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                 0.0041299   -0.0111837    0.0194436
15-18 months   MAL-ED       BANGLADESH                     1                    NA                 0.0015439   -0.0039600    0.0070478
15-18 months   MAL-ED       INDIA                          1                    NA                 0.0015058   -0.0022260    0.0052375
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0232303   -0.0410463   -0.0054143
15-18 months   MAL-ED       PERU                           1                    NA                -0.0028753   -0.0364280    0.0306774
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0019364   -0.0124204    0.0085477
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0347752   -0.0265254    0.0960758
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0007294   -0.0069924    0.0055336
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0034229   -0.0039450    0.0107908
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0036800   -0.0070278   -0.0003321
18-21 months   CONTENT      PERU                           1                    NA                 0.0003609   -0.0029338    0.0036557
18-21 months   GMS-Nepal    NEPAL                          1                    NA                 0.0379481   -0.0107149    0.0866111
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0008710   -0.0061880    0.0044459
18-21 months   MAL-ED       INDIA                          1                    NA                 0.0004571   -0.0043834    0.0052977
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0007284   -0.0216627    0.0202060
18-21 months   MAL-ED       PERU                           1                    NA                -0.0117716   -0.0480541    0.0245108
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0011844   -0.0098833    0.0075145
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0345915   -0.0399564    0.1091395
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0011315   -0.0073889    0.0051258
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0003837   -0.0075602    0.0083275
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0026641   -0.0006992    0.0060274
21-24 months   CONTENT      PERU                           1                    NA                 0.0031518   -0.0096967    0.0160004
21-24 months   GMS-Nepal    NEPAL                          1                    NA                 0.0718424    0.0231523    0.1205325
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0022461   -0.0030636    0.0075558
21-24 months   MAL-ED       INDIA                          1                    NA                -0.0034244   -0.0072780    0.0004292
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0021853   -0.0247266    0.0290972
21-24 months   MAL-ED       PERU                           1                    NA                 0.0008284   -0.0334399    0.0350968
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0021335   -0.0056997    0.0099667
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0461796   -0.1507282    0.0583690
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0022844   -0.0037671    0.0083360
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0003160   -0.0105741    0.0099420
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0021357   -0.0017215    0.0059928
