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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        impfloor    n_cell      n
-------------  -------------------------  -----------------------------  ---------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1              217    236
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0               19    236
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1              161    163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0                2    163
0-3 months     ki0047075b-MAL-ED          INDIA                          1              166    177
0-3 months     ki0047075b-MAL-ED          INDIA                          0               11    177
0-3 months     ki0047075b-MAL-ED          NEPAL                          1               61    150
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               89    150
0-3 months     ki0047075b-MAL-ED          PERU                           1               53    254
0-3 months     ki0047075b-MAL-ED          PERU                           0              201    254
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              178    198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               20    198
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10    223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213    223
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1               68     68
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0     68
0-3 months     ki1000108-IRC              INDIA                          1              280    280
0-3 months     ki1000108-IRC              INDIA                          0                0    280
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1              501    564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     0               63    564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1              586    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               54    640
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              547    721
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174    721
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               72    398
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0              326    398
0-3 months     ki1114097-CONTENT          PERU                           1               27     29
0-3 months     ki1114097-CONTENT          PERU                           0                2     29
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              646   9797
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             9151   9797
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               57    636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0              579    636
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1              214    231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0               17    231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1              206    208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0                2    208
3-6 months     ki0047075b-MAL-ED          INDIA                          1              215    230
3-6 months     ki0047075b-MAL-ED          INDIA                          0               15    230
3-6 months     ki0047075b-MAL-ED          NEPAL                          1              101    227
3-6 months     ki0047075b-MAL-ED          NEPAL                          0              126    227
3-6 months     ki0047075b-MAL-ED          PERU                           1               58    267
3-6 months     ki0047075b-MAL-ED          PERU                           0              209    267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              222    241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               19    241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               11    237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              226    237
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              214    214
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0    214
3-6 months     ki1000108-IRC              INDIA                          1              297    297
3-6 months     ki1000108-IRC              INDIA                          0                0    297
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1              463    521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     0               58    521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1              551    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               47    598
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              521    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              174    695
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               69    370
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0              301    370
3-6 months     ki1114097-CONTENT          PERU                           1              200    214
3-6 months     ki1114097-CONTENT          PERU                           0               14    214
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              530   6220
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             5690   6220
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1               41    432
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0              391    432
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1              208    224
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0               16    224
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1              196    198
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0                2    198
6-9 months     ki0047075b-MAL-ED          INDIA                          1              215    230
6-9 months     ki0047075b-MAL-ED          INDIA                          0               15    230
6-9 months     ki0047075b-MAL-ED          NEPAL                          1              100    223
6-9 months     ki0047075b-MAL-ED          NEPAL                          0              123    223
6-9 months     ki0047075b-MAL-ED          PERU                           1               57    245
6-9 months     ki0047075b-MAL-ED          PERU                           0              188    245
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1              213    231
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               18    231
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               10    223
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              213    223
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              219    219
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                0    219
6-9 months     ki1000108-IRC              INDIA                          1              303    303
6-9 months     ki1000108-IRC              INDIA                          0                0    303
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     1              442    497
6-9 months     ki1017093-NIH-Birth        BANGLADESH                     0               55    497
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1              522    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               43    565
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     1              513    688
6-9 months     ki1017093c-NIH-Crypto      BANGLADESH                     0              175    688
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               68    381
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0              313    381
6-9 months     ki1114097-CONTENT          PERU                           1              200    214
6-9 months     ki1114097-CONTENT          PERU                           0               14    214
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1               87    768
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0              681    768
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1              208    225
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0               17    225
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1              192    194
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0                2    194
9-12 months    ki0047075b-MAL-ED          INDIA                          1              213    227
9-12 months    ki0047075b-MAL-ED          INDIA                          0               14    227
9-12 months    ki0047075b-MAL-ED          NEPAL                          1               99    222
9-12 months    ki0047075b-MAL-ED          NEPAL                          0              123    222
9-12 months    ki0047075b-MAL-ED          PERU                           1               54    235
9-12 months    ki0047075b-MAL-ED          PERU                           0              181    235
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              214    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               19    233
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    222
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              210    222
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              224    224
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0    224
9-12 months    ki1000108-IRC              INDIA                          1              299    299
9-12 months    ki1000108-IRC              INDIA                          0                0    299
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     1              426    480
9-12 months    ki1017093-NIH-Birth        BANGLADESH                     0               54    480
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1              521    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               45    566
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              501    674
9-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              173    674
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               68    370
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0              302    370
9-12 months    ki1114097-CONTENT          PERU                           1              198    212
9-12 months    ki1114097-CONTENT          PERU                           0               14    212
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1               99    866
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0              767    866
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1              195    212
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0               17    212
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1              182    184
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0                2    184
12-15 months   ki0047075b-MAL-ED          INDIA                          1              212    226
12-15 months   ki0047075b-MAL-ED          INDIA                          0               14    226
12-15 months   ki0047075b-MAL-ED          NEPAL                          1               99    223
12-15 months   ki0047075b-MAL-ED          NEPAL                          0              124    223
12-15 months   ki0047075b-MAL-ED          PERU                           1               51    224
12-15 months   ki0047075b-MAL-ED          PERU                           0              173    224
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              208    228
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               20    228
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    224
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              212    224
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              233    233
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0    233
12-15 months   ki1000108-IRC              INDIA                          1              292    292
12-15 months   ki1000108-IRC              INDIA                          0                0    292
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     1              410    460
12-15 months   ki1017093-NIH-Birth        BANGLADESH                     0               50    460
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1              490    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               42    532
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              489    660
12-15 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              171    660
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               69    369
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0              300    369
12-15 months   ki1114097-CONTENT          PERU                           1              185    199
12-15 months   ki1114097-CONTENT          PERU                           0               14    199
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1              100    873
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0              773    873
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1              195    212
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0               17    212
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1              173    175
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0                2    175
15-18 months   ki0047075b-MAL-ED          INDIA                          1              211    226
15-18 months   ki0047075b-MAL-ED          INDIA                          0               15    226
15-18 months   ki0047075b-MAL-ED          NEPAL                          1               96    220
15-18 months   ki0047075b-MAL-ED          NEPAL                          0              124    220
15-18 months   ki0047075b-MAL-ED          PERU                           1               48    213
15-18 months   ki0047075b-MAL-ED          PERU                           0              165    213
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              206    225
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19    225
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    215
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              203    215
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              226    226
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0    226
15-18 months   ki1000108-IRC              INDIA                          1              284    284
15-18 months   ki1000108-IRC              INDIA                          0                0    284
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     1              400    448
15-18 months   ki1017093-NIH-Birth        BANGLADESH                     0               48    448
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1              487    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               41    528
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              434    604
15-18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              170    604
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               71    375
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0              304    375
15-18 months   ki1114097-CONTENT          PERU                           1              176    189
15-18 months   ki1114097-CONTENT          PERU                           0               13    189
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1               95    886
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0              791    886
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1              193    209
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0               16    209
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1              165    167
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                2    167
18-21 months   ki0047075b-MAL-ED          INDIA                          1              211    226
18-21 months   ki0047075b-MAL-ED          INDIA                          0               15    226
18-21 months   ki0047075b-MAL-ED          NEPAL                          1               96    220
18-21 months   ki0047075b-MAL-ED          NEPAL                          0              124    220
18-21 months   ki0047075b-MAL-ED          PERU                           1               48    202
18-21 months   ki0047075b-MAL-ED          PERU                           0              154    202
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              214    233
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               19    233
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    202
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190    202
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213    213
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0    213
18-21 months   ki1000108-IRC              INDIA                          1              283    283
18-21 months   ki1000108-IRC              INDIA                          0                0    283
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     1              372    421
18-21 months   ki1017093-NIH-Birth        BANGLADESH                     0               49    421
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1              497    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               44    541
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              381    546
18-21 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              165    546
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               64    342
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0              278    342
18-21 months   ki1114097-CONTENT          PERU                           1              171    183
18-21 months   ki1114097-CONTENT          PERU                           0               12    183
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1              191    207
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               16    207
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1              163    165
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                2    165
21-24 months   ki0047075b-MAL-ED          INDIA                          1              211    226
21-24 months   ki0047075b-MAL-ED          INDIA                          0               15    226
21-24 months   ki0047075b-MAL-ED          NEPAL                          1               97    220
21-24 months   ki0047075b-MAL-ED          NEPAL                          0              123    220
21-24 months   ki0047075b-MAL-ED          PERU                           1               45    189
21-24 months   ki0047075b-MAL-ED          PERU                           0              144    189
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              217    235
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               18    235
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               12    202
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0              190    202
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              213    213
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0    213
21-24 months   ki1000108-IRC              INDIA                          1              292    292
21-24 months   ki1000108-IRC              INDIA                          0                0    292
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     1              363    410
21-24 months   ki1017093-NIH-Birth        BANGLADESH                     0               47    410
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1              435    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               36    471
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              324    490
21-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              166    490
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               50    245
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0              195    245
21-24 months   ki1114097-CONTENT          PERU                           1               33     38
21-24 months   ki1114097-CONTENT          PERU                           0                5     38


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/8691c46d-da1b-4c82-8581-2739bd3b154c/5b699de0-f8ac-473c-ae56-f8decf77c393/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/8691c46d-da1b-4c82-8581-2739bd3b154c/5b699de0-f8ac-473c-ae56-f8decf77c393/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/8691c46d-da1b-4c82-8581-2739bd3b154c/5b699de0-f8ac-473c-ae56-f8decf77c393/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                 country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                3.3364707    3.2681493   3.4047921
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                3.4673817    3.2413989   3.6933646
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                3.3299315    3.2406571   3.4192060
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    NA                3.3409330    2.8197683   3.8620978
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                3.7061271    3.5565991   3.8556550
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                3.5771971    3.4585237   3.6958705
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                3.1869080    3.0618760   3.3119399
0-3 months     ki0047075b-MAL-ED       PERU                           0                    NA                3.0417149    2.9670538   3.1163759
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                3.1551126    3.0460880   3.2641373
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                3.2698857    3.0339466   3.5058247
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4481648    3.2188196   3.6775099
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2455005    3.1648333   3.3261678
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                3.1090098    3.0521076   3.1659121
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                3.1205853    2.9611484   3.2800222
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                3.2653457    3.2266224   3.3040689
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                3.1745055    3.0511746   3.2978365
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                3.1750275    3.1315261   3.2185289
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.9853189    2.9266902   3.0439476
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                3.5134864    3.3975630   3.6294097
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                3.6403514    3.5737597   3.7069431
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                3.7232163    3.6717271   3.7747054
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                3.6431921    3.6276115   3.6587728
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                2.9974213    2.7087145   3.2861281
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                2.9931262    2.8792111   3.1070414
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.9392866    1.8866016   1.9919715
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.7810401    1.6367432   1.9253370
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.8928874    1.8270690   1.9587058
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.8838502    1.6356671   2.1320334
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.9865255    1.8999117   2.0731394
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.9490879    1.8724510   2.0257248
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                2.0711788    1.9385198   2.2038378
3-6 months     ki0047075b-MAL-ED       PERU                           0                    NA                2.0002811    1.9242535   2.0763088
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.9834409    1.8990000   2.0678819
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.8995303    1.6307171   2.1683436
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8085479    1.5184171   2.0986788
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8334847    1.7632731   1.9036964
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.8408895    1.7897537   1.8920252
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.7830145    1.6414000   1.9246290
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.9743769    1.9389902   2.0097636
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.8645594    1.7514006   1.9777182
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.9707944    1.9314858   2.0101030
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                2.1106047    2.0270329   2.1941766
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.7215103    1.6231892   1.8198314
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.7104068    1.6607316   1.7600821
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                2.0845441    2.0345629   2.1345254
3-6 months     ki1114097-CONTENT       PERU                           0                    NA                2.0790405    1.9147652   2.2433158
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                1.9405664    1.8930742   1.9880585
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    NA                1.9263926    1.9102658   1.9425194
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.9294975    1.6120182   2.2469769
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.8790144    1.8159978   1.9420310
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                1.2450966    1.2039110   1.2862821
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    NA                1.2863764    1.1372331   1.4355197
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                1.2438773    1.1910869   1.2966677
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    NA                1.2798547    1.0363078   1.5234016
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                1.3657788    1.3025485   1.4290091
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    NA                1.3589260    1.2960752   1.4217768
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                1.3286196    1.2092638   1.4479754
6-9 months     ki0047075b-MAL-ED       PERU                           0                    NA                1.3173821    1.2565231   1.3782411
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.3780421    1.3130369   1.4430474
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.3637156    1.0719017   1.6555294
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                1.3349759    0.6763342   1.9936176
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1869837    1.1111002   1.2628672
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.2675558    1.2238606   1.3112509
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    NA                1.1661732    1.0634839   1.2688625
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.2892647    1.2632492   1.3152803
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    NA                1.1993081    1.1016362   1.2969799
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.3488710    1.3142893   1.3834526
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.2678778    1.2129947   1.3227609
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.2392967    1.1561598   1.3224336
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    NA                1.3269750    1.2706177   1.3833324
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                1.3996553    1.3515262   1.4477843
6-9 months     ki1114097-CONTENT       PERU                           0                    NA                1.3655426    1.1473365   1.5837487
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.3280828    1.1767099   1.4794556
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.2811313    1.2425579   1.3197047
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.9901717    0.9493476   1.0309958
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.9831948    0.8716851   1.0947045
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                0.9838046    0.9450341   1.0225751
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    NA                0.9459545    0.7570257   1.1348834
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                1.1182005    1.0503235   1.1860775
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    NA                1.0654355    1.0154595   1.1154115
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                1.0789795    0.9731263   1.1848328
9-12 months    ki0047075b-MAL-ED       PERU                           0                    NA                1.1043399    1.0462910   1.1623887
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                1.0106478    0.9425401   1.0787554
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                1.0557524    0.8479626   1.2635422
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6462371   -0.0317989   1.3242732
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8190522    0.7425020   0.8956025
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                1.1035222    1.0664889   1.1405554
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.9909239    0.8842499   1.0975979
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                1.0574869    1.0290159   1.0859580
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.9630032    0.8878729   1.0381335
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                1.1182726    1.0869628   1.1495824
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                1.1385389    1.0913327   1.1857450
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                1.0752954    1.0129251   1.1376656
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.9905395    0.9451857   1.0358934
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                1.1996044    1.1592295   1.2399793
9-12 months    ki1114097-CONTENT       PERU                           0                    NA                1.2794435    1.0881547   1.4707323
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                1.1006507    0.9827907   1.2185107
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                1.0490566    1.0155999   1.0825134
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.9240016    0.8823293   0.9656739
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.8005284    0.6536189   0.9474378
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.9200677    0.8798896   0.9602459
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.7655141    0.6124486   0.9185795
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.9474811    0.8842720   1.0106903
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.9555917    0.9049732   1.0062103
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.9168522    0.8201383   1.0135662
12-15 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8843214    0.8316504   0.9369924
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.9183122    0.8572354   0.9793890
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9333287    0.7651405   1.1015169
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8912923    0.6017341   1.1808504
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8529213    0.7863993   0.9194434
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7235875    0.6754117   0.7717632
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7302765    0.6208423   0.8397108
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.9651611    0.9377515   0.9925708
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8966206    0.8120883   0.9811529
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9721695    0.9434806   1.0008584
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9681939    0.9207165   1.0156713
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8622100    0.8126261   0.9117939
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8930676    0.8531025   0.9330328
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                0.9415650    0.8977189   0.9854112
12-15 months   ki1114097-CONTENT       PERU                           0                    NA                0.7650137    0.6267898   0.9032376
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.9644209    0.8328335   1.0960082
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.9398077    0.9080473   0.9715680
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8282618    0.7903418   0.8661818
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.7766434    0.6270895   0.9261973
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8407876    0.8035828   0.8779925
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8950395    0.7373002   1.0527788
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8519218    0.7911244   0.9127193
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.8415525    0.7840496   0.8990554
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8698505    0.7783158   0.9613852
15-18 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8486541    0.8010208   0.8962873
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8902346    0.8346774   0.9457918
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.8537092    0.6931186   1.0142999
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6759265    0.3795041   0.9723489
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6881628    0.6253197   0.7510060
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7781114    0.7357130   0.8205099
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7260689    0.5978652   0.8542725
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8613797    0.8363318   0.8864277
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.7933845    0.7080140   0.8787551
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.9141824    0.8874083   0.9409566
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.9267397    0.8823019   0.9711776
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.7311363    0.6703686   0.7919039
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.7622022    0.7117491   0.8126552
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                0.9916870    0.9449388   1.0384352
15-18 months   ki1114097-CONTENT       PERU                           0                    NA                0.9093435    0.7263646   1.0923224
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                0.8538724    0.7362290   0.9715158
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    NA                0.8345843    0.8025461   0.8666225
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.8152478    0.7790793   0.8514163
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.7909113    0.6852094   0.8966132
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8838442    0.8474167   0.9202717
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8064902    0.6708059   0.9421746
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8636084    0.8048746   0.9223423
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.7858325    0.7341689   0.8374960
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.8954746    0.8059308   0.9850183
18-21 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.8246032    0.7734069   0.8757994
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.7876344    0.7280336   0.8472352
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.7207579    0.6084375   0.8330782
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7090230    0.3988063   1.0192396
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7494927    0.6800035   0.8189820
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7361318    0.6971886   0.7750749
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.6609847    0.5729031   0.7490662
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.8381739    0.8133446   0.8630032
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.8524836    0.7612315   0.9437358
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.7999583    0.7717019   0.8282146
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.7927354    0.7514161   0.8340546
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.9487245    0.8898205   1.0076285
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8914539    0.8423554   0.9405524
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                0.9176245    0.8721454   0.9631036
18-21 months   ki1114097-CONTENT       PERU                           0                    NA                0.8720158    0.7204087   1.0236229
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                0.7579296    0.7216058   0.7942533
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    NA                0.9065645    0.7735813   1.0395476
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                0.8222158    0.7904842   0.8539475
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    NA                0.8724705    0.7449435   0.9999976
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                0.8011231    0.7410107   0.8612355
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    NA                0.7622601    0.7052308   0.8192894
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                0.7797362    0.6875312   0.8719412
21-24 months   ki0047075b-MAL-ED       PERU                           0                    NA                0.7552113    0.7008636   0.8095590
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                0.8296597    0.7750031   0.8843163
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    NA                0.9580643    0.8387241   1.0774045
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8002348    0.4648584   1.1356111
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7150013    0.6492548   0.7807478
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                0.7166576    0.6798651   0.7534500
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    NA                0.7157011    0.5912036   0.8401987
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                0.7620085    0.7355307   0.7884863
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    NA                0.7768001    0.6873742   0.8662261
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                0.7964713    0.7666275   0.8263150
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    NA                0.8049254    0.7619140   0.8479369
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                0.8372366    0.7531114   0.9213617
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    NA                0.8194016    0.7515403   0.8872629
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                0.9374898    0.8493729   1.0256066
21-24 months   ki1114097-CONTENT       PERU                           0                    NA                0.9191808    0.7244090   1.1139526


