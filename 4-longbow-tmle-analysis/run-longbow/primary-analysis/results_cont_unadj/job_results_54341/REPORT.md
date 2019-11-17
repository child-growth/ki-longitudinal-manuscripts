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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        exclfeed3    n_cell      n
-------------  -------------------------  -----------------------------  ----------  -------  -----
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               153    237
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                84    237
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                46    147
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               101    147
0-3 months     ki0047075b-MAL-ED          INDIA                          1                84    164
0-3 months     ki0047075b-MAL-ED          INDIA                          0                80    164
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                53    153
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               100    153
0-3 months     ki0047075b-MAL-ED          PERU                           1                57    262
0-3 months     ki0047075b-MAL-ED          PERU                           0               205    262
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                20    203
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               183    203
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                43    197
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               154    197
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 4      4
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      4
0-3 months     ki1000108-IRC              INDIA                          1                 0     10
0-3 months     ki1000108-IRC              INDIA                          0                10     10
0-3 months     ki1000109-EE               PAKISTAN                       1                31     31
0-3 months     ki1000109-EE               PAKISTAN                       0                 0     31
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               104    114
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                10    114
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               449    640
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               191    640
0-3 months     ki1101329-Keneba           GAMBIA                         1              1024   1175
0-3 months     ki1101329-Keneba           GAMBIA                         0               151   1175
0-3 months     ki1113344-GMS-Nepal        NEPAL                          1               378    456
0-3 months     ki1113344-GMS-Nepal        NEPAL                          0                78    456
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1              5311   5872
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0               561   5872
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                37     39
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 2     39
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               147    225
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                78    225
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                60    186
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               126    186
3-6 months     ki0047075b-MAL-ED          INDIA                          1               109    206
3-6 months     ki0047075b-MAL-ED          INDIA                          0                97    206
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                69    226
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               157    226
3-6 months     ki0047075b-MAL-ED          PERU                           1                61    264
3-6 months     ki0047075b-MAL-ED          PERU                           0               203    264
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22    234
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               212    234
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                45    208
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               163    208
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10     10
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0     10
3-6 months     ki1000108-IRC              INDIA                          1                 0     10
3-6 months     ki1000108-IRC              INDIA                          0                10     10
3-6 months     ki1000109-EE               PAKISTAN                       1                31     31
3-6 months     ki1000109-EE               PAKISTAN                       0                 0     31
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                90    100
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                10    100
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               423    598
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               175    598
3-6 months     ki1101329-Keneba           GAMBIA                         1              1128   1279
3-6 months     ki1101329-Keneba           GAMBIA                         0               151   1279
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               350    420
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                70    420
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1              3213   3534
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0               321   3534
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                 6      6
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 0      6
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     1               140    217
6-9 months     ki0047075b-MAL-ED          BANGLADESH                     0                77    217
6-9 months     ki0047075b-MAL-ED          BRAZIL                         1                58    177
6-9 months     ki0047075b-MAL-ED          BRAZIL                         0               119    177
6-9 months     ki0047075b-MAL-ED          INDIA                          1               106    205
6-9 months     ki0047075b-MAL-ED          INDIA                          0                99    205
6-9 months     ki0047075b-MAL-ED          NEPAL                          1                68    222
6-9 months     ki0047075b-MAL-ED          NEPAL                          0               154    222
6-9 months     ki0047075b-MAL-ED          PERU                           1                57    242
6-9 months     ki0047075b-MAL-ED          PERU                           0               185    242
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                22    222
6-9 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               200    222
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                42    193
6-9 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               151    193
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 9      9
6-9 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      9
6-9 months     ki1000108-IRC              INDIA                          1                 0     10
6-9 months     ki1000108-IRC              INDIA                          0                10     10
6-9 months     ki1000109-EE               PAKISTAN                       1                36     36
6-9 months     ki1000109-EE               PAKISTAN                       0                 0     36
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          1                82     90
6-9 months     ki1000304b-SAS-CompFeed    INDIA                          0                 8     90
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     1               399    565
6-9 months     ki1017093b-PROVIDE         BANGLADESH                     0               166    565
6-9 months     ki1101329-Keneba           GAMBIA                         1               687    770
6-9 months     ki1101329-Keneba           GAMBIA                         0                83    770
6-9 months     ki1113344-GMS-Nepal        NEPAL                          1               314    378
6-9 months     ki1113344-GMS-Nepal        NEPAL                          0                64    378
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     1                 5      5
6-9 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 0      5
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               142    218
9-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                76    218
9-12 months    ki0047075b-MAL-ED          BRAZIL                         1                58    175
9-12 months    ki0047075b-MAL-ED          BRAZIL                         0               117    175
9-12 months    ki0047075b-MAL-ED          INDIA                          1               102    201
9-12 months    ki0047075b-MAL-ED          INDIA                          0                99    201
9-12 months    ki0047075b-MAL-ED          NEPAL                          1                67    221
9-12 months    ki0047075b-MAL-ED          NEPAL                          0               154    221
9-12 months    ki0047075b-MAL-ED          PERU                           1                55    233
9-12 months    ki0047075b-MAL-ED          PERU                           0               178    233
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                23    223
9-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               200    223
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                39    192
9-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               153    192
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 8      8
9-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      8
9-12 months    ki1000108-IRC              INDIA                          1                 0     10
9-12 months    ki1000108-IRC              INDIA                          0                10     10
9-12 months    ki1000109-EE               PAKISTAN                       1                36     36
9-12 months    ki1000109-EE               PAKISTAN                       0                 0     36
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                93     99
9-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                 6     99
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               400    566
9-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               166    566
9-12 months    ki1101329-Keneba           GAMBIA                         1               664    746
9-12 months    ki1101329-Keneba           GAMBIA                         0                82    746
9-12 months    ki1113344-GMS-Nepal        NEPAL                          1               302    362
9-12 months    ki1113344-GMS-Nepal        NEPAL                          0                60    362
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                20     21
9-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1     21
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     1               136    206
12-15 months   ki0047075b-MAL-ED          BANGLADESH                     0                70    206
12-15 months   ki0047075b-MAL-ED          BRAZIL                         1                55    165
12-15 months   ki0047075b-MAL-ED          BRAZIL                         0               110    165
12-15 months   ki0047075b-MAL-ED          INDIA                          1               101    200
12-15 months   ki0047075b-MAL-ED          INDIA                          0                99    200
12-15 months   ki0047075b-MAL-ED          NEPAL                          1                67    222
12-15 months   ki0047075b-MAL-ED          NEPAL                          0               155    222
12-15 months   ki0047075b-MAL-ED          PERU                           1                51    222
12-15 months   ki0047075b-MAL-ED          PERU                           0               171    222
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                21    219
12-15 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198    219
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                40    195
12-15 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               155    195
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8      8
12-15 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      8
12-15 months   ki1000108-IRC              INDIA                          1                 0     10
12-15 months   ki1000108-IRC              INDIA                          0                10     10
12-15 months   ki1000109-EE               PAKISTAN                       1                29     29
12-15 months   ki1000109-EE               PAKISTAN                       0                 0     29
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          1                92     96
12-15 months   ki1000304b-SAS-CompFeed    INDIA                          0                 4     96
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     1               377    532
12-15 months   ki1017093b-PROVIDE         BANGLADESH                     0               155    532
12-15 months   ki1101329-Keneba           GAMBIA                         1              1029   1158
12-15 months   ki1101329-Keneba           GAMBIA                         0               129   1158
12-15 months   ki1113344-GMS-Nepal        NEPAL                          1               313    371
12-15 months   ki1113344-GMS-Nepal        NEPAL                          0                58    371
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     1                19     20
12-15 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     20
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     1               136    206
15-18 months   ki0047075b-MAL-ED          BANGLADESH                     0                70    206
15-18 months   ki0047075b-MAL-ED          BRAZIL                         1                53    157
15-18 months   ki0047075b-MAL-ED          BRAZIL                         0               104    157
15-18 months   ki0047075b-MAL-ED          INDIA                          1               101    201
15-18 months   ki0047075b-MAL-ED          INDIA                          0               100    201
15-18 months   ki0047075b-MAL-ED          NEPAL                          1                66    219
15-18 months   ki0047075b-MAL-ED          NEPAL                          0               153    219
15-18 months   ki0047075b-MAL-ED          PERU                           1                50    210
15-18 months   ki0047075b-MAL-ED          PERU                           0               160    210
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                20    218
15-18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198    218
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38    188
15-18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               150    188
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8      8
15-18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      8
15-18 months   ki1000108-IRC              INDIA                          1                 0     10
15-18 months   ki1000108-IRC              INDIA                          0                10     10
15-18 months   ki1000109-EE               PAKISTAN                       1                25     25
15-18 months   ki1000109-EE               PAKISTAN                       0                 0     25
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          1                82     87
15-18 months   ki1000304b-SAS-CompFeed    INDIA                          0                 5     87
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     1               376    528
15-18 months   ki1017093b-PROVIDE         BANGLADESH                     0               152    528
15-18 months   ki1101329-Keneba           GAMBIA                         1              1031   1160
15-18 months   ki1101329-Keneba           GAMBIA                         0               129   1160
15-18 months   ki1113344-GMS-Nepal        NEPAL                          1               319    379
15-18 months   ki1113344-GMS-Nepal        NEPAL                          0                60    379
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                21     22
15-18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1     22
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     1               132    203
18-21 months   ki0047075b-MAL-ED          BANGLADESH                     0                71    203
18-21 months   ki0047075b-MAL-ED          BRAZIL                         1                52    150
18-21 months   ki0047075b-MAL-ED          BRAZIL                         0                98    150
18-21 months   ki0047075b-MAL-ED          INDIA                          1               101    201
18-21 months   ki0047075b-MAL-ED          INDIA                          0               100    201
18-21 months   ki0047075b-MAL-ED          NEPAL                          1                66    219
18-21 months   ki0047075b-MAL-ED          NEPAL                          0               153    219
18-21 months   ki0047075b-MAL-ED          PERU                           1                47    199
18-21 months   ki0047075b-MAL-ED          PERU                           0               152    199
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                19    225
18-21 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               206    225
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                36    176
18-21 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               140    176
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 7      7
18-21 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      7
18-21 months   ki1000108-IRC              INDIA                          1                 0      8
18-21 months   ki1000108-IRC              INDIA                          0                 8      8
18-21 months   ki1000109-EE               PAKISTAN                       1                26     26
18-21 months   ki1000109-EE               PAKISTAN                       0                 0     26
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     1               383    541
18-21 months   ki1017093b-PROVIDE         BANGLADESH                     0               158    541
18-21 months   ki1101329-Keneba           GAMBIA                         1              1014   1139
18-21 months   ki1101329-Keneba           GAMBIA                         0               125   1139
18-21 months   ki1113344-GMS-Nepal        NEPAL                          1               295    347
18-21 months   ki1113344-GMS-Nepal        NEPAL                          0                52    347
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               131    201
21-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                70    201
21-24 months   ki0047075b-MAL-ED          BRAZIL                         1                52    149
21-24 months   ki0047075b-MAL-ED          BRAZIL                         0                97    149
21-24 months   ki0047075b-MAL-ED          INDIA                          1               101    201
21-24 months   ki0047075b-MAL-ED          INDIA                          0               100    201
21-24 months   ki0047075b-MAL-ED          NEPAL                          1                67    219
21-24 months   ki0047075b-MAL-ED          NEPAL                          0               152    219
21-24 months   ki0047075b-MAL-ED          PERU                           1                42    187
21-24 months   ki0047075b-MAL-ED          PERU                           0               145    187
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                18    226
21-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               208    226
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                38    175
21-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               137    175
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 9      9
21-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      9
21-24 months   ki1000108-IRC              INDIA                          1                 0      8
21-24 months   ki1000108-IRC              INDIA                          0                 8      8
21-24 months   ki1000109-EE               PAKISTAN                       1                16     16
21-24 months   ki1000109-EE               PAKISTAN                       0                 0     16
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               334    471
21-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               137    471
21-24 months   ki1101329-Keneba           GAMBIA                         1               944   1050
21-24 months   ki1101329-Keneba           GAMBIA                         0               106   1050
21-24 months   ki1113344-GMS-Nepal        NEPAL                          1               237    279
21-24 months   ki1113344-GMS-Nepal        NEPAL                          0                42    279


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
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18-21 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-15 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-15 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 15-18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 15-18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18-21 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18-21 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 21-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 21-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/701d6bb2-9281-4a70-aa35-12cc54f2e3de/e4b83490-3009-4a3b-966b-a6deb28f8611/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/701d6bb2-9281-4a70-aa35-12cc54f2e3de/e4b83490-3009-4a3b-966b-a6deb28f8611/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/701d6bb2-9281-4a70-aa35-12cc54f2e3de/e4b83490-3009-4a3b-966b-a6deb28f8611/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1045042   -0.1463644   -0.0626440
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.1686153   -0.2268663   -0.1103643
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1927511    0.0903189    0.2951832
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.1288183    0.0548554    0.2027811
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0069390   -0.0892033    0.0753254
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.1045806   -0.1747846   -0.0343766
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0450197   -0.0974113    0.0073719
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1019058    0.0414919    0.1623197
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.2650888   -0.3358416   -0.1943361
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.2625729   -0.3019737   -0.2231722
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.1283084   -0.2355212   -0.0210957
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1747575   -0.2289335   -0.1205816
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0328371   -0.1211873    0.0555131
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1802955   -0.2267726   -0.1338185
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1324142   -0.2082792   -0.0565492
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1447300   -0.4423443    0.1528842
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.1835293   -0.2030456   -0.1640129
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.1986444   -0.2344220   -0.1628669
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.2811877   -0.3085268   -0.2538486
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.3172066   -0.3833112   -0.2511020
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0382441   -0.0672603   -0.0092279
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0422248   -0.1079290    0.0234793
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0524088    0.0429328    0.0618848
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0790105    0.0534154    0.1046055
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0289242   -0.0568964   -0.0009520
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0009280   -0.0411681    0.0430241
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0291230   -0.0386742    0.0969201
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0822079    0.0348361    0.1295796
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0386645   -0.0842576    0.0069285
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0487959   -0.0921262   -0.0054656
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0736002   -0.1199813   -0.0272191
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0043625   -0.0366382    0.0279132
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0501471   -0.0103939    0.1106881
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0177901   -0.0188019    0.0543820
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0501519   -0.0393562    0.1396601
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0124872   -0.0543297    0.0293553
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0795748   -0.1571442   -0.0020053
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0633304   -0.1004549   -0.0262059
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0887063   -0.1385125   -0.0389001
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0024125   -0.2942387    0.2894138
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0199046   -0.0379981   -0.0018112
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0440224   -0.0761220   -0.0119227
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0137449   -0.0343769    0.0068871
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0461546   -0.0993003    0.0069911
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1549462   -0.1763734   -0.1335190
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1736086   -0.2224229   -0.1247944
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0027053   -0.0119117    0.0065011
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0089665   -0.0388909    0.0209579
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0692685   -0.0914273   -0.0471098
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0769460   -0.1060937   -0.0477984
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0144580   -0.0662068    0.0951228
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0034997   -0.0355927    0.0425922
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0814614   -0.1162051   -0.0467177
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0640465   -0.0959798   -0.0321131
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0307104   -0.0649532    0.0035323
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0346055   -0.0584757   -0.0107353
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0212086   -0.0674399    0.0250228
6-9 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.0385908   -0.0669698   -0.0102118
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0965094   -0.1725821   -0.0204367
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0046298   -0.0355055    0.0262458
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0722847   -0.1489226    0.0043532
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1010267   -0.1376151   -0.0644383
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0402525   -0.0523946   -0.0281105
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1325513   -0.3440954    0.0789927
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0651772   -0.0779096   -0.0524449
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0524108   -0.0729692   -0.0318524
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0145645   -0.0403598    0.0112307
6-9 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0240310   -0.0922620    0.0442001
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0448293   -0.0685664   -0.0210922
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0482527   -0.0861337   -0.0103718
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0853892   -0.1058605   -0.0649179
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0853154   -0.1124763   -0.0581544
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0037896   -0.0484872    0.0560665
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0030885   -0.0395669    0.0457440
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.1189178   -0.1408863   -0.0969493
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0750612   -0.0982110   -0.0519115
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0803915   -0.1124502   -0.0483329
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0560580   -0.0765690   -0.0355469
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0536663   -0.0988709   -0.0084617
9-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0376913   -0.0622694   -0.0131131
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0413553   -0.1354367    0.0527262
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0979093   -0.1259213   -0.0698974
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1842397   -0.2439611   -0.1245183
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1467633   -0.1886886   -0.1048381
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1111409   -0.1554594   -0.0668225
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0775774   -0.1546060   -0.0005488
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0698617   -0.0826228   -0.0571006
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0466262   -0.0677210   -0.0255313
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.1008318   -0.1206421   -0.0810215
9-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0911220   -0.1355622   -0.0466817
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0867703   -0.1055260   -0.0680145
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0420503   -0.0711751   -0.0129254
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0673839   -0.0857028   -0.0490649
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0284076   -0.0574733    0.0006580
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0003371   -0.0367628    0.0360885
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0004667   -0.0297915    0.0288581
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0676051   -0.0915750   -0.0436351
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0509294   -0.0734000   -0.0284588
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0562974   -0.0839468   -0.0286479
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0578767   -0.0771051   -0.0386484
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0666104   -0.0977175   -0.0355033
12-15 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0660519   -0.0872760   -0.0448279
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0614150   -0.1344565    0.0116264
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0586861   -0.0836035   -0.0337688
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1087520   -0.1553516   -0.0621525
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0572485   -0.0884789   -0.0260180
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0455798   -0.0573183   -0.0338412
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0295544   -0.0490669   -0.0100420
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0460805   -0.0595997   -0.0325613
12-15 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0734728   -0.1053805   -0.0415651
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0688251   -0.0801560   -0.0574942
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0754722   -0.1060288   -0.0449156
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0407993   -0.0585606   -0.0230381
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0555209   -0.0761772   -0.0348645
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0291035   -0.0663118    0.0081048
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0263449   -0.0537788    0.0010890
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0433507   -0.0615679   -0.0251335
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0260068   -0.0457696   -0.0062440
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0689120   -0.0970131   -0.0408108
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0502006   -0.0688166   -0.0315846
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0546040   -0.0856214   -0.0235865
15-18 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0310096   -0.0488277   -0.0131916
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0493174   -0.1111641    0.0125293
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0284081   -0.0485530   -0.0082632
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0722174   -0.1272747   -0.0171602
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0927137   -0.1193286   -0.0660987
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0083343   -0.0592672    0.0425986
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0784348   -0.2330420    0.0761724
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0341770   -0.0445073   -0.0238466
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0462194   -0.0625611   -0.0298777
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0300531   -0.0433855   -0.0167208
15-18 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0304495   -0.0711571    0.0102582
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0575387   -0.0728351   -0.0422423
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0880604   -0.1085425   -0.0675783
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0192936   -0.0348929   -0.0036943
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0089960   -0.0264801    0.0084881
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0257530   -0.0713093    0.0198034
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0128237   -0.0424832    0.0168357
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0032729   -0.0202576    0.0137119
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0103560   -0.0070478    0.0277597
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0258191   -0.0494061   -0.0022321
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0285277   -0.0448508   -0.0122047
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0031130   -0.0273515    0.0335775
18-21 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0108699   -0.0285055    0.0067656
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0092334   -0.0613551    0.0428882
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0340035   -0.0548368   -0.0131702
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0192884   -0.0741596    0.0355828
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0303090   -0.0579903   -0.0026278
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0132205   -0.0230885   -0.0033524
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0054117   -0.0198033    0.0089800
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0231319   -0.0368848   -0.0093790
18-21 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0088096   -0.0504286    0.0328094
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0171909    0.0009869    0.0333948
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0311919    0.0080972    0.0542867
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0269251    0.0110424    0.0428078
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0197545    0.0005665    0.0389425
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0086520   -0.0174317    0.0347357
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0171575   -0.0041389    0.0384539
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0348999    0.0186587    0.0511411
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                 0.0284414    0.0117661    0.0451167
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0221760   -0.0018455    0.0461974
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0008079   -0.0163351    0.0179509
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0458903    0.0165427    0.0752379
21-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                 0.0609708    0.0429854    0.0789561
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0381851   -0.0000656    0.0764358
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                 0.0460854    0.0276097    0.0645610
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0263271   -0.0164555    0.0691098
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063242   -0.0218529    0.0345012
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0452991    0.0349207    0.0556775
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                 0.0485140    0.0329142    0.0641137
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0151054    0.0022418    0.0279690
21-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                 0.0079350   -0.0198396    0.0357096
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0531317    0.0332011    0.0730623
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                 0.0044994   -0.0311055    0.0401042


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.1334945   -0.2172486   -0.0497405
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2858165   -0.3111208   -0.2605122
0-3 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0549503    0.0458523    0.0640482
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0800769   -0.0985661   -0.0615877
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0175712   -0.0368273    0.0016849
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0032740   -0.0120416    0.0054936
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0484569   -0.0689491   -0.0279646
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0155849   -0.0397472    0.0085773
6-9 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.1091068   -0.1533842   -0.0648294
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0997645   -0.1180627   -0.0814663
9-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0491320   -0.0616698   -0.0365941
12-15 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0123631   -0.0561195    0.0313934
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0300972   -0.0427822   -0.0174122
15-18 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0215601   -0.0346304   -0.0084897
18-21 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                 0.0143816    0.0024808    0.0262823
21-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0641112   -0.1358430    0.0076207
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0639328   -0.1902770    0.0624114
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0976416   -0.2057897    0.0105065
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.1469255    0.0669585    0.2268925
0-3 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           0                    1                  0.0025159   -0.0784679    0.0834996
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0464491   -0.1665724    0.0736742
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1474584   -0.2472877   -0.0476292
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0123158   -0.2878387    0.2632071
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0151151   -0.0558695    0.0256392
0-3 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0360189   -0.1075538    0.0355160
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0039808   -0.0758067    0.0678452
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                  0.0266017   -0.0000172    0.0532205
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0298522   -0.0206901    0.0803945
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0530849   -0.0296226    0.1357924
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0101313   -0.0730299    0.0527673
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0692377    0.0127318    0.1257437
3-6 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0323571   -0.1030973    0.0383831
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0626391   -0.1614445    0.0361663
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0162443   -0.0697513    0.1022400
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0862938   -0.2508984    0.4234861
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0241177   -0.0609656    0.0127301
3-6 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0324097   -0.0894198    0.0246003
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0186624   -0.0719724    0.0346476
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 -0.0062612   -0.0376586    0.0251362
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0076775   -0.0442916    0.0289367
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0109583   -0.1005966    0.0786800
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         INDIA                          0                    1                  0.0174149   -0.0297747    0.0646046
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0038951   -0.0456366    0.0378464
6-9 months     ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         PERU                           0                    1                 -0.0173822   -0.0716289    0.0368645
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0918796    0.0097799    0.1739793
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0287420   -0.1136659    0.0561820
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0922988   -0.3023453    0.1177478
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0127664   -0.0114154    0.0369483
6-9 months     ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1101329-Keneba          GAMBIA                         0                    1                 -0.0094664   -0.0824107    0.0634778
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0034234   -0.0481271    0.0412802
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0000738   -0.0339378    0.0340855
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0007011   -0.0681722    0.0667700
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         INDIA                          0                    1                  0.0438566    0.0119422    0.0757709
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0243336   -0.0137251    0.0623922
9-12 months    ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         PERU                           0                    1                  0.0159750   -0.0354792    0.0674293
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0565541   -0.1547171    0.0416090
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0374764   -0.0354919    0.1104447
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1                  0.0335635   -0.0115991    0.0787262
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0232355   -0.0014189    0.0478898
9-12 months    ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1101329-Keneba          GAMBIA                         0                    1                  0.0097098   -0.0389459    0.0583656
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0447200    0.0100785    0.0793615
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0389762    0.0046193    0.0733331
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                 -0.0001296   -0.0468925    0.0466333
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0166757   -0.0161798    0.0495312
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0015794   -0.0352576    0.0320989
12-15 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0005584   -0.0370994    0.0382163
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0027289   -0.0744458    0.0799036
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0515036   -0.0045933    0.1076004
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0160253   -0.0067459    0.0387966
12-15 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0273923   -0.0620459    0.0072612
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0066471   -0.0392369    0.0259427
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0147215   -0.0419639    0.0125208
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0027585   -0.0434700    0.0489871
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0173439   -0.0095342    0.0442221
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         NEPAL                          0                    1                  0.0187114   -0.0149966    0.0524194
15-18 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0235943   -0.0121767    0.0593653
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0209093   -0.0441356    0.0859542
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0204963   -0.0816490    0.0406564
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 -0.0701005   -0.2675871    0.1273861
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                 -0.0120424   -0.0313755    0.0072907
15-18 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0003963   -0.0432317    0.0424390
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0305217   -0.0560853   -0.0049581
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                  0.0102976   -0.0131339    0.0337291
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0129292   -0.0414313    0.0672898
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         INDIA                          0                    1                  0.0136288   -0.0106893    0.0379470
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0027086   -0.0313930    0.0259757
18-21 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         PERU                           0                    1                 -0.0139830   -0.0491837    0.0212178
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 -0.0247700   -0.0809010    0.0313610
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0110206   -0.0724788    0.0504375
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0078088   -0.0096411    0.0252587
18-21 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1101329-Keneba          GAMBIA                         0                    1                  0.0143222   -0.0295102    0.0581547
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                  0.0140011   -0.0142113    0.0422134
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 -0.0071706   -0.0320792    0.0177380
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1                  0.0085055   -0.0251679    0.0421789
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         INDIA                          0                    1                 -0.0064585   -0.0297360    0.0168190
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1                 -0.0213680   -0.0508793    0.0081432
21-24 months   ki0047075b-MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         PERU                           0                    1                  0.0150805   -0.0193397    0.0495008
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                  0.0079003   -0.0345787    0.0503793
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0200030   -0.0712309    0.0312250
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    1                  0.0032148   -0.0155219    0.0219515
21-24 months   ki1101329-Keneba          GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1101329-Keneba          GAMBIA                         0                    1                 -0.0071704   -0.0377793    0.0234384
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1                 -0.0486324   -0.0894359   -0.0078288


