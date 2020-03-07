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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid          country                        anywast06    ever_stunted   n_cell      n
---------------------------  ---------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       0       19    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       1      120    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       0        8    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       1      145    292
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                       0       32    168
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                       1      105    168
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                       0        9    168
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                       1       22    168
0-24 months (no birth st.)   CONTENT          PERU                           0                       0      158    195
0-24 months (no birth st.)   CONTENT          PERU                           0                       1       33    195
0-24 months (no birth st.)   CONTENT          PERU                           1                       0        4    195
0-24 months (no birth st.)   CONTENT          PERU                           1                       1        0    195
0-24 months (no birth st.)   EE               PAKISTAN                       0                       0       30    213
0-24 months (no birth st.)   EE               PAKISTAN                       0                       1      105    213
0-24 months (no birth st.)   EE               PAKISTAN                       1                       0       11    213
0-24 months (no birth st.)   EE               PAKISTAN                       1                       1       67    213
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       0      162    576
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       1      179    576
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       0       90    576
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       1      145    576
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                       0      137    223
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                       1       82    223
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                       0        1    223
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                       1        3    223
0-24 months (no birth st.)   IRC              INDIA                          0                       0       52    360
0-24 months (no birth st.)   IRC              INDIA                          0                       1      100    360
0-24 months (no birth st.)   IRC              INDIA                          1                       0       95    360
0-24 months (no birth st.)   IRC              INDIA                          1                       1      113    360
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       0      823   2234
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       1      755   2234
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       0      284   2234
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       1      372   2234
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       0       75    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       1       93    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       0       28    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       1       21    217
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       0      158    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       1       30    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       0       12    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       1        2    202
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       0       58    210
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       1       84    210
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       0       41    210
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       1       27    210
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       0      128    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       1       44    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       0       28    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       1       11    211
0-24 months (no birth st.)   MAL-ED           PERU                           0                       0      112    266
0-24 months (no birth st.)   MAL-ED           PERU                           0                       1      146    266
0-24 months (no birth st.)   MAL-ED           PERU                           1                       0        3    266
0-24 months (no birth st.)   MAL-ED           PERU                           1                       1        5    266
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       0      119    275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       1      124    275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       0       19    275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       1       13    275
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       39    219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      170    219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1    219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        9    219
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       0      306    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       1      168    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       0       89    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       1       70    633
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                       0       56    202
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                       1       71    202
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                       0       41    202
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                       1       34    202
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1358   2235
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      558   2235
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      209   2235
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1      110   2235
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       0       87    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       1       52    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       0       93    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       1       60    292
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                       0      101    168
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                       1       36    168
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                       0       19    168
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                       1       12    168
0-6 months (no birth st.)    CONTENT          PERU                           0                       0      184    195
0-6 months (no birth st.)    CONTENT          PERU                           0                       1        7    195
0-6 months (no birth st.)    CONTENT          PERU                           1                       0        4    195
0-6 months (no birth st.)    CONTENT          PERU                           1                       1        0    195
0-6 months (no birth st.)    EE               PAKISTAN                       0                       0       58    213
0-6 months (no birth st.)    EE               PAKISTAN                       0                       1       77    213
0-6 months (no birth st.)    EE               PAKISTAN                       1                       0       37    213
0-6 months (no birth st.)    EE               PAKISTAN                       1                       1       41    213
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       0      292    576
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       1       49    576
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       0      184    576
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       1       51    576
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                       0      200    223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                       1       19    223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                       0        2    223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                       1        2    223
0-6 months (no birth st.)    IRC              INDIA                          0                       0       92    360
0-6 months (no birth st.)    IRC              INDIA                          0                       1       60    360
0-6 months (no birth st.)    IRC              INDIA                          1                       0      144    360
0-6 months (no birth st.)    IRC              INDIA                          1                       1       64    360
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       0     1225   2234
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       1      353   2234
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       0      470   2234
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       1      186   2234
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       0      130    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       1       38    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       0       40    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       1        9    217
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       0      167    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       1       21    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       0       14    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       1        0    202
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       0      109    210
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       1       33    210
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       0       55    210
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       1       13    210
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       0      161    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       1       11    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       0       36    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       1        3    211
0-6 months (no birth st.)    MAL-ED           PERU                           0                       0      168    266
0-6 months (no birth st.)    MAL-ED           PERU                           0                       1       90    266
0-6 months (no birth st.)    MAL-ED           PERU                           1                       0        6    266
0-6 months (no birth st.)    MAL-ED           PERU                           1                       1        2    266
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       0      172    275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       1       71    275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       0       26    275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       1        6    275
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      147    219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       62    219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        6    219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        4    219
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       0      406    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       1       68    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       0      126    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       1       33    633
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                       0       64    202
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                       1       63    202
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                       0       50    202
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                       1       25    202
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1656   2235
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      260   2235
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      273   2235
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       46   2235
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       0       19    180
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       1       68    180
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       0        8    180
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       1       85    180
6-24 months                  CMIN             BANGLADESH                     0                       0       26    111
6-24 months                  CMIN             BANGLADESH                     0                       1       69    111
6-24 months                  CMIN             BANGLADESH                     1                       0        6    111
6-24 months                  CMIN             BANGLADESH                     1                       1       10    111
6-24 months                  CONTENT          PERU                           0                       0      158    188
6-24 months                  CONTENT          PERU                           0                       1       26    188
6-24 months                  CONTENT          PERU                           1                       0        4    188
6-24 months                  CONTENT          PERU                           1                       1        0    188
6-24 months                  EE               PAKISTAN                       0                       0       28     93
6-24 months                  EE               PAKISTAN                       0                       1       28     93
6-24 months                  EE               PAKISTAN                       1                       0       11     93
6-24 months                  EE               PAKISTAN                       1                       1       26     93
6-24 months                  GMS-Nepal        NEPAL                          0                       0      103    397
6-24 months                  GMS-Nepal        NEPAL                          0                       1      130    397
6-24 months                  GMS-Nepal        NEPAL                          1                       0       70    397
6-24 months                  GMS-Nepal        NEPAL                          1                       1       94    397
6-24 months                  Guatemala BSC    GUATEMALA                      0                       0      110    175
6-24 months                  Guatemala BSC    GUATEMALA                      0                       1       63    175
6-24 months                  Guatemala BSC    GUATEMALA                      1                       0        1    175
6-24 months                  Guatemala BSC    GUATEMALA                      1                       1        1    175
6-24 months                  IRC              INDIA                          0                       0       52    236
6-24 months                  IRC              INDIA                          0                       1       40    236
6-24 months                  IRC              INDIA                          1                       0       95    236
6-24 months                  IRC              INDIA                          1                       1       49    236
6-24 months                  Keneba           GAMBIA                         0                       0      721   1567
6-24 months                  Keneba           GAMBIA                         0                       1      402   1567
6-24 months                  Keneba           GAMBIA                         1                       0      258   1567
6-24 months                  Keneba           GAMBIA                         1                       1      186   1567
6-24 months                  MAL-ED           BANGLADESH                     0                       0       66    158
6-24 months                  MAL-ED           BANGLADESH                     0                       1       55    158
6-24 months                  MAL-ED           BANGLADESH                     1                       0       25    158
6-24 months                  MAL-ED           BANGLADESH                     1                       1       12    158
6-24 months                  MAL-ED           BRAZIL                         0                       0      140    163
6-24 months                  MAL-ED           BRAZIL                         0                       1        9    163
6-24 months                  MAL-ED           BRAZIL                         1                       0       12    163
6-24 months                  MAL-ED           BRAZIL                         1                       1        2    163
6-24 months                  MAL-ED           INDIA                          0                       0       51    154
6-24 months                  MAL-ED           INDIA                          0                       1       51    154
6-24 months                  MAL-ED           INDIA                          1                       0       38    154
6-24 months                  MAL-ED           INDIA                          1                       1       14    154
6-24 months                  MAL-ED           NEPAL                          0                       0      127    194
6-24 months                  MAL-ED           NEPAL                          0                       1       33    194
6-24 months                  MAL-ED           NEPAL                          1                       0       26    194
6-24 months                  MAL-ED           NEPAL                          1                       1        8    194
6-24 months                  MAL-ED           PERU                           0                       0       87    149
6-24 months                  MAL-ED           PERU                           0                       1       56    149
6-24 months                  MAL-ED           PERU                           1                       0        3    149
6-24 months                  MAL-ED           PERU                           1                       1        3    149
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       0       85    158
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       1       53    158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       0       13    158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       1        7    158
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       30    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      108    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        5    144
6-24 months                  PROVIDE          BANGLADESH                     0                       0      249    456
6-24 months                  PROVIDE          BANGLADESH                     0                       1      100    456
6-24 months                  PROVIDE          BANGLADESH                     1                       0       70    456
6-24 months                  PROVIDE          BANGLADESH                     1                       1       37    456
6-24 months                  ResPak           PAKISTAN                       0                       0       42     95
6-24 months                  ResPak           PAKISTAN                       0                       1        8     95
6-24 months                  ResPak           PAKISTAN                       1                       0       36     95
6-24 months                  ResPak           PAKISTAN                       1                       1        9     95
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1067   1602
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      298   1602
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      173   1602
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       64   1602


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/3ce6d12e-b79a-4506-8503-43772de2033f/811003d1-f010-44db-b6e3-6a5b575d685b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ce6d12e-b79a-4506-8503-43772de2033f/811003d1-f010-44db-b6e3-6a5b575d685b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ce6d12e-b79a-4506-8503-43772de2033f/811003d1-f010-44db-b6e3-6a5b575d685b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ce6d12e-b79a-4506-8503-43772de2033f/811003d1-f010-44db-b6e3-6a5b575d685b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                0.8633094   0.8061038   0.9205149
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    NA                0.9477124   0.9123791   0.9830458
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                0.7777778   0.7074828   0.8480728
0-24 months (no birth st.)   EE               PAKISTAN                       1                    NA                0.8589744   0.7815528   0.9363959
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.5249267   0.4718776   0.5779758
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.6170213   0.5548158   0.6792268
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                0.6578947   0.5823701   0.7334193
0-24 months (no birth st.)   IRC              INDIA                          1                    NA                0.5432692   0.4754804   0.6110581
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                0.4784537   0.4538014   0.5031061
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    NA                0.5670732   0.5291486   0.6049977
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                0.5535714   0.4782256   0.6289173
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    NA                0.4285714   0.2896895   0.5674533
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                0.5915493   0.5105081   0.6725905
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    NA                0.3970588   0.2804866   0.5136310
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                0.2558140   0.1904530   0.3211749
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    NA                0.2820513   0.1404856   0.4236170
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                0.5102881   0.4473209   0.5732552
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    NA                0.4062500   0.2357742   0.5767258
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3544304   0.3113342   0.3975266
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.4402516   0.3630298   0.5174733
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                0.5590551   0.4724899   0.6456203
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    NA                0.4533333   0.3403888   0.5662779
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2912317   0.2708839   0.3115796
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3448276   0.2926566   0.3969985
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3741007   0.2935198   0.4546816
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3921569   0.3146620   0.4696517
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                0.2627737   0.1888514   0.3366960
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    NA                0.3870968   0.2151202   0.5590734
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5703704   0.4866698   0.6540710
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.5256410   0.4145649   0.6367172
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1436950   0.1064315   0.1809585
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.2170213   0.1642719   0.2697707
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                0.3947368   0.3169231   0.4725506
0-6 months (no birth st.)    IRC              INDIA                          1                    NA                0.3076923   0.2448824   0.3705022
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                0.2237009   0.2031353   0.2442664
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    NA                0.2835366   0.2490385   0.3180347
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    NA                0.1836735   0.0750038   0.2923431
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                0.2323944   0.1627602   0.3020285
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    NA                0.1911765   0.0974906   0.2848624
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                0.2921811   0.2348984   0.3494637
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    NA                0.1875000   0.0520196   0.3229804
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1434599   0.1118778   0.1750420
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.2075472   0.1444604   0.2706339
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                0.4960630   0.4088903   0.5832357
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    NA                0.3333333   0.2263813   0.4402853
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1356994   0.1203614   0.1510374
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1442006   0.1056422   0.1827591
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                0.7816092   0.6945509   0.8686675
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    NA                0.9139785   0.8568322   0.9711248
6-24 months                  CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917
6-24 months                  EE               PAKISTAN                       0                    NA                0.5000000   0.3683346   0.6316654
6-24 months                  EE               PAKISTAN                       1                    NA                0.7027027   0.5546296   0.8507758
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.5579399   0.4940912   0.6217886
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.5731707   0.4973753   0.6489661
6-24 months                  IRC              INDIA                          0                    NA                0.4347826   0.3332700   0.5362952
6-24 months                  IRC              INDIA                          1                    NA                0.3402778   0.2627270   0.4178286
6-24 months                  Keneba           GAMBIA                         0                    NA                0.3579697   0.3299220   0.3860175
6-24 months                  Keneba           GAMBIA                         1                    NA                0.4189189   0.3730120   0.4648259
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                0.4545455   0.3655430   0.5435479
6-24 months                  MAL-ED           BANGLADESH                     1                    NA                0.3243243   0.1730083   0.4756403
6-24 months                  MAL-ED           INDIA                          0                    NA                0.5000000   0.4026507   0.5973493
6-24 months                  MAL-ED           INDIA                          1                    NA                0.2692308   0.1482786   0.3901829
6-24 months                  MAL-ED           NEPAL                          0                    NA                0.2062500   0.1433937   0.2691063
6-24 months                  MAL-ED           NEPAL                          1                    NA                0.2352941   0.0923443   0.3782439
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                0.3840580   0.3026521   0.4654638
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    NA                0.3500000   0.1402980   0.5597020
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2865330   0.2390447   0.3340212
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3457944   0.2555752   0.4360136
6-24 months                  ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2183150   0.1963933   0.2402368
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2700422   0.2134998   0.3265846


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.9075342   0.8742512   0.9408173
0-24 months (no birth st.)   CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   EE               PAKISTAN                       NA                   NA                0.8075117   0.7544408   0.8605827
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5625000   0.5219525   0.6030475
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   Keneba           GAMBIA                         NA                   NA                0.5044763   0.4837388   0.5252138
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   MAL-ED           INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   MAL-ED           NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   NA                   NA                0.4981818   0.4389793   0.5573843
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2988814   0.2798990   0.3178639
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.1736111   0.1426515   0.2045707
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    Keneba           GAMBIA                         NA                   NA                0.2412713   0.2235253   0.2590172
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    MAL-ED           INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2800000   0.2268359   0.3331641
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1369128   0.1226581   0.1511674
6-24 months                  CMC-V-BCS-2002   INDIA                          NA                   NA                0.8500000   0.7976910   0.9023090
6-24 months                  CMIN             BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  EE               PAKISTAN                       NA                   NA                0.5806452   0.4798127   0.6814776
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months                  IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  Keneba           GAMBIA                         NA                   NA                0.3752393   0.3512585   0.3992201
6-24 months                  MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED           NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  MAL-ED           SOUTH AFRICA                   NA                   NA                0.3797468   0.3038314   0.4556622
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ResPak           PAKISTAN                       NA                   NA                0.1789474   0.1014597   0.2564350
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2259675   0.2054816   0.2464534


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    0                 1.0977669   1.0173960   1.1844868
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    0                 0.9259601   0.7253921   1.1819842
0-24 months (no birth st.)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0                 1.1043956   0.9720548   1.2547539
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.1754428   1.0190767   1.3558015
0-24 months (no birth st.)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   IRC              INDIA                          1                    0                 0.8257692   0.6969837   0.9783512
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    0                 1.1852205   1.0892666   1.2896270
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    0                 0.7741935   0.5447575   1.1002614
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    0                 0.6712185   0.4854686   0.9280400
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    0                 1.1025641   0.6277794   1.9364247
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    0                 0.7961190   0.5140649   1.2329288
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.2421384   1.0034127   1.5376602
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    0                 0.8108920   0.6047382   1.0873233
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1840316   1.0022786   1.3987438
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0                 1.0482655   0.7825663   1.4041756
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    0                 1.4731183   0.8706918   2.4923601
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 0.9215784   0.7125252   1.1919674
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 1.5102909   1.0585254   2.1548643
0-6 months (no birth st.)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    IRC              INDIA                          1                    0                 0.7794872   0.5869027   1.0352657
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    0                 1.2674808   1.0882097   1.4762849
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    0                 0.8120301   0.4219291   1.5628047
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    0                 0.8226381   0.4631820   1.4610532
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    0                 0.6417254   0.3035278   1.3567502
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.4467259   0.9940105   2.1056273
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    0                 0.6719577   0.4660852   0.9687651
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0626477   0.7949003   1.4205809
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    0                 1.1693548   1.0291360   1.3286784
6-24 months                  CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121
6-24 months                  EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  EE               PAKISTAN                       1                    0                 1.4054054   1.0030684   1.9691224
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.0272983   0.8624767   1.2236177
6-24 months                  IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  IRC              INDIA                          1                    0                 0.7826389   0.5647596   1.0845740
6-24 months                  Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  Keneba           GAMBIA                         1                    0                 1.1702635   1.0227706   1.3390264
6-24 months                  MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           BANGLADESH                     1                    0                 0.7135135   0.4301876   1.1834408
6-24 months                  MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           INDIA                          1                    0                 0.5384615   0.3299991   0.8786110
6-24 months                  MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           NEPAL                          1                    0                 1.1408200   0.5781380   2.2511409
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    0                 0.9113208   0.4826821   1.7206057
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.2068224   0.8859430   1.6439211
6-24 months                  ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2369382   0.9806135   1.5602643


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0442249    0.0086628    0.0797870
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0297340   -0.0089207    0.0683886
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0375733    0.0040143    0.0711324
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0662281   -0.1251558   -0.0073003
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0260225    0.0126351    0.0394099
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0282258   -0.0645785    0.0081269
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0629779   -0.1105774   -0.0153783
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0048496   -0.0240038    0.0337029
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0121062   -0.0336191    0.0094066
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0215570   -0.0008449    0.0439589
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0392531   -0.0925580    0.0140518
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076497   -0.0003807    0.0156801
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094609   -0.0491272    0.0680490
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0229406   -0.0123666    0.0582477
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                -0.0163798   -0.0673936    0.0346341
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0299161    0.0034027    0.0564295
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.0502924   -0.1082413    0.0076565
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0175704    0.0057228    0.0294180
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0096006   -0.0381095    0.0189083
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0133467   -0.0512355    0.0245420
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0121811   -0.0297527    0.0053906
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0160977   -0.0017554    0.0339509
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                -0.0604194   -0.1127891   -0.0080498
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012134   -0.0047108    0.0071375
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0683908    0.0137202    0.1230614
6-24 months                  CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130
6-24 months                  EE               PAKISTAN                       0                    NA                 0.0806452   -0.0007518    0.1620421
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0062918   -0.0346545    0.0472382
6-24 months                  IRC              INDIA                          0                    NA                -0.0576640   -0.1358329    0.0205050
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0172696    0.0019659    0.0325732
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0304948   -0.0725000    0.0115104
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.0779221   -0.1331266   -0.0227176
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0050902   -0.0223221    0.0325025
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                -0.0043111   -0.0328407    0.0242184
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0139056   -0.0101288    0.0379401
6-24 months                  ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076525   -0.0013640    0.0166691


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0487308    0.0079831    0.0878048
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0368217   -0.0127099    0.0839307
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0667970    0.0048988    0.1248450
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.1119348   -0.2172514   -0.0157302
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0515833    0.0245903    0.0778293
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0537281   -0.1257239    0.0136632
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.1191473   -0.2150163   -0.0308428
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0186047   -0.0985432    0.1232600
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0243009   -0.0685108    0.0180799
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0573343   -0.0042107    0.1151075
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0755156   -0.1838274    0.0228865
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0255944   -0.0016389    0.0520873
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0246660   -0.1407028    0.1660611
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0802920   -0.0515156    0.1955775
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                -0.0295669   -0.1260126    0.0586181
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.1723167    0.0070406    0.3100830
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.1460102   -0.3275301    0.0106896
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0728242    0.0225221    0.1205376
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0443262   -0.1843770    0.0791638
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0609308   -0.2484645    0.0984332
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0435038   -0.1080763    0.0173057
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.1008898   -0.0171720    0.2052484
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                -0.1386901   -0.2671363   -0.0232641
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0088624   -0.0353583    0.0511945
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0804598    0.0119372    0.1442303
6-24 months                  CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064
6-24 months                  EE               PAKISTAN                       0                    NA                 0.1388889   -0.0167029    0.2706696
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0111511   -0.0641590    0.0811316
6-24 months                  IRC              INDIA                          0                    NA                -0.1529067   -0.3807090    0.0373107
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0460229    0.0043387    0.0859619
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0719132   -0.1762406    0.0231609
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.1846154   -0.3265147   -0.0578953
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0240854   -0.1145458    0.1454731
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                -0.0113527   -0.0893501    0.0610601
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0462845   -0.0371126    0.1229754
6-24 months                  ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0338656   -0.0068182    0.0729054
