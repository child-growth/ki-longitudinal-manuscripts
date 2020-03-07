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

**Intervention Variable:** pers_wast

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

agecat                       studyid          country                        pers_wast    ever_stunted   n_cell      n
---------------------------  ---------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       0       24    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       1      228    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       0        3    292
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       1       37    292
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                       0       37    166
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                       1      123    166
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                       0        2    166
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                       1        4    166
0-24 months (no birth st.)   CONTENT          PERU                           0                       0      162    195
0-24 months (no birth st.)   CONTENT          PERU                           0                       1       33    195
0-24 months (no birth st.)   CONTENT          PERU                           1                       0        0    195
0-24 months (no birth st.)   CONTENT          PERU                           1                       1        0    195
0-24 months (no birth st.)   EE               PAKISTAN                       0                       0       41    213
0-24 months (no birth st.)   EE               PAKISTAN                       0                       1      157    213
0-24 months (no birth st.)   EE               PAKISTAN                       1                       0        0    213
0-24 months (no birth st.)   EE               PAKISTAN                       1                       1       15    213
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       0      161    492
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       1      275    492
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       0       12    492
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       1       44    492
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                       0      131    217
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                       1       82    217
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                       0        1    217
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                       1        3    217
0-24 months (no birth st.)   IRC              INDIA                          0                       0      114    359
0-24 months (no birth st.)   IRC              INDIA                          0                       1      181    359
0-24 months (no birth st.)   IRC              INDIA                          1                       0       32    359
0-24 months (no birth st.)   IRC              INDIA                          1                       1       32    359
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       0      839   1905
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       1     1008   1905
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       0       17   1905
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       1       41   1905
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       0       97    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       1      113    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       0        6    217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       1        1    217
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       0      169    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       1       32    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       0        1    202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       1        0    202
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       0       85    208
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       1      104    208
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       0       12    208
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       1        7    208
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       0      152    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       1       54    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       0        4    211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       1        1    211
0-24 months (no birth st.)   MAL-ED           PERU                           0                       0      115    266
0-24 months (no birth st.)   MAL-ED           PERU                           0                       1      151    266
0-24 months (no birth st.)   MAL-ED           PERU                           1                       0        0    266
0-24 months (no birth st.)   MAL-ED           PERU                           1                       1        0    266
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       0      125    265
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       1      137    265
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       0        3    265
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       1        0    265
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       39    218
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      179    218
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0    218
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    218
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       0      379    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       1      229    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       0       16    633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       1        9    633
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                       0       70    182
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                       1       95    182
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                       0       12    182
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                       1        5    182
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1396   2090
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      641   2090
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       33   2090
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       20   2090
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       0      152    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       1      100    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       0       28    292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       1       12    292
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                       0      115    166
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                       1       45    166
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                       0        3    166
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                       1        3    166
0-6 months (no birth st.)    CONTENT          PERU                           0                       0      188    195
0-6 months (no birth st.)    CONTENT          PERU                           0                       1        7    195
0-6 months (no birth st.)    CONTENT          PERU                           1                       0        0    195
0-6 months (no birth st.)    CONTENT          PERU                           1                       1        0    195
0-6 months (no birth st.)    EE               PAKISTAN                       0                       0       90    213
0-6 months (no birth st.)    EE               PAKISTAN                       0                       1      108    213
0-6 months (no birth st.)    EE               PAKISTAN                       1                       0        5    213
0-6 months (no birth st.)    EE               PAKISTAN                       1                       1       10    213
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       0      350    492
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       1       86    492
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       0       43    492
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       1       13    492
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                       0      194    217
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                       1       19    217
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                       0        2    217
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                       1        2    217
0-6 months (no birth st.)    IRC              INDIA                          0                       0      186    359
0-6 months (no birth st.)    IRC              INDIA                          0                       1      109    359
0-6 months (no birth st.)    IRC              INDIA                          1                       0       49    359
0-6 months (no birth st.)    IRC              INDIA                          1                       1       15    359
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       0     1344   1905
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       1      503   1905
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       0       38   1905
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       1       20   1905
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       0      163    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       1       47    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       0        7    217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       1        0    217
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       0      180    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       1       21    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       0        1    202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       1        0    202
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       0      148    208
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       1       41    208
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       0       14    208
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       1        5    208
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       0      192    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       1       14    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       0        5    211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       1        0    211
0-6 months (no birth st.)    MAL-ED           PERU                           0                       0      174    266
0-6 months (no birth st.)    MAL-ED           PERU                           0                       1       92    266
0-6 months (no birth st.)    MAL-ED           PERU                           1                       0        0    266
0-6 months (no birth st.)    MAL-ED           PERU                           1                       1        0    266
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       0      185    265
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       1       77    265
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       0        3    265
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       1        0    265
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      152    218
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       66    218
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0    218
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    218
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       0      513    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       1       95    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       0       19    633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       1        6    633
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                       0       85    182
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                       1       80    182
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                       0       13    182
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                       1        4    182
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1744   2090
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      293   2090
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       44   2090
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        9   2090
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       0       24    180
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       1      128    180
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       0        3    180
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       1       25    180
6-24 months                  CMIN             BANGLADESH                     0                       0       31    111
6-24 months                  CMIN             BANGLADESH                     0                       1       78    111
6-24 months                  CMIN             BANGLADESH                     1                       0        1    111
6-24 months                  CMIN             BANGLADESH                     1                       1        1    111
6-24 months                  CONTENT          PERU                           0                       0      162    188
6-24 months                  CONTENT          PERU                           0                       1       26    188
6-24 months                  CONTENT          PERU                           1                       0        0    188
6-24 months                  CONTENT          PERU                           1                       1        0    188
6-24 months                  EE               PAKISTAN                       0                       0       39     93
6-24 months                  EE               PAKISTAN                       0                       1       49     93
6-24 months                  EE               PAKISTAN                       1                       0        0     93
6-24 months                  EE               PAKISTAN                       1                       1        5     93
6-24 months                  GMS-Nepal        NEPAL                          0                       0      155    387
6-24 months                  GMS-Nepal        NEPAL                          0                       1      189    387
6-24 months                  GMS-Nepal        NEPAL                          1                       0       12    387
6-24 months                  GMS-Nepal        NEPAL                          1                       1       31    387
6-24 months                  Guatemala BSC    GUATEMALA                      0                       0      107    172
6-24 months                  Guatemala BSC    GUATEMALA                      0                       1       63    172
6-24 months                  Guatemala BSC    GUATEMALA                      1                       0        1    172
6-24 months                  Guatemala BSC    GUATEMALA                      1                       1        1    172
6-24 months                  IRC              INDIA                          0                       0      114    235
6-24 months                  IRC              INDIA                          0                       1       72    235
6-24 months                  IRC              INDIA                          1                       0       32    235
6-24 months                  IRC              INDIA                          1                       1       17    235
6-24 months                  Keneba           GAMBIA                         0                       0      811   1352
6-24 months                  Keneba           GAMBIA                         0                       1      505   1352
6-24 months                  Keneba           GAMBIA                         1                       0       15   1352
6-24 months                  Keneba           GAMBIA                         1                       1       21   1352
6-24 months                  MAL-ED           BANGLADESH                     0                       0       86    158
6-24 months                  MAL-ED           BANGLADESH                     0                       1       66    158
6-24 months                  MAL-ED           BANGLADESH                     1                       0        5    158
6-24 months                  MAL-ED           BANGLADESH                     1                       1        1    158
6-24 months                  MAL-ED           BRAZIL                         0                       0      151    163
6-24 months                  MAL-ED           BRAZIL                         0                       1       11    163
6-24 months                  MAL-ED           BRAZIL                         1                       0        1    163
6-24 months                  MAL-ED           BRAZIL                         1                       1        0    163
6-24 months                  MAL-ED           INDIA                          0                       0       78    154
6-24 months                  MAL-ED           INDIA                          0                       1       63    154
6-24 months                  MAL-ED           INDIA                          1                       0       11    154
6-24 months                  MAL-ED           INDIA                          1                       1        2    154
6-24 months                  MAL-ED           NEPAL                          0                       0      150    194
6-24 months                  MAL-ED           NEPAL                          0                       1       40    194
6-24 months                  MAL-ED           NEPAL                          1                       0        3    194
6-24 months                  MAL-ED           NEPAL                          1                       1        1    194
6-24 months                  MAL-ED           PERU                           0                       0       90    149
6-24 months                  MAL-ED           PERU                           0                       1       59    149
6-24 months                  MAL-ED           PERU                           1                       0        0    149
6-24 months                  MAL-ED           PERU                           1                       1        0    149
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       0       96    158
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       1       60    158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       0        2    158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       1        0    158
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       31    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      113    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0    144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0    144
6-24 months                  PROVIDE          BANGLADESH                     0                       0      316    456
6-24 months                  PROVIDE          BANGLADESH                     0                       1      134    456
6-24 months                  PROVIDE          BANGLADESH                     1                       0        3    456
6-24 months                  PROVIDE          BANGLADESH                     1                       1        3    456
6-24 months                  ResPak           PAKISTAN                       0                       0       65     92
6-24 months                  ResPak           PAKISTAN                       0                       1       15     92
6-24 months                  ResPak           PAKISTAN                       1                       0       11     92
6-24 months                  ResPak           PAKISTAN                       1                       1        1     92
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1195   1583
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      348   1583
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       29   1583
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       11   1583


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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/286b8598-eb40-4b85-bba9-035f212e613c/170e36e7-833d-4ce0-be84-80fa5bb6e503/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/286b8598-eb40-4b85-bba9-035f212e613c/170e36e7-833d-4ce0-be84-80fa5bb6e503/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/286b8598-eb40-4b85-bba9-035f212e613c/170e36e7-833d-4ce0-be84-80fa5bb6e503/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/286b8598-eb40-4b85-bba9-035f212e613c/170e36e7-833d-4ce0-be84-80fa5bb6e503/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.6307087   0.5853018   0.6761155
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.7954728   0.6856197   0.9053258
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                0.6134624   0.5579100   0.6690149
0-24 months (no birth st.)   IRC              INDIA                          1                    NA                0.4785188   0.3564723   0.6005653
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                0.5464277   0.5236451   0.5692103
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    NA                0.7283483   0.6274267   0.8292699
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                0.5502646   0.4791714   0.6213577
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    NA                0.3684211   0.1509989   0.5858432
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3766447   0.3380993   0.4151902
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.3600000   0.1716947   0.5483053
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                0.5757576   0.5001388   0.6513763
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    NA                0.2941176   0.0769242   0.5113111
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3146021   0.2944042   0.3348000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3881029   0.2625035   0.5137023
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3976781   0.3369900   0.4583662
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    NA                0.2972817   0.1488857   0.4456777
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5454545   0.4759353   0.6149738
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.6666667   0.4275455   0.9057879
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1976809   0.1602086   0.2351532
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.2265019   0.1129216   0.3400821
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                0.3697293   0.3144654   0.4249931
0-6 months (no birth st.)    IRC              INDIA                          1                    NA                0.2420740   0.1384686   0.3456794
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                0.2727714   0.2524506   0.2930923
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    NA                0.3330045   0.2074488   0.4585602
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                0.2169312   0.1580299   0.2758325
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    NA                0.2631579   0.0646795   0.4616363
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1562500   0.1273661   0.1851339
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.2400000   0.0724541   0.4075459
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1438390   0.1285959   0.1590821
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1698113   0.0687033   0.2709194
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.5495500   0.4968539   0.6022461
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.7224692   0.5888041   0.8561342
6-24 months                  IRC              INDIA                          0                    NA                0.3829152   0.3127330   0.4530973
6-24 months                  IRC              INDIA                          1                    NA                0.3424548   0.2088440   0.4760657
6-24 months                  Keneba           GAMBIA                         0                    NA                0.3838868   0.3575274   0.4102462
6-24 months                  Keneba           GAMBIA                         1                    NA                0.6186605   0.4696906   0.7676304
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2255265   0.2045876   0.2464654
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2874784   0.1626248   0.4123321


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.6483740   0.6061401   0.6906078
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5933148   0.5424311   0.6441984
0-24 months (no birth st.)   Keneba           GAMBIA                         NA                   NA                0.5506562   0.5283130   0.5729993
0-24 months (no birth st.)   MAL-ED           INDIA                          NA                   NA                0.5336538   0.4656949   0.6016128
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ResPak           PAKISTAN                       NA                   NA                0.5494505   0.4769662   0.6219349
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3162679   0.2963268   0.3362091
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.2012195   0.1657581   0.2366809
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3454039   0.2961482   0.3946596
0-6 months (no birth st.)    Keneba           GAMBIA                         NA                   NA                0.2745407   0.2544948   0.2945865
0-6 months (no birth st.)    MAL-ED           INDIA                          NA                   NA                0.2211538   0.1646164   0.2776913
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1444976   0.1294204   0.1595748
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5684755   0.5190657   0.6178852
6-24 months                  IRC              INDIA                          NA                   NA                0.3787234   0.3165730   0.4408738
6-24 months                  Keneba           GAMBIA                         NA                   NA                0.3890533   0.3630561   0.4150505
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2267846   0.2061497   0.2474195


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.2612365   1.0793307   1.473800
0-24 months (no birth st.)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   IRC              INDIA                          1                    0                 0.7800295   0.5946050   1.023278
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    0                 1.3329270   1.1534405   1.540343
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    0                 0.6695344   0.3659365   1.225011
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 0.9558079   0.5609149   1.628712
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    0                 0.5108359   0.2412906   1.081490
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2336309   0.8869779   1.715765
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0                 0.7475436   0.4434527   1.260160
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 1.2222222   0.8352851   1.788404
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 1.1457951   0.6711110   1.956229
0-6 months (no birth st.)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    IRC              INDIA                          1                    0                 0.6547332   0.4163399   1.029629
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    0                 1.2208189   0.8313501   1.792745
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    0                 1.2130937   0.5442049   2.704122
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.5360000   0.7460322   3.162459
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1805654   0.6448240   2.161419
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.3146560   1.0677120   1.618714
6-24 months                  IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  IRC              INDIA                          1                    0                 0.8943360   0.5827104   1.372615
6-24 months                  Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  Keneba           GAMBIA                         1                    0                 1.6115701   1.2544732   2.070318
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2746992   0.8175345   1.987510


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0176653    0.0037019    0.0316288
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0201477   -0.0450517    0.0047564
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0042284    0.0003994    0.0080574
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0166107   -0.0386913    0.0054699
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                -0.0006574   -0.0082528    0.0069381
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0263070   -0.0508839   -0.0017301
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016658   -0.0017173    0.0050489
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0141165   -0.0358617    0.0076288
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0085361   -0.0094907    0.0265629
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0035386   -0.0096696    0.0167467
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.0243254   -0.0458014   -0.0028493
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0017692   -0.0020141    0.0055526
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                 0.0042226   -0.0147759    0.0232212
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0033077   -0.0035265    0.0101418
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006586   -0.0019402    0.0032575
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0189255    0.0020497    0.0358012
6-24 months                  IRC              INDIA                          0                    NA                -0.0041918   -0.0351722    0.0267887
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0051664    0.0004292    0.0099037
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012581   -0.0023291    0.0048453


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0272456    0.0052676    0.0487380
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                -0.0339578   -0.0770479    0.0074084
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0076789    0.0006845    0.0146243
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0311264   -0.0736120    0.0096780
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                -0.0017484   -0.0221549    0.0182507
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                -0.0478788   -0.0942959   -0.0034305
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0052672   -0.0054898    0.0159091
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0368037   -0.0951357    0.0184213
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0154083   -0.0177547    0.0474908
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0175857   -0.0502772    0.0810636
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                -0.0704258   -0.1344645   -0.0100021
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0064444   -0.0074303    0.0201279
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                 0.0190936   -0.0706200    0.1012896
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0207302   -0.0229464    0.0625419
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0045581   -0.0135867    0.0223780
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                 0.0332916    0.0029097    0.0627478
6-24 months                  IRC              INDIA                          0                    NA                -0.0110682   -0.0962399    0.0674862
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0132795    0.0010078    0.0254005
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0055476   -0.0104039    0.0212473
