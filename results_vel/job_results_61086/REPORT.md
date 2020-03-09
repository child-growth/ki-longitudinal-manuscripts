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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* W_parity
* impfloor
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        exclfeed3    n_cell       n
-------------  ---------------  -----------------------------  ----------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          1                 4       4
0-3 months     CMC-V-BCS-2002   INDIA                          0                 0       4
0-3 months     EE               PAKISTAN                       1                31      31
0-3 months     EE               PAKISTAN                       0                 0      31
0-3 months     GMS-Nepal        NEPAL                          1               378     456
0-3 months     GMS-Nepal        NEPAL                          0                78     456
0-3 months     IRC              INDIA                          1                 0      10
0-3 months     IRC              INDIA                          0                10      10
0-3 months     JiVitA-3         BANGLADESH                     1             10702   11852
0-3 months     JiVitA-3         BANGLADESH                     0              1150   11852
0-3 months     JiVitA-4         BANGLADESH                     1               111     121
0-3 months     JiVitA-4         BANGLADESH                     0                10     121
0-3 months     Keneba           GAMBIA                         1              1024    1175
0-3 months     Keneba           GAMBIA                         0               151    1175
0-3 months     MAL-ED           BANGLADESH                     1               153     237
0-3 months     MAL-ED           BANGLADESH                     0                84     237
0-3 months     MAL-ED           BRAZIL                         1                46     147
0-3 months     MAL-ED           BRAZIL                         0               101     147
0-3 months     MAL-ED           INDIA                          1                84     164
0-3 months     MAL-ED           INDIA                          0                80     164
0-3 months     MAL-ED           NEPAL                          1                53     153
0-3 months     MAL-ED           NEPAL                          0               100     153
0-3 months     MAL-ED           PERU                           1                57     262
0-3 months     MAL-ED           PERU                           0               205     262
0-3 months     MAL-ED           SOUTH AFRICA                   1                20     203
0-3 months     MAL-ED           SOUTH AFRICA                   0               183     203
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                43     197
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               154     197
0-3 months     PROVIDE          BANGLADESH                     1               449     640
0-3 months     PROVIDE          BANGLADESH                     0               191     640
0-3 months     SAS-CompFeed     INDIA                          1               411     432
0-3 months     SAS-CompFeed     INDIA                          0                21     432
3-6 months     CMC-V-BCS-2002   INDIA                          1                10      10
3-6 months     CMC-V-BCS-2002   INDIA                          0                 0      10
3-6 months     EE               PAKISTAN                       1                31      31
3-6 months     EE               PAKISTAN                       0                 0      31
3-6 months     GMS-Nepal        NEPAL                          1               350     420
3-6 months     GMS-Nepal        NEPAL                          0                70     420
3-6 months     IRC              INDIA                          1                 0      10
3-6 months     IRC              INDIA                          0                10      10
3-6 months     JiVitA-3         BANGLADESH                     1              6476    7103
3-6 months     JiVitA-3         BANGLADESH                     0               627    7103
3-6 months     JiVitA-4         BANGLADESH                     1                21      21
3-6 months     JiVitA-4         BANGLADESH                     0                 0      21
3-6 months     Keneba           GAMBIA                         1              1128    1279
3-6 months     Keneba           GAMBIA                         0               151    1279
3-6 months     MAL-ED           BANGLADESH                     1               147     225
3-6 months     MAL-ED           BANGLADESH                     0                78     225
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
3-6 months     PROVIDE          BANGLADESH                     1               423     598
3-6 months     PROVIDE          BANGLADESH                     0               175     598
3-6 months     SAS-CompFeed     INDIA                          1               361     379
3-6 months     SAS-CompFeed     INDIA                          0                18     379
6-9 months     CMC-V-BCS-2002   INDIA                          1                 9       9
6-9 months     CMC-V-BCS-2002   INDIA                          0                 0       9
6-9 months     EE               PAKISTAN                       1                36      36
6-9 months     EE               PAKISTAN                       0                 0      36
6-9 months     GMS-Nepal        NEPAL                          1               314     378
6-9 months     GMS-Nepal        NEPAL                          0                64     378
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
6-9 months     PROVIDE          BANGLADESH                     1               399     565
6-9 months     PROVIDE          BANGLADESH                     0               166     565
6-9 months     SAS-CompFeed     INDIA                          1               326     341
6-9 months     SAS-CompFeed     INDIA                          0                15     341
9-12 months    CMC-V-BCS-2002   INDIA                          1                 8       8
9-12 months    CMC-V-BCS-2002   INDIA                          0                 0       8
9-12 months    EE               PAKISTAN                       1                36      36
9-12 months    EE               PAKISTAN                       0                 0      36
9-12 months    GMS-Nepal        NEPAL                          1               302     362
9-12 months    GMS-Nepal        NEPAL                          0                60     362
9-12 months    IRC              INDIA                          1                 0      10
9-12 months    IRC              INDIA                          0                10      10
9-12 months    JiVitA-4         BANGLADESH                     1                86      96
9-12 months    JiVitA-4         BANGLADESH                     0                10      96
9-12 months    Keneba           GAMBIA                         1               664     746
9-12 months    Keneba           GAMBIA                         0                82     746
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
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                39     192
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               153     192
9-12 months    PROVIDE          BANGLADESH                     1               400     566
9-12 months    PROVIDE          BANGLADESH                     0               166     566
9-12 months    SAS-CompFeed     INDIA                          1               348     361
9-12 months    SAS-CompFeed     INDIA                          0                13     361
12-15 months   CMC-V-BCS-2002   INDIA                          1                 8       8
12-15 months   CMC-V-BCS-2002   INDIA                          0                 0       8
12-15 months   EE               PAKISTAN                       1                29      29
12-15 months   EE               PAKISTAN                       0                 0      29
12-15 months   GMS-Nepal        NEPAL                          1               313     371
12-15 months   GMS-Nepal        NEPAL                          0                58     371
12-15 months   IRC              INDIA                          1                 0      10
12-15 months   IRC              INDIA                          0                10      10
12-15 months   JiVitA-4         BANGLADESH                     1                99     109
12-15 months   JiVitA-4         BANGLADESH                     0                10     109
12-15 months   Keneba           GAMBIA                         1              1029    1158
12-15 months   Keneba           GAMBIA                         0               129    1158
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
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                40     195
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               155     195
12-15 months   PROVIDE          BANGLADESH                     1               377     532
12-15 months   PROVIDE          BANGLADESH                     0               155     532
12-15 months   SAS-CompFeed     INDIA                          1               346     357
12-15 months   SAS-CompFeed     INDIA                          0                11     357
15-18 months   CMC-V-BCS-2002   INDIA                          1                 8       8
15-18 months   CMC-V-BCS-2002   INDIA                          0                 0       8
15-18 months   EE               PAKISTAN                       1                25      25
15-18 months   EE               PAKISTAN                       0                 0      25
15-18 months   GMS-Nepal        NEPAL                          1               319     379
15-18 months   GMS-Nepal        NEPAL                          0                60     379
15-18 months   IRC              INDIA                          1                 0      10
15-18 months   IRC              INDIA                          0                10      10
15-18 months   JiVitA-4         BANGLADESH                     1                96     109
15-18 months   JiVitA-4         BANGLADESH                     0                13     109
15-18 months   Keneba           GAMBIA                         1              1031    1160
15-18 months   Keneba           GAMBIA                         0               129    1160
15-18 months   MAL-ED           BANGLADESH                     1               136     206
15-18 months   MAL-ED           BANGLADESH                     0                70     206
15-18 months   MAL-ED           BRAZIL                         1                53     157
15-18 months   MAL-ED           BRAZIL                         0               104     157
15-18 months   MAL-ED           INDIA                          1               101     201
15-18 months   MAL-ED           INDIA                          0               100     201
15-18 months   MAL-ED           NEPAL                          1                66     219
15-18 months   MAL-ED           NEPAL                          0               153     219
15-18 months   MAL-ED           PERU                           1                50     210
15-18 months   MAL-ED           PERU                           0               160     210
15-18 months   MAL-ED           SOUTH AFRICA                   1                20     218
15-18 months   MAL-ED           SOUTH AFRICA                   0               198     218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     188
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               150     188
15-18 months   PROVIDE          BANGLADESH                     1               376     528
15-18 months   PROVIDE          BANGLADESH                     0               152     528
15-18 months   SAS-CompFeed     INDIA                          1               338     350
15-18 months   SAS-CompFeed     INDIA                          0                12     350
18-21 months   CMC-V-BCS-2002   INDIA                          1                 7       7
18-21 months   CMC-V-BCS-2002   INDIA                          0                 0       7
18-21 months   EE               PAKISTAN                       1                26      26
18-21 months   EE               PAKISTAN                       0                 0      26
18-21 months   GMS-Nepal        NEPAL                          1               295     347
18-21 months   GMS-Nepal        NEPAL                          0                52     347
18-21 months   IRC              INDIA                          1                 0       8
18-21 months   IRC              INDIA                          0                 8       8
18-21 months   Keneba           GAMBIA                         1              1014    1139
18-21 months   Keneba           GAMBIA                         0               125    1139
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                36     176
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               140     176
18-21 months   PROVIDE          BANGLADESH                     1               383     541
18-21 months   PROVIDE          BANGLADESH                     0               158     541
21-24 months   CMC-V-BCS-2002   INDIA                          1                 9       9
21-24 months   CMC-V-BCS-2002   INDIA                          0                 0       9
21-24 months   EE               PAKISTAN                       1                16      16
21-24 months   EE               PAKISTAN                       0                 0      16
21-24 months   GMS-Nepal        NEPAL                          1               237     279
21-24 months   GMS-Nepal        NEPAL                          0                42     279
21-24 months   IRC              INDIA                          1                 0       8
21-24 months   IRC              INDIA                          0                 8       8
21-24 months   Keneba           GAMBIA                         1               944    1050
21-24 months   Keneba           GAMBIA                         0               106    1050
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                38     175
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               137     175
21-24 months   PROVIDE          BANGLADESH                     1               334     471
21-24 months   PROVIDE          BANGLADESH                     0               137     471


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/453674ee-3a52-47ee-b133-275cc12a5118/0da3013e-12fc-42f1-a4c4-720f6ac02402/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/453674ee-3a52-47ee-b133-275cc12a5118/0da3013e-12fc-42f1-a4c4-720f6ac02402/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/453674ee-3a52-47ee-b133-275cc12a5118/0da3013e-12fc-42f1-a4c4-720f6ac02402/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                3.5837505   3.5252782   3.6422229
0-3 months     GMS-Nepal      NEPAL                          0                    NA                3.5678681   3.4273673   3.7083688
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                3.7220581   3.7089299   3.7351862
0-3 months     JiVitA-3       BANGLADESH                     0                    NA                3.7618420   3.7280337   3.7956503
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                3.8113799   3.7093584   3.9134014
0-3 months     JiVitA-4       BANGLADESH                     0                    NA                3.4485564   3.0596150   3.8374977
0-3 months     Keneba         GAMBIA                         1                    NA                3.1064677   3.0527786   3.1601568
0-3 months     Keneba         GAMBIA                         0                    NA                3.0745385   2.9402715   3.2088055
0-3 months     MAL-ED         BANGLADESH                     1                    NA                3.3756507   3.2931096   3.4581917
0-3 months     MAL-ED         BANGLADESH                     0                    NA                3.2735909   3.1612884   3.3858933
0-3 months     MAL-ED         BRAZIL                         1                    NA                3.9202942   3.7166348   4.1239535
0-3 months     MAL-ED         BRAZIL                         0                    NA                3.8028605   3.6596013   3.9461198
0-3 months     MAL-ED         INDIA                          1                    NA                3.4655700   3.3031990   3.6279410
0-3 months     MAL-ED         INDIA                          0                    NA                3.2460307   3.1089899   3.3830715
0-3 months     MAL-ED         NEPAL                          1                    NA                3.4180157   3.2935525   3.5424789
0-3 months     MAL-ED         NEPAL                          0                    NA                3.7140641   3.5906590   3.8374692
0-3 months     MAL-ED         PERU                           1                    NA                3.0425773   2.9007550   3.1843995
0-3 months     MAL-ED         PERU                           0                    NA                3.0552844   2.9780456   3.1325233
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                3.2693999   3.0668792   3.4719205
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                3.1911564   3.0836156   3.2986972
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                3.4612388   3.2816305   3.6408471
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                3.2068445   3.1134339   3.3002551
0-3 months     PROVIDE        BANGLADESH                     1                    NA                3.2558992   3.2142647   3.2975336
0-3 months     PROVIDE        BANGLADESH                     0                    NA                3.2691379   3.1935005   3.3447753
0-3 months     SAS-CompFeed   INDIA                          1                    NA                3.3695026   3.3106339   3.4283713
0-3 months     SAS-CompFeed   INDIA                          0                    NA                2.9240440   2.7812046   3.0668835
3-6 months     GMS-Nepal      NEPAL                          1                    NA                1.7260347   1.6806431   1.7714263
3-6 months     GMS-Nepal      NEPAL                          0                    NA                1.6786063   1.5801679   1.7770447
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                1.9193367   1.9051205   1.9335528
3-6 months     JiVitA-3       BANGLADESH                     0                    NA                1.8866788   1.8442869   1.9290708
3-6 months     Keneba         GAMBIA                         1                    NA                2.0006430   1.9565714   2.0447147
3-6 months     Keneba         GAMBIA                         0                    NA                1.9411651   1.8272461   2.0550841
3-6 months     MAL-ED         BANGLADESH                     1                    NA                1.9168068   1.8569534   1.9766602
3-6 months     MAL-ED         BANGLADESH                     0                    NA                1.9776357   1.8857280   2.0695435
3-6 months     MAL-ED         BRAZIL                         1                    NA                2.0684511   1.9259184   2.2109838
3-6 months     MAL-ED         BRAZIL                         0                    NA                2.1932702   2.0887837   2.2977567
3-6 months     MAL-ED         INDIA                          1                    NA                1.9005754   1.8006581   2.0004927
3-6 months     MAL-ED         INDIA                          0                    NA                1.8716017   1.7724405   1.9707628
3-6 months     MAL-ED         NEPAL                          1                    NA                1.8593293   1.7605283   1.9581303
3-6 months     MAL-ED         NEPAL                          0                    NA                2.0080145   1.9397122   2.0763169
3-6 months     MAL-ED         PERU                           1                    NA                2.0822381   1.9534872   2.2109889
3-6 months     MAL-ED         PERU                           0                    NA                2.0022195   1.9246160   2.0798230
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                2.1396939   1.9447761   2.3346118
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                1.9508983   1.8619318   2.0398648
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.8064869   1.6382264   1.9747475
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8488085   1.7708924   1.9267246
3-6 months     PROVIDE        BANGLADESH                     1                    NA                1.9750464   1.9362275   2.0138653
3-6 months     PROVIDE        BANGLADESH                     0                    NA                1.9435250   1.8749849   2.0120651
3-6 months     SAS-CompFeed   INDIA                          1                    NA                1.8959468   1.8172862   1.9746075
3-6 months     SAS-CompFeed   INDIA                          0                    NA                2.0175913   1.4898496   2.5453330
6-9 months     GMS-Nepal      NEPAL                          1                    NA                1.3159153   1.2608621   1.3709684
6-9 months     GMS-Nepal      NEPAL                          0                    NA                1.3075744   1.2199250   1.3952237
6-9 months     Keneba         GAMBIA                         1                    NA                1.4017218   1.3429325   1.4605111
6-9 months     Keneba         GAMBIA                         0                    NA                1.3479497   1.1872431   1.5086562
6-9 months     MAL-ED         BANGLADESH                     1                    NA                1.2510289   1.1994890   1.3025688
6-9 months     MAL-ED         BANGLADESH                     0                    NA                1.2401298   1.1725450   1.3077147
6-9 months     MAL-ED         BRAZIL                         1                    NA                1.4950097   1.3023920   1.6876273
6-9 months     MAL-ED         BRAZIL                         0                    NA                1.4695136   1.3801991   1.5588281
6-9 months     MAL-ED         INDIA                          1                    NA                1.2196836   1.1406793   1.2986880
6-9 months     MAL-ED         INDIA                          0                    NA                1.2615770   1.1879106   1.3352434
6-9 months     MAL-ED         NEPAL                          1                    NA                1.3477778   1.2675557   1.4280000
6-9 months     MAL-ED         NEPAL                          0                    NA                1.3536906   1.2988409   1.4085403
6-9 months     MAL-ED         PERU                           1                    NA                1.3504745   1.2430147   1.4579343
6-9 months     MAL-ED         PERU                           0                    NA                1.3082543   1.2444306   1.3720781
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                1.1658540   0.9916617   1.3400463
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                1.4079780   1.3372189   1.4787372
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2896596   1.1150598   1.4642593
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1779124   1.0919773   1.2638475
6-9 months     PROVIDE        BANGLADESH                     1                    NA                1.2732885   1.2438423   1.3027347
6-9 months     PROVIDE        BANGLADESH                     0                    NA                1.2982870   1.2497797   1.3467944
6-9 months     SAS-CompFeed   INDIA                          1                    NA                1.2109523   1.1268945   1.2950101
6-9 months     SAS-CompFeed   INDIA                          0                    NA                1.0649253   0.7601232   1.3697273
9-12 months    GMS-Nepal      NEPAL                          1                    NA                0.9796195   0.9346194   1.0246196
9-12 months    GMS-Nepal      NEPAL                          0                    NA                1.0895813   1.0153688   1.1637938
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                1.0748214   0.9832021   1.1664406
9-12 months    JiVitA-4       BANGLADESH                     0                    NA                1.1882908   0.7869645   1.5896171
9-12 months    Keneba         GAMBIA                         1                    NA                0.9782426   0.9308561   1.0256291
9-12 months    Keneba         GAMBIA                         0                    NA                1.0159930   0.8975900   1.1343960
9-12 months    MAL-ED         BANGLADESH                     1                    NA                0.9922696   0.9424904   1.0420489
9-12 months    MAL-ED         BANGLADESH                     0                    NA                0.9930385   0.9289681   1.0571089
9-12 months    MAL-ED         BRAZIL                         1                    NA                1.3407600   1.2163891   1.4651308
9-12 months    MAL-ED         BRAZIL                         0                    NA                1.2843015   1.1812348   1.3873683
9-12 months    MAL-ED         INDIA                          1                    NA                0.9156109   0.8618981   0.9693238
9-12 months    MAL-ED         INDIA                          0                    NA                1.0222570   0.9636172   1.0808967
9-12 months    MAL-ED         NEPAL                          1                    NA                1.0345934   0.9582617   1.1109250
9-12 months    MAL-ED         NEPAL                          0                    NA                1.1038681   1.0540205   1.1537157
9-12 months    MAL-ED         PERU                           1                    NA                1.0795673   0.9707564   1.1883783
9-12 months    MAL-ED         PERU                           0                    NA                1.1062797   1.0480511   1.1645083
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                1.1346109   0.8884958   1.3807260
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                0.9812478   0.9136353   1.0488603
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7328077   0.5748858   0.8907296
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8293946   0.7281027   0.9306866
9-12 months    PROVIDE        BANGLADESH                     1                    NA                1.0325107   1.0010839   1.0639375
9-12 months    PROVIDE        BANGLADESH                     0                    NA                1.0940807   1.0431550   1.1450064
9-12 months    SAS-CompFeed   INDIA                          1                    NA                0.9762294   0.9017367   1.0507220
9-12 months    SAS-CompFeed   INDIA                          0                    NA                1.3407406   1.0231081   1.6583732
12-15 months   GMS-Nepal      NEPAL                          1                    NA                0.8741425   0.8438761   0.9044089
12-15 months   GMS-Nepal      NEPAL                          0                    NA                0.8370389   0.7567425   0.9173353
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                0.9865363   0.9118334   1.0612392
12-15 months   JiVitA-4       BANGLADESH                     0                    NA                0.9784631   0.8224639   1.1344624
12-15 months   Keneba         GAMBIA                         1                    NA                0.9560724   0.9218573   0.9902875
12-15 months   Keneba         GAMBIA                         0                    NA                0.8774755   0.7948153   0.9601356
12-15 months   MAL-ED         BANGLADESH                     1                    NA                0.8815063   0.8334951   0.9295174
12-15 months   MAL-ED         BANGLADESH                     0                    NA                0.9759515   0.8989773   1.0529257
12-15 months   MAL-ED         BRAZIL                         1                    NA                1.1610097   1.0667121   1.2553072
12-15 months   MAL-ED         BRAZIL                         0                    NA                1.1437126   1.0660306   1.2213946
12-15 months   MAL-ED         INDIA                          1                    NA                0.8755522   0.8143228   0.9367816
12-15 months   MAL-ED         INDIA                          0                    NA                0.9233097   0.8644676   0.9821519
12-15 months   MAL-ED         NEPAL                          1                    NA                0.9365436   0.8630687   1.0100185
12-15 months   MAL-ED         NEPAL                          0                    NA                0.9518200   0.9027561   1.0008838
12-15 months   MAL-ED         PERU                           1                    NA                0.8940258   0.8089987   0.9790529
12-15 months   MAL-ED         PERU                           0                    NA                0.8879663   0.8334542   0.9424783
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8988965   0.7056868   1.0921062
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.9218467   0.8586434   0.9850499
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8305502   0.7041759   0.9569244
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8943071   0.8132902   0.9753239
12-15 months   PROVIDE        BANGLADESH                     1                    NA                0.9460787   0.9155464   0.9766109
12-15 months   PROVIDE        BANGLADESH                     0                    NA                0.9894570   0.9402325   1.0386816
12-15 months   SAS-CompFeed   INDIA                          1                    NA                0.8475489   0.7723789   0.9227190
12-15 months   SAS-CompFeed   INDIA                          0                    NA                0.5882718   0.3290880   0.8474557
15-18 months   GMS-Nepal      NEPAL                          1                    NA                0.7859326   0.7438563   0.8280089
15-18 months   GMS-Nepal      NEPAL                          0                    NA                0.7074751   0.6502117   0.7647385
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                0.9463851   0.8668572   1.0259129
15-18 months   JiVitA-4       BANGLADESH                     0                    NA                1.1992846   1.0280649   1.3705043
15-18 months   Keneba         GAMBIA                         1                    NA                0.8868278   0.8507467   0.9229088
15-18 months   Keneba         GAMBIA                         0                    NA                0.8763567   0.7598108   0.9929026
15-18 months   MAL-ED         BANGLADESH                     1                    NA                0.8376136   0.7890280   0.8861991
15-18 months   MAL-ED         BANGLADESH                     0                    NA                0.7918648   0.7350558   0.8486739
15-18 months   MAL-ED         BRAZIL                         1                    NA                0.9848277   0.8719435   1.0977120
15-18 months   MAL-ED         BRAZIL                         0                    NA                0.9786948   0.9012533   1.0561363
15-18 months   MAL-ED         INDIA                          1                    NA                0.8252980   0.7727391   0.8778569
15-18 months   MAL-ED         INDIA                          0                    NA                0.8874999   0.8301250   0.9448747
15-18 months   MAL-ED         NEPAL                          1                    NA                0.8053655   0.7280148   0.8827163
15-18 months   MAL-ED         NEPAL                          0                    NA                0.8560418   0.8046917   0.9073919
15-18 months   MAL-ED         PERU                           1                    NA                0.7900761   0.7034882   0.8766639
15-18 months   MAL-ED         PERU                           0                    NA                0.8678707   0.8190228   0.9167186
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8390254   0.6596761   1.0183746
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8851688   0.8288748   0.9414627
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7063648   0.5534611   0.8592685
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6707721   0.5993105   0.7422337
15-18 months   PROVIDE        BANGLADESH                     1                    NA                0.8648778   0.8360602   0.8936954
15-18 months   PROVIDE        BANGLADESH                     0                    NA                0.8259596   0.7822142   0.8697049
15-18 months   SAS-CompFeed   INDIA                          1                    NA                0.8869564   0.8297712   0.9441416
15-18 months   SAS-CompFeed   INDIA                          0                    NA                1.1428504   0.6164293   1.6692716
18-21 months   GMS-Nepal      NEPAL                          1                    NA                0.9107811   0.8643357   0.9572266
18-21 months   GMS-Nepal      NEPAL                          0                    NA                0.9205042   0.8529403   0.9880680
18-21 months   Keneba         GAMBIA                         1                    NA                0.8125966   0.7728051   0.8523881
18-21 months   Keneba         GAMBIA                         0                    NA                0.8476335   0.7289858   0.9662812
18-21 months   MAL-ED         BANGLADESH                     1                    NA                0.8055026   0.7590301   0.8519751
18-21 months   MAL-ED         BANGLADESH                     0                    NA                0.8368778   0.7851238   0.8886317
18-21 months   MAL-ED         BRAZIL                         1                    NA                0.8923963   0.7616081   1.0231845
18-21 months   MAL-ED         BRAZIL                         0                    NA                0.9436282   0.8592485   1.0280078
18-21 months   MAL-ED         INDIA                          1                    NA                0.8473792   0.7952316   0.8995267
18-21 months   MAL-ED         INDIA                          0                    NA                0.8978991   0.8426736   0.9531245
18-21 months   MAL-ED         NEPAL                          1                    NA                0.8193229   0.7511238   0.8875220
18-21 months   MAL-ED         NEPAL                          0                    NA                0.8189035   0.7707345   0.8670724
18-21 months   MAL-ED         PERU                           1                    NA                0.8637645   0.7737613   0.9537677
18-21 months   MAL-ED         PERU                           0                    NA                0.8351271   0.7832945   0.8869596
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8272673   0.6778661   0.9766684
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.7765260   0.7160569   0.8369951
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7753911   0.6149170   0.9358651
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7374053   0.6553436   0.8194671
18-21 months   PROVIDE        BANGLADESH                     1                    NA                0.8318603   0.8028989   0.8608217
18-21 months   PROVIDE        BANGLADESH                     0                    NA                0.8560989   0.8136747   0.8985232
21-24 months   GMS-Nepal      NEPAL                          1                    NA                0.8058362   0.7479112   0.8637612
21-24 months   GMS-Nepal      NEPAL                          0                    NA                0.6993247   0.5937112   0.8049383
21-24 months   Keneba         GAMBIA                         1                    NA                0.7138027   0.6752458   0.7523596
21-24 months   Keneba         GAMBIA                         0                    NA                0.6883739   0.6098926   0.7668552
21-24 months   MAL-ED         BANGLADESH                     1                    NA                0.7927734   0.7446854   0.8408613
21-24 months   MAL-ED         BANGLADESH                     0                    NA                0.7257601   0.6737919   0.7777283
21-24 months   MAL-ED         BRAZIL                         1                    NA                0.7626726   0.6804441   0.8449012
21-24 months   MAL-ED         BRAZIL                         0                    NA                0.8040135   0.7470599   0.8609670
21-24 months   MAL-ED         INDIA                          1                    NA                0.8274479   0.7803094   0.8745864
21-24 months   MAL-ED         INDIA                          0                    NA                0.8271181   0.7788030   0.8754332
21-24 months   MAL-ED         NEPAL                          1                    NA                0.7878035   0.7154702   0.8601369
21-24 months   MAL-ED         NEPAL                          0                    NA                0.7803591   0.7287550   0.8319632
21-24 months   MAL-ED         PERU                           1                    NA                0.7201768   0.6291308   0.8112228
21-24 months   MAL-ED         PERU                           0                    NA                0.7733903   0.7180562   0.8287244
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                0.8455153   0.7277830   0.9632475
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                0.8431167   0.7861837   0.9000498
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8082846   0.6538478   0.9627213
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6922567   0.6047168   0.7797967
21-24 months   PROVIDE        BANGLADESH                     1                    NA                0.7604086   0.7300411   0.7907761
21-24 months   PROVIDE        BANGLADESH                     0                    NA                0.7688947   0.7222502   0.8155392


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                3.5832888   3.5291425   3.6374351
0-3 months     JiVitA-3       BANGLADESH                     NA                   NA                3.7257309   3.7129962   3.7384655
0-3 months     JiVitA-4       BANGLADESH                     NA                   NA                3.7971810   3.7001091   3.8942529
0-3 months     Keneba         GAMBIA                         NA                   NA                3.1023487   3.0525201   3.1521774
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                3.3300100   3.2632400   3.3967800
0-3 months     MAL-ED         BRAZIL                         NA                   NA                3.8333086   3.7172183   3.9493989
0-3 months     MAL-ED         INDIA                          NA                   NA                3.3581259   3.2511263   3.4651254
0-3 months     MAL-ED         NEPAL                          NA                   NA                3.6149130   3.5218465   3.7079794
0-3 months     MAL-ED         PERU                           NA                   NA                3.0514630   2.9842485   3.1186774
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                3.1964081   3.0976125   3.2952037
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2460048   3.1627741   3.3292354
0-3 months     PROVIDE        BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                3.3522434   3.2847848   3.4197021
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                1.7175472   1.6762113   1.7588831
3-6 months     JiVitA-3       BANGLADESH                     NA                   NA                1.9166214   1.9029983   1.9302445
3-6 months     Keneba         GAMBIA                         NA                   NA                1.9933115   1.9522179   2.0344050
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                1.9360220   1.8863911   1.9856528
3-6 months     MAL-ED         BRAZIL                         NA                   NA                2.1610058   2.0768189   2.2451928
3-6 months     MAL-ED         INDIA                          NA                   NA                1.8774058   1.8092128   1.9455987
3-6 months     MAL-ED         NEPAL                          NA                   NA                1.9604886   1.9037186   2.0172585
3-6 months     MAL-ED         PERU                           NA                   NA                2.0146923   1.9480408   2.0813438
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.9673270   1.8846989   2.0499551
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8384078   1.7678309   1.9089846
3-6 months     PROVIDE        BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                1.9051097   1.8384221   1.9717974
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                1.3149164   1.2666599   1.3631729
6-9 months     Keneba         GAMBIA                         NA                   NA                1.3980094   1.3431582   1.4528606
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                1.2426951   1.2021480   1.2832422
6-9 months     MAL-ED         BRAZIL                         NA                   NA                1.4793615   1.3932814   1.5654415
6-9 months     MAL-ED         INDIA                          NA                   NA                1.2410939   1.1870908   1.2950970
6-9 months     MAL-ED         NEPAL                          NA                   NA                1.3593977   1.3145109   1.4042846
6-9 months     MAL-ED         PERU                           NA                   NA                1.3181643   1.2633979   1.3729307
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                1.3866251   1.3204306   1.4528196
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1862735   1.1092792   1.2632679
6-9 months     PROVIDE        BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                1.2100652   1.1296030   1.2905275
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                0.9981577   0.9587526   1.0375629
9-12 months    JiVitA-4       BANGLADESH                     NA                   NA                1.0827638   1.0008916   1.1646360
9-12 months    Keneba         GAMBIA                         NA                   NA                0.9817054   0.9381761   1.0252348
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                0.9927203   0.9534705   1.0319702
9-12 months    MAL-ED         BRAZIL                         NA                   NA                1.2871495   1.2069822   1.3673169
9-12 months    MAL-ED         INDIA                          NA                   NA                0.9664571   0.9272553   1.0056589
9-12 months    MAL-ED         NEPAL                          NA                   NA                1.0863279   1.0443920   1.1282637
9-12 months    MAL-ED         PERU                           NA                   NA                1.0996556   1.0484043   1.1509069
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                0.9974431   0.9321487   1.0627375
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8135761   0.7280408   0.8991114
9-12 months    PROVIDE        BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                0.9826276   0.9088962   1.0563590
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                0.8703223   0.8418462   0.8987983
12-15 months   JiVitA-4       BANGLADESH                     NA                   NA                0.9942404   0.9259295   1.0625513
12-15 months   Keneba         GAMBIA                         NA                   NA                0.9467220   0.9149021   0.9785418
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                0.9168218   0.8756400   0.9580036
12-15 months   MAL-ED         BRAZIL                         NA                   NA                1.1479969   1.0880713   1.2079226
12-15 months   MAL-ED         INDIA                          NA                   NA                0.9027484   0.8605827   0.9449141
12-15 months   MAL-ED         NEPAL                          NA                   NA                0.9510803   0.9108264   0.9913342
12-15 months   MAL-ED         PERU                           NA                   NA                0.8899324   0.8436019   0.9362629
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.9200282   0.8606688   0.9793876
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8603058   0.7910045   0.9296071
12-15 months   PROVIDE        BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                0.8406400   0.7684485   0.9128315
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                0.7714871   0.7347479   0.8082263
15-18 months   JiVitA-4       BANGLADESH                     NA                   NA                0.9624250   0.8894872   1.0353628
15-18 months   Keneba         GAMBIA                         NA                   NA                0.8844374   0.8501048   0.9187701
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                0.8229575   0.7855057   0.8604093
15-18 months   MAL-ED         BRAZIL                         NA                   NA                0.9818884   0.9203285   1.0434482
15-18 months   MAL-ED         INDIA                          NA                   NA                0.8524809   0.8141426   0.8908193
15-18 months   MAL-ED         NEPAL                          NA                   NA                0.8379671   0.7952249   0.8807093
15-18 months   MAL-ED         PERU                           NA                   NA                0.8524194   0.8100116   0.8948273
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8824996   0.8291590   0.9358403
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6765672   0.6111365   0.7419980
15-18 months   PROVIDE        BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                0.8909184   0.8304593   0.9513775
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                0.9164610   0.8758269   0.9570951
18-21 months   Keneba         GAMBIA                         NA                   NA                0.8159048   0.7782859   0.8535238
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                0.8119236   0.7768456   0.8470016
18-21 months   MAL-ED         BRAZIL                         NA                   NA                0.9218418   0.8499673   0.9937164
18-21 months   MAL-ED         INDIA                          NA                   NA                0.8718128   0.8338464   0.9097793
18-21 months   MAL-ED         NEPAL                          NA                   NA                0.8188898   0.7796721   0.8581075
18-21 months   MAL-ED         PERU                           NA                   NA                0.8436364   0.7988407   0.8884321
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.7825058   0.7256746   0.8393371
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7427314   0.6697155   0.8157473
18-21 months   PROVIDE        BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                0.7890401   0.7373935   0.8406867
21-24 months   Keneba         GAMBIA                         NA                   NA                0.7118510   0.6762870   0.7474150
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                0.7650086   0.7291204   0.8008969
21-24 months   MAL-ED         BRAZIL                         NA                   NA                0.7910255   0.7450530   0.8369980
21-24 months   MAL-ED         INDIA                          NA                   NA                0.8277879   0.7947160   0.8608598
21-24 months   MAL-ED         NEPAL                          NA                   NA                0.7874809   0.7457868   0.8291749
21-24 months   MAL-ED         PERU                           NA                   NA                0.7633557   0.7160871   0.8106244
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                0.8419384   0.7887410   0.8951359
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7195266   0.6482537   0.7907995
21-24 months   PROVIDE        BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                 -0.0158825   -0.1678131    0.1360481
0-3 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH                     0                    1                  0.0397839    0.0053155    0.0742524
0-3 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH                     0                    1                 -0.3628235   -0.7643912    0.0387441
0-3 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA                         0                    1                 -0.0319292   -0.1764046    0.1125463
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                 -0.1020598   -0.2418936    0.0377740
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                 -0.1174336   -0.3674580    0.1325907
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                 -0.2195393   -0.4327372   -0.0063415
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.2960484    0.1201404    0.4719564
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                  0.0127072   -0.1503219    0.1757362
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0782435   -0.3076691    0.1511821
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.2543943   -0.4574753   -0.0513133
0-3 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH                     0                    1                  0.0132388   -0.0729602    0.0994377
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                 -0.4454586   -0.5939152   -0.2970019
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0474283   -0.1553772    0.0605205
3-6 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH                     0                    1                 -0.0326578   -0.0768845    0.0115689
3-6 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA                         0                    1                 -0.0594779   -0.1814064    0.0624505
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                  0.0608289   -0.0509136    0.1725715
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                  0.1248191   -0.0527094    0.3023476
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0289737   -0.1737155    0.1157681
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.1486852    0.0288541    0.2685163
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                 -0.0800186   -0.2300117    0.0699745
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.1887956   -0.4016813    0.0240900
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0423216   -0.1419213    0.2265644
3-6 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH                     0                    1                 -0.0315214   -0.1103534    0.0473107
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.1216445   -0.4499236    0.6932125
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0083409   -0.1110489    0.0943671
6-9 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA                         0                    1                 -0.0537721   -0.2258196    0.1182753
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                 -0.0108991   -0.0963439    0.0745458
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                 -0.0254960   -0.2381629    0.1871708
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0418933   -0.0662923    0.1500789
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                  0.0059128   -0.0916203    0.1034459
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                 -0.0422202   -0.1674457    0.0830054
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.2421240    0.0539415    0.4303066
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1117471   -0.3074181    0.0839238
6-9 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH                     0                    1                  0.0249985   -0.0317651    0.0817621
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                 -0.1460270   -0.4785521    0.1864982
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.1099617    0.0226800    0.1972435
9-12 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH                     0                    1                  0.1134694   -0.2979216    0.5248604
9-12 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA                         0                    1                  0.0377504   -0.0910627    0.1665635
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0007688   -0.0803777    0.0819154
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                 -0.0564584   -0.2207966    0.1078798
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                  0.1066460    0.0267361    0.1865559
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                  0.0692747   -0.0222626    0.1608120
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                  0.0267123   -0.0970073    0.1504319
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.1533631   -0.4083518    0.1016257
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0965869   -0.0930161    0.2861900
9-12 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH                     0                    1                  0.0615700    0.0021150    0.1210250
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                  0.3645113    0.0833149    0.6457077
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0371036   -0.1227316    0.0485244
12-15 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH                     0                    1                 -0.0080731   -0.1794611    0.1633148
12-15 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA                         0                    1                 -0.0785970   -0.1678995    0.0107055
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0944452    0.0034541    0.1854363
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0172971   -0.1399393    0.1053451
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                  0.0477575   -0.0375436    0.1330587
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                  0.0152763   -0.0737586    0.1043113
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                 -0.0060595   -0.1069853    0.0948663
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0229501   -0.1817800    0.2276803
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0637569   -0.0868234    0.2143372
12-15 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH                     0                    1                  0.0433784   -0.0142835    0.1010403
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                 -0.2592771   -0.5410201    0.0224660
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0784576   -0.1496663   -0.0072489
15-18 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH                     0                    1                  0.2528995    0.0616416    0.4441574
15-18 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA                         0                    1                 -0.0104710   -0.1329451    0.1120030
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                 -0.0457487   -0.1206724    0.0291749
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                 -0.0061329   -0.1448773    0.1326114
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                  0.0622018   -0.0160113    0.1404149
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                  0.0506763   -0.0422956    0.1436482
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                  0.0777946   -0.0219727    0.1775619
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0461434   -0.1418830    0.2341698
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0355927   -0.2049863    0.1338010
15-18 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH                     0                    1                 -0.0389182   -0.0913796    0.0135432
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                  0.2558940   -0.2603686    0.7721567
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0097231   -0.0728068    0.0922530
18-21 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA                         0                    1                  0.0350369   -0.0902269    0.1603007
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                  0.0313751   -0.0384842    0.1012344
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                  0.0512319   -0.1039239    0.2063877
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0505199   -0.0249743    0.1260141
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                 -0.0004194   -0.0840751    0.0832363
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0286374   -0.1326863    0.0754115
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0507412   -0.2106538    0.1091713
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0379857   -0.2187384    0.1427669
18-21 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH                     0                    1                  0.0242387   -0.0269653    0.0754426
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.1065115   -0.2271595    0.0141366
21-24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA                         0                    1                 -0.0254288   -0.1127838    0.0619263
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0670133   -0.1387698    0.0047433
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0413408   -0.0609569    0.1436386
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                 -0.0003298   -0.0685157    0.0678561
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0074444   -0.0968324    0.0819435
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0532135   -0.0534426    0.1598696
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0023985   -0.1328162    0.1280191
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1160278   -0.3001873    0.0681316
21-24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH                     0                    1                  0.0084861   -0.0469787    0.0639508


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0004617   -0.0264724    0.0255490
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                 0.0036728    0.0003530    0.0069926
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0141989   -0.0420900    0.0136923
0-3 months     Keneba         GAMBIA                         1                    NA                -0.0041189   -0.0223464    0.0141085
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.0456407   -0.0962749    0.0049935
0-3 months     MAL-ED         BRAZIL                         1                    NA                -0.0869855   -0.2601961    0.0862250
0-3 months     MAL-ED         INDIA                          1                    NA                -0.1074441   -0.2137243   -0.0011640
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.1968973    0.0792772    0.3145173
0-3 months     MAL-ED         PERU                           1                    NA                 0.0088857   -0.1189579    0.1367293
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0729917   -0.2806819    0.1346984
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2152340   -0.3757821   -0.0546859
0-3 months     PROVIDE        BANGLADESH                     1                    NA                 0.0017818   -0.0239195    0.0274832
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.0172592   -0.0279700   -0.0065484
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0084875   -0.0264554    0.0094804
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0027153   -0.0065848    0.0011543
3-6 months     Keneba         GAMBIA                         1                    NA                -0.0073316   -0.0214539    0.0067907
3-6 months     MAL-ED         BANGLADESH                     1                    NA                 0.0192152   -0.0199678    0.0583982
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0925547   -0.0285398    0.2136493
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0231696   -0.0913133    0.0449740
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.1011593    0.0169895    0.1853290
3-6 months     MAL-ED         PERU                           1                    NA                -0.0675458   -0.1835545    0.0484630
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.1723669   -0.3665862    0.0218525
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0319209   -0.1143717    0.1782134
3-6 months     PROVIDE        BANGLADESH                     1                    NA                -0.0093007   -0.0323525    0.0137512
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0091629   -0.0111747    0.0295005
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0009989   -0.0181436    0.0161459
6-9 months     Keneba         GAMBIA                         1                    NA                -0.0037124   -0.0222049    0.0147801
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0083338   -0.0386460    0.0219784
6-9 months     MAL-ED         BRAZIL                         1                    NA                -0.0156482   -0.1593416    0.1280452
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0214102   -0.0308340    0.0736544
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0116199   -0.0567812    0.0800210
6-9 months     MAL-ED         PERU                           1                    NA                -0.0323102   -0.1282981    0.0636777
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.2207711    0.0501778    0.3913644
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1033860   -0.2572609    0.0504888
6-9 months     PROVIDE        BANGLADESH                     1                    NA                 0.0091300   -0.0075437    0.0258036
6-9 months     SAS-CompFeed   INDIA                          1                    NA                -0.0008870   -0.0169575    0.0151834
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0185382    0.0037342    0.0333422
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0079425   -0.0260688    0.0419538
9-12 months    Keneba         GAMBIA                         1                    NA                 0.0034628   -0.0101513    0.0170770
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0004507   -0.0279419    0.0288433
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0536105   -0.1646238    0.0574029
9-12 months    MAL-ED         INDIA                          1                    NA                 0.0508461    0.0115210    0.0901713
9-12 months    MAL-ED         NEPAL                          1                    NA                 0.0517345   -0.0122969    0.1157660
9-12 months    MAL-ED         PERU                           1                    NA                 0.0200883   -0.0749532    0.1151298
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.1371678   -0.3676956    0.0933600
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0807684   -0.0720910    0.2336277
9-12 months    PROVIDE        BANGLADESH                     1                    NA                 0.0174643    0.0000112    0.0349173
9-12 months    SAS-CompFeed   INDIA                          1                    NA                 0.0063982   -0.0030811    0.0158775
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0038203   -0.0172131    0.0095726
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0077041   -0.0156519    0.0310601
12-15 months   Keneba         GAMBIA                         1                    NA                -0.0093505   -0.0193843    0.0006834
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0353155    0.0038946    0.0667365
12-15 months   MAL-ED         BRAZIL                         1                    NA                -0.0130127   -0.0950833    0.0690579
12-15 months   MAL-ED         INDIA                          1                    NA                 0.0271962   -0.0156267    0.0700191
12-15 months   MAL-ED         NEPAL                          1                    NA                 0.0145366   -0.0480419    0.0771152
12-15 months   MAL-ED         PERU                           1                    NA                -0.0040934   -0.0827840    0.0745973
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0211317   -0.1652236    0.2074870
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0297556   -0.0912319    0.1507431
12-15 months   PROVIDE        BANGLADESH                     1                    NA                 0.0136714   -0.0033099    0.0306527
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.0069089   -0.0163630    0.0025452
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0144455   -0.0261334   -0.0027576
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0160399   -0.0092165    0.0412963
15-18 months   Keneba         GAMBIA                         1                    NA                -0.0023903   -0.0157295    0.0109489
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0146561   -0.0402707    0.0109586
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0029394   -0.0968544    0.0909756
15-18 months   MAL-ED         INDIA                          1                    NA                 0.0271829   -0.0120194    0.0663852
15-18 months   MAL-ED         NEPAL                          1                    NA                 0.0326016   -0.0328367    0.0980399
15-18 months   MAL-ED         PERU                           1                    NA                 0.0623434   -0.0141057    0.1387924
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0434742   -0.1285977    0.2155462
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0297975   -0.1658711    0.1062760
15-18 months   PROVIDE        BANGLADESH                     1                    NA                -0.0087780   -0.0238369    0.0062810
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0039620   -0.0117595    0.0196835
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0056799   -0.0073003    0.0186601
18-21 months   Keneba         GAMBIA                         1                    NA                 0.0033082   -0.0104714    0.0170878
18-21 months   MAL-ED         BANGLADESH                     1                    NA                 0.0064210   -0.0174655    0.0303076
18-21 months   MAL-ED         BRAZIL                         1                    NA                 0.0294455   -0.0719736    0.1308647
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0244337   -0.0136289    0.0624962
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0004331   -0.0589637    0.0580975
18-21 months   MAL-ED         PERU                           1                    NA                -0.0201281   -0.0998569    0.0596007
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0447614   -0.1924045    0.1028817
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0326597   -0.1764436    0.1111242
18-21 months   PROVIDE        BANGLADESH                     1                    NA                 0.0074774   -0.0074973    0.0224522
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0167961   -0.0353021    0.0017099
21-24 months   Keneba         GAMBIA                         1                    NA                -0.0019517   -0.0106103    0.0067070
21-24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0277647   -0.0531894   -0.0023400
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0283529   -0.0393520    0.0960578
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0003400   -0.0344042    0.0350842
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0003227   -0.0624763    0.0618310
21-24 months   MAL-ED         PERU                           1                    NA                 0.0431789   -0.0397298    0.1260877
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0035768   -0.1238081    0.1166545
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0887579   -0.2350616    0.0575457
21-24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0027304   -0.0132518    0.0187126