### Parameter: PAR


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0227229   -0.0484462    0.0030003
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0439266   -0.1308676    0.0430144
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0476301   -0.1009147    0.0056546
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0960297    0.0425951    0.1494643
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0019685   -0.0613967    0.0653338
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0418728   -0.1501782    0.0664325
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1152721   -0.1937757   -0.0367685
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0010803   -0.0255707    0.0234100
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0045109   -0.0166854    0.0076635
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0046288   -0.0138476    0.0045900
0-3 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0006809   -0.0129677    0.0116059
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0025415    0.0000103    0.0050727
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0103488   -0.0072711    0.0279686
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0359607   -0.0201809    0.0921024
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0047706   -0.0343960    0.0248548
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0480988    0.0086241    0.0875734
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0248806   -0.0793005    0.0295393
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0567500   -0.1462967    0.0327968
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0127299   -0.0546671    0.0801269
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0086294   -0.0278325    0.0450912
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0070579   -0.0178770    0.0037612
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0038263   -0.0105814    0.0029287
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0031104   -0.0120203    0.0057995
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0005687   -0.0034137    0.0022763
6-9 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0027243   -0.0157256    0.0102771
6-9 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0073674   -0.0676376    0.0529027
6-9 months     ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0084101   -0.0144103    0.0312306
6-9 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0027020   -0.0316588    0.0262548
6-9 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.0132881   -0.0547681    0.0281920
6-9 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0827744    0.0087222    0.1568266
6-9 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0224872   -0.0889515    0.0439770
6-9 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0082043   -0.0263761    0.0099674
6-9 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0037508   -0.0033701    0.0108718
6-9 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0010204   -0.0088860    0.0068452
6-9 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0005796   -0.0081496    0.0069903
9-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0000257   -0.0118315    0.0118830
9-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0004687   -0.0455780    0.0446406
9-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0216010    0.0055910    0.0376110
9-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0169564   -0.0096052    0.0435181
9-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                 0.0122041   -0.0271140    0.0515222
9-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0507212   -0.1387888    0.0373465
9-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0298640   -0.0283219    0.0880499
9-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0020342   -0.0009772    0.0050455
9-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0068146   -0.0004686    0.0140979
9-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                 0.0010673   -0.0042854    0.0064200
9-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0074122    0.0014197    0.0134046
12-15 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0132444    0.0012993    0.0251894
12-15 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0000864   -0.0312617    0.0310889
12-15 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0082545   -0.0080502    0.0245592
12-15 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0011027   -0.0246170    0.0224116
12-15 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0004301   -0.0285766    0.0294369
12-15 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0024672   -0.0673072    0.0722417
12-15 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0409387   -0.0037471    0.0856245
12-15 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0046690   -0.0019943    0.0113324
12-15 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0030515   -0.0069437    0.0008407
12-15 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0010392   -0.0061400    0.0040617
15-18 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0050025   -0.0143087    0.0043037
15-18 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0018273   -0.0287961    0.0324507
15-18 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0086288   -0.0047973    0.0220549
15-18 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0130724   -0.0105046    0.0366494
15-18 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0179766   -0.0093115    0.0452648
15-18 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0189910   -0.0400919    0.0780739
15-18 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0163534   -0.0651598    0.0324529
15-18 months   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0040288   -0.0156034    0.0075458
15-18 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0034667   -0.0090518    0.0021183
15-18 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0000441   -0.0048077    0.0047195
15-18 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0048319   -0.0090319   -0.0006320
18-21 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                 0.0036016   -0.0046215    0.0118248
18-21 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0084471   -0.0270822    0.0439764
18-21 months   ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0067805   -0.0053549    0.0189159
18-21 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0018923   -0.0219327    0.0181481
18-21 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0106804   -0.0375802    0.0162193
18-21 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0226783   -0.0740773    0.0287206
18-21 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0087664   -0.0576580    0.0401252
18-21 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0022806   -0.0028245    0.0073856
18-21 months   ki1101329-Keneba          GAMBIA                         1                    NA                 0.0015718   -0.0032456    0.0063892
18-21 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0020981   -0.0021623    0.0063586
21-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0024972   -0.0111848    0.0061903
21-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0055371   -0.0163942    0.0274685
21-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0032132   -0.0148027    0.0083763
21-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0148308   -0.0353551    0.0056936
21-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                 0.0116935   -0.0150114    0.0383983
21-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0072711   -0.0318257    0.0463678
21-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0156595   -0.0557823    0.0244634
21-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                 0.0009351   -0.0045164    0.0063867
21-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0007239   -0.0038167    0.0023689
21-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0073210   -0.0137947   -0.0008473