### Parameter: E(Y)


agecat         studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                3.3470101   3.2814494   3.4125709
0-3 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                3.3306152   3.2408417   3.4203888
0-3 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                3.6296286   3.5360391   3.7232181
0-3 months     ki0047075b-MAL-ED       PERU                           NA                   NA                3.0720111   3.0070171   3.1370050
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                3.1667059   3.0657224   3.2676894
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2545886   3.1766598   3.3325174
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                3.1103028   3.0567101   3.1638956
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                3.6174009   3.5587664   3.6760355
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                3.6484688   3.6331496   3.6637880
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                2.9935112   2.8845861   3.1024362
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.9276407   1.8774065   1.9778750
3-6 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.8922980   1.8286780   1.9559180
3-6 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.9657452   1.9082948   2.0231956
3-6 months     ki0047075b-MAL-ED       PERU                           NA                   NA                2.0156821   1.9494666   2.0818976
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.9768255   1.8961556   2.0574955
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8323273   1.7640304   1.9006242
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.8344466   1.7863211   1.8825720
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.7124775   1.6680987   1.7568562
3-6 months     ki1114097-CONTENT       PERU                           NA                   NA                2.0841841   2.0362519   2.1321163
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     NA                   NA                1.9276004   1.9127083   1.9424924
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.8838056   1.8192936   1.9483176
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                1.2480451   1.2083209   1.2877694
6-9 months     ki0047075b-MAL-ED       INDIA                          NA                   NA                1.2462236   1.1943701   1.2980772
6-9 months     ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.3619990   1.3172112   1.4067868
6-9 months     ki0047075b-MAL-ED       PERU                           NA                   NA                1.3199965   1.2656612   1.3743319
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.3769258   1.3128158   1.4410357
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1936201   1.1152491   1.2719912
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.2563364   1.2157525   1.2969202
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.3113264   1.2625909   1.3600619
6-9 months     ki1114097-CONTENT       PERU                           NA                   NA                1.3974236   1.3502187   1.4446285
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.2864500   1.2489340   1.3239661
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9896446   0.9509752   1.0283140
9-12 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9814702   0.9432520   1.0196885
9-12 months    ki0047075b-MAL-ED       NEPAL                          NA                   NA                1.0889658   1.0477966   1.1301350
9-12 months    ki0047075b-MAL-ED       PERU                           NA                   NA                1.0985124   1.0475959   1.1494289
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                1.0143258   0.9494983   1.0791533
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8097109   0.7283882   0.8910335
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                1.0908549   1.0557207   1.1259891
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    ki1113344-GMS-Nepal     NEPAL                          NA                   NA                1.0061163   0.9672192   1.0450134
9-12 months    ki1114097-CONTENT       PERU                           NA                   NA                1.2048768   1.1650186   1.2447350
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                1.0549548   1.0220826   1.0878270
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.9141004   0.8737459   0.9544550
12-15 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.9104936   0.8713262   0.9496610
12-15 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.9519911   0.9122423   0.9917398
12-15 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8917280   0.8454370   0.9380189
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.9196294   0.8619875   0.9772714
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8549769   0.7901258   0.9198280
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7243145   0.6797578   0.7688713
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8872975   0.8534861   0.9211089
12-15 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9291443   0.8867697   0.9715190
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.9426270   0.9101880   0.9750661
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8241226   0.7871907   0.8610544
15-18 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8443884   0.8080665   0.8807103
15-18 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8460773   0.8041876   0.8879670
15-18 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8534307   0.8111406   0.8957208
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8871502   0.8344911   0.9398094
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6874799   0.6258797   0.7490800
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7725355   0.7322370   0.8128339
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.7563204   0.7138144   0.7988263
15-18 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9860231   0.9406097   1.0314365
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     NA                   NA                0.8366524   0.8050734   0.8682315
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.8133847   0.7790076   0.8477619
18-21 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8787101   0.8434384   0.9139818
18-21 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.8197711   0.7806443   0.8588978
18-21 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.8414439   0.7967949   0.8860929
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.7821810   0.7266294   0.8377325
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7470886   0.6791662   0.8150110
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7273854   0.6914063   0.7633645
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.9021712   0.8606987   0.9436437
18-21 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9146338   0.8709588   0.9583088
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.7694183   0.7339448   0.8048918
21-24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.8255513   0.7946970   0.8564056
21-24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.7793951   0.7378545   0.8209358
21-24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.7610506   0.7141593   0.8079419
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   NA                   NA                0.8394950   0.7880175   0.8909725
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7200647   0.6550341   0.7850953
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.7165479   0.6809839   0.7521119
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   ki1113344-GMS-Nepal     NEPAL                          NA                   NA                0.8230414   0.7663592   0.8797236
21-24 months   ki1114097-CONTENT       PERU                           NA                   NA                0.9350807   0.8543561   1.0158053


