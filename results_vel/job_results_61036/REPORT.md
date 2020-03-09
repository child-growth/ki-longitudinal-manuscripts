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
![](/tmp/cc5d2f64-1479-41e5-a513-7c405a74bfe4/ce4ccd5e-6d02-45ad-bb80-c23888c6b361/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/cc5d2f64-1479-41e5-a513-7c405a74bfe4/ce4ccd5e-6d02-45ad-bb80-c23888c6b361/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/cc5d2f64-1479-41e5-a513-7c405a74bfe4/ce4ccd5e-6d02-45ad-bb80-c23888c6b361/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                -0.0648822   -0.1430943    0.0133299
0-3 months     GMS-Nepal    NEPAL                          0                    NA                -0.0132677   -0.0491136    0.0225782
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                 0.0819937    0.0671265    0.0968609
0-3 months     JiVitA-3     BANGLADESH                     0                    NA                 0.0718360    0.0668044    0.0768676
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                 0.0738150   -0.0047764    0.1524064
0-3 months     JiVitA-4     BANGLADESH                     0                    NA                 0.0656856    0.0501397    0.0812315
0-3 months     MAL-ED       BANGLADESH                     1                    NA                -0.1222356   -0.1572954   -0.0871757
0-3 months     MAL-ED       BANGLADESH                     0                    NA                -0.0757155   -0.2007724    0.0493414
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0665800   -0.1126443   -0.0205157
0-3 months     MAL-ED       INDIA                          0                    NA                -0.0396672   -0.3426358    0.2633014
0-3 months     MAL-ED       NEPAL                          1                    NA                 0.0877455    0.0180399    0.1574511
0-3 months     MAL-ED       NEPAL                          0                    NA                 0.0278876   -0.0328289    0.0886041
0-3 months     MAL-ED       PERU                           1                    NA                -0.2144687   -0.2773406   -0.1515968
0-3 months     MAL-ED       PERU                           0                    NA                -0.2656321   -0.3043841   -0.2268801
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.1965249   -0.2511009   -0.1419489
0-3 months     MAL-ED       SOUTH AFRICA                   0                    NA                -0.2243655   -0.3727559   -0.0759751
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0621357   -0.0403221    0.1645934
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1470598   -0.1883855   -0.1057341
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                -0.2344706   -0.2624579   -0.2064832
0-3 months     NIH-Birth    BANGLADESH                     0                    NA                -0.2359425   -0.3239687   -0.1479163
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.2076659   -0.2283937   -0.1869381
0-3 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.2922160   -0.3244140   -0.2600180
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.1853918   -0.2035185   -0.1672651
0-3 months     PROVIDE      BANGLADESH                     0                    NA                -0.2138261   -0.2765159   -0.1511362
3-6 months     CONTENT      PERU                           1                    NA                 0.0184663   -0.0049453    0.0418779
3-6 months     CONTENT      PERU                           0                    NA                 0.0041433   -0.0621595    0.0704461
3-6 months     GMS-Nepal    NEPAL                          1                    NA                -0.1817510   -0.2427160   -0.1207860
3-6 months     GMS-Nepal    NEPAL                          0                    NA                -0.1655654   -0.1922829   -0.1388480
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                 0.0086055   -0.0098959    0.0271069
3-6 months     JiVitA-3     BANGLADESH                     0                    NA                -0.0043066   -0.0096362    0.0010229
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0227730   -0.0688550    0.0233089
3-6 months     JiVitA-4     BANGLADESH                     0                    NA                -0.0083520   -0.0222399    0.0055359
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0168598   -0.0415981    0.0078784
3-6 months     MAL-ED       BANGLADESH                     0                    NA                -0.1299981   -0.2049548   -0.0550415
3-6 months     MAL-ED       INDIA                          1                    NA                -0.0362016   -0.0667993   -0.0056039
3-6 months     MAL-ED       INDIA                          0                    NA                -0.0163690   -0.1358655    0.1031275
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0222583   -0.0645976    0.0200811
3-6 months     MAL-ED       NEPAL                          0                    NA                -0.0221879   -0.0589788    0.0146030
3-6 months     MAL-ED       PERU                           1                    NA                 0.0443351   -0.0215286    0.1101989
3-6 months     MAL-ED       PERU                           0                    NA                 0.0209780   -0.0154681    0.0574242
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0004661   -0.0394811    0.0404132
3-6 months     MAL-ED       SOUTH AFRICA                   0                    NA                -0.0970851   -0.2111911    0.0170208
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1410982   -0.2749323   -0.0072642
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0686781   -0.1020553   -0.0353010
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0480350   -0.0714239   -0.0246460
3-6 months     NIH-Birth    BANGLADESH                     0                    NA                -0.0740540   -0.1521078    0.0039997
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0091031   -0.0093844    0.0275907
3-6 months     NIH-Crypto   BANGLADESH                     0                    NA                 0.0699432    0.0263099    0.1135765
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0233963   -0.0400803   -0.0067123
3-6 months     PROVIDE      BANGLADESH                     0                    NA                -0.0566311   -0.1121374   -0.0011248
6-9 months     CONTENT      PERU                           1                    NA                -0.0227590   -0.0438021   -0.0017158
6-9 months     CONTENT      PERU                           0                    NA                -0.0125476   -0.0711508    0.0460556
6-9 months     GMS-Nepal    NEPAL                          1                    NA                -0.0881509   -0.1247961   -0.0515058
6-9 months     GMS-Nepal    NEPAL                          0                    NA                -0.0378382   -0.0627258   -0.0129506
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                 0.0093222   -0.0309642    0.0496085
6-9 months     JiVitA-4     BANGLADESH                     0                    NA                -0.0287061   -0.0390251   -0.0183871
6-9 months     MAL-ED       BANGLADESH                     1                    NA                -0.0708633   -0.0888078   -0.0529187
6-9 months     MAL-ED       BANGLADESH                     0                    NA                -0.0618392   -0.1261795    0.0025011
6-9 months     MAL-ED       INDIA                          1                    NA                -0.0703173   -0.0938840   -0.0467505
6-9 months     MAL-ED       INDIA                          0                    NA                -0.0574892   -0.1893019    0.0743234
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0281415   -0.0563443    0.0000613
6-9 months     MAL-ED       NEPAL                          0                    NA                -0.0348671   -0.0630838   -0.0066505
6-9 months     MAL-ED       PERU                           1                    NA                -0.0378776   -0.0879359    0.0121808
6-9 months     MAL-ED       PERU                           0                    NA                -0.0363597   -0.0634151   -0.0093043
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0171456   -0.0457806    0.0114894
6-9 months     MAL-ED       SOUTH AFRICA                   0                    NA                 0.0050406   -0.1230212    0.1331024
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4545467    0.3294053    0.5796881
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0951284   -0.1284430   -0.0618137
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0516130   -0.0716916   -0.0315344
6-9 months     NIH-Birth    BANGLADESH                     0                    NA                -0.1046485   -0.1562098   -0.0530873
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0246296   -0.0394319   -0.0098273
6-9 months     NIH-Crypto   BANGLADESH                     0                    NA                -0.0601625   -0.0871707   -0.0331543
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0590034   -0.0702165   -0.0477903
6-9 months     PROVIDE      BANGLADESH                     0                    NA                -0.1026647   -0.1423187   -0.0630108
9-12 months    CONTENT      PERU                           1                    NA                -0.0245772   -0.0411281   -0.0080263
9-12 months    CONTENT      PERU                           0                    NA                -0.0249494   -0.1062979    0.0563992
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0348430   -0.0761483    0.0064624
9-12 months    GMS-Nepal    NEPAL                          0                    NA                -0.0784003   -0.0980025   -0.0587981
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                -0.0445446   -0.0743532   -0.0147361
9-12 months    JiVitA-4     BANGLADESH                     0                    NA                -0.0525575   -0.0612505   -0.0438645
9-12 months    MAL-ED       BANGLADESH                     1                    NA                -0.0868422   -0.1038217   -0.0698626
9-12 months    MAL-ED       BANGLADESH                     0                    NA                -0.1133351   -0.1641023   -0.0625679
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0890826   -0.1051179   -0.0730474
9-12 months    MAL-ED       INDIA                          0                    NA                -0.1395856   -0.2217403   -0.0574308
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0581167   -0.0877173   -0.0285162
9-12 months    MAL-ED       NEPAL                          0                    NA                -0.0694714   -0.0900688   -0.0488739
9-12 months    MAL-ED       PERU                           1                    NA                -0.0607305   -0.1074035   -0.0140574
9-12 months    MAL-ED       PERU                           0                    NA                -0.0376400   -0.0620703   -0.0132096
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                -0.0864399   -0.1147015   -0.0581783
9-12 months    MAL-ED       SOUTH AFRICA                   0                    NA                -0.0740763   -0.1615024    0.0133499
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2056406   -0.5249242    0.1136430
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1517154   -0.1835757   -0.1198551
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0390875   -0.0540956   -0.0240794
9-12 months    NIH-Birth    BANGLADESH                     0                    NA                -0.0728036   -0.1232007   -0.0224064
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                -0.0370990   -0.0499188   -0.0242791
9-12 months    NIH-Crypto   BANGLADESH                     0                    NA                -0.0256320   -0.0506613   -0.0006028
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0608760   -0.0724571   -0.0492948
9-12 months    PROVIDE      BANGLADESH                     0                    NA                -0.0876348   -0.1193092   -0.0559603
12-15 months   CONTENT      PERU                           1                    NA                -0.0704509   -0.0873669   -0.0535349
12-15 months   CONTENT      PERU                           0                    NA                -0.1576575   -0.2210353   -0.0942797
12-15 months   GMS-Nepal    NEPAL                          1                    NA                -0.0994619   -0.1276601   -0.0712637
12-15 months   GMS-Nepal    NEPAL                          0                    NA                -0.0624169   -0.0789287   -0.0459052
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0467816   -0.0680655   -0.0254978
12-15 months   JiVitA-4     BANGLADESH                     0                    NA                -0.0451241   -0.0518082   -0.0384401
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0518952   -0.0680125   -0.0357778
12-15 months   MAL-ED       BANGLADESH                     0                    NA                -0.0951344   -0.1651302   -0.0251385
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0525145   -0.0682058   -0.0368233
12-15 months   MAL-ED       INDIA                          0                    NA                -0.1184079   -0.1622779   -0.0745380
12-15 months   MAL-ED       NEPAL                          1                    NA                -0.0634095   -0.0881803   -0.0386386
12-15 months   MAL-ED       NEPAL                          0                    NA                -0.0540876   -0.0742465   -0.0339286
12-15 months   MAL-ED       PERU                           1                    NA                -0.0570454   -0.0959962   -0.0180946
12-15 months   MAL-ED       PERU                           0                    NA                -0.0678503   -0.0886233   -0.0470773
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0593951   -0.0836685   -0.0351218
12-15 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0549820   -0.1287740    0.0188099
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0784290   -0.2225208    0.0656629
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0691367   -0.0951577   -0.0431158
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                -0.1286434   -0.1465576   -0.1107292
12-15 months   NIH-Birth    BANGLADESH                     0                    NA                -0.1118754   -0.1547184   -0.0690323
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0377051   -0.0490404   -0.0263698
12-15 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0320035   -0.0528375   -0.0111694
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0396564   -0.0502577   -0.0290551
12-15 months   PROVIDE      BANGLADESH                     0                    NA                -0.0530581   -0.0873680   -0.0187482
15-18 months   CONTENT      PERU                           1                    NA                -0.0087669   -0.0259123    0.0083785
15-18 months   CONTENT      PERU                           0                    NA                -0.0617513   -0.1332156    0.0097130
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0539996   -0.0883272   -0.0196720
15-18 months   GMS-Nepal    NEPAL                          0                    NA                -0.0668037   -0.0871175   -0.0464900
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0212465   -0.0471565    0.0046634
15-18 months   JiVitA-4     BANGLADESH                     0                    NA                -0.0328634   -0.0395096   -0.0262173
15-18 months   MAL-ED       BANGLADESH                     1                    NA                -0.0437468   -0.0576941   -0.0297996
15-18 months   MAL-ED       BANGLADESH                     0                    NA                -0.0840584   -0.1392585   -0.0288582
15-18 months   MAL-ED       INDIA                          1                    NA                -0.0398678   -0.0530322   -0.0267035
15-18 months   MAL-ED       INDIA                          0                    NA                -0.0125111   -0.0721548    0.0471325
15-18 months   MAL-ED       NEPAL                          1                    NA                -0.0544210   -0.0779785   -0.0308636
15-18 months   MAL-ED       NEPAL                          0                    NA                -0.0524601   -0.0739275   -0.0309928
15-18 months   MAL-ED       PERU                           1                    NA                -0.0380447   -0.0738404   -0.0022489
15-18 months   MAL-ED       PERU                           0                    NA                -0.0392411   -0.0563083   -0.0221739
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0258965   -0.0460358   -0.0057571
15-18 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0756282   -0.1415111   -0.0097454
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1001328   -0.2679777    0.0677122
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0841843   -0.1071423   -0.0612262
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0579614   -0.0733436   -0.0425792
15-18 months   NIH-Birth    BANGLADESH                     0                    NA                -0.0570507   -0.1184961    0.0043946
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0169865   -0.0264213   -0.0075518
15-18 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0077761   -0.0268502    0.0112980
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0366557   -0.0457756   -0.0275359
15-18 months   PROVIDE      BANGLADESH                     0                    NA                -0.0491133   -0.0815660   -0.0166606
18-21 months   CONTENT      PERU                           1                    NA                -0.0067895   -0.0227264    0.0091473
18-21 months   CONTENT      PERU                           0                    NA                -0.0380583   -0.0986322    0.0225156
18-21 months   GMS-Nepal    NEPAL                          1                    NA                 0.0393865    0.0097960    0.0689769
18-21 months   GMS-Nepal    NEPAL                          0                    NA                 0.0129896   -0.0053546    0.0313338
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0151780   -0.0272932   -0.0030629
18-21 months   MAL-ED       BANGLADESH                     0                    NA                -0.0525448   -0.0954733   -0.0096163
18-21 months   MAL-ED       INDIA                          1                    NA                 0.0074054   -0.0044752    0.0192860
18-21 months   MAL-ED       INDIA                          0                    NA                -0.0083562   -0.0730177    0.0563054
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0147757   -0.0357885    0.0062371
18-21 months   MAL-ED       NEPAL                          0                    NA                -0.0371606   -0.0549454   -0.0193759
18-21 months   MAL-ED       PERU                           1                    NA                 0.0116551   -0.0219597    0.0452698
18-21 months   MAL-ED       PERU                           0                    NA                -0.0142945   -0.0316426    0.0030536
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0317033   -0.0521998   -0.0112068
18-21 months   MAL-ED       SOUTH AFRICA                   0                    NA                -0.0692976   -0.1222299   -0.0163653
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0732231   -0.1865795    0.0401334
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0265006   -0.0500925   -0.0029086
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0373846   -0.0507700   -0.0239993
18-21 months   NIH-Birth    BANGLADESH                     0                    NA                -0.0535369   -0.0849038   -0.0221700
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0248877   -0.0346848   -0.0150907
18-21 months   NIH-Crypto   BANGLADESH                     0                    NA                -0.0341619   -0.0510165   -0.0173074
18-21 months   PROVIDE      BANGLADESH                     1                    NA                -0.0130599   -0.0214696   -0.0046502
18-21 months   PROVIDE      BANGLADESH                     0                    NA                 0.0145011   -0.0176249    0.0466270
21-24 months   CONTENT      PERU                           1                    NA                 0.0255858   -0.0038252    0.0549968
21-24 months   CONTENT      PERU                           0                    NA                 0.0241676   -0.0473072    0.0956425
21-24 months   GMS-Nepal    NEPAL                          1                    NA                 0.0799388    0.0368676    0.1230100
21-24 months   GMS-Nepal    NEPAL                          0                    NA                 0.0577859    0.0331915    0.0823803
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0220446    0.0097015    0.0343876
21-24 months   MAL-ED       BANGLADESH                     0                    NA                 0.0430517    0.0013935    0.0847098
21-24 months   MAL-ED       INDIA                          1                    NA                 0.0285426    0.0170895    0.0399958
21-24 months   MAL-ED       INDIA                          0                    NA                 0.0660344    0.0207204    0.1113485
21-24 months   MAL-ED       NEPAL                          1                    NA                 0.0089330   -0.0122605    0.0301265
21-24 months   MAL-ED       NEPAL                          0                    NA                -0.0018203   -0.0202444    0.0166038
21-24 months   MAL-ED       PERU                           1                    NA                 0.0666402    0.0349071    0.0983732
21-24 months   MAL-ED       PERU                           0                    NA                 0.0509656    0.0330327    0.0688985
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0426818    0.0249185    0.0604451
21-24 months   MAL-ED       SOUTH AFRICA                   0                    NA                 0.0759050    0.0258755    0.1259344
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0458323   -0.0813709    0.1730354
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0080395   -0.0141442    0.0302231
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0389528    0.0267142    0.0511913
21-24 months   NIH-Birth    BANGLADESH                     0                    NA                 0.0569189    0.0158886    0.0979493
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0531362    0.0427819    0.0634906
21-24 months   NIH-Crypto   BANGLADESH                     0                    NA                 0.0727461    0.0568716    0.0886206
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0453140    0.0363036    0.0543243
21-24 months   PROVIDE      BANGLADESH                     0                    NA                 0.0576272    0.0248191    0.0904354


### Parameter: E(Y)


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          NA                   NA                -0.0224939   -0.0513092    0.0063213
0-3 months     JiVitA-3     BANGLADESH                     NA                   NA                 0.0739818    0.0690428    0.0789207
0-3 months     JiVitA-4     BANGLADESH                     NA                   NA                 0.0675829    0.0526455    0.0825202
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
3-6 months     JiVitA-3     BANGLADESH                     NA                   NA                -0.0034550   -0.0083211    0.0014111
3-6 months     JiVitA-4     BANGLADESH                     NA                   NA                -0.0088470   -0.0225757    0.0048816
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
6-9 months     JiVitA-4     BANGLADESH                     NA                   NA                -0.0290042   -0.0380014   -0.0200070
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
9-12 months    JiVitA-4     BANGLADESH                     NA                   NA                -0.0521041   -0.0596072   -0.0446010
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
12-15 months   JiVitA-4     BANGLADESH                     NA                   NA                -0.0451388   -0.0512136   -0.0390639
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
15-18 months   JiVitA-4     BANGLADESH                     NA                   NA                -0.0328680   -0.0389225   -0.0268136
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
0-3 months     GMS-Nepal    NEPAL                          0                    1                  0.0516145   -0.0349353    0.1381643
0-3 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3     BANGLADESH                     0                    1                 -0.0101577   -0.0254560    0.0051406
0-3 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0081294   -0.0883531    0.0720942
0-3 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       BANGLADESH                     0                    1                  0.0465201   -0.0833767    0.1764168
0-3 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       INDIA                          0                    1                  0.0269128   -0.2797777    0.3336033
0-3 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       NEPAL                          0                    1                 -0.0598579   -0.1532129    0.0334971
0-3 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       PERU                           0                    1                 -0.0511634   -0.1252054    0.0228785
0-3 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0278406   -0.1864153    0.1307340
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2091955   -0.3202666   -0.0981243
0-3 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0014719   -0.0939203    0.0909765
0-3 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0845501   -0.1228887   -0.0462115
0-3 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE      BANGLADESH                     0                    1                 -0.0284342   -0.0937080    0.0368395
3-6 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     CONTENT      PERU                           0                    1                 -0.0143230   -0.0847777    0.0561316
3-6 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal    NEPAL                          0                    1                  0.0161856   -0.0504840    0.0828552
3-6 months     JiVitA-3     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3     BANGLADESH                     0                    1                 -0.0129121   -0.0323289    0.0065047
3-6 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4     BANGLADESH                     0                    1                  0.0144210   -0.0332284    0.0620705
3-6 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       BANGLADESH                     0                    1                 -0.1131383   -0.1921952   -0.0340814
3-6 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       INDIA                          0                    1                  0.0198326   -0.1036309    0.1432961
3-6 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       NEPAL                          0                    1                  0.0000703   -0.0566163    0.0567570
3-6 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       PERU                           0                    1                 -0.0233571   -0.0982117    0.0514975
3-6 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       SOUTH AFRICA                   0                    1                 -0.0975512   -0.2188170    0.0237146
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0724201   -0.0654583    0.2102985
3-6 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0260190   -0.1076698    0.0556317
3-6 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto   BANGLADESH                     0                    1                  0.0608401    0.0131581    0.1085220
3-6 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE      BANGLADESH                     0                    1                 -0.0332348   -0.0912275    0.0247580
6-9 months     CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     CONTENT      PERU                           0                    1                  0.0102114   -0.0520503    0.0724730
6-9 months     GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal    NEPAL                          0                    1                  0.0503127    0.0059638    0.0946617
6-9 months     JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4     BANGLADESH                     0                    1                 -0.0380282   -0.0792396    0.0031832
6-9 months     MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       BANGLADESH                     0                    1                  0.0090240   -0.0578046    0.0758527
6-9 months     MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       INDIA                          0                    1                  0.0128281   -0.1209634    0.1466196
6-9 months     MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       NEPAL                          0                    1                 -0.0067256   -0.0468240    0.0333729
6-9 months     MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       PERU                           0                    1                  0.0015179   -0.0556524    0.0586881
6-9 months     MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       SOUTH AFRICA                   0                    1                  0.0221862   -0.1088976    0.1532700
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.5496751   -0.6791781   -0.4201720
6-9 months     NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth    BANGLADESH                     0                    1                 -0.0530355   -0.1087780    0.0027070
6-9 months     NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto   BANGLADESH                     0                    1                 -0.0355329   -0.0663551   -0.0047107
6-9 months     PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE      BANGLADESH                     0                    1                 -0.0436614   -0.0848374   -0.0024853
9-12 months    CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    CONTENT      PERU                           0                    1                 -0.0003722   -0.0833900    0.0826457
9-12 months    GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal    NEPAL                          0                    1                 -0.0435573   -0.0889796    0.0018650
9-12 months    JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4     BANGLADESH                     0                    1                 -0.0080129   -0.0391610    0.0231353
9-12 months    MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       BANGLADESH                     0                    1                 -0.0264929   -0.0800001    0.0270143
9-12 months    MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       INDIA                          0                    1                 -0.0505029   -0.1342166    0.0332107
9-12 months    MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       NEPAL                          0                    1                 -0.0113546   -0.0475557    0.0248464
9-12 months    MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       PERU                           0                    1                  0.0230905   -0.0295052    0.0756862
9-12 months    MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       SOUTH AFRICA                   0                    1                  0.0123636   -0.0796492    0.1043764
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0539252   -0.2670100    0.3748604
9-12 months    NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth    BANGLADESH                     0                    1                 -0.0337161   -0.0864095    0.0189773
9-12 months    NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto   BANGLADESH                     0                    1                  0.0114669   -0.0166570    0.0395909
9-12 months    PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE      BANGLADESH                     0                    1                 -0.0267588   -0.0605212    0.0070036
12-15 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   CONTENT      PERU                           0                    1                 -0.0872066   -0.1528423   -0.0215709
12-15 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal    NEPAL                          0                    1                  0.0370450    0.0042878    0.0698021
12-15 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4     BANGLADESH                     0                    1                  0.0016575   -0.0211626    0.0244777
12-15 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       BANGLADESH                     0                    1                 -0.0432392   -0.1149396    0.0284612
12-15 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       INDIA                          0                    1                 -0.0658934   -0.1124060   -0.0193808
12-15 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       NEPAL                          0                    1                  0.0093219   -0.0227790    0.0414228
12-15 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       PERU                           0                    1                 -0.0108049   -0.0548959    0.0332860
12-15 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0044131   -0.0733185    0.0821447
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0092922   -0.1371739    0.1557583
12-15 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth    BANGLADESH                     0                    1                  0.0167680   -0.0296856    0.0632217
12-15 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0057016   -0.0180374    0.0294406
12-15 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE      BANGLADESH                     0                    1                 -0.0134017   -0.0493999    0.0225965
15-18 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   CONTENT      PERU                           0                    1                 -0.0529844   -0.1265404    0.0205715
15-18 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal    NEPAL                          0                    1                 -0.0128041   -0.0526579    0.0270496
15-18 months   JiVitA-4     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4     BANGLADESH                     0                    1                 -0.0116169   -0.0388785    0.0156447
15-18 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       BANGLADESH                     0                    1                 -0.0403115   -0.0969994    0.0163764
15-18 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       INDIA                          0                    1                  0.0273567   -0.0337749    0.0884883
15-18 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       NEPAL                          0                    1                  0.0019609   -0.0305074    0.0344292
15-18 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       PERU                           0                    1                 -0.0011964   -0.0410004    0.0386075
15-18 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0497318   -0.1188307    0.0193672
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0159485   -0.1534377    0.1853347
15-18 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth    BANGLADESH                     0                    1                  0.0009107   -0.0624691    0.0642905
15-18 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0092105   -0.0121064    0.0305274
15-18 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE      BANGLADESH                     0                    1                 -0.0124575   -0.0461888    0.0212738
18-21 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   CONTENT      PERU                           0                    1                 -0.0312688   -0.0941328    0.0315953
18-21 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal    NEPAL                          0                    1                 -0.0263969   -0.0621402    0.0093465
18-21 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       BANGLADESH                     0                    1                 -0.0373668   -0.0821969    0.0074634
18-21 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       INDIA                          0                    1                 -0.0157615   -0.0815731    0.0500500
18-21 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       NEPAL                          0                    1                 -0.0223850   -0.0499783    0.0052084
18-21 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       PERU                           0                    1                 -0.0259496   -0.0638934    0.0119943
18-21 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       SOUTH AFRICA                   0                    1                 -0.0375943   -0.0945269    0.0193382
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0467225   -0.0686381    0.1620831
18-21 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth    BANGLADESH                     0                    1                 -0.0161523   -0.0502920    0.0179875
18-21 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto   BANGLADESH                     0                    1                 -0.0092742   -0.0288031    0.0102547
18-21 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE      BANGLADESH                     0                    1                  0.0275609   -0.0056358    0.0607576
21-24 months   CONTENT      PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   CONTENT      PERU                           0                    1                 -0.0014182   -0.0787077    0.0758713
21-24 months   GMS-Nepal    NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal    NEPAL                          0                    1                 -0.0221529   -0.0719846    0.0276788
21-24 months   MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       BANGLADESH                     0                    1                  0.0210071   -0.0220349    0.0640491
21-24 months   MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       INDIA                          0                    1                  0.0374918   -0.0094163    0.0843999
21-24 months   MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       NEPAL                          0                    1                 -0.0107533   -0.0388727    0.0173661
21-24 months   MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       PERU                           0                    1                 -0.0156746   -0.0525248    0.0211756
21-24 months   MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       SOUTH AFRICA                   0                    1                  0.0332232   -0.0201985    0.0866449
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0377928   -0.1670801    0.0914945
21-24 months   NIH-Birth    BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth    BANGLADESH                     0                    1                  0.0179662   -0.0248574    0.0607898
21-24 months   NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto   BANGLADESH                     0                    1                  0.0196099    0.0006345    0.0385853
21-24 months   PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE      BANGLADESH                     0                    1                  0.0123133   -0.0217274    0.0463539


### Parameter: PAR


agecat         studyid      country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -----------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal    NEPAL                          1                    NA                 0.0423883   -0.0356941    0.1204707
0-3 months     JiVitA-3     BANGLADESH                     1                    NA                -0.0080120   -0.0226589    0.0066350
0-3 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0062321   -0.0833157    0.0708515
0-3 months     MAL-ED       BANGLADESH                     1                    NA                 0.0046829   -0.0057710    0.0151369
0-3 months     MAL-ED       INDIA                          1                    NA                -0.0023435   -0.0202742    0.0155873
0-3 months     MAL-ED       NEPAL                          1                    NA                -0.0296456   -0.0847795    0.0254882
0-3 months     MAL-ED       PERU                           1                    NA                -0.0399200   -0.0986930    0.0188531
0-3 months     MAL-ED       SOUTH AFRICA                   1                    NA                 0.0082359   -0.0066154    0.0230873
0-3 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2040953   -0.3102412   -0.0979494
0-3 months     NIH-Birth    BANGLADESH                     1                    NA                 0.0023407   -0.0068777    0.0115590
0-3 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0235948   -0.0333956   -0.0137940
0-3 months     PROVIDE      BANGLADESH                     1                    NA                -0.0026484   -0.0080360    0.0027393
3-6 months     CONTENT      PERU                           1                    NA                -0.0010835   -0.0064612    0.0042942
3-6 months     GMS-Nepal    NEPAL                          1                    NA                 0.0204714   -0.0392452    0.0801881
3-6 months     JiVitA-3     BANGLADESH                     1                    NA                -0.0120605   -0.0306112    0.0064902
3-6 months     JiVitA-4     BANGLADESH                     1                    NA                 0.0139260   -0.0292436    0.0570957
3-6 months     MAL-ED       BANGLADESH                     1                    NA                -0.0055809   -0.0114046    0.0002428
3-6 months     MAL-ED       INDIA                          1                    NA                 0.0001614   -0.0074496    0.0077723
3-6 months     MAL-ED       NEPAL                          1                    NA                -0.0007576   -0.0323124    0.0307972
3-6 months     MAL-ED       PERU                           1                    NA                -0.0185891   -0.0787363    0.0415581
3-6 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0021279   -0.0125857    0.0083298
3-6 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0719364   -0.0603888    0.2042616
3-6 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0021767   -0.0103645    0.0060111
3-6 months     NIH-Crypto   BANGLADESH                     1                    NA                 0.0176709    0.0058981    0.0294437
3-6 months     PROVIDE      BANGLADESH                     1                    NA                -0.0035662   -0.0079889    0.0008565
6-9 months     CONTENT      PERU                           1                    NA                -0.0008541   -0.0071874    0.0054793
6-9 months     GMS-Nepal    NEPAL                          1                    NA                 0.0413010    0.0034422    0.0791599
6-9 months     JiVitA-4     BANGLADESH                     1                    NA                -0.0383264   -0.0771754    0.0005227
6-9 months     MAL-ED       BANGLADESH                     1                    NA                 0.0008401   -0.0039115    0.0055917
6-9 months     MAL-ED       INDIA                          1                    NA                -0.0000183   -0.0073239    0.0072874
6-9 months     MAL-ED       NEPAL                          1                    NA                -0.0044661   -0.0269285    0.0179964
6-9 months     MAL-ED       PERU                           1                    NA                 0.0042991   -0.0397001    0.0482983
6-9 months     MAL-ED       SOUTH AFRICA                   1                    NA                -0.0006372   -0.0106956    0.0094212
6-9 months     MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5466452   -0.6700516   -0.4232388
6-9 months     NIH-Birth    BANGLADESH                     1                    NA                -0.0076217   -0.0142048   -0.0010386
6-9 months     NIH-Crypto   BANGLADESH                     1                    NA                -0.0067342   -0.0144100    0.0009417
6-9 months     PROVIDE      BANGLADESH                     1                    NA                -0.0024230   -0.0058640    0.0010180
9-12 months    CONTENT      PERU                           1                    NA                 0.0018770   -0.0034493    0.0072033
9-12 months    GMS-Nepal    NEPAL                          1                    NA                -0.0418856   -0.0829547   -0.0008166
9-12 months    JiVitA-4     BANGLADESH                     1                    NA                -0.0075595   -0.0367924    0.0216735
9-12 months    MAL-ED       BANGLADESH                     1                    NA                -0.0003632   -0.0044963    0.0037699
9-12 months    MAL-ED       INDIA                          1                    NA                -0.0021573   -0.0072687    0.0029541
9-12 months    MAL-ED       NEPAL                          1                    NA                -0.0045022   -0.0258519    0.0168476
9-12 months    MAL-ED       PERU                           1                    NA                 0.0188044   -0.0219896    0.0595984
9-12 months    MAL-ED       SOUTH AFRICA                   1                    NA                 0.0015778   -0.0058489    0.0090044
9-12 months    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0492196   -0.2564071    0.3548463
9-12 months    NIH-Birth    BANGLADESH                     1                    NA                -0.0024623   -0.0079746    0.0030501
9-12 months    NIH-Crypto   BANGLADESH                     1                    NA                 0.0027995   -0.0035710    0.0091699
9-12 months    PROVIDE      BANGLADESH                     1                    NA                -0.0021710   -0.0049587    0.0006167
12-15 months   CONTENT      PERU                           1                    NA                -0.0047476   -0.0091985   -0.0002967
12-15 months   GMS-Nepal    NEPAL                          1                    NA                 0.0349345    0.0062927    0.0635762
12-15 months   JiVitA-4     BANGLADESH                     1                    NA                 0.0016429   -0.0198083    0.0230941
12-15 months   MAL-ED       BANGLADESH                     1                    NA                -0.0038171   -0.0088900    0.0012558
12-15 months   MAL-ED       INDIA                          1                    NA                -0.0040078   -0.0083814    0.0003657
12-15 months   MAL-ED       NEPAL                          1                    NA                 0.0058366   -0.0121460    0.0238192
12-15 months   MAL-ED       PERU                           1                    NA                -0.0083078   -0.0430608    0.0264453
12-15 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0002193   -0.0061882    0.0066267
12-15 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0085477   -0.1330781    0.1501736
12-15 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0027165   -0.0022507    0.0076837
12-15 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0006262   -0.0068476    0.0055951
12-15 months   PROVIDE      BANGLADESH                     1                    NA                -0.0012543   -0.0040667    0.0015580
15-18 months   CONTENT      PERU                           1                    NA                -0.0018701   -0.0068661    0.0031260
15-18 months   GMS-Nepal    NEPAL                          1                    NA                -0.0155086   -0.0503815    0.0193643
15-18 months   JiVitA-4     BANGLADESH                     1                    NA                -0.0116215   -0.0372540    0.0140110
15-18 months   MAL-ED       BANGLADESH                     1                    NA                -0.0020474   -0.0062975    0.0022026
15-18 months   MAL-ED       INDIA                          1                    NA                 0.0018644   -0.0019885    0.0057172
15-18 months   MAL-ED       NEPAL                          1                    NA                 0.0011247   -0.0180770    0.0203263
15-18 months   MAL-ED       PERU                           1                    NA                 0.0019882   -0.0289929    0.0329692
15-18 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0026512   -0.0079972    0.0026949
15-18 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0148044   -0.1483353    0.1779442
15-18 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0001571   -0.0052879    0.0056022
15-18 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0000792   -0.0055933    0.0057516
15-18 months   PROVIDE      BANGLADESH                     1                    NA                -0.0009880   -0.0035032    0.0015272
18-21 months   CONTENT      PERU                           1                    NA                -0.0000195   -0.0037169    0.0036779
18-21 months   GMS-Nepal    NEPAL                          1                    NA                -0.0251545   -0.0567547    0.0064457
18-21 months   MAL-ED       BANGLADESH                     1                    NA                -0.0003438   -0.0035802    0.0028925
18-21 months   MAL-ED       INDIA                          1                    NA                -0.0016313   -0.0047895    0.0015269
18-21 months   MAL-ED       NEPAL                          1                    NA                -0.0130990   -0.0290542    0.0028562
18-21 months   MAL-ED       PERU                           1                    NA                -0.0197692   -0.0491255    0.0095871
18-21 months   MAL-ED       SOUTH AFRICA                   1                    NA                -0.0004632   -0.0043155    0.0033891
18-21 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0461929   -0.0629410    0.1553267
18-21 months   NIH-Birth    BANGLADESH                     1                    NA                -0.0016513   -0.0055999    0.0022972
18-21 months   NIH-Crypto   BANGLADESH                     1                    NA                -0.0030810   -0.0087802    0.0026182
18-21 months   PROVIDE      BANGLADESH                     1                    NA                 0.0021200   -0.0005560    0.0047959
21-24 months   CONTENT      PERU                           1                    NA                -0.0001866   -0.0103574    0.0099842
21-24 months   GMS-Nepal    NEPAL                          1                    NA                -0.0219769   -0.0656875    0.0217337
21-24 months   MAL-ED       BANGLADESH                     1                    NA                 0.0035736   -0.0007279    0.0078752
21-24 months   MAL-ED       INDIA                          1                    NA                 0.0012460   -0.0017102    0.0042022
21-24 months   MAL-ED       NEPAL                          1                    NA                -0.0050535   -0.0211805    0.0110734
21-24 months   MAL-ED       PERU                           1                    NA                -0.0096658   -0.0379403    0.0186087
21-24 months   MAL-ED       SOUTH AFRICA                   1                    NA                 0.0011903   -0.0026722    0.0050529
21-24 months   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0365083   -0.1590947    0.0860782
21-24 months   NIH-Birth    BANGLADESH                     1                    NA                 0.0014751   -0.0034074    0.0063576
21-24 months   NIH-Crypto   BANGLADESH                     1                    NA                 0.0056259   -0.0011379    0.0123896
21-24 months   PROVIDE      BANGLADESH                     1                    NA                 0.0009203   -0.0015654    0.0034059
