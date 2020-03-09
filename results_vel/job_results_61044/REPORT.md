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
![](/tmp/116c47d1-9ffa-4dc6-944e-daded1f23125/8674234e-2936-41ba-8897-78f32e596259/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/116c47d1-9ffa-4dc6-944e-daded1f23125/8674234e-2936-41ba-8897-78f32e596259/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/116c47d1-9ffa-4dc6-944e-daded1f23125/8674234e-2936-41ba-8897-78f32e596259/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0377508   -0.0666397   -0.0088619
0-3 months     GMS-Nepal      NEPAL                          0                    NA                -0.0310994   -0.0962153    0.0340165
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                 0.0735325    0.0671387    0.0799263
0-3 months     JiVitA-3       BANGLADESH                     0                    NA                 0.0881085    0.0717105    0.1045066
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                 0.1176706    0.0712727    0.1640685
0-3 months     JiVitA-4       BANGLADESH                     0                    NA                 0.1081213    0.0093592    0.2068835
0-3 months     Keneba         GAMBIA                         1                    NA                -0.2819405   -0.3091456   -0.2547354
0-3 months     Keneba         GAMBIA                         0                    NA                -0.3149889   -0.3853980   -0.2445798
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.1059201   -0.1471493   -0.0646908
0-3 months     MAL-ED         BANGLADESH                     0                    NA                -0.1730179   -0.2286594   -0.1173763
0-3 months     MAL-ED         BRAZIL                         1                    NA                 0.1700391    0.0672650    0.2728131
0-3 months     MAL-ED         BRAZIL                         0                    NA                 0.1246149    0.0491519    0.2000778
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0169454   -0.1007189    0.0668281
0-3 months     MAL-ED         INDIA                          0                    NA                -0.0981903   -0.1705852   -0.0257953
0-3 months     MAL-ED         NEPAL                          1                    NA                -0.0222942   -0.0736014    0.0290129
0-3 months     MAL-ED         NEPAL                          0                    NA                 0.1038345    0.0426716    0.1649974
0-3 months     MAL-ED         PERU                           1                    NA                -0.2585250   -0.3301929   -0.1868572
0-3 months     MAL-ED         PERU                           0                    NA                -0.2626224   -0.3021038   -0.2231410
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.1242209   -0.2425458   -0.0058960
0-3 months     MAL-ED         SOUTH AFRICA                   0                    NA                -0.1743503   -0.2287101   -0.1199905
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0411815   -0.1326381    0.0502750
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1823272   -0.2290136   -0.1356407
0-3 months     PROVIDE        BANGLADESH                     1                    NA                -0.1830075   -0.2024266   -0.1635884
0-3 months     PROVIDE        BANGLADESH                     0                    NA                -0.1972491   -0.2330638   -0.1614345
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.1257104   -0.1530267   -0.0983942
0-3 months     SAS-CompFeed   INDIA                          0                    NA                -0.3105682   -0.3875824   -0.2335540
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.1547915   -0.1762122   -0.1333708
3-6 months     GMS-Nepal      NEPAL                          0                    NA                -0.1748161   -0.2237920   -0.1258401
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0037870   -0.0103350    0.0027610
3-6 months     JiVitA-3       BANGLADESH                     0                    NA                -0.0192875   -0.0388874    0.0003125
3-6 months     Keneba         GAMBIA                         1                    NA                -0.0139497   -0.0345652    0.0066658
3-6 months     Keneba         GAMBIA                         0                    NA                -0.0439540   -0.0979871    0.0100791
3-6 months     MAL-ED         BANGLADESH                     1                    NA                -0.0317491   -0.0603991   -0.0030990
3-6 months     MAL-ED         BANGLADESH                     0                    NA                 0.0041476   -0.0382606    0.0465559
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0227662   -0.0484458    0.0939783
3-6 months     MAL-ED         BRAZIL                         0                    NA                 0.0848461    0.0373304    0.1323618
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0430275   -0.0884842    0.0024292
3-6 months     MAL-ED         INDIA                          0                    NA                -0.0493538   -0.0952734   -0.0034342
3-6 months     MAL-ED         NEPAL                          1                    NA                -0.0740922   -0.1199702   -0.0282141
3-6 months     MAL-ED         NEPAL                          0                    NA                -0.0060614   -0.0382652    0.0261423
3-6 months     MAL-ED         PERU                           1                    NA                 0.0477025   -0.0107801    0.1061850
3-6 months     MAL-ED         PERU                           0                    NA                 0.0182922   -0.0185413    0.0551256
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0851647   -0.0060621    0.1763915
3-6 months     MAL-ED         SOUTH AFRICA                   0                    NA                -0.0122111   -0.0540210    0.0295987
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0927219   -0.1696699   -0.0157738
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0645531   -0.1015158   -0.0275905
3-6 months     PROVIDE        BANGLADESH                     1                    NA                -0.0204962   -0.0385330   -0.0024594
3-6 months     PROVIDE        BANGLADESH                     0                    NA                -0.0425099   -0.0746723   -0.0103474
3-6 months     SAS-CompFeed   INDIA                          1                    NA                -0.0398525   -0.0752492   -0.0044558
3-6 months     SAS-CompFeed   INDIA                          0                    NA                 0.0480716   -0.1204917    0.2166348
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0448620   -0.0686060   -0.0211179
6-9 months     GMS-Nepal      NEPAL                          0                    NA                -0.0510077   -0.0896210   -0.0123945
6-9 months     Keneba         GAMBIA                         1                    NA                -0.0137572   -0.0397877    0.0122733
6-9 months     Keneba         GAMBIA                         0                    NA                -0.0270510   -0.1001972    0.0460953
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0700387   -0.0922051   -0.0478722
6-9 months     MAL-ED         BANGLADESH                     0                    NA                -0.0818449   -0.1114969   -0.0521928
6-9 months     MAL-ED         BRAZIL                         1                    NA                 0.0081426   -0.0745226    0.0908077
6-9 months     MAL-ED         BRAZIL                         0                    NA                 0.0088529   -0.0306936    0.0483993
6-9 months     MAL-ED         INDIA                          1                    NA                -0.0812474   -0.1160790   -0.0464159
6-9 months     MAL-ED         INDIA                          0                    NA                -0.0643048   -0.0966568   -0.0319527
6-9 months     MAL-ED         NEPAL                          1                    NA                -0.0350901   -0.0698180   -0.0003621
6-9 months     MAL-ED         NEPAL                          0                    NA                -0.0355800   -0.0595972   -0.0115628
6-9 months     MAL-ED         PERU                           1                    NA                -0.0118175   -0.0561850    0.0325500
6-9 months     MAL-ED         PERU                           0                    NA                -0.0372873   -0.0657745   -0.0088001
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0221837   -0.1116610    0.0672936
6-9 months     MAL-ED         SOUTH AFRICA                   0                    NA                -0.0036670   -0.0347222    0.0273882
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0992334   -0.1849079   -0.0135589
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0982241   -0.1354887   -0.0609594
6-9 months     PROVIDE        BANGLADESH                     1                    NA                -0.0650480   -0.0777243   -0.0523717
6-9 months     PROVIDE        BANGLADESH                     0                    NA                -0.0534499   -0.0741703   -0.0327296
6-9 months     SAS-CompFeed   INDIA                          1                    NA                -0.0847370   -0.1219955   -0.0474784
6-9 months     SAS-CompFeed   INDIA                          0                    NA                -0.1340104   -0.2940868    0.0260659
9-12 months    GMS-Nepal      NEPAL                          1                    NA                -0.0875332   -0.1061872   -0.0688792
9-12 months    GMS-Nepal      NEPAL                          0                    NA                -0.0371635   -0.0672515   -0.0070756
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                -0.0517729   -0.0885052   -0.0150405
9-12 months    JiVitA-4       BANGLADESH                     0                    NA                 0.0493031   -0.1451400    0.2437461
9-12 months    Keneba         GAMBIA                         1                    NA                -0.1019034   -0.1217261   -0.0820808
9-12 months    Keneba         GAMBIA                         0                    NA                -0.0893331   -0.1396247   -0.0390415
9-12 months    MAL-ED         BANGLADESH                     1                    NA                -0.0862275   -0.1066684   -0.0657867
9-12 months    MAL-ED         BANGLADESH                     0                    NA                -0.0850250   -0.1118372   -0.0582129
9-12 months    MAL-ED         BRAZIL                         1                    NA                 0.0041540   -0.0526026    0.0609106
9-12 months    MAL-ED         BRAZIL                         0                    NA                 0.0044421   -0.0372978    0.0461821
9-12 months    MAL-ED         INDIA                          1                    NA                -0.1162009   -0.1382856   -0.0941162
9-12 months    MAL-ED         INDIA                          0                    NA                -0.0774366   -0.1011262   -0.0537470
9-12 months    MAL-ED         NEPAL                          1                    NA                -0.0778465   -0.1104857   -0.0452074
9-12 months    MAL-ED         NEPAL                          0                    NA                -0.0549817   -0.0755961   -0.0343674
9-12 months    MAL-ED         PERU                           1                    NA                -0.0505796   -0.0981284   -0.0030308
9-12 months    MAL-ED         PERU                           0                    NA                -0.0386334   -0.0630748   -0.0141920
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0359149   -0.1379382    0.0661084
9-12 months    MAL-ED         SOUTH AFRICA                   0                    NA                -0.0982301   -0.1263244   -0.0701358
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1778380   -0.2392904   -0.1163855
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1460505   -0.1882502   -0.1038509
9-12 months    PROVIDE        BANGLADESH                     1                    NA                -0.0698094   -0.0825204   -0.0570984
9-12 months    PROVIDE        BANGLADESH                     0                    NA                -0.0481789   -0.0690895   -0.0272684
9-12 months    SAS-CompFeed   INDIA                          1                    NA                -0.0907751   -0.1204583   -0.0610919
9-12 months    SAS-CompFeed   INDIA                          0                    NA                 0.0498786   -0.0587520    0.1585093
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0688201   -0.0800727   -0.0575675
12-15 months   GMS-Nepal      NEPAL                          0                    NA                -0.0755179   -0.1076529   -0.0433829
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0294326   -0.0565426   -0.0023226
12-15 months   JiVitA-4       BANGLADESH                     0                    NA                 0.1348599    0.0462715    0.2234482
12-15 months   Keneba         GAMBIA                         1                    NA                -0.0452703   -0.0587642   -0.0317764
12-15 months   Keneba         GAMBIA                         0                    NA                -0.0828484   -0.1149975   -0.0506992
12-15 months   MAL-ED         BANGLADESH                     1                    NA                -0.0673019   -0.0857078   -0.0488959
12-15 months   MAL-ED         BANGLADESH                     0                    NA                -0.0282427   -0.0581963    0.0017108
12-15 months   MAL-ED         BRAZIL                         1                    NA                 0.0021549   -0.0354554    0.0397652
12-15 months   MAL-ED         BRAZIL                         0                    NA                 0.0015037   -0.0283769    0.0313844
12-15 months   MAL-ED         INDIA                          1                    NA                -0.0699309   -0.0939502   -0.0459117
12-15 months   MAL-ED         INDIA                          0                    NA                -0.0522219   -0.0750481   -0.0293956
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0557001   -0.0839226   -0.0274776
12-15 months   MAL-ED         NEPAL                          0                    NA                -0.0586871   -0.0779011   -0.0394731
12-15 months   MAL-ED         PERU                           1                    NA                -0.0643957   -0.0982409   -0.0305506
12-15 months   MAL-ED         PERU                           0                    NA                -0.0668898   -0.0878402   -0.0459393
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0122552   -0.0857036    0.0611931
12-15 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0582260   -0.0831936   -0.0332583
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1093641   -0.1588590   -0.0598692
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0577690   -0.0891185   -0.0264196
12-15 months   PROVIDE        BANGLADESH                     1                    NA                -0.0464443   -0.0581354   -0.0347532
12-15 months   PROVIDE        BANGLADESH                     0                    NA                -0.0283071   -0.0473627   -0.0092515
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.0781898   -0.1071019   -0.0492777
12-15 months   SAS-CompFeed   INDIA                          0                    NA                -0.1559999   -0.2687769   -0.0432229
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0574395   -0.0727748   -0.0421041
15-18 months   GMS-Nepal      NEPAL                          0                    NA                -0.0834498   -0.1039593   -0.0629404
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                -0.0068216   -0.0358783    0.0222352
15-18 months   JiVitA-4       BANGLADESH                     0                    NA                 0.0993087    0.0327741    0.1658433
15-18 months   Keneba         GAMBIA                         1                    NA                -0.0302581   -0.0435919   -0.0169243
15-18 months   Keneba         GAMBIA                         0                    NA                -0.0312682   -0.0723126    0.0097763
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0413819   -0.0593282   -0.0234355
15-18 months   MAL-ED         BANGLADESH                     0                    NA                -0.0556998   -0.0778911   -0.0335085
15-18 months   MAL-ED         BRAZIL                         1                    NA                -0.0300845   -0.0671602    0.0069912
15-18 months   MAL-ED         BRAZIL                         0                    NA                -0.0287005   -0.0567582   -0.0006428
15-18 months   MAL-ED         INDIA                          1                    NA                -0.0435437   -0.0620315   -0.0250559
15-18 months   MAL-ED         INDIA                          0                    NA                -0.0277520   -0.0472628   -0.0082413
15-18 months   MAL-ED         NEPAL                          1                    NA                -0.0655725   -0.0939589   -0.0371860
15-18 months   MAL-ED         NEPAL                          0                    NA                -0.0495997   -0.0682446   -0.0309549
15-18 months   MAL-ED         PERU                           1                    NA                -0.0544425   -0.0862578   -0.0226271
15-18 months   MAL-ED         PERU                           0                    NA                -0.0309557   -0.0488164   -0.0130949
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0459310   -0.1194135    0.0275515
15-18 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0287538   -0.0488857   -0.0086219
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0843348   -0.1398928   -0.0287767
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0945424   -0.1212490   -0.0678359
15-18 months   PROVIDE        BANGLADESH                     1                    NA                -0.0335271   -0.0438133   -0.0232409
15-18 months   PROVIDE        BANGLADESH                     0                    NA                -0.0476575   -0.0645186   -0.0307964
15-18 months   SAS-CompFeed   INDIA                          1                    NA                -0.0172802   -0.0379484    0.0033881
15-18 months   SAS-CompFeed   INDIA                          0                    NA                 0.0618751   -0.1198771    0.2436273
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0178066    0.0014895    0.0341238
18-21 months   GMS-Nepal      NEPAL                          0                    NA                 0.0270151   -0.0001937    0.0542238
18-21 months   Keneba         GAMBIA                         1                    NA                -0.0233791   -0.0371535   -0.0096047
18-21 months   Keneba         GAMBIA                         0                    NA                -0.0074437   -0.0482425    0.0333550
18-21 months   MAL-ED         BANGLADESH                     1                    NA                -0.0188161   -0.0347324   -0.0028998
18-21 months   MAL-ED         BANGLADESH                     0                    NA                -0.0102778   -0.0289310    0.0083754
18-21 months   MAL-ED         BRAZIL                         1                    NA                -0.0289066   -0.0715431    0.0137300
18-21 months   MAL-ED         BRAZIL                         0                    NA                -0.0111742   -0.0412887    0.0189402
18-21 months   MAL-ED         INDIA                          1                    NA                -0.0022675   -0.0194053    0.0148703
18-21 months   MAL-ED         INDIA                          0                    NA                 0.0108634   -0.0064876    0.0282143
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0250961   -0.0482221   -0.0019700
18-21 months   MAL-ED         NEPAL                          0                    NA                -0.0287319   -0.0451755   -0.0122883
18-21 months   MAL-ED         PERU                           1                    NA                 0.0058650   -0.0281676    0.0398976
18-21 months   MAL-ED         PERU                           0                    NA                -0.0115128   -0.0295355    0.0065100
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0032156   -0.0550710    0.0615023
18-21 months   MAL-ED         SOUTH AFRICA                   0                    NA                -0.0341508   -0.0550075   -0.0132940
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0058939   -0.0537478    0.0655357
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0320421   -0.0597025   -0.0043816
18-21 months   PROVIDE        BANGLADESH                     1                    NA                -0.0125896   -0.0224507   -0.0027284
18-21 months   PROVIDE        BANGLADESH                     0                    NA                -0.0023182   -0.0164532    0.0118168
21-24 months   GMS-Nepal      NEPAL                          1                    NA                 0.0510763    0.0310743    0.0710784
21-24 months   GMS-Nepal      NEPAL                          0                    NA                -0.0147233   -0.0495359    0.0200894
21-24 months   Keneba         GAMBIA                         1                    NA                 0.0145989    0.0017332    0.0274645
21-24 months   Keneba         GAMBIA                         0                    NA                 0.0085872   -0.0200917    0.0372660
21-24 months   MAL-ED         BANGLADESH                     1                    NA                 0.0258448    0.0099258    0.0417638
21-24 months   MAL-ED         BANGLADESH                     0                    NA                 0.0161191   -0.0030391    0.0352773
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0090087   -0.0187234    0.0367409
21-24 months   MAL-ED         BRAZIL                         0                    NA                 0.0172247   -0.0042283    0.0386778
21-24 months   MAL-ED         INDIA                          1                    NA                 0.0344348    0.0182047    0.0506648
21-24 months   MAL-ED         INDIA                          0                    NA                 0.0288730    0.0119621    0.0457839
21-24 months   MAL-ED         NEPAL                          1                    NA                 0.0177009   -0.0064732    0.0418750
21-24 months   MAL-ED         NEPAL                          0                    NA                 0.0029439   -0.0144299    0.0203177
21-24 months   MAL-ED         PERU                           1                    NA                 0.0376607    0.0045465    0.0707748
21-24 months   MAL-ED         PERU                           0                    NA                 0.0611299    0.0427477    0.0795122
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0361715   -0.0056559    0.0779989
21-24 months   MAL-ED         SOUTH AFRICA                   0                    NA                 0.0466498    0.0281641    0.0651354
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0108590   -0.0323227    0.0540406
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0050564   -0.0230529    0.0331658
21-24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0446841    0.0342344    0.0551338
21-24 months   PROVIDE        BANGLADESH                     0                    NA                 0.0495052    0.0335908    0.0654197


### Parameter: E(Y)


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0389250   -0.0654744   -0.0123756
0-3 months     JiVitA-3       BANGLADESH                     NA                   NA                 0.0748525    0.0686630    0.0810419
0-3 months     JiVitA-4       BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
0-3 months     Keneba         GAMBIA                         NA                   NA                -0.2858165   -0.3111208   -0.2605122
0-3 months     MAL-ED         BANGLADESH                     NA                   NA                -0.1272271   -0.1614593   -0.0929949
0-3 months     MAL-ED         BRAZIL                         NA                   NA                 0.1488245    0.0885499    0.2090991
0-3 months     MAL-ED         INDIA                          NA                   NA                -0.0545690   -0.1093806    0.0002426
0-3 months     MAL-ED         NEPAL                          NA                   NA                 0.0510100    0.0061541    0.0958660
0-3 months     MAL-ED         PERU                           NA                   NA                -0.2631203   -0.2975785   -0.2286621
0-3 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1701813   -0.2201854   -0.1201772
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1481092   -0.1901169   -0.1061015
0-3 months     PROVIDE        BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     SAS-CompFeed   INDIA                          NA                   NA                -0.1347598   -0.1669848   -0.1025348
3-6 months     GMS-Nepal      NEPAL                          NA                   NA                -0.1580566   -0.1776900   -0.1384232
3-6 months     JiVitA-3       BANGLADESH                     NA                   NA                -0.0050744   -0.0113651    0.0012163
3-6 months     Keneba         GAMBIA                         NA                   NA                -0.0175712   -0.0368273    0.0016849
3-6 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0185754   -0.0420362    0.0048853
3-6 months     MAL-ED         BRAZIL                         NA                   NA                 0.0650837    0.0260851    0.1040822
3-6 months     MAL-ED         INDIA                          NA                   NA                -0.0434351   -0.0750382   -0.0118321
3-6 months     MAL-ED         NEPAL                          NA                   NA                -0.0255014   -0.0523456    0.0013427
3-6 months     MAL-ED         PERU                           NA                   NA                 0.0252665   -0.0061992    0.0567322
3-6 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0065980   -0.0455003    0.0323043
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0668448   -0.1004432   -0.0332465
3-6 months     PROVIDE        BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0357951   -0.0659472   -0.0056430
6-9 months     GMS-Nepal      NEPAL                          NA                   NA                -0.0454089   -0.0661443   -0.0246735
6-9 months     Keneba         GAMBIA                         NA                   NA                -0.0155849   -0.0397472    0.0085773
6-9 months     MAL-ED         BANGLADESH                     NA                   NA                -0.0719928   -0.0896446   -0.0543410
6-9 months     MAL-ED         BRAZIL                         NA                   NA                 0.0070906   -0.0301925    0.0443736
6-9 months     MAL-ED         INDIA                          NA                   NA                -0.0730513   -0.0967576   -0.0493449
6-9 months     MAL-ED         NEPAL                          NA                   NA                -0.0334124   -0.0530149   -0.0138099
6-9 months     MAL-ED         PERU                           NA                   NA                -0.0344967   -0.0587887   -0.0102046
6-9 months     MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0137350   -0.0427808    0.0153108
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0947719   -0.1279445   -0.0615994
6-9 months     PROVIDE        BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed   INDIA                          NA                   NA                -0.0842147   -0.1210357   -0.0473936
9-12 months    GMS-Nepal      NEPAL                          NA                   NA                -0.0793581   -0.0958225   -0.0628937
9-12 months    JiVitA-4       BANGLADESH                     NA                   NA                -0.0463035   -0.0812128   -0.0113943
9-12 months    Keneba         GAMBIA                         NA                   NA                -0.0997645   -0.1180627   -0.0814663
9-12 months    MAL-ED         BANGLADESH                     NA                   NA                -0.0853635   -0.1017180   -0.0690090
9-12 months    MAL-ED         BRAZIL                         NA                   NA                 0.0033209   -0.0300480    0.0366898
9-12 months    MAL-ED         INDIA                          NA                   NA                -0.0973168   -0.1135502   -0.0810834
9-12 months    MAL-ED         NEPAL                          NA                   NA                -0.0634351   -0.0807824   -0.0460878
9-12 months    MAL-ED         PERU                           NA                   NA                -0.0414622   -0.0630765   -0.0198479
9-12 months    MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0920764   -0.1191029   -0.0650499
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1543757   -0.1899833   -0.1187681
9-12 months    PROVIDE        BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed   INDIA                          NA                   NA                -0.0874131   -0.1167860   -0.0580402
12-15 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0698643   -0.0805537   -0.0591748
12-15 months   JiVitA-4       BANGLADESH                     NA                   NA                -0.0245445   -0.0504325    0.0013435
12-15 months   Keneba         GAMBIA                         NA                   NA                -0.0491320   -0.0616698   -0.0365941
12-15 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0541395   -0.0699573   -0.0383217
12-15 months   MAL-ED         BRAZIL                         NA                   NA                -0.0004235   -0.0234370    0.0225900
12-15 months   MAL-ED         INDIA                          NA                   NA                -0.0593506   -0.0758306   -0.0428707
12-15 months   MAL-ED         NEPAL                          NA                   NA                -0.0574001   -0.0732076   -0.0415925
12-15 months   MAL-ED         PERU                           NA                   NA                -0.0661802   -0.0840222   -0.0483383
12-15 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0589478   -0.0825397   -0.0353559
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0678133   -0.0945748   -0.0410518
12-15 months   PROVIDE        BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0801725   -0.1084262   -0.0519187
15-18 months   GMS-Nepal      NEPAL                          NA                   NA                -0.0623706   -0.0756949   -0.0490463
15-18 months   JiVitA-4       BANGLADESH                     NA                   NA                 0.0002451   -0.0264873    0.0269774
15-18 months   Keneba         GAMBIA                         NA                   NA                -0.0300972   -0.0427822   -0.0174122
15-18 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0458018   -0.0595013   -0.0321023
15-18 months   MAL-ED         BRAZIL                         NA                   NA                -0.0272762   -0.0493683   -0.0051840
15-18 months   MAL-ED         INDIA                          NA                   NA                -0.0347219   -0.0482094   -0.0212344
15-18 months   MAL-ED         NEPAL                          NA                   NA                -0.0558396   -0.0714014   -0.0402779
15-18 months   MAL-ED         PERU                           NA                   NA                -0.0366273   -0.0521417   -0.0211130
15-18 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0303264   -0.0494996   -0.0111532
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0885708   -0.1125745   -0.0645671
15-18 months   PROVIDE        BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed   INDIA                          NA                   NA                -0.0159336   -0.0379140    0.0060468
18-21 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0192890    0.0050754    0.0335026
18-21 months   Keneba         GAMBIA                         NA                   NA                -0.0215601   -0.0346304   -0.0084897
18-21 months   MAL-ED         BANGLADESH                     NA                   NA                -0.0156920   -0.0275555   -0.0038285
18-21 months   MAL-ED         BRAZIL                         NA                   NA                -0.0173059   -0.0423234    0.0077117
18-21 months   MAL-ED         INDIA                          NA                   NA                 0.0035076   -0.0086867    0.0157020
18-21 months   MAL-ED         NEPAL                          NA                   NA                -0.0277114   -0.0411503   -0.0142726
18-21 months   MAL-ED         PERU                           NA                   NA                -0.0075674   -0.0228614    0.0077265
18-21 months   MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0319118   -0.0515078   -0.0123157
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0280548   -0.0527783   -0.0033314
18-21 months   PROVIDE        BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
21-24 months   GMS-Nepal      NEPAL                          NA                   NA                 0.0458107    0.0279350    0.0636865
21-24 months   Keneba         GAMBIA                         NA                   NA                 0.0143816    0.0024808    0.0262823
21-24 months   MAL-ED         BANGLADESH                     NA                   NA                 0.0244279    0.0120979    0.0367579
21-24 months   MAL-ED         BRAZIL                         NA                   NA                 0.0141891   -0.0024092    0.0307875
21-24 months   MAL-ED         INDIA                          NA                   NA                 0.0316867    0.0200407    0.0433327
21-24 months   MAL-ED         NEPAL                          NA                   NA                 0.0073452   -0.0067007    0.0213911
21-24 months   MAL-ED         PERU                           NA                   NA                 0.0575837    0.0421321    0.0730353
21-24 months   MAL-ED         SOUTH AFRICA                   NA                   NA                 0.0454561    0.0281790    0.0627333
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0106677   -0.0132987    0.0346340
21-24 months   PROVIDE        BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812


### Parameter: ATE


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal      NEPAL                          0                    1                  0.0066514   -0.0642054    0.0775081
0-3 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3       BANGLADESH                     0                    1                  0.0145761   -0.0022386    0.0313907
0-3 months     JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4       BANGLADESH                     0                    1                 -0.0095493   -0.1185711    0.0994725
0-3 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     Keneba         GAMBIA                         0                    1                 -0.0330484   -0.1080359    0.0419391
0-3 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BANGLADESH                     0                    1                 -0.0670978   -0.1345200    0.0003244
0-3 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         BRAZIL                         0                    1                 -0.0454242   -0.1749829    0.0841344
0-3 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         INDIA                          0                    1                 -0.0812449   -0.1934007    0.0309109
0-3 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         NEPAL                          0                    1                  0.1261287    0.0464170    0.2058405
0-3 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         PERU                           0                    1                 -0.0040974   -0.0860877    0.0778929
0-3 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0501294   -0.1817728    0.0815140
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.1411457   -0.2439120   -0.0383793
0-3 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE        BANGLADESH                     0                    1                 -0.0142416   -0.0547931    0.0263098
0-3 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed   INDIA                          0                    1                 -0.1848578   -0.2573389   -0.1123766
3-6 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal      NEPAL                          0                    1                 -0.0200245   -0.0733537    0.0333046
3-6 months     JiVitA-3       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3       BANGLADESH                     0                    1                 -0.0155005   -0.0358906    0.0048897
3-6 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     Keneba         GAMBIA                         0                    1                 -0.0300043   -0.0877729    0.0277643
3-6 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BANGLADESH                     0                    1                  0.0358967   -0.0155815    0.0873748
3-6 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         BRAZIL                         0                    1                  0.0620799   -0.0234319    0.1475917
3-6 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         INDIA                          0                    1                 -0.0063263   -0.0720481    0.0593954
3-6 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         NEPAL                          0                    1                  0.0680307    0.0122557    0.1238058
3-6 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         PERU                           0                    1                 -0.0294103   -0.0987536    0.0399330
3-6 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         SOUTH AFRICA                   0                    1                 -0.0973758   -0.1979810    0.0032293
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0281687   -0.0561242    0.1124616
3-6 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE        BANGLADESH                     0                    1                 -0.0220136   -0.0587072    0.0146799
3-6 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed   INDIA                          0                    1                  0.0879241   -0.0966906    0.2725387
6-9 months     GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal      NEPAL                          0                    1                 -0.0061458   -0.0514710    0.0391795
6-9 months     Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     Keneba         GAMBIA                         0                    1                 -0.0132938   -0.0914428    0.0648553
6-9 months     MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BANGLADESH                     0                    1                 -0.0118062   -0.0490343    0.0254219
6-9 months     MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         BRAZIL                         0                    1                  0.0007103   -0.0916369    0.0930576
6-9 months     MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         INDIA                          0                    1                  0.0169426   -0.0306738    0.0645591
6-9 months     MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         NEPAL                          0                    1                 -0.0004900   -0.0427759    0.0417960
6-9 months     MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         PERU                           0                    1                 -0.0254698   -0.0776865    0.0267470
6-9 months     MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         SOUTH AFRICA                   0                    1                  0.0185167   -0.0769666    0.1140000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0010093   -0.0939635    0.0959821
6-9 months     PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE        BANGLADESH                     0                    1                  0.0115981   -0.0126073    0.0358035
6-9 months     SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed   INDIA                          0                    1                 -0.0492735   -0.2027962    0.1042492
9-12 months    GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal      NEPAL                          0                    1                  0.0503697    0.0151184    0.0856209
9-12 months    JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4       BANGLADESH                     0                    1                  0.1010759   -0.0978862    0.3000380
9-12 months    Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    Keneba         GAMBIA                         0                    1                  0.0125704   -0.0419780    0.0671187
9-12 months    MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BANGLADESH                     0                    1                  0.0012025   -0.0323029    0.0347079
9-12 months    MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         BRAZIL                         0                    1                  0.0002881   -0.0704946    0.0710708
9-12 months    MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         INDIA                          0                    1                  0.0387643    0.0063699    0.0711587
9-12 months    MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         NEPAL                          0                    1                  0.0228648   -0.0157251    0.0614548
9-12 months    MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         PERU                           0                    1                  0.0119463   -0.0415735    0.0654660
9-12 months    MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         SOUTH AFRICA                   0                    1                 -0.0623152   -0.1681960    0.0435656
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0317874   -0.0429816    0.1065564
9-12 months    PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE        BANGLADESH                     0                    1                  0.0216305   -0.0026939    0.0459548
9-12 months    SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed   INDIA                          0                    1                  0.1406537    0.0432942    0.2380132
12-15 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal      NEPAL                          0                    1                 -0.0066978   -0.0407779    0.0273823
12-15 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4       BANGLADESH                     0                    1                  0.1642925    0.0707978    0.2577872
12-15 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   Keneba         GAMBIA                         0                    1                 -0.0375781   -0.0723395   -0.0028166
12-15 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BANGLADESH                     0                    1                  0.0390591    0.0038457    0.0742726
12-15 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         BRAZIL                         0                    1                 -0.0006512   -0.0489933    0.0476909
12-15 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         INDIA                          0                    1                  0.0177091   -0.0157345    0.0511526
12-15 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         NEPAL                          0                    1                 -0.0029870   -0.0369534    0.0309794
12-15 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         PERU                           0                    1                 -0.0024941   -0.0421145    0.0371264
12-15 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0459707   -0.1238356    0.0318941
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                  0.0515950   -0.0071550    0.1103451
12-15 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE        BANGLADESH                     0                    1                  0.0181372   -0.0039889    0.0402633
12-15 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed   INDIA                          0                    1                 -0.0778101   -0.1915481    0.0359279
15-18 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal      NEPAL                          0                    1                 -0.0260103   -0.0516949   -0.0003258
15-18 months   JiVitA-4       BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4       BANGLADESH                     0                    1                  0.1061303    0.0324134    0.1798471
15-18 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   Keneba         GAMBIA                         0                    1                 -0.0010100   -0.0441422    0.0421221
15-18 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BANGLADESH                     0                    1                 -0.0143179   -0.0432196    0.0145837
15-18 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         BRAZIL                         0                    1                  0.0013840   -0.0454399    0.0482080
15-18 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         INDIA                          0                    1                  0.0157917   -0.0113161    0.0428995
15-18 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         NEPAL                          0                    1                  0.0159727   -0.0181893    0.0501347
15-18 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         PERU                           0                    1                  0.0234868   -0.0130570    0.0600306
15-18 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0171772   -0.0590515    0.0934058
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0102077   -0.0718476    0.0514322
15-18 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE        BANGLADESH                     0                    1                 -0.0141304   -0.0339319    0.0056710
15-18 months   SAS-CompFeed   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed   INDIA                          0                    1                  0.0791553   -0.0985243    0.2568349
18-21 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal      NEPAL                          0                    1                  0.0092084   -0.0232497    0.0416665
18-21 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   Keneba         GAMBIA                         0                    1                  0.0159354   -0.0272328    0.0591035
18-21 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BANGLADESH                     0                    1                  0.0085383   -0.0166740    0.0337505
18-21 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         BRAZIL                         0                    1                  0.0177323   -0.0344430    0.0699076
18-21 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         INDIA                          0                    1                  0.0131309   -0.0113823    0.0376441
18-21 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         NEPAL                          0                    1                 -0.0036358   -0.0320468    0.0247751
18-21 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         PERU                           0                    1                 -0.0173778   -0.0574845    0.0227289
18-21 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         SOUTH AFRICA                   0                    1                 -0.0373664   -0.0994555    0.0247227
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0379360   -0.1045543    0.0286823
18-21 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE        BANGLADESH                     0                    1                  0.0102714   -0.0070024    0.0275451
21-24 months   GMS-Nepal      NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal      NEPAL                          0                    1                 -0.0657996   -0.1064398   -0.0251594
21-24 months   Keneba         GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   Keneba         GAMBIA                         0                    1                 -0.0060117   -0.0373617    0.0253383
21-24 months   MAL-ED         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BANGLADESH                     0                    1                 -0.0097257   -0.0346527    0.0152013
21-24 months   MAL-ED         BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         BRAZIL                         0                    1                  0.0082160   -0.0270424    0.0434744
21-24 months   MAL-ED         INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         INDIA                          0                    1                 -0.0055618   -0.0291228    0.0179992
21-24 months   MAL-ED         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         NEPAL                          0                    1                 -0.0147570   -0.0440761    0.0145621
21-24 months   MAL-ED         PERU                           1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         PERU                           0                    1                  0.0234693   -0.0157055    0.0626440
21-24 months   MAL-ED         SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         SOUTH AFRICA                   0                    1                  0.0104782   -0.0352270    0.0561835
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 -0.0058025   -0.0576048    0.0459997
21-24 months   PROVIDE        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE        BANGLADESH                     0                    1                  0.0048211   -0.0143813    0.0240236


### Parameter: PAR


agecat         studyid        country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     GMS-Nepal      NEPAL                          1                    NA                -0.0011742   -0.0132786    0.0109301
0-3 months     JiVitA-3       BANGLADESH                     1                    NA                 0.0013200   -0.0002893    0.0029293
0-3 months     JiVitA-4       BANGLADESH                     1                    NA                -0.0067167   -0.0184152    0.0049819
0-3 months     Keneba         GAMBIA                         1                    NA                -0.0038760   -0.0128078    0.0050559
0-3 months     MAL-ED         BANGLADESH                     1                    NA                -0.0213070   -0.0456268    0.0030127
0-3 months     MAL-ED         BRAZIL                         1                    NA                -0.0212146   -0.1104244    0.0679951
0-3 months     MAL-ED         INDIA                          1                    NA                -0.0376236   -0.0928623    0.0176151
0-3 months     MAL-ED         NEPAL                          1                    NA                 0.0733042    0.0199000    0.1267084
0-3 months     MAL-ED         PERU                           1                    NA                -0.0045953   -0.0689450    0.0597545
0-3 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0459604   -0.1650309    0.0731102
0-3 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1069277   -0.1881829   -0.0256724
0-3 months     PROVIDE        BANGLADESH                     1                    NA                -0.0050327   -0.0170677    0.0070022
0-3 months     SAS-CompFeed   INDIA                          1                    NA                -0.0090494   -0.0146012   -0.0034975
3-6 months     GMS-Nepal      NEPAL                          1                    NA                -0.0032651   -0.0120960    0.0055659
3-6 months     JiVitA-3       BANGLADESH                     1                    NA                -0.0012874   -0.0030779    0.0005031
3-6 months     Keneba         GAMBIA                         1                    NA                -0.0036215   -0.0102987    0.0030557
3-6 months     MAL-ED         BANGLADESH                     1                    NA                 0.0131736   -0.0048784    0.0312256
3-6 months     MAL-ED         BRAZIL                         1                    NA                 0.0423175   -0.0168460    0.1014809
3-6 months     MAL-ED         INDIA                          1                    NA                -0.0004076   -0.0312673    0.0304521
3-6 months     MAL-ED         NEPAL                          1                    NA                 0.0485907    0.0096731    0.0875084
3-6 months     MAL-ED         PERU                           1                    NA                -0.0224360   -0.0756969    0.0308250
3-6 months     MAL-ED         SOUTH AFRICA                   1                    NA                -0.0917627   -0.1834040   -0.0001215
3-6 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0258770   -0.0410342    0.0927883
3-6 months     PROVIDE        BANGLADESH                     1                    NA                -0.0064663   -0.0171766    0.0042440
3-6 months     SAS-CompFeed   INDIA                          1                    NA                 0.0040574   -0.0061054    0.0142202
6-9 months     GMS-Nepal      NEPAL                          1                    NA                -0.0005470   -0.0081516    0.0070577
6-9 months     Keneba         GAMBIA                         1                    NA                -0.0018278   -0.0101146    0.0064591
6-9 months     MAL-ED         BANGLADESH                     1                    NA                -0.0019541   -0.0149774    0.0110692
6-9 months     MAL-ED         BRAZIL                         1                    NA                -0.0010520   -0.0635055    0.0614016
6-9 months     MAL-ED         INDIA                          1                    NA                 0.0081962   -0.0147193    0.0311117
6-9 months     MAL-ED         NEPAL                          1                    NA                 0.0016776   -0.0277741    0.0311293
6-9 months     MAL-ED         PERU                           1                    NA                -0.0226792   -0.0629051    0.0175468
6-9 months     MAL-ED         SOUTH AFRICA                   1                    NA                 0.0084487   -0.0793385    0.0962359
6-9 months     MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0044615   -0.0715115    0.0804344
6-9 months     PROVIDE        BANGLADESH                     1                    NA                 0.0036216   -0.0034389    0.0106821
6-9 months     SAS-CompFeed   INDIA                          1                    NA                 0.0005223   -0.0059728    0.0070174
9-12 months    GMS-Nepal      NEPAL                          1                    NA                 0.0081751    0.0022294    0.0141208
9-12 months    JiVitA-4       BANGLADESH                     1                    NA                 0.0054693   -0.0083287    0.0192674
9-12 months    Keneba         GAMBIA                         1                    NA                 0.0021389   -0.0036031    0.0078809
9-12 months    MAL-ED         BANGLADESH                     1                    NA                 0.0008641   -0.0108151    0.0125432
9-12 months    MAL-ED         BRAZIL                         1                    NA                -0.0008331   -0.0499545    0.0482882
9-12 months    MAL-ED         INDIA                          1                    NA                 0.0188841    0.0028607    0.0349075
9-12 months    MAL-ED         NEPAL                          1                    NA                 0.0144114   -0.0126303    0.0414532
9-12 months    MAL-ED         PERU                           1                    NA                 0.0091174   -0.0324267    0.0506615
9-12 months    MAL-ED         SOUTH AFRICA                   1                    NA                -0.0561615   -0.1520908    0.0397678
9-12 months    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0234623   -0.0362262    0.0831507
9-12 months    PROVIDE        BANGLADESH                     1                    NA                 0.0067624   -0.0004089    0.0139336
9-12 months    SAS-CompFeed   INDIA                          1                    NA                 0.0033620   -0.0001172    0.0068412
12-15 months   GMS-Nepal      NEPAL                          1                    NA                -0.0010442   -0.0061559    0.0040675
12-15 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0048881   -0.0036202    0.0133964
12-15 months   Keneba         GAMBIA                         1                    NA                -0.0038617   -0.0077310    0.0000076
12-15 months   MAL-ED         BANGLADESH                     1                    NA                 0.0131624    0.0011216    0.0252031
12-15 months   MAL-ED         BRAZIL                         1                    NA                -0.0025785   -0.0348824    0.0297255
12-15 months   MAL-ED         INDIA                          1                    NA                 0.0105803   -0.0060353    0.0271959
12-15 months   MAL-ED         NEPAL                          1                    NA                -0.0017000   -0.0255439    0.0221439
12-15 months   MAL-ED         PERU                           1                    NA                -0.0017845   -0.0331315    0.0295624
12-15 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0466926   -0.1176356    0.0242504
12-15 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0415508   -0.0057195    0.0888210
12-15 months   PROVIDE        BANGLADESH                     1                    NA                 0.0055335   -0.0009607    0.0120277
12-15 months   SAS-CompFeed   INDIA                          1                    NA                -0.0019827   -0.0053711    0.0014058
15-18 months   GMS-Nepal      NEPAL                          1                    NA                -0.0049312   -0.0091800   -0.0006823
15-18 months   JiVitA-4       BANGLADESH                     1                    NA                 0.0070667   -0.0017257    0.0158590
15-18 months   Keneba         GAMBIA                         1                    NA                 0.0001609   -0.0045739    0.0048958
15-18 months   MAL-ED         BANGLADESH                     1                    NA                -0.0044199   -0.0142389    0.0053990
15-18 months   MAL-ED         BRAZIL                         1                    NA                 0.0028084   -0.0284882    0.0341050
15-18 months   MAL-ED         INDIA                          1                    NA                 0.0088218   -0.0052081    0.0228517
15-18 months   MAL-ED         NEPAL                          1                    NA                 0.0097328   -0.0142842    0.0337498
15-18 months   MAL-ED         PERU                           1                    NA                 0.0178151   -0.0102510    0.0458812
15-18 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0156046   -0.0547882    0.0859974
15-18 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042361   -0.0536378    0.0451657
15-18 months   PROVIDE        BANGLADESH                     1                    NA                -0.0041166   -0.0097890    0.0015557
15-18 months   SAS-CompFeed   INDIA                          1                    NA                 0.0013465   -0.0042059    0.0068989
18-21 months   GMS-Nepal      NEPAL                          1                    NA                 0.0014824   -0.0032671    0.0062318
18-21 months   Keneba         GAMBIA                         1                    NA                 0.0018190   -0.0031147    0.0067527
18-21 months   MAL-ED         BANGLADESH                     1                    NA                 0.0031241   -0.0056227    0.0118709
18-21 months   MAL-ED         BRAZIL                         1                    NA                 0.0116007   -0.0217304    0.0449318
18-21 months   MAL-ED         INDIA                          1                    NA                 0.0057751   -0.0066003    0.0181506
18-21 months   MAL-ED         NEPAL                          1                    NA                -0.0026154   -0.0223264    0.0170957
18-21 months   MAL-ED         PERU                           1                    NA                -0.0134324   -0.0439881    0.0171233
18-21 months   MAL-ED         SOUTH AFRICA                   1                    NA                -0.0351274   -0.0924092    0.0221544
18-21 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0339488   -0.0876301    0.0197326
18-21 months   PROVIDE        BANGLADESH                     1                    NA                 0.0016497   -0.0035308    0.0068302
21-24 months   GMS-Nepal      NEPAL                          1                    NA                -0.0052656   -0.0119459    0.0014147
21-24 months   Keneba         GAMBIA                         1                    NA                -0.0002173   -0.0032869    0.0028523
21-24 months   MAL-ED         BANGLADESH                     1                    NA                -0.0014169   -0.0101882    0.0073543
21-24 months   MAL-ED         BRAZIL                         1                    NA                 0.0051804   -0.0181595    0.0285204
21-24 months   MAL-ED         INDIA                          1                    NA                -0.0027481   -0.0144384    0.0089422
21-24 months   MAL-ED         NEPAL                          1                    NA                -0.0103557   -0.0308328    0.0101214
21-24 months   MAL-ED         PERU                           1                    NA                 0.0199230   -0.0106570    0.0505031
21-24 months   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0092846   -0.0330444    0.0516137
21-24 months   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0001913   -0.0410788    0.0406962
21-24 months   PROVIDE        BANGLADESH                     1                    NA                 0.0015501   -0.0040031    0.0071033