### Parameter: ATE


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1309110   -0.1051738    0.3669959
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       INDIA                          0                    1                  0.0110015   -0.5177542    0.5397572
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.1289300   -0.3198278    0.0619678
0-3 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.1451931   -0.2908203    0.0004341
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.1147730   -0.1451378    0.3746838
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2026642   -0.4457823    0.0404539
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0115754   -0.1577113    0.1808621
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0908401   -0.2201073    0.0384271
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.1897086   -0.2627134   -0.1167039
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.1268650   -0.0068237    0.2605538
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0800241   -0.1323143   -0.0277340
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0042951   -0.3059182    0.2973281
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1582465   -0.3118606   -0.0046324
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0090371   -0.2657995    0.2477252
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0374376   -0.1530887    0.0782135
3-6 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0708977   -0.2237984    0.0820030
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0839106   -0.3656744    0.1978532
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0249368   -0.2735688    0.3234423
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0578750   -0.2084390    0.0926891
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.1098175   -0.2283803    0.0087453
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.1398103    0.0474555    0.2321652
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0111035   -0.1212609    0.0990540
3-6 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0055036   -0.1772141    0.1662069
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     0                    1                 -0.0141737   -0.0658822    0.0375347
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0504831   -0.3748024    0.2738362
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.0412798   -0.1134456    0.1960053
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       INDIA                          0                    1                  0.0359774   -0.2132252    0.2851800
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0068528   -0.0960060    0.0823004
6-9 months     ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       PERU                           0                    1                 -0.0112375   -0.1452137    0.1227387
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0143266   -0.3132932    0.2846400
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1479922   -0.8109908    0.5150064
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1013826   -0.2129817    0.0102165
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0899567   -0.1910338    0.0111205
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0809932   -0.1458626   -0.0161237
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0876784   -0.0127602    0.1881169
6-9 months     ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1114097-CONTENT       PERU                           0                    1                 -0.0341127   -0.2575636    0.1893382
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0469515   -0.2052698    0.1113669
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0069769   -0.1257247    0.1117708
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0378500   -0.2307160    0.1550159
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0527650   -0.1370555    0.0315255
9-12 months    ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       PERU                           0                    1                  0.0253604   -0.0953648    0.1460855
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0451046   -0.1735624    0.2637716
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.1728151   -0.5095286    0.8551587
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.1125983   -0.2255177    0.0003212
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0944838   -0.1748278   -0.0141398
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0202663   -0.0363793    0.0769119
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0847558   -0.1618727   -0.0076389
9-12 months    ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1114097-CONTENT       PERU                           0                    1                  0.0798391   -0.1156642    0.2753424
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0515941   -0.1731790    0.0699908
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.1234732   -0.2761787    0.0292322
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.1545537   -0.3128045    0.0036971
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       NEPAL                          0                    1                  0.0081106   -0.0728686    0.0890898
12-15 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0325309   -0.1426573    0.0775956
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.0150165   -0.1639182    0.1939513
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0383709   -0.3354721    0.2587302
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                  0.0066891   -0.1128800    0.1262581
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0685406   -0.1574056    0.0203245
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0039756   -0.0594477    0.0514966
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0308576   -0.0328274    0.0945426
12-15 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1114097-CONTENT       PERU                           0                    1                 -0.1765513   -0.3215628   -0.0315399
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0246132   -0.1585617    0.1093353
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0516184   -0.2059048    0.1026680
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0542518   -0.1078157    0.2163194
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0103693   -0.0940528    0.0733141
15-18 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0211964   -0.1243833    0.0819904
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0365254   -0.2064546    0.1334039
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0122363   -0.2907744    0.3152471
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0520426   -0.1870752    0.0829900
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                 -0.0679952   -0.1569645    0.0209740
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0125573   -0.0393231    0.0644377
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                  0.0310659   -0.0479165    0.1100483
15-18 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0823435   -0.2711997    0.1065128
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     0                    1                 -0.0192881   -0.1404023    0.1018261
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                 -0.0243366   -0.1360552    0.0873820
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       INDIA                          0                    1                 -0.0773540   -0.2178431    0.0631352
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0777760   -0.1559987    0.0004467
18-21 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0708714   -0.1740176    0.0322748
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                 -0.0668766   -0.1940305    0.0602774
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0404698   -0.2774345    0.3583740
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0751471   -0.1714535    0.0211594
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0143098   -0.0802600    0.1088796
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                 -0.0072229   -0.0572799    0.0428341
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0572706   -0.1339539    0.0194128
18-21 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0456088   -0.2038903    0.1126728
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                    1                  0.1486349    0.0107801    0.2864897
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       INDIA                          0                    1                  0.0502547   -0.0811608    0.1816702
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       NEPAL                          0                    1                 -0.0388630   -0.1217234    0.0439974
21-24 months   ki0047075b-MAL-ED       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       PERU                           0                    1                 -0.0245249   -0.1315549    0.0825052
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                    1                  0.1284045   -0.0028564    0.2596655
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0852335   -0.4269935    0.2565265
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                    1                 -0.0009565   -0.1307768    0.1288639
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                    1                  0.0147916   -0.0784718    0.1080551
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                    1                  0.0084542   -0.0438969    0.0608053
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal     NEPAL                          0                    1                 -0.0178350   -0.1259192    0.0902493
21-24 months   ki1114097-CONTENT       PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1114097-CONTENT       PERU                           0                    1                 -0.0183090   -0.2320860    0.1954681


