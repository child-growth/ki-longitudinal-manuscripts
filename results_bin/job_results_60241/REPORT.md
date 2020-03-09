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

* arm
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_month
* delta_W_parity

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




# Results Detail

## Results Plots
![](/tmp/60fa8350-fbff-4052-99f5-32e6723191d0/9d76f50a-c4b3-4ebe-ae5a-8175299928b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/60fa8350-fbff-4052-99f5-32e6723191d0/9d76f50a-c4b3-4ebe-ae5a-8175299928b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/60fa8350-fbff-4052-99f5-32e6723191d0/9d76f50a-c4b3-4ebe-ae5a-8175299928b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/60fa8350-fbff-4052-99f5-32e6723191d0/9d76f50a-c4b3-4ebe-ae5a-8175299928b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                0.8633094   0.8061038   0.9205149
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    NA                0.9477124   0.9123791   0.9830458
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                0.7664234   0.6953620   0.8374847
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    NA                0.7096774   0.5494139   0.8699409
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                0.7813695   0.7106190   0.8521201
0-24 months (no birth st.)   EE               PAKISTAN                       1                    NA                0.8617204   0.7828792   0.9405617
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.5249892   0.4716892   0.5782891
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.6155440   0.5539937   0.6770944
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                0.6564229   0.5805686   0.7322773
0-24 months (no birth st.)   IRC              INDIA                          1                    NA                0.5478681   0.4800125   0.6157238
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                0.4825634   0.4579494   0.5071773
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    NA                0.5547018   0.5168199   0.5925838
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                0.5503423   0.4746583   0.6260262
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    NA                0.4059724   0.2655801   0.5463647
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                0.5950413   0.5139283   0.6761544
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    NA                0.4180979   0.3000910   0.5361048
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                0.2560720   0.1907075   0.3214365
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    NA                0.2685279   0.1296390   0.4074168
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                0.5093540   0.4462742   0.5724338
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    NA                0.4109452   0.2331935   0.5886969
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3526058   0.3095130   0.3956986
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.4461759   0.3690017   0.5233501
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                0.5620922   0.4754507   0.6487338
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    NA                0.4423259   0.3279011   0.5567508
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2907932   0.2704400   0.3111465
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3348858   0.2826937   0.3870779
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3676033   0.2866298   0.4485769
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    NA                0.3880654   0.3105733   0.4655576
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                0.2644475   0.1898132   0.3390818
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    NA                0.3445448   0.1794621   0.5096274
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5732793   0.4882539   0.6583047
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.5138302   0.4026831   0.6249773
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1431496   0.1058153   0.1804838
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.2154156   0.1623748   0.2684564
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                0.3962203   0.3179733   0.4744673
0-6 months (no birth st.)    IRC              INDIA                          1                    NA                0.3053932   0.2424077   0.3683787
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                0.2249378   0.2042561   0.2456195
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    NA                0.2830461   0.2483995   0.3176927
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                0.2261905   0.1627815   0.2895994
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    NA                0.1836735   0.0750038   0.2923431
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                0.2313943   0.1620839   0.3007047
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    NA                0.1896218   0.0971639   0.2820797
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                0.2921811   0.2348984   0.3494637
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    NA                0.1875000   0.0520196   0.3229804
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1437089   0.1121064   0.1753113
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.2065256   0.1422416   0.2708096
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                0.4997622   0.4121192   0.5874052
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    NA                0.3207289   0.2119410   0.4295168
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1357236   0.1203831   0.1510641
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1440264   0.1052658   0.1827871
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                0.7816092   0.6945509   0.8686675
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    NA                0.9139785   0.8568322   0.9711248
6-24 months                  CMIN             BANGLADESH                     0                    NA                0.7263158   0.6362543   0.8163773
6-24 months                  CMIN             BANGLADESH                     1                    NA                0.6250000   0.3867083   0.8632917
6-24 months                  EE               PAKISTAN                       0                    NA                0.4975435   0.3651361   0.6299509
6-24 months                  EE               PAKISTAN                       1                    NA                0.7273764   0.5905519   0.8642010
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.5632652   0.4988548   0.6276756
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.5708259   0.4963204   0.6453314
6-24 months                  IRC              INDIA                          0                    NA                0.4284313   0.3255561   0.5313066
6-24 months                  IRC              INDIA                          1                    NA                0.3412827   0.2635608   0.4190047
6-24 months                  Keneba           GAMBIA                         0                    NA                0.3604817   0.3323039   0.3886595
6-24 months                  Keneba           GAMBIA                         1                    NA                0.4119682   0.3661515   0.4577850
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                0.4551959   0.3658413   0.5445504
6-24 months                  MAL-ED           BANGLADESH                     1                    NA                0.3316007   0.1750854   0.4881160
6-24 months                  MAL-ED           INDIA                          0                    NA                0.4967103   0.3986060   0.5948147
6-24 months                  MAL-ED           INDIA                          1                    NA                0.2627382   0.1379678   0.3875085
6-24 months                  MAL-ED           NEPAL                          0                    NA                0.2062500   0.1433937   0.2691063
6-24 months                  MAL-ED           NEPAL                          1                    NA                0.2352941   0.0923443   0.3782439
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                0.3840580   0.3026521   0.4654638
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    NA                0.3500000   0.1402980   0.5597020
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2862736   0.2388655   0.3336818
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3689046   0.2798264   0.4579827
6-24 months                  ResPak           PAKISTAN                       0                    NA                0.1600000   0.0578448   0.2621552
6-24 months                  ResPak           PAKISTAN                       1                    NA                0.2000000   0.0825103   0.3174897
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2179972   0.1960807   0.2399137
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2758753   0.2192670   0.3324835


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
6-24 months                  MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003368
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
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0                 1.1028334   0.9692700   1.2548017
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.1724890   1.0168435   1.3519588
0-24 months (no birth st.)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   IRC              INDIA                          1                    0                 0.8346267   0.7050889   0.9879631
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    0                 1.1494901   1.0560493   1.2511988
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    0                 0.7376725   0.5079535   1.0712806
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    0                 0.7026368   0.5127536   0.9628376
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    0                 1.0486423   0.5886213   1.8681803
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    0                 0.8067969   0.5142667   1.2657270
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.2653675   1.0242167   1.5632969
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    0                 0.7869277   0.5825305   1.0630434
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1516285   0.9707485   1.3662121
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0                 1.0556635   0.7833839   1.4225791
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    0                 1.3028854   0.7462108   2.2748402
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 0.8962998   0.6887971   1.1663136
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 1.5048292   1.0512238   2.1541664
0-6 months (no birth st.)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    IRC              INDIA                          1                    0                 0.7707662   0.5790646   1.0259313
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    0                 1.2583306   1.0798142   1.4663594
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    0                 0.8120301   0.4219291   1.5628047
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    0                 0.8194750   0.4614114   1.4554022
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    0                 0.6417254   0.3035278   1.3567502
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.4371109   0.9820009   2.1031424
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    0                 0.6417630   0.4380258   0.9402637
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0611745   0.7925979   1.4207597
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    0                 1.1693548   1.0291360   1.3286784
6-24 months                  CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  CMIN             BANGLADESH                     1                    0                 0.8605072   0.5762828   1.2849121
6-24 months                  EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  EE               PAKISTAN                       1                    0                 1.4619354   1.0554664   2.0249391
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.0134230   0.8528825   1.2041825
6-24 months                  IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  IRC              INDIA                          1                    0                 0.7965868   0.5733393   1.1067627
6-24 months                  Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  Keneba           GAMBIA                         1                    0                 1.1428270   0.9978732   1.3088372
6-24 months                  MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           BANGLADESH                     1                    0                 0.7284792   0.4366808   1.2152629
6-24 months                  MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           INDIA                          1                    0                 0.5289565   0.3167487   0.8833342
6-24 months                  MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           NEPAL                          1                    0                 1.1408200   0.5781380   2.2511409
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    0                 0.9113208   0.4826821   1.7206057
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.2886432   0.9623627   1.7255460
6-24 months                  ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ResPak           PAKISTAN                       1                    0                 1.2500000   0.5249448   2.9765036
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2654991   1.0069048   1.5905059


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0442249    0.0086628    0.0797870
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0104710   -0.0429919    0.0220500
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0261422   -0.0130301    0.0653145
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0375108    0.0039407    0.0710809
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0647563   -0.1236767   -0.0058359
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0219129    0.0086450    0.0351808
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0249966   -0.0619099    0.0119166
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0664699   -0.1148522   -0.0180876
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0045915   -0.0246336    0.0338166
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0111721   -0.0328344    0.0104901
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0233816    0.0010200    0.0457432
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0422902   -0.0955878    0.0110073
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0080882    0.0000337    0.0161427
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0159583   -0.0434880    0.0754046
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0212668   -0.0153772    0.0579108
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                -0.0192887   -0.0722364    0.0336589
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0304616    0.0038924    0.0570307
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.0517758   -0.1101981    0.0066465
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0163335    0.0044102    0.0282568
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0096006   -0.0381095    0.0189083
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0123467   -0.0504960    0.0258027
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0121811   -0.0297527    0.0053906
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0158488   -0.0020219    0.0337195
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                -0.0641186   -0.1167729   -0.0114644
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0011891   -0.0047261    0.0071043
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0683908    0.0137202    0.1230614
6-24 months                  CMIN             BANGLADESH                     0                    NA                -0.0146041   -0.0519211    0.0227130
6-24 months                  EE               PAKISTAN                       0                    NA                 0.0831017    0.0015149    0.1646885
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0009665   -0.0396766    0.0416096
6-24 months                  IRC              INDIA                          0                    NA                -0.0513127   -0.1308857    0.0282603
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0147576   -0.0006108    0.0301260
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0311452   -0.0735032    0.0112127
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.0746324   -0.1299575   -0.0193073
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0050902   -0.0223221    0.0325025
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                -0.0043111   -0.0328407    0.0242184
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0141650   -0.0097419    0.0380718
6-24 months                  ResPak           PAKISTAN                       0                    NA                 0.0189474   -0.0549112    0.0928059
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0079703   -0.0010521    0.0169927


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0487308    0.0079831    0.0878048
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0138514   -0.0578881    0.0283523
0-24 months (no birth st.)   EE               PAKISTAN                       0                    NA                 0.0323738   -0.0177724    0.0800492
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0666859    0.0047193    0.1247944
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.1094472   -0.2146390   -0.0133654
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0434369    0.0167102    0.0694372
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0475813   -0.1206230    0.0206995
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.1257539   -0.2235320   -0.0357896
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0176148   -0.1010937    0.1235254
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0224258   -0.0669261    0.0202184
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0621872    0.0007095    0.1198827
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0813584   -0.1897037    0.0171200
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0270615   -0.0002569    0.0536339
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0416056   -0.1266485    0.1847325
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0744338   -0.0626506    0.1938340
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                -0.0348178   -0.1350803    0.0565885
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.1754586    0.0096537    0.3135042
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.1503170   -0.3333752    0.0076094
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0676975    0.0170453    0.1157395
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0443262   -0.1843770    0.0791638
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0563652   -0.2455965    0.1041181
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    NA                -0.0435038   -0.1080763    0.0173057
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0993295   -0.0188496    0.2038007
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                -0.1471814   -0.2763503   -0.0310846
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0086853   -0.0354681    0.0509558
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0804598    0.0119372    0.1442303
6-24 months                  CMIN             BANGLADESH                     0                    NA                -0.0205197   -0.0745638    0.0308064
6-24 months                  EE               PAKISTAN                       0                    NA                 0.1431196   -0.0133813    0.2754513
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0017130   -0.0729867    0.0712123
6-24 months                  IRC              INDIA                          0                    NA                -0.1360651   -0.3682365    0.0567100
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0393285   -0.0025323    0.0794415
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0734470   -0.1786341    0.0223528
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.1768214   -0.3181805   -0.0506213
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0240854   -0.1145458    0.1454731
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    NA                -0.0113527   -0.0893501    0.0610601
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0471476   -0.0357899    0.1234441
6-24 months                  ResPak           PAKISTAN                       0                    NA                 0.1058824   -0.4161708    0.4354873
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0352720   -0.0054400    0.0743355
