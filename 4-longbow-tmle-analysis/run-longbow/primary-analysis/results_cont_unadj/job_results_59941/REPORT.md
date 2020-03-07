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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        exclfeed3    n_cell       n
-------------  ---------------  -----------------------------  ----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1                10      10
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0      10
0-3 months     EE               PAKISTAN                       1                32      32
0-3 months     EE               PAKISTAN                       0                 0      32
0-3 months     GMS-Nepal        NEPAL                          1               378     455
0-3 months     GMS-Nepal        NEPAL                          0                77     455
0-3 months     IRC              INDIA                          1                 0      10
0-3 months     IRC              INDIA                          0                10      10
0-3 months     JiVitA-3         BANGLADESH                     1             10912   12097
0-3 months     JiVitA-3         BANGLADESH                     0              1185   12097
0-3 months     JiVitA-4         BANGLADESH                     1               108     119
0-3 months     JiVitA-4         BANGLADESH                     0                11     119
0-3 months     Keneba           GAMBIA                         1              1263    1439
0-3 months     Keneba           GAMBIA                         0               176    1439
0-3 months     MAL-ED           BANGLADESH                     1               155     239
0-3 months     MAL-ED           BANGLADESH                     0                84     239
0-3 months     MAL-ED           BRAZIL                         1                63     195
0-3 months     MAL-ED           BRAZIL                         0               132     195
0-3 months     MAL-ED           INDIA                          1               113     213
0-3 months     MAL-ED           INDIA                          0               100     213
0-3 months     MAL-ED           NEPAL                          1                68     224
0-3 months     MAL-ED           NEPAL                          0               156     224
0-3 months     MAL-ED           PERU                           1                62     279
0-3 months     MAL-ED           PERU                           0               217     279
0-3 months     MAL-ED           SOUTH AFRICA                   1                24     261
0-3 months     MAL-ED           SOUTH AFRICA                   0               237     261
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                43     205
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               162     205
0-3 months     PROVIDE          BANGLADESH                     1               449     640
0-3 months     PROVIDE          BANGLADESH                     0               191     640
0-3 months     SAS-CompFeed     INDIA                          1               413     435
0-3 months     SAS-CompFeed     INDIA                          0                22     435
3-6 months     CMC-V-BCS-2002   INDIA                          1                10      10
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0      10
3-6 months     EE               PAKISTAN                       1                30      30
3-6 months     EE               PAKISTAN                       0                 0      30
3-6 months     GMS-Nepal        NEPAL                          1               351     420
3-6 months     GMS-Nepal        NEPAL                          0                69     420
3-6 months     IRC              INDIA                          1                 0      10
3-6 months     IRC              INDIA                          0                10      10
3-6 months     JiVitA-3         BANGLADESH                     1              6539    7170
3-6 months     JiVitA-3         BANGLADESH                     0               631    7170
3-6 months     JiVitA-4         BANGLADESH                     1                20      21
3-6 months     JiVitA-4         BANGLADESH                     0                 1      21
3-6 months     Keneba           GAMBIA                         1              1129    1281
3-6 months     Keneba           GAMBIA                         0               152    1281
3-6 months     MAL-ED           BANGLADESH                     1               147     226
3-6 months     MAL-ED           BANGLADESH                     0                79     226
3-6 months     MAL-ED           BRAZIL                         1                60     186
3-6 months     MAL-ED           BRAZIL                         0               126     186
3-6 months     MAL-ED           INDIA                          1               109     206
3-6 months     MAL-ED           INDIA                          0                97     206
3-6 months     MAL-ED           NEPAL                          1                69     226
3-6 months     MAL-ED           NEPAL                          0               157     226
3-6 months     MAL-ED           PERU                           1                61     264
3-6 months     MAL-ED           PERU                           0               203     264
3-6 months     MAL-ED           SOUTH AFRICA                   1                22     234
3-6 months     MAL-ED           SOUTH AFRICA                   0               212     234
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                45     208
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               163     208
3-6 months     PROVIDE          BANGLADESH                     1               426     601
3-6 months     PROVIDE          BANGLADESH                     0               175     601
3-6 months     SAS-CompFeed     INDIA                          1               358     376
3-6 months     SAS-CompFeed     INDIA                          0                18     376
6-9 months     CMC-V-BCS-2002   INDIA                          1                 9       9
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0       9
6-9 months     EE               PAKISTAN                       1                36      36
6-9 months     EE               PAKISTAN                       0                 0      36
6-9 months     GMS-Nepal        NEPAL                          1               312     374
6-9 months     GMS-Nepal        NEPAL                          0                62     374
6-9 months     IRC              INDIA                          1                 0      10
6-9 months     IRC              INDIA                          0                10      10
6-9 months     JiVitA-4         BANGLADESH                     1                17      18
6-9 months     JiVitA-4         BANGLADESH                     0                 1      18
6-9 months     Keneba           GAMBIA                         1               687     770
6-9 months     Keneba           GAMBIA                         0                83     770
6-9 months     MAL-ED           BANGLADESH                     1               140     217
6-9 months     MAL-ED           BANGLADESH                     0                77     217
6-9 months     MAL-ED           BRAZIL                         1                58     177
6-9 months     MAL-ED           BRAZIL                         0               119     177
6-9 months     MAL-ED           INDIA                          1               106     205
6-9 months     MAL-ED           INDIA                          0                99     205
6-9 months     MAL-ED           NEPAL                          1                68     222
6-9 months     MAL-ED           NEPAL                          0               154     222
6-9 months     MAL-ED           PERU                           1                57     242
6-9 months     MAL-ED           PERU                           0               185     242
6-9 months     MAL-ED           SOUTH AFRICA                   1                22     222
6-9 months     MAL-ED           SOUTH AFRICA                   0               200     222
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                42     193
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               151     193
6-9 months     PROVIDE          BANGLADESH                     1               406     576
6-9 months     PROVIDE          BANGLADESH                     0               170     576
6-9 months     SAS-CompFeed     INDIA                          1               321     336
6-9 months     SAS-CompFeed     INDIA                          0                15     336
9-12 months    CMC-V-BCS-2002   INDIA                          1                 8       8
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0       8
9-12 months    EE               PAKISTAN                       1                36      36
9-12 months    EE               PAKISTAN                       0                 0      36
9-12 months    GMS-Nepal        NEPAL                          1               294     350
9-12 months    GMS-Nepal        NEPAL                          0                56     350
9-12 months    IRC              INDIA                          1                 0      10
9-12 months    IRC              INDIA                          0                10      10
9-12 months    JiVitA-4         BANGLADESH                     1                86      96
9-12 months    JiVitA-4         BANGLADESH                     0                10      96
9-12 months    Keneba           GAMBIA                         1               665     747
9-12 months    Keneba           GAMBIA                         0                82     747
9-12 months    MAL-ED           BANGLADESH                     1               142     218
9-12 months    MAL-ED           BANGLADESH                     0                76     218
9-12 months    MAL-ED           BRAZIL                         1                58     175
9-12 months    MAL-ED           BRAZIL                         0               117     175
9-12 months    MAL-ED           INDIA                          1               102     201
9-12 months    MAL-ED           INDIA                          0                99     201
9-12 months    MAL-ED           NEPAL                          1                67     221
9-12 months    MAL-ED           NEPAL                          0               154     221
9-12 months    MAL-ED           PERU                           1                55     233
9-12 months    MAL-ED           PERU                           0               178     233
9-12 months    MAL-ED           SOUTH AFRICA                   1                23     223
9-12 months    MAL-ED           SOUTH AFRICA                   0               200     223
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                40     192
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               152     192
9-12 months    PROVIDE          BANGLADESH                     1               401     569
9-12 months    PROVIDE          BANGLADESH                     0               168     569
9-12 months    SAS-CompFeed     INDIA                          1               344     357
9-12 months    SAS-CompFeed     INDIA                          0                13     357
12-15 months   CMC-V-BCS-2002   INDIA                          1                 9       9
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0       9
12-15 months   EE               PAKISTAN                       1                29      29
12-15 months   EE               PAKISTAN                       0                 0      29
12-15 months   GMS-Nepal        NEPAL                          1               303     358
12-15 months   GMS-Nepal        NEPAL                          0                55     358
12-15 months   IRC              INDIA                          1                 0      10
12-15 months   IRC              INDIA                          0                10      10
12-15 months   JiVitA-4         BANGLADESH                     1                98     108
12-15 months   JiVitA-4         BANGLADESH                     0                10     108
12-15 months   Keneba           GAMBIA                         1              1030    1159
12-15 months   Keneba           GAMBIA                         0               129    1159
12-15 months   MAL-ED           BANGLADESH                     1               136     206
12-15 months   MAL-ED           BANGLADESH                     0                70     206
12-15 months   MAL-ED           BRAZIL                         1                55     165
12-15 months   MAL-ED           BRAZIL                         0               110     165
12-15 months   MAL-ED           INDIA                          1               101     200
12-15 months   MAL-ED           INDIA                          0                99     200
12-15 months   MAL-ED           NEPAL                          1                67     222
12-15 months   MAL-ED           NEPAL                          0               155     222
12-15 months   MAL-ED           PERU                           1                51     222
12-15 months   MAL-ED           PERU                           0               171     222
12-15 months   MAL-ED           SOUTH AFRICA                   1                21     219
12-15 months   MAL-ED           SOUTH AFRICA                   0               198     219
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                41     195
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               154     195
12-15 months   PROVIDE          BANGLADESH                     1               379     537
12-15 months   PROVIDE          BANGLADESH                     0               158     537
12-15 months   SAS-CompFeed     INDIA                          1               345     356
12-15 months   SAS-CompFeed     INDIA                          0                11     356
15-18 months   CMC-V-BCS-2002   INDIA                          1                 9       9
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0       9
15-18 months   EE               PAKISTAN                       1                25      25
15-18 months   EE               PAKISTAN                       0                 0      25
15-18 months   GMS-Nepal        NEPAL                          1               316     377
15-18 months   GMS-Nepal        NEPAL                          0                61     377
15-18 months   IRC              INDIA                          1                 0      10
15-18 months   IRC              INDIA                          0                10      10
15-18 months   JiVitA-4         BANGLADESH                     1                96     109
15-18 months   JiVitA-4         BANGLADESH                     0                13     109
15-18 months   Keneba           GAMBIA                         1              1032    1162
15-18 months   Keneba           GAMBIA                         0               130    1162
15-18 months   MAL-ED           BANGLADESH                     1               136     206
15-18 months   MAL-ED           BANGLADESH                     0                70     206
15-18 months   MAL-ED           BRAZIL                         1                53     157
15-18 months   MAL-ED           BRAZIL                         0               104     157
15-18 months   MAL-ED           INDIA                          1               101     201
15-18 months   MAL-ED           INDIA                          0               100     201
15-18 months   MAL-ED           NEPAL                          1                66     219
15-18 months   MAL-ED           NEPAL                          0               153     219
15-18 months   MAL-ED           PERU                           1                50     211
15-18 months   MAL-ED           PERU                           0               161     211
15-18 months   MAL-ED           SOUTH AFRICA                   1                20     218
15-18 months   MAL-ED           SOUTH AFRICA                   0               198     218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                39     190
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               151     190
15-18 months   PROVIDE          BANGLADESH                     1               378     533
15-18 months   PROVIDE          BANGLADESH                     0               155     533
15-18 months   SAS-CompFeed     INDIA                          1               337     350
15-18 months   SAS-CompFeed     INDIA                          0                13     350
18-21 months   CMC-V-BCS-2002   INDIA                          1                 8       8
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0       8
18-21 months   EE               PAKISTAN                       1                27      27
18-21 months   EE               PAKISTAN                       0                 0      27
18-21 months   GMS-Nepal        NEPAL                          1               295     348
18-21 months   GMS-Nepal        NEPAL                          0                53     348
18-21 months   IRC              INDIA                          1                 0       8
18-21 months   IRC              INDIA                          0                 8       8
18-21 months   Keneba           GAMBIA                         1              1014    1140
18-21 months   Keneba           GAMBIA                         0               126    1140
18-21 months   MAL-ED           BANGLADESH                     1               132     203
18-21 months   MAL-ED           BANGLADESH                     0                71     203
18-21 months   MAL-ED           BRAZIL                         1                52     150
18-21 months   MAL-ED           BRAZIL                         0                98     150
18-21 months   MAL-ED           INDIA                          1               101     201
18-21 months   MAL-ED           INDIA                          0               100     201
18-21 months   MAL-ED           NEPAL                          1                66     219
18-21 months   MAL-ED           NEPAL                          0               153     219
18-21 months   MAL-ED           PERU                           1                47     199
18-21 months   MAL-ED           PERU                           0               152     199
18-21 months   MAL-ED           SOUTH AFRICA                   1                19     225
18-21 months   MAL-ED           SOUTH AFRICA                   0               206     225
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                37     179
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               142     179
18-21 months   PROVIDE          BANGLADESH                     1               383     542
18-21 months   PROVIDE          BANGLADESH                     0               159     542
21-24 months   CMC-V-BCS-2002   INDIA                          1                 9       9
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0       9
21-24 months   EE               PAKISTAN                       1                16      16
21-24 months   EE               PAKISTAN                       0                 0      16
21-24 months   GMS-Nepal        NEPAL                          1               238     280
21-24 months   GMS-Nepal        NEPAL                          0                42     280
21-24 months   IRC              INDIA                          1                 0       8
21-24 months   IRC              INDIA                          0                 8       8
21-24 months   Keneba           GAMBIA                         1               945    1052
21-24 months   Keneba           GAMBIA                         0               107    1052
21-24 months   MAL-ED           BANGLADESH                     1               131     201
21-24 months   MAL-ED           BANGLADESH                     0                70     201
21-24 months   MAL-ED           BRAZIL                         1                52     149
21-24 months   MAL-ED           BRAZIL                         0                97     149
21-24 months   MAL-ED           INDIA                          1               101     201
21-24 months   MAL-ED           INDIA                          0               100     201
21-24 months   MAL-ED           NEPAL                          1                67     219
21-24 months   MAL-ED           NEPAL                          0               152     219
21-24 months   MAL-ED           PERU                           1                42     187
21-24 months   MAL-ED           PERU                           0               145     187
21-24 months   MAL-ED           SOUTH AFRICA                   1                18     226
21-24 months   MAL-ED           SOUTH AFRICA                   0               208     226
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     177
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               139     177
21-24 months   PROVIDE          BANGLADESH                     1               344     485
21-24 months   PROVIDE          BANGLADESH                     0               141     485


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: IRC, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/091d6057-2fec-478c-ad09-5255be43bd65/b7f44f5e-6c49-4628-bd33-71178a86f603/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/091d6057-2fec-478c-ad09-5255be43bd65/b7f44f5e-6c49-4628-bd33-71178a86f603/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/091d6057-2fec-478c-ad09-5255be43bd65/b7f44f5e-6c49-4628-bd33-71178a86f603/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                0.8311437    0.8118244   0.8504630
0-3 months     GMS-Nepal      NEPAL                          0                    NA                0.7945524    0.7468540   0.8422509
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                0.8701507    0.8662540   0.8740473
0-3 months     JiVitA-3       BANGLADESH                     0                    NA                0.8693544    0.8580173   0.8806915
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                0.9086134    0.8758597   0.9413670
0-3 months     JiVitA-4       BANGLADESH                     0                    NA                0.8253396    0.7468047   0.9038746
0-3 months     Keneba         GAMBIA                         1                    NA                0.9332990    0.9213181   0.9452798
0-3 months     Keneba         GAMBIA                         0                    NA                0.8799056    0.8402893   0.9195219
0-3 months     MAL-ED         BANGLADESH                     1                    NA                0.8913026    0.8613990   0.9212061
0-3 months     MAL-ED         BANGLADESH                     0                    NA                0.8541032    0.8162581   0.8919484
0-3 months     MAL-ED         BRAZIL                         1                    NA                1.1309707    1.0581180   1.2038233
0-3 months     MAL-ED         BRAZIL                         0                    NA                1.0330032    0.9926067   1.0733997
0-3 months     MAL-ED         INDIA                          1                    NA                0.7705920    0.7391248   0.8020592
0-3 months     MAL-ED         INDIA                          0                    NA                0.7426184    0.7080299   0.7772069
0-3 months     MAL-ED         NEPAL                          1                    NA                0.9585324    0.9111819   1.0058829
0-3 months     MAL-ED         NEPAL                          0                    NA                0.9583750    0.9248437   0.9919063
0-3 months     MAL-ED         PERU                           1                    NA                1.0042574    0.9526458   1.0558691
0-3 months     MAL-ED         PERU                           0                    NA                0.9596779    0.9308998   0.9884559
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.9486899    0.8732070   1.0241728
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.9431744    0.9141313   0.9722175
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.9178938    0.8488045   0.9869830
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8729342    0.8361728   0.9096956
0-3 months     PROVIDE        BANGLADESH                     1                    NA                0.9071034    0.8903807   0.9238261
0-3 months     PROVIDE        BANGLADESH                     0                    NA                0.8888208    0.8589122   0.9187294
0-3 months     SAS-CompFeed   INDIA                          1                    NA                0.7911385    0.7734666   0.8088105
0-3 months     SAS-CompFeed   INDIA                          0                    NA                0.6753966    0.5336166   0.8171765
3-6 months     GMS-Nepal      NEPAL                          1                    NA                0.4870994    0.4718529   0.5023458
3-6 months     GMS-Nepal      NEPAL                          0                    NA                0.5335994    0.4908352   0.5763637
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                0.4393745    0.4353209   0.4434280
3-6 months     JiVitA-3       BANGLADESH                     0                    NA                0.4373934    0.4253844   0.4494025
3-6 months     Keneba         GAMBIA                         1                    NA                0.4464098    0.4361626   0.4566570
3-6 months     Keneba         GAMBIA                         0                    NA                0.4464447    0.4165112   0.4763782
3-6 months     MAL-ED         BANGLADESH                     1                    NA                0.4754331    0.4561413   0.4947248
3-6 months     MAL-ED         BANGLADESH                     0                    NA                0.4767880    0.4437687   0.5098073
3-6 months     MAL-ED         BRAZIL                         1                    NA                0.5612430    0.5084212   0.6140648
3-6 months     MAL-ED         BRAZIL                         0                    NA                0.5900581    0.5464628   0.6336535
3-6 months     MAL-ED         INDIA                          1                    NA                0.4321020    0.4097702   0.4544337
3-6 months     MAL-ED         INDIA                          0                    NA                0.4548967    0.4249408   0.4848525
3-6 months     MAL-ED         NEPAL                          1                    NA                0.4936043    0.4581088   0.5290998
3-6 months     MAL-ED         NEPAL                          0                    NA                0.5334100    0.5086107   0.5582093
3-6 months     MAL-ED         PERU                           1                    NA                0.4743650    0.4349669   0.5137630
3-6 months     MAL-ED         PERU                           0                    NA                0.5060269    0.4841998   0.5278539
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.4624122    0.4129741   0.5118503
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.4654849    0.4369990   0.4939708
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4819085    0.4357490   0.5280680
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4346891    0.4048004   0.4645779
3-6 months     PROVIDE        BANGLADESH                     1                    NA                0.4872808    0.4738632   0.5006983
3-6 months     PROVIDE        BANGLADESH                     0                    NA                0.4933950    0.4626902   0.5240998
3-6 months     SAS-CompFeed   INDIA                          1                    NA                0.4483035    0.4256147   0.4709922
3-6 months     SAS-CompFeed   INDIA                          0                    NA                0.5642760    0.4827298   0.6458221
6-9 months     GMS-Nepal      NEPAL                          1                    NA                0.1817596    0.1660637   0.1974555
6-9 months     GMS-Nepal      NEPAL                          0                    NA                0.1914897    0.1612448   0.2217345
6-9 months     Keneba         GAMBIA                         1                    NA                0.2037568    0.1897710   0.2177426
6-9 months     Keneba         GAMBIA                         0                    NA                0.2055499    0.1744025   0.2366973
6-9 months     MAL-ED         BANGLADESH                     1                    NA                0.2388340    0.2208280   0.2568401
6-9 months     MAL-ED         BANGLADESH                     0                    NA                0.2522008    0.2258556   0.2785460
6-9 months     MAL-ED         BRAZIL                         1                    NA                0.3778923    0.3264298   0.4293549
6-9 months     MAL-ED         BRAZIL                         0                    NA                0.3888157    0.3563103   0.4213212
6-9 months     MAL-ED         INDIA                          1                    NA                0.2137884    0.1960888   0.2314880
6-9 months     MAL-ED         INDIA                          0                    NA                0.2386004    0.2131373   0.2640636
6-9 months     MAL-ED         NEPAL                          1                    NA                0.2569322    0.2314802   0.2823842
6-9 months     MAL-ED         NEPAL                          0                    NA                0.2768675    0.2586149   0.2951202
6-9 months     MAL-ED         PERU                           1                    NA                0.2480538    0.2146958   0.2814119
6-9 months     MAL-ED         PERU                           0                    NA                0.2657662    0.2481504   0.2833820
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                0.2900497    0.2117044   0.3683949
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                0.2548054    0.2324446   0.2771662
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2045221    0.1585784   0.2504657
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2565963    0.2247624   0.2884302
6-9 months     PROVIDE        BANGLADESH                     1                    NA                0.2413750    0.2298943   0.2528558
6-9 months     PROVIDE        BANGLADESH                     0                    NA                0.2677704    0.2376945   0.2978463
6-9 months     SAS-CompFeed   INDIA                          1                    NA                0.2006996    0.1755287   0.2258705
6-9 months     SAS-CompFeed   INDIA                          0                    NA                0.2267377    0.1110149   0.3424606
9-12 months    GMS-Nepal      NEPAL                          1                    NA                0.1444496    0.1281832   0.1607159
9-12 months    GMS-Nepal      NEPAL                          0                    NA                0.1750732    0.1480845   0.2020619
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                0.1899236    0.1729565   0.2068906
9-12 months    JiVitA-4       BANGLADESH                     0                    NA                0.2174091    0.1426580   0.2921602
9-12 months    Keneba         GAMBIA                         1                    NA                0.1619016    0.1484254   0.1753777
9-12 months    Keneba         GAMBIA                         0                    NA                0.1339592    0.0925823   0.1753360
9-12 months    MAL-ED         BANGLADESH                     1                    NA                0.1659589    0.1488532   0.1830647
9-12 months    MAL-ED         BANGLADESH                     0                    NA                0.1897415    0.1662242   0.2132588
9-12 months    MAL-ED         BRAZIL                         1                    NA                0.2711065    0.2157242   0.3264887
9-12 months    MAL-ED         BRAZIL                         0                    NA                0.2949016    0.2513130   0.3384902
9-12 months    MAL-ED         INDIA                          1                    NA                0.1670562    0.1506502   0.1834621
9-12 months    MAL-ED         INDIA                          0                    NA                0.1832825    0.1579676   0.2085975
9-12 months    MAL-ED         NEPAL                          1                    NA                0.1608970    0.1280888   0.1937051
9-12 months    MAL-ED         NEPAL                          0                    NA                0.1948959    0.1794162   0.2103755
9-12 months    MAL-ED         PERU                           1                    NA                0.1886146    0.1547491   0.2224801
9-12 months    MAL-ED         PERU                           0                    NA                0.1851103    0.1680606   0.2021599
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                0.2445178    0.1965231   0.2925126
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.2098395    0.1853140   0.2343650
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1637194    0.1222581   0.2051808
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1564340    0.1309905   0.1818776
9-12 months    PROVIDE        BANGLADESH                     1                    NA                0.1721565    0.1612303   0.1830828
9-12 months    PROVIDE        BANGLADESH                     0                    NA                0.1903613    0.1726393   0.2080834
9-12 months    SAS-CompFeed   INDIA                          1                    NA                0.1947730    0.1798794   0.2096665
9-12 months    SAS-CompFeed   INDIA                          0                    NA                0.1736606    0.1049552   0.2423659
12-15 months   GMS-Nepal      NEPAL                          1                    NA                0.1738820    0.1584978   0.1892661
12-15 months   GMS-Nepal      NEPAL                          0                    NA                0.1583998    0.1241273   0.1926722
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                0.1090800    0.0861185   0.1320416
12-15 months   JiVitA-4       BANGLADESH                     0                    NA                0.1069309    0.0490264   0.1648355
12-15 months   Keneba         GAMBIA                         1                    NA                0.1861508    0.1748245   0.1974770
12-15 months   Keneba         GAMBIA                         0                    NA                0.1898129    0.1612688   0.2183571
12-15 months   MAL-ED         BANGLADESH                     1                    NA                0.1220263    0.1026463   0.1414063
12-15 months   MAL-ED         BANGLADESH                     0                    NA                0.1600710    0.1322632   0.1878788
12-15 months   MAL-ED         BRAZIL                         1                    NA                0.1740568    0.1274869   0.2206267
12-15 months   MAL-ED         BRAZIL                         0                    NA                0.2277752    0.1954124   0.2601380
12-15 months   MAL-ED         INDIA                          1                    NA                0.1679627    0.1450202   0.1909052
12-15 months   MAL-ED         INDIA                          0                    NA                0.1813867    0.1565052   0.2062682
12-15 months   MAL-ED         NEPAL                          1                    NA                0.1608212    0.1194313   0.2022110
12-15 months   MAL-ED         NEPAL                          0                    NA                0.1496609    0.1330112   0.1663107
12-15 months   MAL-ED         PERU                           1                    NA                0.1379496    0.1045119   0.1713873
12-15 months   MAL-ED         PERU                           0                    NA                0.1445057    0.1252910   0.1637204
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.0760868   -0.0533438   0.2055174
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.2008026    0.1763217   0.2252836
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1152392    0.0619062   0.1685722
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1808349    0.1513612   0.2103086
12-15 months   PROVIDE        BANGLADESH                     1                    NA                0.1724820    0.1590079   0.1859560
12-15 months   PROVIDE        BANGLADESH                     0                    NA                0.1981438    0.1751934   0.2210941
12-15 months   SAS-CompFeed   INDIA                          1                    NA                0.1858303    0.1747564   0.1969043
12-15 months   SAS-CompFeed   INDIA                          0                    NA                0.1757277    0.0410006   0.3104548
15-18 months   GMS-Nepal      NEPAL                          1                    NA                0.2211354    0.2033652   0.2389056
15-18 months   GMS-Nepal      NEPAL                          0                    NA                0.2842639    0.2351594   0.3333684
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                0.1513714    0.1255461   0.1771968
15-18 months   JiVitA-4       BANGLADESH                     0                    NA                0.1718246    0.1478527   0.1957965
15-18 months   Keneba         GAMBIA                         1                    NA                0.1575436    0.1463932   0.1686940
15-18 months   Keneba         GAMBIA                         0                    NA                0.1704418    0.1361686   0.2047150
15-18 months   MAL-ED         BANGLADESH                     1                    NA                0.1495452    0.1289418   0.1701487
15-18 months   MAL-ED         BANGLADESH                     0                    NA                0.1272485    0.1035692   0.1509277
15-18 months   MAL-ED         BRAZIL                         1                    NA                0.1471700    0.0971510   0.1971890
15-18 months   MAL-ED         BRAZIL                         0                    NA                0.2391543    0.2048155   0.2734932
15-18 months   MAL-ED         INDIA                          1                    NA                0.1679072    0.1473996   0.1884148
15-18 months   MAL-ED         INDIA                          0                    NA                0.1662318    0.1422691   0.1901946
15-18 months   MAL-ED         NEPAL                          1                    NA                0.1929438    0.1602911   0.2255966
15-18 months   MAL-ED         NEPAL                          0                    NA                0.1632379    0.1449828   0.1814930
15-18 months   MAL-ED         PERU                           1                    NA                0.1482312    0.1159107   0.1805516
15-18 months   MAL-ED         PERU                           0                    NA                0.1433107    0.1207444   0.1658771
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.3600940    0.2383886   0.4817994
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.2081981    0.1794836   0.2369127
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1251204    0.0732175   0.1770234
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1396125    0.1115967   0.1676283
15-18 months   PROVIDE        BANGLADESH                     1                    NA                0.1551719    0.1416356   0.1687081
15-18 months   PROVIDE        BANGLADESH                     0                    NA                0.1592281    0.1358220   0.1826342
15-18 months   SAS-CompFeed   INDIA                          1                    NA                0.1709873    0.1464860   0.1954886
15-18 months   SAS-CompFeed   INDIA                          0                    NA                0.2554951    0.0436116   0.4673786
18-21 months   GMS-Nepal      NEPAL                          1                    NA                0.1549664    0.1361929   0.1737399
18-21 months   GMS-Nepal      NEPAL                          0                    NA                0.1083094    0.0706717   0.1459472
18-21 months   Keneba         GAMBIA                         1                    NA                0.1555222    0.1434487   0.1675956
18-21 months   Keneba         GAMBIA                         0                    NA                0.1438007    0.1093762   0.1782252
18-21 months   MAL-ED         BANGLADESH                     1                    NA                0.1415436    0.1192082   0.1638790
18-21 months   MAL-ED         BANGLADESH                     0                    NA                0.1490137    0.1234072   0.1746203
18-21 months   MAL-ED         BRAZIL                         1                    NA                0.1424567    0.1003282   0.1845852
18-21 months   MAL-ED         BRAZIL                         0                    NA                0.1721418    0.1393932   0.2048904
18-21 months   MAL-ED         INDIA                          1                    NA                0.1724975    0.1530843   0.1919108
18-21 months   MAL-ED         INDIA                          0                    NA                0.1714513    0.1472921   0.1956106
18-21 months   MAL-ED         NEPAL                          1                    NA                0.1419805    0.0980427   0.1859183
18-21 months   MAL-ED         NEPAL                          0                    NA                0.1551428    0.1383630   0.1719226
18-21 months   MAL-ED         PERU                           1                    NA                0.1835106    0.1467285   0.2202928
18-21 months   MAL-ED         PERU                           0                    NA                0.1554522    0.1333853   0.1775191
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1777586    0.1195325   0.2359847
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.1800798    0.1509761   0.2091834
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1717688    0.1009414   0.2425962
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1541703    0.1257487   0.1825919
18-21 months   PROVIDE        BANGLADESH                     1                    NA                0.1222295    0.1086648   0.1357942
18-21 months   PROVIDE        BANGLADESH                     0                    NA                0.1571993    0.1363820   0.1780166
21-24 months   GMS-Nepal      NEPAL                          1                    NA                0.1625593    0.1356007   0.1895180
21-24 months   GMS-Nepal      NEPAL                          0                    NA                0.1512580    0.0930407   0.2094753
21-24 months   Keneba         GAMBIA                         1                    NA                0.1679797    0.1565661   0.1793933
21-24 months   Keneba         GAMBIA                         0                    NA                0.1870995    0.1507336   0.2234653
21-24 months   MAL-ED         BANGLADESH                     1                    NA                0.1507747    0.1312586   0.1702907
21-24 months   MAL-ED         BANGLADESH                     0                    NA                0.1445276    0.1226400   0.1664152
21-24 months   MAL-ED         BRAZIL                         1                    NA                0.1331899    0.0927921   0.1735876
21-24 months   MAL-ED         BRAZIL                         0                    NA                0.1388919    0.1096885   0.1680953
21-24 months   MAL-ED         INDIA                          1                    NA                0.1509294    0.1328202   0.1690386
21-24 months   MAL-ED         INDIA                          0                    NA                0.1672155    0.1465675   0.1878634
21-24 months   MAL-ED         NEPAL                          1                    NA                0.1956115    0.1620332   0.2291898
21-24 months   MAL-ED         NEPAL                          0                    NA                0.1532868    0.1289686   0.1776049
21-24 months   MAL-ED         PERU                           1                    NA                0.1625143    0.1242696   0.2007590
21-24 months   MAL-ED         PERU                           0                    NA                0.1869290    0.1639138   0.2099441
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.1785756    0.0956338   0.2615173
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.1888406    0.1636932   0.2139880
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1364704    0.0762615   0.1966793
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1385147    0.1043191   0.1727103
21-24 months   PROVIDE        BANGLADESH                     1                    NA                0.1440333    0.1299251   0.1581414
21-24 months   PROVIDE        BANGLADESH                     0                    NA                0.1369378    0.1179131   0.1559625


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                0.8249513   0.8069417   0.8429610
0-3 months     JiVitA-3       BANGLADESH                     NA                   NA                0.8700727   0.8663508   0.8737946
0-3 months     JiVitA-4       BANGLADESH                     NA                   NA                0.9009158   0.8704585   0.9313731
0-3 months     Keneba         GAMBIA                         NA                   NA                0.9267686   0.9151552   0.9383820
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                0.8782283   0.8546037   0.9018529
0-3 months     MAL-ED         BRAZIL                         NA                   NA                1.0646542   1.0280029   1.1013055
0-3 months     MAL-ED         INDIA                          NA                   NA                0.7574589   0.7340940   0.7808237
0-3 months     MAL-ED         NEPAL                          NA                   NA                0.9584228   0.9310012   0.9858444
0-3 months     MAL-ED         PERU                           NA                   NA                0.9695845   0.9443399   0.9948290
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.9436816   0.9164103   0.9709528
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8823647   0.8498032   0.9149263
0-3 months     PROVIDE        BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                0.7852849   0.7678149   0.8027549
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                0.4947387   0.4800952   0.5093821
3-6 months     JiVitA-3       BANGLADESH                     NA                   NA                0.4392001   0.4352946   0.4431056
3-6 months     Keneba         GAMBIA                         NA                   NA                0.4464139   0.4367093   0.4561186
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                0.4759067   0.4588572   0.4929562
3-6 months     MAL-ED         BRAZIL                         NA                   NA                0.5807629   0.5466123   0.6149135
3-6 months     MAL-ED         INDIA                          NA                   NA                0.4428354   0.4243688   0.4613020
3-6 months     MAL-ED         NEPAL                          NA                   NA                0.5212569   0.5007636   0.5417503
3-6 months     MAL-ED         PERU                           NA                   NA                0.4987110   0.4795495   0.5178726
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.4651960   0.4389728   0.4914192
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4449049   0.4193050   0.4705047
3-6 months     PROVIDE        BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                0.4538554   0.4355388   0.4721719
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                0.1833726   0.1693467   0.1973984
6-9 months     Keneba         GAMBIA                         NA                   NA                0.2039501   0.1910280   0.2168722
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                0.2435771   0.2286416   0.2585125
6-9 months     MAL-ED         BRAZIL                         NA                   NA                0.3852363   0.3576221   0.4128505
6-9 months     MAL-ED         INDIA                          NA                   NA                0.2257708   0.2103479   0.2411937
6-9 months     MAL-ED         NEPAL                          NA                   NA                0.2707612   0.2558425   0.2856799
6-9 months     MAL-ED         PERU                           NA                   NA                0.2615943   0.2459743   0.2772143
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                0.2582981   0.2366643   0.2799319
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2452641   0.2182544   0.2722738
6-9 months     PROVIDE        BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                0.2018620   0.1756088   0.2281152
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                0.1493494   0.1349712   0.1637275
9-12 months    JiVitA-4       BANGLADESH                     NA                   NA                0.1927867   0.1760286   0.2095447
9-12 months    Keneba         GAMBIA                         NA                   NA                0.1588343   0.1459911   0.1716774
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                0.1742501   0.1603345   0.1881656
9-12 months    MAL-ED         BRAZIL                         NA                   NA                0.2870152   0.2525341   0.3214963
9-12 months    MAL-ED         INDIA                          NA                   NA                0.1750483   0.1600136   0.1900829
9-12 months    MAL-ED         NEPAL                          NA                   NA                0.1845885   0.1697713   0.1994057
9-12 months    MAL-ED         PERU                           NA                   NA                0.1859375   0.1706537   0.2012212
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                0.2134162   0.1908275   0.2360049
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1579518   0.1360310   0.1798726
9-12 months    PROVIDE        BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                0.1940042   0.1780308   0.2099775
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                0.1715034   0.1574465   0.1855603
12-15 months   JiVitA-4       BANGLADESH                     NA                   NA                0.1088810   0.0873587   0.1304034
12-15 months   Keneba         GAMBIA                         NA                   NA                0.1865584   0.1760031   0.1971137
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                0.1349541   0.1188584   0.1510499
12-15 months   MAL-ED         BRAZIL                         NA                   NA                0.2098691   0.1830086   0.2367295
12-15 months   MAL-ED         INDIA                          NA                   NA                0.1746076   0.1576725   0.1915427
12-15 months   MAL-ED         NEPAL                          NA                   NA                0.1530291   0.1359519   0.1701063
12-15 months   MAL-ED         PERU                           NA                   NA                0.1429995   0.1263204   0.1596787
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1888436   0.1630039   0.2146833
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1670430   0.1409337   0.1931523
12-15 months   PROVIDE        BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                0.1855182   0.1710991   0.1999372
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                0.2313498   0.2143055   0.2483941
15-18 months   JiVitA-4       BANGLADESH                     NA                   NA                0.1538108   0.1308637   0.1767579
15-18 months   Keneba         GAMBIA                         NA                   NA                0.1589866   0.1483646   0.1696085
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                0.1419687   0.1260987   0.1578386
15-18 months   MAL-ED         BRAZIL                         NA                   NA                0.2081023   0.1789625   0.2372420
15-18 months   MAL-ED         INDIA                          NA                   NA                0.1670737   0.1513151   0.1828322
15-18 months   MAL-ED         NEPAL                          NA                   NA                0.1721904   0.1559804   0.1884004
15-18 months   MAL-ED         PERU                           NA                   NA                0.1444767   0.1256292   0.1633242
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.2221335   0.1931701   0.2510970
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1366378   0.1119409   0.1613347
15-18 months   PROVIDE        BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                0.1741261   0.1450974   0.2031549
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                0.1478606   0.1308537   0.1648675
18-21 months   Keneba         GAMBIA                         NA                   NA                0.1542266   0.1428315   0.1656218
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                0.1441563   0.1270864   0.1612262
18-21 months   MAL-ED         BRAZIL                         NA                   NA                0.1618510   0.1358468   0.1878551
18-21 months   MAL-ED         INDIA                          NA                   NA                0.1719770   0.1564970   0.1874571
18-21 months   MAL-ED         NEPAL                          NA                   NA                0.1511761   0.1334727   0.1688794
18-21 months   MAL-ED         PERU                           NA                   NA                0.1620790   0.1430444   0.1811137
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1798838   0.1527878   0.2069798
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1578080   0.1309046   0.1847113
18-21 months   PROVIDE        BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                0.1608641   0.1363372   0.1853911
21-24 months   Keneba         GAMBIA                         NA                   NA                0.1699244   0.1590193   0.1808295
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.1485991   0.1337648   0.1634334
21-24 months   MAL-ED         BRAZIL                         NA                   NA                0.1369019   0.1132291   0.1605747
21-24 months   MAL-ED         INDIA                          NA                   NA                0.1590319   0.1452622   0.1728016
21-24 months   MAL-ED         NEPAL                          NA                   NA                0.1662354   0.1463078   0.1861631
21-24 months   MAL-ED         PERU                           NA                   NA                0.1814454   0.1615858   0.2013051
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.1880230   0.1639514   0.2120945
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1380758   0.1082723   0.1678793
21-24 months   PROVIDE        BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0365913   -0.0880536    0.0148711
0-3 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH                     0                    1                 -0.0007963   -0.0126583    0.0110657
0-3 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0832738   -0.1690659    0.0025184
0-3 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA                         0                    1                 -0.0533934   -0.0947817   -0.0120050
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                 -0.0371993   -0.0854329    0.0110343
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                 -0.0979675   -0.1812705   -0.0146645
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                 -0.0279736   -0.0747342    0.0187870
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                 -0.0001574   -0.0581783    0.0578635
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                 -0.0445796   -0.1036722    0.0145130
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0055155   -0.0863930    0.0753620
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0449595   -0.1232201    0.0333010
0-3 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH                     0                    1                 -0.0182826   -0.0525488    0.0159837
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                 -0.1157419   -0.2637432    0.0322594
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                  0.0465001    0.0010993    0.0919009
3-6 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH                     0                    1                 -0.0019810   -0.0144205    0.0104585
3-6 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA                         0                    1                  0.0000349   -0.0316040    0.0316738
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                  0.0013550   -0.0368870    0.0395969
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                  0.0288151   -0.0396735    0.0973038
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                  0.0227947   -0.0145692    0.0601586
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0398057   -0.0034948    0.0831063
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                  0.0316619   -0.0133784    0.0767022
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0030727   -0.0539850    0.0601303
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0472194   -0.1022106    0.0077718
3-6 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH                     0                    1                  0.0061142   -0.0273942    0.0396227
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.1159725    0.0253273    0.2066177
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                  0.0097301   -0.0243451    0.0438052
6-9 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA                         0                    1                  0.0017931   -0.0323502    0.0359363
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                  0.0133668   -0.0185438    0.0452774
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                  0.0109234   -0.0499453    0.0717921
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0248121   -0.0061984    0.0558225
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0199353   -0.0113850    0.0512557
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                  0.0177124   -0.0200113    0.0554361
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0352443   -0.1167181    0.0462296
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0520742   -0.0038204    0.1079689
6-9 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH                     0                    1                  0.0263953   -0.0057974    0.0585880
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                  0.0260381   -0.0812158    0.1332921
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.0306237   -0.0008880    0.0621353
9-12 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH                     0                    1                  0.0274855   -0.0494907    0.1044616
9-12 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA                         0                    1                 -0.0279424   -0.0714585    0.0155737
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0237826   -0.0052978    0.0528630
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                  0.0237951   -0.0466830    0.0942732
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                  0.0162264   -0.0139399    0.0463926
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                  0.0339989   -0.0022777    0.0702756
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                 -0.0035043   -0.0414195    0.0344109
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0346783   -0.0885763    0.0192197
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0072854   -0.0559313    0.0413604
9-12 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH                     0                    1                  0.0182048   -0.0026147    0.0390243
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                 -0.0211124   -0.0819742    0.0397493
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0154822   -0.0530491    0.0220847
12-15 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH                     0                    1                 -0.0021491   -0.0643960    0.0600977
12-15 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA                         0                    1                  0.0036622   -0.0270470    0.0343713
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0380447    0.0041499    0.0719395
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                  0.0537184   -0.0029923    0.1104292
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                  0.0134240   -0.0204204    0.0472685
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                 -0.0111602   -0.0557734    0.0334529
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                  0.0065561   -0.0320093    0.0451214
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.1247158   -0.0070097    0.2564413
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0655958    0.0046605    0.1265310
12-15 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH                     0                    1                  0.0256618   -0.0009516    0.0522751
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                 -0.0101026   -0.1355951    0.1153899
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                  0.0631285    0.0109076    0.1153495
15-18 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH                     0                    1                  0.0204532   -0.0147366    0.0556429
15-18 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA                         0                    1                  0.0128982   -0.0231432    0.0489397
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                 -0.0222968   -0.0536848    0.0090913
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                  0.0919843    0.0313126    0.1526561
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                 -0.0016754   -0.0332154    0.0298647
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                 -0.0297059   -0.0671152    0.0077033
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                 -0.0049204   -0.0443393    0.0344985
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.1518959   -0.2769428   -0.0268489
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0144921   -0.0444893    0.0734735
15-18 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH                     0                    1                  0.0040562   -0.0229822    0.0310946
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                  0.0845078   -0.1119510    0.2809666
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                 -0.0466569   -0.0887169   -0.0045970
18-21 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA                         0                    1                 -0.0117215   -0.0482018    0.0247589
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                  0.0074701   -0.0265087    0.0414490
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                  0.0296851   -0.0236748    0.0830450
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                 -0.0010462   -0.0320388    0.0299464
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                  0.0131623   -0.0338706    0.0601952
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0280585   -0.0709522    0.0148353
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0023212   -0.0627734    0.0674157
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0175985   -0.0939157    0.0587186
18-21 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH                     0                    1                  0.0349698    0.0101230    0.0598165
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.0113013   -0.0754576    0.0528549
21-24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA                         0                    1                  0.0191197   -0.0189951    0.0572346
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0062471   -0.0355719    0.0230777
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0057021   -0.0441459    0.0555500
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                  0.0162861   -0.0111781    0.0437503
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0423247   -0.0837840   -0.0008654
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0244147   -0.0202212    0.0690505
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0102650   -0.0764052    0.0969352
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0020443   -0.0671977    0.0712863
21-24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH                     0                    1                 -0.0070955   -0.0307804    0.0165895


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0061924   -0.0149923    0.0026076
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0000780   -0.0012403    0.0010843
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0076976   -0.0157727    0.0003775
0-3 months     Keneba         GAMBIA                         1                    NA                -0.0065304   -0.0116726   -0.0013882
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.0130742   -0.0301761    0.0040277
0-3 months     MAL-ED         BRAZIL                         1                    NA                -0.0663165   -0.1230735   -0.0095594
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0131331   -0.0351668    0.0089005
0-3 months     MAL-ED         NEPAL                          1                    NA                -0.0001096   -0.0405170    0.0402978
0-3 months     MAL-ED         PERU                           1                    NA                -0.0346730   -0.0806855    0.0113395
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0050083   -0.0784491    0.0684324
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0355290   -0.0974249    0.0263669
0-3 months     PROVIDE        BANGLADESH                     1                    NA                -0.0054562   -0.0157031    0.0047907
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.0058536   -0.0123722    0.0006650
3-6 months     GMS-Nepal      NEPAL                          1                    NA                 0.0076393    0.0000003    0.0152783
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0001743   -0.0012688    0.0009201
3-6 months     Keneba         GAMBIA                         1                    NA                 0.0000041   -0.0037500    0.0037583
3-6 months     MAL-ED         BANGLADESH                     1                    NA                 0.0004736   -0.0128944    0.0138417
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0195199   -0.0269162    0.0659561
3-6 months     MAL-ED         INDIA                          1                    NA                 0.0107334   -0.0069291    0.0283959
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0276526   -0.0025230    0.0578283
3-6 months     MAL-ED         PERU                           1                    NA                 0.0243461   -0.0103247    0.0590169
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0027838   -0.0489096    0.0544772
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0370036   -0.0801790    0.0061717
3-6 months     PROVIDE        BANGLADESH                     1                    NA                 0.0017803   -0.0079792    0.0115399
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0055519   -0.0001633    0.0112671
6-9 months     GMS-Nepal      NEPAL                          1                    NA                 0.0016130   -0.0040477    0.0072737
6-9 months     Keneba         GAMBIA                         1                    NA                 0.0001933   -0.0034873    0.0038739
6-9 months     MAL-ED         BANGLADESH                     1                    NA                 0.0047430   -0.0066121    0.0160982
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0073440   -0.0335860    0.0482740
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0119824   -0.0030897    0.0270545
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0138290   -0.0079314    0.0355895
6-9 months     MAL-ED         PERU                           1                    NA                 0.0135405   -0.0153135    0.0423944
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0317516   -0.1051645    0.0416614
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0407420   -0.0030945    0.0845786
6-9 months     PROVIDE        BANGLADESH                     1                    NA                 0.0077903   -0.0017618    0.0173424
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0011624   -0.0034360    0.0057609
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0048998   -0.0002778    0.0100774
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0028631   -0.0048082    0.0105344
9-12 months    Keneba         GAMBIA                         1                    NA                -0.0030673   -0.0078851    0.0017505
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0082912   -0.0019585    0.0185408
9-12 months    MAL-ED         BRAZIL                         1                    NA                 0.0159087   -0.0312403    0.0630578
9-12 months    MAL-ED         INDIA                          1                    NA                 0.0079921   -0.0069084    0.0228926
9-12 months    MAL-ED         NEPAL                          1                    NA                 0.0236915   -0.0016714    0.0490545
9-12 months    MAL-ED         PERU                           1                    NA                -0.0026771   -0.0316430    0.0262888
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0311016   -0.0794605    0.0172573
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0057676   -0.0442812    0.0327460
9-12 months    PROVIDE        BANGLADESH                     1                    NA                 0.0053751   -0.0008098    0.0115599
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0007688   -0.0031005    0.0015629
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0023786   -0.0081790    0.0034219
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0001990   -0.0059588    0.0055608
12-15 months   Keneba         GAMBIA                         1                    NA                 0.0004076   -0.0030111    0.0038263
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0129278    0.0011490    0.0247066
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0358123   -0.0021930    0.0738176
12-15 months   MAL-ED         INDIA                          1                    NA                 0.0066449   -0.0101340    0.0234238
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0077920   -0.0389482    0.0233641
12-15 months   MAL-ED         PERU                           1                    NA                 0.0050499   -0.0246580    0.0347579
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.1127568   -0.0064372    0.2319508
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0518038    0.0035338    0.1000738
12-15 months   PROVIDE        BANGLADESH                     1                    NA                 0.0075504   -0.0003423    0.0154431
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.0003122   -0.0041194    0.0034950
15-18 months   GMS-Nepal      NEPAL                          1                    NA                 0.0102144    0.0014442    0.0189847
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0024394   -0.0019371    0.0068158
15-18 months   Keneba         GAMBIA                         1                    NA                 0.0014430   -0.0025959    0.0054820
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0075766   -0.0183399    0.0031868
15-18 months   MAL-ED         BRAZIL                         1                    NA                 0.0609323    0.0201666    0.1016980
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0008335   -0.0165255    0.0148585
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0207535   -0.0469512    0.0054443
15-18 months   MAL-ED         PERU                           1                    NA                -0.0037545   -0.0338337    0.0263248
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.1379605   -0.2516849   -0.0242360
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0115174   -0.0353647    0.0583995
15-18 months   PROVIDE        BANGLADESH                     1                    NA                 0.0011796   -0.0066849    0.0090441
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0031389   -0.0042884    0.0105661
18-21 months   GMS-Nepal      NEPAL                          1                    NA                -0.0071058   -0.0137499   -0.0004617
18-21 months   Keneba         GAMBIA                         1                    NA                -0.0012955   -0.0053332    0.0027422
18-21 months   MAL-ED         BANGLADESH                     1                    NA                 0.0026127   -0.0092817    0.0145071
18-21 months   MAL-ED         BRAZIL                         1                    NA                 0.0193943   -0.0155412    0.0543298
18-21 months   MAL-ED         INDIA                          1                    NA                -0.0005205   -0.0159399    0.0148989
18-21 months   MAL-ED         NEPAL                          1                    NA                 0.0091956   -0.0236728    0.0420640
18-21 months   MAL-ED         PERU                           1                    NA                -0.0214316   -0.0542367    0.0113735
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0021251   -0.0574726    0.0617229
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0139608   -0.0745120    0.0465903
18-21 months   PROVIDE        BANGLADESH                     1                    NA                 0.0102587    0.0028472    0.0176701
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0016952   -0.0113303    0.0079399
21-24 months   Keneba         GAMBIA                         1                    NA                 0.0019447   -0.0019477    0.0058371
21-24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0021756   -0.0123966    0.0080453
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0037121   -0.0287422    0.0361664
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0081025   -0.0056078    0.0218128
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0293761   -0.0582677   -0.0004844
21-24 months   MAL-ED         PERU                           1                    NA                 0.0189312   -0.0157105    0.0535728
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0094474   -0.0703207    0.0892155
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016054   -0.0527712    0.0559820
21-24 months   PROVIDE        BANGLADESH                     1                    NA                -0.0020628   -0.0089545    0.0048289