### Parameter: PAR


agecat         studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0105394   -0.0090053    0.0300842
0-3 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0006837   -0.0321792    0.0335466
0-3 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0764985   -0.1902201    0.0372231
0-3 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.1148969   -0.2303664    0.0005726
0-3 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0115932   -0.0151009    0.0382874
0-3 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1935761   -0.4258576    0.0387053
0-3 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0012930   -0.0176191    0.0202051
0-3 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0076646   -0.0187459    0.0034166
0-3 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0457827   -0.0643720   -0.0271934
0-3 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.1039146   -0.0056946    0.2135237
0-3 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0747475   -0.1236867   -0.0258082
0-3 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0039102   -0.2784392    0.2706189
3-6 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0116458   -0.0241485    0.0008568
3-6 months     ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0005894   -0.0173372    0.0161585
3-6 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0207804   -0.0850202    0.0434595
3-6 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0554967   -0.1752346    0.0642412
3-6 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0066154   -0.0290126    0.0157818
3-6 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0237794   -0.2608723    0.3084310
3-6 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0064429   -0.0232772    0.0103914
3-6 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0086311   -0.0182464    0.0009842
3-6 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0350029    0.0114459    0.0585598
3-6 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0090328   -0.0986485    0.0805828
3-6 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0003600   -0.0115949    0.0108748
3-6 months     kiGH5241-JiVitA-3       BANGLADESH                     1                    NA                -0.0129660   -0.0602668    0.0343348
3-6 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0456919   -0.3385931    0.2472094
6-9 months     ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0029486   -0.0081910    0.0140881
6-9 months     ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0023464   -0.0139467    0.0186394
6-9 months     ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0037798   -0.0529560    0.0453964
6-9 months     ki0047075b-MAL-ED       PERU                           1                    NA                -0.0086230   -0.1114310    0.0941849
6-9 months     ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0011164   -0.0244177    0.0221850
6-9 months     ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1413558   -0.7746363    0.4919248
6-9 months     ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0112194   -0.0238826    0.0014438
6-9 months     ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0068463   -0.0147868    0.0010942
6-9 months     ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0206015   -0.0373112   -0.0038918
6-9 months     ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0720297   -0.0105518    0.1546113
6-9 months     ki1114097-CONTENT       PERU                           1                    NA                -0.0022317   -0.0168938    0.0124304
6-9 months     kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0416327   -0.1818901    0.0986247
9-12 months    ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0005271   -0.0095024    0.0084482
9-12 months    ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0023344   -0.0142883    0.0096195
9-12 months    ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0292346   -0.0760640    0.0175947
9-12 months    ki0047075b-MAL-ED       PERU                           1                    NA                 0.0195329   -0.0734613    0.1125270
9-12 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0036781   -0.0142238    0.0215799
9-12 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1634737   -0.4820070    0.8089545
9-12 months    ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0126673   -0.0257642    0.0004296
9-12 months    ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0075120   -0.0142385   -0.0007855
9-12 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0052019   -0.0093531    0.0197569
9-12 months    ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0691791   -0.1322122   -0.0061460
9-12 months    ki1114097-CONTENT       PERU                           1                    NA                 0.0052724   -0.0079125    0.0184573
9-12 months    kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0456959   -0.1535385    0.0621467
12-15 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0099012   -0.0229556    0.0031533
12-15 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0095741   -0.0205194    0.0013712
12-15 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                 0.0045099   -0.0405220    0.0495419
12-15 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0251243   -0.1101961    0.0599476
12-15 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0013172   -0.0143885    0.0170230
12-15 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0363154   -0.3175027    0.2448720
12-15 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                 0.0007271   -0.0122710    0.0137251
12-15 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0054111   -0.0126007    0.0017785
12-15 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0010300   -0.0154030    0.0133429
12-15 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0250875   -0.0267035    0.0768785
12-15 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0124207   -0.0244052   -0.0004362
12-15 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0217938   -0.1404925    0.0969049
15-18 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0041392   -0.0166550    0.0083766
15-18 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0036008   -0.0072997    0.0145013
15-18 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0058445   -0.0530165    0.0413274
15-18 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0164198   -0.0963621    0.0635226
15-18 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0030844   -0.0174954    0.0113267
15-18 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0115534   -0.2745454    0.2976522
15-18 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0055760   -0.0201205    0.0089685
15-18 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                -0.0052799   -0.0123611    0.0018012
15-18 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0035343   -0.0110747    0.0181434
15-18 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                 0.0251841   -0.0388562    0.0892244
15-18 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0056638   -0.0189911    0.0076635
15-18 months   kiGH5241-JiVitA-4       BANGLADESH                     1                    NA                -0.0172200   -0.1253537    0.0909138
18-21 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                -0.0018631   -0.0104608    0.0067346
18-21 months   ki0047075b-MAL-ED       INDIA                          1                    NA                -0.0051341   -0.0147921    0.0045239
18-21 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0438374   -0.0882215    0.0005468
18-21 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0540307   -0.1327774    0.0247160
18-21 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                -0.0054535   -0.0160863    0.0051794
18-21 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0380656   -0.2609562    0.3370874
18-21 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0087463   -0.0201899    0.0026972
18-21 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0011638   -0.0065347    0.0088623
18-21 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                -0.0021827   -0.0173124    0.0129469
18-21 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0465533   -0.1089316    0.0158251
18-21 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0029907   -0.0134987    0.0075172
21-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                    NA                 0.0114887   -0.0004662    0.0234436
21-24 months   ki0047075b-MAL-ED       INDIA                          1                    NA                 0.0033355   -0.0055386    0.0122096
21-24 months   ki0047075b-MAL-ED       NEPAL                          1                    NA                -0.0217280   -0.0681249    0.0246690
21-24 months   ki0047075b-MAL-ED       PERU                           1                    NA                -0.0186856   -0.1002460    0.0628748
21-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                    NA                 0.0098352   -0.0011296    0.0208001
21-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0801701   -0.4016396    0.2412994
21-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                    NA                -0.0001096   -0.0149915    0.0147722
21-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                    NA                 0.0011306   -0.0060067    0.0082678
21-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                    NA                 0.0028641   -0.0148747    0.0206029
21-24 months   ki1113344-GMS-Nepal     NEPAL                          1                    NA                -0.0141952   -0.1002262    0.0718358
21-24 months   ki1114097-CONTENT       PERU                           1                    NA                -0.0024091   -0.0306082    0.0257901
