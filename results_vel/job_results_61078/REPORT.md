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
0-3 months     CMC-V-BCS-2002   INDIA                          1               68      68
0-3 months     CMC-V-BCS-2002   INDIA                          0                0      68
0-3 months     CONTENT          PERU                           1               27      29
0-3 months     CONTENT          PERU                           0                2      29
0-3 months     GMS-Nepal        NEPAL                          1               72     398
0-3 months     GMS-Nepal        NEPAL                          0              326     398
0-3 months     IRC              INDIA                          1              280     280
0-3 months     IRC              INDIA                          0                0     280
0-3 months     JiVitA-3         BANGLADESH                     1             1314   19835
0-3 months     JiVitA-3         BANGLADESH                     0            18521   19835
0-3 months     JiVitA-4         BANGLADESH                     1              182    1805
0-3 months     JiVitA-4         BANGLADESH                     0             1623    1805
0-3 months     MAL-ED           BANGLADESH                     1              217     236
0-3 months     MAL-ED           BANGLADESH                     0               19     236
0-3 months     MAL-ED           BRAZIL                         1              161     163
0-3 months     MAL-ED           BRAZIL                         0                2     163
0-3 months     MAL-ED           INDIA                          1              166     177
0-3 months     MAL-ED           INDIA                          0               11     177
0-3 months     MAL-ED           NEPAL                          1               61     150
0-3 months     MAL-ED           NEPAL                          0               89     150
0-3 months     MAL-ED           PERU                           1               53     254
0-3 months     MAL-ED           PERU                           0              201     254
0-3 months     MAL-ED           SOUTH AFRICA                   1              178     198
0-3 months     MAL-ED           SOUTH AFRICA                   0               20     198
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               10     223
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              213     223
0-3 months     NIH-Birth        BANGLADESH                     1              501     564
0-3 months     NIH-Birth        BANGLADESH                     0               63     564
0-3 months     NIH-Crypto       BANGLADESH                     1              547     721
0-3 months     NIH-Crypto       BANGLADESH                     0              174     721
0-3 months     PROVIDE          BANGLADESH                     1              586     640
0-3 months     PROVIDE          BANGLADESH                     0               54     640
3-6 months     CMC-V-BCS-2002   INDIA                          1              214     214
3-6 months     CMC-V-BCS-2002   INDIA                          0                0     214
3-6 months     CONTENT          PERU                           1              200     214
3-6 months     CONTENT          PERU                           0               14     214
3-6 months     GMS-Nepal        NEPAL                          1               69     370
3-6 months     GMS-Nepal        NEPAL                          0              301     370
3-6 months     IRC              INDIA                          1              297     297
3-6 months     IRC              INDIA                          0                0     297
3-6 months     JiVitA-3         BANGLADESH                     1             1081   12551
3-6 months     JiVitA-3         BANGLADESH                     0            11470   12551
3-6 months     JiVitA-4         BANGLADESH                     1              200    1839
3-6 months     JiVitA-4         BANGLADESH                     0             1639    1839
3-6 months     MAL-ED           BANGLADESH                     1              214     231
3-6 months     MAL-ED           BANGLADESH                     0               17     231
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
3-6 months     NIH-Birth        BANGLADESH                     1              463     521
3-6 months     NIH-Birth        BANGLADESH                     0               58     521
3-6 months     NIH-Crypto       BANGLADESH                     1              521     695
3-6 months     NIH-Crypto       BANGLADESH                     0              174     695
3-6 months     PROVIDE          BANGLADESH                     1              551     598
3-6 months     PROVIDE          BANGLADESH                     0               47     598
6-9 months     CMC-V-BCS-2002   INDIA                          1              219     219
6-9 months     CMC-V-BCS-2002   INDIA                          0                0     219
6-9 months     CONTENT          PERU                           1              200     214
6-9 months     CONTENT          PERU                           0               14     214
6-9 months     GMS-Nepal        NEPAL                          1               68     381
6-9 months     GMS-Nepal        NEPAL                          0              313     381
6-9 months     IRC              INDIA                          1              303     303
6-9 months     IRC              INDIA                          0                0     303
6-9 months     JiVitA-4         BANGLADESH                     1              376    3051
6-9 months     JiVitA-4         BANGLADESH                     0             2675    3051
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
6-9 months     NIH-Crypto       BANGLADESH                     1              513     688
6-9 months     NIH-Crypto       BANGLADESH                     0              175     688
6-9 months     PROVIDE          BANGLADESH                     1              522     565
6-9 months     PROVIDE          BANGLADESH                     0               43     565
9-12 months    CMC-V-BCS-2002   INDIA                          1              224     224
9-12 months    CMC-V-BCS-2002   INDIA                          0                0     224
9-12 months    CONTENT          PERU                           1              198     212
9-12 months    CONTENT          PERU                           0               14     212
9-12 months    GMS-Nepal        NEPAL                          1               68     370
9-12 months    GMS-Nepal        NEPAL                          0              302     370
9-12 months    IRC              INDIA                          1              299     299
9-12 months    IRC              INDIA                          0                0     299
9-12 months    JiVitA-4         BANGLADESH                     1              406    3498
9-12 months    JiVitA-4         BANGLADESH                     0             3092    3498
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
9-12 months    NIH-Birth        BANGLADESH                     1              426     480
9-12 months    NIH-Birth        BANGLADESH                     0               54     480
9-12 months    NIH-Crypto       BANGLADESH                     1              501     674
9-12 months    NIH-Crypto       BANGLADESH                     0              173     674
9-12 months    PROVIDE          BANGLADESH                     1              521     566
9-12 months    PROVIDE          BANGLADESH                     0               45     566
12-15 months   CMC-V-BCS-2002   INDIA                          1              233     233
12-15 months   CMC-V-BCS-2002   INDIA                          0                0     233
12-15 months   CONTENT          PERU                           1              185     199
12-15 months   CONTENT          PERU                           0               14     199
12-15 months   GMS-Nepal        NEPAL                          1               69     369
12-15 months   GMS-Nepal        NEPAL                          0              300     369
12-15 months   IRC              INDIA                          1              292     292
12-15 months   IRC              INDIA                          0                0     292
12-15 months   JiVitA-4         BANGLADESH                     1              401    3546
12-15 months   JiVitA-4         BANGLADESH                     0             3145    3546
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
12-15 months   NIH-Crypto       BANGLADESH                     1              489     660
12-15 months   NIH-Crypto       BANGLADESH                     0              171     660
12-15 months   PROVIDE          BANGLADESH                     1              490     532
12-15 months   PROVIDE          BANGLADESH                     0               42     532
15-18 months   CMC-V-BCS-2002   INDIA                          1              226     226
15-18 months   CMC-V-BCS-2002   INDIA                          0                0     226
15-18 months   CONTENT          PERU                           1              176     189
15-18 months   CONTENT          PERU                           0               13     189
15-18 months   GMS-Nepal        NEPAL                          1               71     375
15-18 months   GMS-Nepal        NEPAL                          0              304     375
15-18 months   IRC              INDIA                          1              284     284
15-18 months   IRC              INDIA                          0                0     284
15-18 months   JiVitA-4         BANGLADESH                     1              399    3547
15-18 months   JiVitA-4         BANGLADESH                     0             3148    3547
15-18 months   MAL-ED           BANGLADESH                     1              195     212
15-18 months   MAL-ED           BANGLADESH                     0               17     212
15-18 months   MAL-ED           BRAZIL                         1              173     175
15-18 months   MAL-ED           BRAZIL                         0                2     175
15-18 months   MAL-ED           INDIA                          1              211     226
15-18 months   MAL-ED           INDIA                          0               15     226
15-18 months   MAL-ED           NEPAL                          1               96     220
15-18 months   MAL-ED           NEPAL                          0              124     220
15-18 months   MAL-ED           PERU                           1               48     213
15-18 months   MAL-ED           PERU                           0              165     213
15-18 months   MAL-ED           SOUTH AFRICA                   1              206     225
15-18 months   MAL-ED           SOUTH AFRICA                   0               19     225
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     215
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              203     215
15-18 months   NIH-Birth        BANGLADESH                     1              400     448
15-18 months   NIH-Birth        BANGLADESH                     0               48     448
15-18 months   NIH-Crypto       BANGLADESH                     1              434     604
15-18 months   NIH-Crypto       BANGLADESH                     0              170     604
15-18 months   PROVIDE          BANGLADESH                     1              487     528
15-18 months   PROVIDE          BANGLADESH                     0               41     528
18-21 months   CMC-V-BCS-2002   INDIA                          1              213     213
18-21 months   CMC-V-BCS-2002   INDIA                          0                0     213
18-21 months   CONTENT          PERU                           1              171     183
18-21 months   CONTENT          PERU                           0               12     183
18-21 months   GMS-Nepal        NEPAL                          1               64     342
18-21 months   GMS-Nepal        NEPAL                          0              278     342
18-21 months   IRC              INDIA                          1              283     283
18-21 months   IRC              INDIA                          0                0     283
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     202
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              190     202
18-21 months   NIH-Birth        BANGLADESH                     1              372     421
18-21 months   NIH-Birth        BANGLADESH                     0               49     421
18-21 months   NIH-Crypto       BANGLADESH                     1              381     546
18-21 months   NIH-Crypto       BANGLADESH                     0              165     546
18-21 months   PROVIDE          BANGLADESH                     1              497     541
18-21 months   PROVIDE          BANGLADESH                     0               44     541
21-24 months   CMC-V-BCS-2002   INDIA                          1              213     213
21-24 months   CMC-V-BCS-2002   INDIA                          0                0     213
21-24 months   CONTENT          PERU                           1               33      38
21-24 months   CONTENT          PERU                           0                5      38
21-24 months   GMS-Nepal        NEPAL                          1               50     245
21-24 months   GMS-Nepal        NEPAL                          0              195     245
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               12     202
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0              190     202
21-24 months   NIH-Birth        BANGLADESH                     1              363     410
21-24 months   NIH-Birth        BANGLADESH                     0               47     410
21-24 months   NIH-Crypto       BANGLADESH                     1              324     490
21-24 months   NIH-Crypto       BANGLADESH                     0              166     490
21-24 months   PROVIDE          BANGLADESH                     1              435     471
21-24 months   PROVIDE          BANGLADESH                     0               36     471


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
![](/tmp/0219b69a-374c-4562-a4ea-c91d72a6a511/8315706e-a566-4e97-895a-573a89ff3f4d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/0219b69a-374c-4562-a4ea-c91d72a6a511/8315706e-a566-4e97-895a-573a89ff3f4d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/0219b69a-374c-4562-a4ea-c91d72a6a511/8315706e-a566-4e97-895a-573a89ff3f4d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                3.4620133    3.2942054   3.6298211
0-3 months     GMS-Nepal    NEPAL                          0                    NA                3.6407737    3.5727288   3.7088186
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                3.7293346    3.6962984   3.7623709
0-3 months     JiVitA-3     BANGLADESH                     0                    NA                3.7194856    3.7089749   3.7299962
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                3.6245513    3.5053099   3.7437927
0-3 months     JiVitA-4     BANGLADESH                     0                    NA                3.6356754    3.6020162   3.6693347
0-3 months     MAL-ED       BANGLADESH                     1                    NA                3.3309467    3.2624975   3.3993959
0-3 months     MAL-ED       BANGLADESH                     0                    NA                3.4067852    3.1819876   3.6315828
0-3 months     MAL-ED       INDIA                          1                    NA                3.3307929    3.2413610   3.4202248
0-3 months     MAL-ED       INDIA                          0                    NA                3.2869433    2.7318470   3.8420396
0-3 months     MAL-ED       NEPAL                          1                    NA                3.7059042    3.5405019   3.8713065
0-3 months     MAL-ED       NEPAL                          0                    NA                3.5697160    3.4484086   3.6910233
0-3 months     MAL-ED       PERU                           1                    NA                3.2005233    3.0770815   3.3239650
0-3 months     MAL-ED       PERU                           0                    NA                3.0426483    2.9678923   3.1174042
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                3.1516959    3.0425140   3.2608779
0-3 months     MAL-ED       SOUTH AFRICA                   0                    NA                3.1668565    2.9298476   3.4038654
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4151646    3.1246415   3.7056876
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2462355    3.1659087   3.3265622
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                3.1060581    3.0498542   3.1622620
0-3 months     NIH-Birth    BANGLADESH                     0                    NA                3.1170933    2.9254132   3.3087734
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                3.1770531    3.1335014   3.2206048
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                3.0005842    2.9289716   3.0721968
0-3 months     PROVIDE      BANGLADESH                     1                    NA                3.2635352    3.2247691   3.3023013
0-3 months     PROVIDE      BANGLADESH                     0                    NA                3.2020598    3.0767954   3.3273242
3-6 months     CONTENT      PERU                           1                    NA                2.0850293    2.0345659   2.1354926
3-6 months     CONTENT      PERU                           0                    NA                2.0787481    1.9617376   2.1957587
3-6 months     GMS-Nepal    NEPAL                          1                    NA                1.6867471    1.5810606   1.7924336
3-6 months     GMS-Nepal    NEPAL                          0                    NA                1.7114122    1.6557114   1.7671131
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                1.9608151    1.9232569   1.9983733
3-6 months     JiVitA-3     BANGLADESH                     0                    NA                1.9178645    1.9066020   1.9291270
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                1.8953438    1.7591165   2.0315710
3-6 months     JiVitA-4     BANGLADESH                     0                    NA                1.8982695    1.8682882   1.9282509
3-6 months     MAL-ED       BANGLADESH                     1                    NA                1.9395257    1.8868078   1.9922436
3-6 months     MAL-ED       BANGLADESH                     0                    NA                1.7738344    1.6221084   1.9255603
3-6 months     MAL-ED       INDIA                          1                    NA                1.8926890    1.8267223   1.9586556
3-6 months     MAL-ED       INDIA                          0                    NA                1.9094902    1.5470195   2.2719609
3-6 months     MAL-ED       NEPAL                          1                    NA                1.9528578    1.8606107   2.0451049
3-6 months     MAL-ED       NEPAL                          0                    NA                1.9633318    1.8852741   2.0413896
3-6 months     MAL-ED       PERU                           1                    NA                2.0603388    1.9262273   2.1944504
3-6 months     MAL-ED       PERU                           0                    NA                2.0041259    1.9278861   2.0803657
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                1.9856917    1.9013111   2.0700722
3-6 months     MAL-ED       SOUTH AFRICA                   0                    NA                2.0089848    1.7185029   2.2994667
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7327938    1.4319558   2.0336317
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8330691    1.7628793   1.9032588
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                1.8399332    1.7889458   1.8909205
3-6 months     NIH-Birth    BANGLADESH                     0                    NA                1.7755475    1.6051786   1.9459165
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                1.9732570    1.9340521   2.0124619
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                2.0974967    2.0015328   2.1934606
3-6 months     PROVIDE      BANGLADESH                     1                    NA                1.9743251    1.9389155   2.0097347
3-6 months     PROVIDE      BANGLADESH                     0                    NA                1.8236631    1.7099478   1.9373783
6-9 months     CONTENT      PERU                           1                    NA                1.3989226    1.3507748   1.4470704
6-9 months     CONTENT      PERU                           0                    NA                1.5123961    1.2753261   1.7494660
6-9 months     GMS-Nepal    NEPAL                          1                    NA                1.1843263    1.0571422   1.3115104
6-9 months     GMS-Nepal    NEPAL                          0                    NA                1.3285499    1.2729350   1.3841649
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                1.3952435    1.3070492   1.4834377
6-9 months     JiVitA-4     BANGLADESH                     0                    NA                1.3233948    1.3001719   1.3466178
6-9 months     MAL-ED       BANGLADESH                     1                    NA                1.2444961    1.2032747   1.2857176
6-9 months     MAL-ED       BANGLADESH                     0                    NA                1.2607008    1.1015924   1.4198093
6-9 months     MAL-ED       INDIA                          1                    NA                1.2421624    1.1896037   1.2947211
6-9 months     MAL-ED       INDIA                          0                    NA                1.3006782    1.0221952   1.5791612
6-9 months     MAL-ED       NEPAL                          1                    NA                1.3722022    1.3054029   1.4390015
6-9 months     MAL-ED       NEPAL                          0                    NA                1.3671810    1.3028464   1.4315155
6-9 months     MAL-ED       PERU                           1                    NA                1.3179149    1.1926971   1.4431326
6-9 months     MAL-ED       PERU                           0                    NA                1.3150679    1.2538460   1.3762898
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                1.3804707    1.3154563   1.4454851
6-9 months     MAL-ED       SOUTH AFRICA                   0                    NA                1.3494770    1.0157170   1.6832370
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7860980    1.0667463   2.5054498
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1905589    1.1144006   1.2667172
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                1.2690907    1.2244701   1.3137112
6-9 months     NIH-Birth    BANGLADESH                     0                    NA                1.1571081    1.0358053   1.2784108
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                1.3505708    1.3162999   1.3848417
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                1.2565809    1.1948564   1.3183054
6-9 months     PROVIDE      BANGLADESH                     1                    NA                1.2875007    1.2614896   1.3135118
6-9 months     PROVIDE      BANGLADESH                     0                    NA                1.2181515    1.1157460   1.3205570
9-12 months    CONTENT      PERU                           1                    NA                1.2001902    1.1597546   1.2406258
9-12 months    CONTENT      PERU                           0                    NA                1.3880181    1.1964355   1.5796007
9-12 months    GMS-Nepal    NEPAL                          1                    NA                1.0931363    0.9940481   1.1922244
9-12 months    GMS-Nepal    NEPAL                          0                    NA                1.0031357    0.9550048   1.0512667
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                1.0979087    1.0314674   1.1643500
9-12 months    JiVitA-4     BANGLADESH                     0                    NA                1.0702116    1.0480086   1.0924147
9-12 months    MAL-ED       BANGLADESH                     1                    NA                0.9900270    0.9491673   1.0308866
9-12 months    MAL-ED       BANGLADESH                     0                    NA                0.9458061    0.8172680   1.0743443
9-12 months    MAL-ED       INDIA                          1                    NA                0.9858183    0.9468754   1.0247611
9-12 months    MAL-ED       INDIA                          0                    NA                0.9135799    0.7129107   1.1142490
9-12 months    MAL-ED       NEPAL                          1                    NA                1.0997236    1.0255488   1.1738984
9-12 months    MAL-ED       NEPAL                          0                    NA                1.0670958    1.0155428   1.1186487
9-12 months    MAL-ED       PERU                           1                    NA                1.0876850    0.9767940   1.1985761
9-12 months    MAL-ED       PERU                           0                    NA                1.1050341    1.0470399   1.1630283
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                1.0120620    0.9439515   1.0801726
9-12 months    MAL-ED       SOUTH AFRICA                   0                    NA                1.1105062    0.8950259   1.3259864
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6402625   -0.2426752   1.5232002
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8186006    0.7418002   0.8954009
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                1.1011946    1.0645118   1.1378774
9-12 months    NIH-Birth    BANGLADESH                     0                    NA                0.9919948    0.8790571   1.1049325
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                1.1150634    1.0836950   1.1464317
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                1.1423662    1.0815328   1.2031995
9-12 months    PROVIDE      BANGLADESH                     1                    NA                1.0565915    1.0281415   1.0850415
9-12 months    PROVIDE      BANGLADESH                     0                    NA                0.9827621    0.9055508   1.0599734
12-15 months   CONTENT      PERU                           1                    NA                0.9419248    0.8980350   0.9858147
12-15 months   CONTENT      PERU                           0                    NA                0.7232471    0.6005154   0.8459787
12-15 months   GMS-Nepal    NEPAL                          1                    NA                0.7883971    0.7095879   0.8672063
12-15 months   GMS-Nepal    NEPAL                          0                    NA                0.8850872    0.8416558   0.9285186
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                0.9549060    0.9004242   1.0093879
12-15 months   JiVitA-4     BANGLADESH                     0                    NA                0.9385623    0.9211798   0.9559448
12-15 months   MAL-ED       BANGLADESH                     1                    NA                0.9204997    0.8787145   0.9622849
12-15 months   MAL-ED       BANGLADESH                     0                    NA                0.7224906    0.5937143   0.8512670
12-15 months   MAL-ED       INDIA                          1                    NA                0.9157185    0.8752597   0.9561773
12-15 months   MAL-ED       INDIA                          0                    NA                0.7382061    0.6177512   0.8586609
12-15 months   MAL-ED       NEPAL                          1                    NA                0.9543218    0.8819815   1.0266621
12-15 months   MAL-ED       NEPAL                          0                    NA                0.9574643    0.9066308   1.0082979
12-15 months   MAL-ED       PERU                           1                    NA                0.8829652    0.7819208   0.9840096
12-15 months   MAL-ED       PERU                           0                    NA                0.8837723    0.8308570   0.9366876
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.9175927    0.8564864   0.9786989
12-15 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.9290983    0.7432037   1.1149930
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9129775    0.5938373   1.2321177
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8545198    0.7880120   0.9210275
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                0.7191419    0.6719911   0.7662927
12-15 months   NIH-Birth    BANGLADESH                     0                    NA                0.7394527    0.6227989   0.8561065
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                0.9757013    0.9459200   1.0054825
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                0.9864884    0.9313727   1.0416041
12-15 months   PROVIDE      BANGLADESH                     1                    NA                0.9639947    0.9366395   0.9913500
12-15 months   PROVIDE      BANGLADESH                     0                    NA                0.9036416    0.8104673   0.9968158
15-18 months   CONTENT      PERU                           1                    NA                0.9909794    0.9441679   1.0377910
15-18 months   CONTENT      PERU                           0                    NA                0.9147009    0.7053104   1.1240914
15-18 months   GMS-Nepal    NEPAL                          1                    NA                0.8146105    0.7142766   0.9149445
15-18 months   GMS-Nepal    NEPAL                          0                    NA                0.7574336    0.6961393   0.8187280
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                0.9308530    0.8498179   1.0118882
15-18 months   JiVitA-4     BANGLADESH                     0                    NA                0.8580358    0.8401060   0.8759657
15-18 months   MAL-ED       BANGLADESH                     1                    NA                0.8298655    0.7917732   0.8679578
15-18 months   MAL-ED       BANGLADESH                     0                    NA                0.8179901    0.6517744   0.9842058
15-18 months   MAL-ED       INDIA                          1                    NA                0.8406963    0.8035695   0.8778231
15-18 months   MAL-ED       INDIA                          0                    NA                0.9004063    0.6993133   1.1014993
15-18 months   MAL-ED       NEPAL                          1                    NA                0.8518240    0.7869589   0.9166891
15-18 months   MAL-ED       NEPAL                          0                    NA                0.8445008    0.7853741   0.9036275
15-18 months   MAL-ED       PERU                           1                    NA                0.8764245    0.7830313   0.9698176
15-18 months   MAL-ED       PERU                           0                    NA                0.8487076    0.8009752   0.8964401
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.8919570    0.8361595   0.9477546
15-18 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.9003538    0.7142002   1.0865075
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6937495    0.4749509   0.9125481
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6867412    0.6239057   0.7495766
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                0.7772836    0.7349360   0.8196312
15-18 months   NIH-Birth    BANGLADESH                     0                    NA                0.7336960    0.6035239   0.8638680
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                0.9148320    0.8884130   0.9412510
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                0.9387264    0.8887696   0.9886831
15-18 months   PROVIDE      BANGLADESH                     1                    NA                0.8616852    0.8366291   0.8867413
15-18 months   PROVIDE      BANGLADESH                     0                    NA                0.8034359    0.7113299   0.8955418
18-21 months   CONTENT      PERU                           1                    NA                0.9166260    0.8710720   0.9621801
18-21 months   CONTENT      PERU                           0                    NA                0.8139325    0.6953629   0.9325021
18-21 months   GMS-Nepal    NEPAL                          1                    NA                0.9447929    0.8799917   1.0095941
18-21 months   GMS-Nepal    NEPAL                          0                    NA                0.8958627    0.8454601   0.9462654
18-21 months   MAL-ED       BANGLADESH                     1                    NA                0.8140830    0.7780016   0.8501644
18-21 months   MAL-ED       BANGLADESH                     0                    NA                0.8174378    0.6956649   0.9392108
18-21 months   MAL-ED       INDIA                          1                    NA                0.8837618    0.8475885   0.9199351
18-21 months   MAL-ED       INDIA                          0                    NA                0.8224975    0.5976497   1.0473453
18-21 months   MAL-ED       NEPAL                          1                    NA                0.8551148    0.7927359   0.9174938
18-21 months   MAL-ED       NEPAL                          0                    NA                0.7965695    0.7444418   0.8486972
18-21 months   MAL-ED       PERU                           1                    NA                0.8940685    0.8026424   0.9854947
18-21 months   MAL-ED       PERU                           0                    NA                0.8259813    0.7746543   0.8773082
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.7874872    0.7277609   0.8472135
18-21 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.7288528    0.5971153   0.8605902
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6383555    0.3178115   0.9588996
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7495002    0.6804224   0.8185781
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                0.7368112    0.6979603   0.7756621
18-21 months   NIH-Birth    BANGLADESH                     0                    NA                0.6741210    0.5867009   0.7615410
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                0.8062636    0.7778522   0.8346750
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                0.7868527    0.7355912   0.8381141
18-21 months   PROVIDE      BANGLADESH                     1                    NA                0.8363584    0.8116202   0.8610967
18-21 months   PROVIDE      BANGLADESH                     0                    NA                0.8837305    0.7789337   0.9885272
21-24 months   CONTENT      PERU                           1                    NA                0.9374898    0.8493729   1.0256066
21-24 months   CONTENT      PERU                           0                    NA                0.9191808    0.7244090   1.1139526
21-24 months   GMS-Nepal    NEPAL                          1                    NA                0.8899633    0.8119614   0.9679651
21-24 months   GMS-Nepal    NEPAL                          0                    NA                0.8226323    0.7470092   0.8982553
21-24 months   MAL-ED       BANGLADESH                     1                    NA                0.7569822    0.7206371   0.7933272
21-24 months   MAL-ED       BANGLADESH                     0                    NA                0.8635736    0.7212512   1.0058960
21-24 months   MAL-ED       INDIA                          1                    NA                0.8228530    0.7908785   0.8548275
21-24 months   MAL-ED       INDIA                          0                    NA                0.8893838    0.7550187   1.0237490
21-24 months   MAL-ED       NEPAL                          1                    NA                0.8101242    0.7448354   0.8754130
21-24 months   MAL-ED       NEPAL                          0                    NA                0.7556339    0.6994223   0.8118455
21-24 months   MAL-ED       PERU                           1                    NA                0.7769740    0.6821534   0.8717945
21-24 months   MAL-ED       PERU                           0                    NA                0.7544902    0.6999704   0.8090100
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                0.8320509    0.7766459   0.8874560
21-24 months   MAL-ED       SOUTH AFRICA                   0                    NA                0.9156384    0.7717991   1.0594776
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8623533    0.4881552   1.2365514
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7126510    0.6466466   0.7786554
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                0.7159404    0.6791454   0.7527354
21-24 months   NIH-Birth    BANGLADESH                     0                    NA                0.6949945    0.5684010   0.8215880
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                0.7929140    0.7622571   0.8235710
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                0.8084017    0.7564490   0.8603543
21-24 months   PROVIDE      BANGLADESH                     1                    NA                0.7612669    0.7347785   0.7877554
21-24 months   PROVIDE      BANGLADESH                     0                    NA                0.7794964    0.6875618   0.8714310


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal    NEPAL                          NA                   NA                3.6174009   3.5587664   3.6760355
0-3 months     JiVitA-3     BANGLADESH                     NA                   NA                3.7231625   3.7128517   3.7334734
0-3 months     JiVitA-4     BANGLADESH                     NA                   NA                3.6386177   3.6075243   3.6697112
0-3 months     MAL-ED       BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     MAL-ED       INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     MAL-ED       NEPAL                          NA                   NA                3.6296286   3.5360391   3.7232181
0-3 months     MAL-ED       PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     MAL-ED       SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2545886   3.1766598   3.3325174
0-3 months     NIH-Birth    BANGLADESH                     NA                   NA                3.1103028   3.0567101   3.1638956
0-3 months     NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
3-6 months     CONTENT      PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     GMS-Nepal    NEPAL                          NA                   NA                1.7124775   1.6680987   1.7568562
3-6 months     JiVitA-3     BANGLADESH                     NA                   NA                1.9201334   1.9096727   1.9305942
3-6 months     JiVitA-4     BANGLADESH                     NA                   NA                1.8987567   1.8688242   1.9286892
3-6 months     MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     MAL-ED       NEPAL                          NA                   NA                1.9657452   1.9082948   2.0231956
3-6 months     MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     MAL-ED       SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8323273   1.7640304   1.9006242
3-6 months     NIH-Birth    BANGLADESH                     NA                   NA                1.8344466   1.7863211   1.8825720
3-6 months     NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
6-9 months     CONTENT      PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     GMS-Nepal    NEPAL                          NA                   NA                1.3113264   1.2625909   1.3600619
6-9 months     JiVitA-4     BANGLADESH                     NA                   NA                1.3241253   1.3034398   1.3448108
6-9 months     MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     MAL-ED       NEPAL                          NA                   NA                1.3619990   1.3172112   1.4067868
6-9 months     MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1936201   1.1152491   1.2719912
6-9 months     NIH-Birth    BANGLADESH                     NA                   NA                1.2563364   1.2157525   1.2969202
6-9 months     NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
9-12 months    CONTENT      PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    GMS-Nepal    NEPAL                          NA                   NA                1.0061163   0.9672192   1.0450134
9-12 months    JiVitA-4     BANGLADESH                     NA                   NA                1.0715268   1.0535441   1.0895095
9-12 months    MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    MAL-ED       NEPAL                          NA                   NA                1.0889658   1.0477966   1.1301350
9-12 months    MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8097109   0.7283882   0.8910335
9-12 months    NIH-Birth    BANGLADESH                     NA                   NA                1.0908549   1.0557207   1.1259891
9-12 months    NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
12-15 months   CONTENT      PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   GMS-Nepal    NEPAL                          NA                   NA                0.8872975   0.8534861   0.9211089
12-15 months   JiVitA-4     BANGLADESH                     NA                   NA                0.9413556   0.9255444   0.9571667
12-15 months   MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   MAL-ED       NEPAL                          NA                   NA                0.9519911   0.9122423   0.9917398
12-15 months   MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8549769   0.7901258   0.9198280
12-15 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7243145   0.6797578   0.7688713
12-15 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
15-18 months   CONTENT      PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   GMS-Nepal    NEPAL                          NA                   NA                0.7563204   0.7138144   0.7988263
15-18 months   JiVitA-4     BANGLADESH                     NA                   NA                0.8599842   0.8434536   0.8765149
15-18 months   MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   MAL-ED       NEPAL                          NA                   NA                0.8460773   0.8041876   0.8879670
15-18 months   MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6874799   0.6258797   0.7490800
15-18 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7725355   0.7322370   0.8128339
15-18 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
18-21 months   CONTENT      PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
18-21 months   GMS-Nepal    NEPAL                          NA                   NA                0.9021712   0.8606987   0.9436437
18-21 months   MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   MAL-ED       NEPAL                          NA                   NA                0.8197711   0.7806443   0.8588978
18-21 months   MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7470886   0.6791662   0.8150110
18-21 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7273854   0.6914063   0.7633645
18-21 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   CONTENT      PERU                           NA                   NA                0.9350807   0.8543561   1.0158053
21-24 months   GMS-Nepal    NEPAL                          NA                   NA                0.8230414   0.7663592   0.8797236
21-24 months   MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   MAL-ED       NEPAL                          NA                   NA                0.7793951   0.7378545   0.8209358
21-24 months   MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7200647   0.6550341   0.7850953
21-24 months   NIH-Birth    BANGLADESH                     NA                   NA                0.7165479   0.6809839   0.7521119
21-24 months   NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal    NEPAL                          0                    1                  0.1787604   -0.0025616    0.3600823
0-3 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH                     0                    1                 -0.0098491   -0.0438869    0.0241888
0-3 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH                     0                    1                  0.0111241   -0.1130218    0.1352700
0-3 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     0                    1                  0.0758385   -0.1588542    0.3105313
0-3 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          0                    1                 -0.0438496   -0.6080270    0.5203277
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.1361883   -0.3440627    0.0716861
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.1578750   -0.3023498   -0.0134001
0-3 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0151605   -0.2450347    0.2753558
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1689291   -0.4704043    0.1325461
0-3 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     0                    1                  0.0110352   -0.1887973    0.2108678
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.1764689   -0.2600783   -0.0928595
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.0614754   -0.1925369    0.0695862
3-6 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           0                    1                 -0.0062811   -0.1341931    0.1216309
3-6 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL                          0                    1                  0.0246652   -0.0951666    0.1444970
3-6 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH                     0                    1                 -0.0429506   -0.0822909   -0.0036103
3-6 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH                     0                    1                  0.0029258   -0.1357180    0.1415695
3-6 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     0                    1                 -0.1656914   -0.3266560   -0.0047267
3-6 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          0                    1                  0.0168012   -0.3517007    0.3853031
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.0104740   -0.1098661    0.1308141
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0562129   -0.2112400    0.0988141
3-6 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0232931   -0.2792646    0.3258508
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1002753   -0.2085611    0.4091117
3-6 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0643856   -0.2421666    0.1133954
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.1242397    0.0205116    0.2279678
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.1506620   -0.2699050   -0.0314190
6-9 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           0                    1                  0.1134735   -0.1280711    0.3550181
6-9 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL                          0                    1                  0.1442236    0.0052225    0.2832248
6-9 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0718486   -0.1624936    0.0187964
6-9 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     0                    1                  0.0162047   -0.1483288    0.1807382
6-9 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          0                    1                  0.0585158   -0.2251150    0.3421467
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0050212   -0.0978123    0.0877698
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                 -0.0028470   -0.1428146    0.1371206
6-9 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0309937   -0.3726896    0.3107022
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5955392   -1.3173365    0.1262581
6-9 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     0                    1                 -0.1119826   -0.2412784    0.0173132
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0939899   -0.1646957   -0.0232842
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0693491   -0.1749597    0.0362614
9-12 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           0                    1                  0.1878279   -0.0081895    0.3838453
9-12 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL                          0                    1                 -0.0900006   -0.2007763    0.0207752
9-12 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH                     0                    1                 -0.0276971   -0.0978795    0.0424853
9-12 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     0                    1                 -0.0442208   -0.1797873    0.0913457
9-12 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          0                    1                 -0.0722384   -0.2774830    0.1330062
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0326278   -0.1245963    0.0593407
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                  0.0173490   -0.1075743    0.1422724
9-12 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0984441   -0.1274287    0.3243169
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1783381   -0.7083827    1.0650588
9-12 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     0                    1                 -0.1091998   -0.2279735    0.0095740
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0273028   -0.0410901    0.0956957
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0738294   -0.1562045    0.0085457
12-15 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           0                    1                 -0.2186777   -0.3494824   -0.0878731
12-15 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL                          0                    1                  0.0966901    0.0064173    0.1869629
12-15 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH                     0                    1                 -0.0163438   -0.0747984    0.0421108
12-15 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     0                    1                 -0.1980090   -0.3326342   -0.0633838
12-15 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          0                    1                 -0.1775124   -0.3026832   -0.0523416
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0031425   -0.0856737    0.0919588
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                  0.0008071   -0.1138768    0.1154911
12-15 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0115056   -0.1843252    0.2073364
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0584577   -0.3849479    0.2680324
12-15 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     0                    1                  0.0203107   -0.1056582    0.1462797
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0107871   -0.0521991    0.0737734
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0603532   -0.1575571    0.0368508
15-18 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           0                    1                 -0.0762786   -0.2909131    0.1383560
15-18 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL                          0                    1                 -0.0571769   -0.1750207    0.0606668
15-18 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH                     0                    1                 -0.0728172   -0.1567134    0.0110790
15-18 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     0                    1                 -0.0118754   -0.1818516    0.1581008
15-18 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          0                    1                  0.0597100   -0.1450636    0.2644836
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                 -0.0073232   -0.0954099    0.0807636
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.0277168   -0.1328738    0.0774401
15-18 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0083968   -0.1870512    0.2038448
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0070084   -0.2349438    0.2209271
15-18 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0435876   -0.1804655    0.0932904
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0238943   -0.0326541    0.0804428
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0582493   -0.1537813    0.0372826
18-21 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           0                    1                 -0.1026936   -0.2308344    0.0254473
18-21 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL                          0                    1                 -0.0489302   -0.1312883    0.0334279
18-21 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     0                    1                  0.0033548   -0.1238075    0.1305172
18-21 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          0                    1                 -0.0612643   -0.2890425    0.1665140
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                 -0.0585454   -0.1400292    0.0229385
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                 -0.0680873   -0.1729649    0.0367903
18-21 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0586344   -0.2037410    0.0864723
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1111447   -0.2156353    0.4379247
18-21 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0626902   -0.1584299    0.0330495
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0194109   -0.0780150    0.0391931
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                  0.0473720   -0.0606425    0.1553865
21-24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           0                    1                 -0.0183090   -0.2320860    0.1954681
21-24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL                          0                    1                 -0.0673310   -0.1764287    0.0417667
21-24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     0                    1                  0.1065914   -0.0404590    0.2536418
21-24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          0                    1                  0.0665308   -0.0719220    0.2049837
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                 -0.0544903   -0.1431325    0.0341520
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                 -0.0224838   -0.1319777    0.0870101
21-24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0835874   -0.0703323    0.2375072
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1497023   -0.5294246    0.2300200
21-24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0209459   -0.1533411    0.1114494
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0154876   -0.0448717    0.0758470
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0182295   -0.0773538    0.1138128


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                 0.1553876   -0.0104433    0.3212185
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                -0.0061721   -0.0389832    0.0266390
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                 0.0140664   -0.1029021    0.1310350
0-3 months     MAL-ED       BANGLADESH                     1                    NA                 0.0160635   -0.0042445    0.0363714
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0001777   -0.0353939    0.0350386
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0762756   -0.2047828    0.0522316
0-3 months     MAL-ED       PERU                           1                    NA                -0.1285122   -0.2431274   -0.0138970
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0150099   -0.0120974    0.0421173
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1605759   -0.4524904    0.1313385
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                 0.0042447   -0.0148163    0.0233058
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0478082   -0.0684945   -0.0271219
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.0058542   -0.0167579    0.0050496
3-6 months     CONTENT      PERU                           1                    NA                -0.0008452   -0.0127161    0.0110258
3-6 months     GMS-Nepal    NEPAL                          1                    NA                 0.0257304   -0.0777209    0.1291817
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                -0.0406816   -0.0782241   -0.0031392
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                 0.0034129   -0.1263850    0.1332108
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0118850   -0.0245704    0.0008004
3-6 months     MAL-ED       INDIA                          1                    NA                -0.0003910   -0.0176336    0.0168517
3-6 months     MAL-ED       NEPAL                          1                    NA                 0.0128874   -0.0573018    0.0830766
3-6 months     MAL-ED       PERU                           1                    NA                -0.0446567   -0.1661111    0.0767976
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0088661   -0.0317108    0.0139786
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0995335   -0.1959866    0.3950537
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0054866   -0.0226491    0.0116759
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0325402    0.0079887    0.0570918
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0085793   -0.0182767    0.0011180
6-9 months     CONTENT      PERU                           1                    NA                -0.0014990   -0.0158066    0.0128086
6-9 months     GMS-Nepal    NEPAL                          1                    NA                 0.1270001    0.0018711    0.2521292
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0711181   -0.1561114    0.0138751
6-9 months     MAL-ED       BANGLADESH                     1                    NA                 0.0035490   -0.0076461    0.0147441
6-9 months     MAL-ED       INDIA                          1                    NA                 0.0040613   -0.0124933    0.0206158
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0102032   -0.0639222    0.0435158
6-9 months     MAL-ED       PERU                           1                    NA                 0.0020817   -0.1062356    0.1103989
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0035449   -0.0285424    0.0214526
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5924779   -1.2868953    0.1019395
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0127543   -0.0264640    0.0009555
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0223013   -0.0400549   -0.0045478
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0050822   -0.0128653    0.0027009
9-12 months    CONTENT      PERU                           1                    NA                 0.0046866   -0.0086391    0.0180123
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0870200   -0.1858800    0.0118400
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                -0.0263819   -0.0914444    0.0386806
9-12 months    MAL-ED       BANGLADESH                     1                    NA                -0.0003824   -0.0095507    0.0087859
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0043480   -0.0172607    0.0085646
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0107578   -0.0646318    0.0431163
9-12 months    MAL-ED       PERU                           1                    NA                 0.0108274   -0.0864951    0.1081499
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0022638   -0.0158270    0.0203546
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1694483   -0.6807084    1.0196051
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0103397   -0.0234881    0.0028087
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0084111   -0.0071864    0.0240086
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0066165   -0.0133655    0.0001324
12-15 months   CONTENT      PERU                           1                    NA                -0.0127805   -0.0250323   -0.0005287
12-15 months   GMS-Nepal    NEPAL                          1                    NA                 0.0989004    0.0190458    0.1787551
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0135505   -0.0682486    0.0411477
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0063992   -0.0184227    0.0056243
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0052249   -0.0138458    0.0033960
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0023307   -0.0569431    0.0522816
12-15 months   MAL-ED       PERU                           1                    NA                 0.0087628   -0.0809873    0.0985128
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0020367   -0.0137850    0.0178585
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0580006   -0.3707884    0.2547873
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0051726   -0.0076064    0.0179515
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0045618   -0.0205416    0.0114180
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0042447   -0.0114705    0.0029811
15-18 months   CONTENT      PERU                           1                    NA                -0.0049563   -0.0183778    0.0084652
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0582902   -0.1605619    0.0439815
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0708688   -0.1506435    0.0089059
15-18 months   MAL-ED       BANGLADESH                     1                    NA                -0.0057429   -0.0179257    0.0064399
15-18 months   MAL-ED       INDIA                          1                    NA                 0.0036921   -0.0075467    0.0149310
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0057467   -0.0576634    0.0461701
15-18 months   MAL-ED       PERU                           1                    NA                -0.0229937   -0.1048071    0.0588196
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0048068   -0.0202438    0.0106302
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0062696   -0.2215752    0.2090359
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0047481   -0.0192388    0.0097425
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0028847   -0.0122682    0.0180377
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0055854   -0.0127778    0.0016070
18-21 months   CONTENT      PERU                           1                    NA                -0.0019923   -0.0127212    0.0087367
18-21 months   GMS-Nepal    NEPAL                          1                    NA                -0.0426217   -0.1128819    0.0276385
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0006982   -0.0093717    0.0079752
18-21 months   MAL-ED       INDIA                          1                    NA                -0.0050517   -0.0147351    0.0046316
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0353438   -0.0839859    0.0132984
18-21 months   MAL-ED       PERU                           1                    NA                -0.0526246   -0.1332307    0.0279815
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0053062   -0.0161682    0.0055558
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1087330   -0.2033539    0.4208200
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0094258   -0.0210322    0.0021806
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0084881   -0.0252739    0.0082978
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0029793   -0.0051379    0.0110964
21-24 months   CONTENT      PERU                           1                    NA                -0.0024091   -0.0306082    0.0257901
21-24 months   GMS-Nepal    NEPAL                          1                    NA                -0.0669219   -0.1527602    0.0189164
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0124361    0.0002216    0.0246506
21-24 months   MAL-ED       INDIA                          1                    NA                 0.0026983   -0.0067141    0.0121107
21-24 months   MAL-ED       NEPAL                          1                    NA                -0.0307291   -0.0832875    0.0218294
21-24 months   MAL-ED       PERU                           1                    NA                -0.0159234   -0.0998207    0.0679740
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0074440   -0.0039290    0.0188170
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1422886   -0.5040782    0.2195010
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0006076   -0.0145046    0.0157197
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0064213   -0.0136585    0.0265012
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0018721   -0.0052054    0.0089496
