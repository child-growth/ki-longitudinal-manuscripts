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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
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
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
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

agecat                       studyid          country                        exclfeed36    ever_stunted   n_cell      n
---------------------------  ---------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                        0        1      6
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                        1        5      6
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                        0        0      6
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                        1        0      6
0-24 months (no birth st.)   EE               PAKISTAN                       1                        0        0      6
0-24 months (no birth st.)   EE               PAKISTAN                       1                        1        2      6
0-24 months (no birth st.)   EE               PAKISTAN                       0                        0        2      6
0-24 months (no birth st.)   EE               PAKISTAN                       0                        1        2      6
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                        0      132    443
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                        1      225    443
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                        0       22    443
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                        1       64    443
0-24 months (no birth st.)   IRC              INDIA                          1                        0        0      3
0-24 months (no birth st.)   IRC              INDIA                          1                        1        0      3
0-24 months (no birth st.)   IRC              INDIA                          0                        0        1      3
0-24 months (no birth st.)   IRC              INDIA                          0                        1        2      3
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                        0     4970   8764
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                        1     1853   8764
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                        0     1441   8764
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                        1      500   8764
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                        0     1495   3285
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                        1     1083   3285
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                        0      396   3285
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                        1      311   3285
0-24 months (no birth st.)   Keneba           GAMBIA                         1                        0      285   1798
0-24 months (no birth st.)   Keneba           GAMBIA                         1                        1      286   1798
0-24 months (no birth st.)   Keneba           GAMBIA                         0                        0      544   1798
0-24 months (no birth st.)   Keneba           GAMBIA                         0                        1      683   1798
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                        0       18    175
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                        1       12    175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                        0       83    175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                        1       62    175
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                        0       12    209
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                        1       17    209
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                        0       85    209
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                        1       95    209
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                        0       11    195
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                        1        1    195
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                        0      153    195
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                        1       30    195
0-24 months (no birth st.)   MAL-ED           INDIA                          1                        0        4    201
0-24 months (no birth st.)   MAL-ED           INDIA                          1                        1        5    201
0-24 months (no birth st.)   MAL-ED           INDIA                          0                        0       88    201
0-24 months (no birth st.)   MAL-ED           INDIA                          0                        1      104    201
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                        0        4    208
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                        1        1    208
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                        0      150    208
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                        1       53    208
0-24 months (no birth st.)   MAL-ED           PERU                           1                        0        4    251
0-24 months (no birth st.)   MAL-ED           PERU                           1                        1        4    251
0-24 months (no birth st.)   MAL-ED           PERU                           0                        0       97    251
0-24 months (no birth st.)   MAL-ED           PERU                           0                        1      146    251
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                        0        3    244
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                        1        0    244
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                        0      108    244
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                        1      133    244
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0       32    210
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1      175    210
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                        0       86    576
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                        1       64    576
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                        0      253    576
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                        1      173    576
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                        0        0     95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                        1        0     95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                        0       25     95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                        1       70     95
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                        0        4      6
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                        1        2      6
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                        0        0      6
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                        1        0      6
0-6 months (no birth st.)    EE               PAKISTAN                       1                        0        0      6
0-6 months (no birth st.)    EE               PAKISTAN                       1                        1        2      6
0-6 months (no birth st.)    EE               PAKISTAN                       0                        0        3      6
0-6 months (no birth st.)    EE               PAKISTAN                       0                        1        1      6
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                        0      294    443
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                        1       63    443
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                        0       60    443
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                        1       26    443
0-6 months (no birth st.)    IRC              INDIA                          1                        0        0      3
0-6 months (no birth st.)    IRC              INDIA                          1                        1        0      3
0-6 months (no birth st.)    IRC              INDIA                          0                        0        3      3
0-6 months (no birth st.)    IRC              INDIA                          0                        1        0      3
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                        0     5874   8761
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                        1      947   8761
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                        0     1693   8761
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                        1      247   8761
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                        0     2338   3257
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                        1      229   3257
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                        0      618   3257
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                        1       72   3257
0-6 months (no birth st.)    Keneba           GAMBIA                         1                        0      431   1798
0-6 months (no birth st.)    Keneba           GAMBIA                         1                        1      140   1798
0-6 months (no birth st.)    Keneba           GAMBIA                         0                        0      890   1798
0-6 months (no birth st.)    Keneba           GAMBIA                         0                        1      337   1798
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                        0       30    175
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                        1        0    175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                        0      145    175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                        1        0    175
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                        0       21    209
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                        1        8    209
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                        0      143    209
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                        1       37    209
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                        0       12    195
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                        1        0    195
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                        0      163    195
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                        1       20    195
0-6 months (no birth st.)    MAL-ED           INDIA                          1                        0        9    201
0-6 months (no birth st.)    MAL-ED           INDIA                          1                        1        0    201
0-6 months (no birth st.)    MAL-ED           INDIA                          0                        0      147    201
0-6 months (no birth st.)    MAL-ED           INDIA                          0                        1       45    201
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                        0        5    208
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                        1        0    208
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                        0      190    208
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                        1       13    208
0-6 months (no birth st.)    MAL-ED           PERU                           1                        0        6    251
0-6 months (no birth st.)    MAL-ED           PERU                           1                        1        2    251
0-6 months (no birth st.)    MAL-ED           PERU                           0                        0      154    251
0-6 months (no birth st.)    MAL-ED           PERU                           0                        1       89    251
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                        0        3    244
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                        1        0    244
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                        0      167    244
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                        1       74    244
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        2    210
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        1    210
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      144    210
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1       63    210
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                        0      123    576
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                        1       27    576
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                        0      353    576
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                        1       73    576
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                        0        0     95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                        1        0     95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                        0       95     95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                        1        0     95
6-24 months                  CMC-V-BCS-2002   INDIA                          1                        0        1      4
6-24 months                  CMC-V-BCS-2002   INDIA                          1                        1        3      4
6-24 months                  CMC-V-BCS-2002   INDIA                          0                        0        0      4
6-24 months                  CMC-V-BCS-2002   INDIA                          0                        1        0      4
6-24 months                  EE               PAKISTAN                       1                        0        0      3
6-24 months                  EE               PAKISTAN                       1                        1        0      3
6-24 months                  EE               PAKISTAN                       0                        0        2      3
6-24 months                  EE               PAKISTAN                       0                        1        1      3
6-24 months                  GMS-Nepal        NEPAL                          1                        0      131    353
6-24 months                  GMS-Nepal        NEPAL                          1                        1      162    353
6-24 months                  GMS-Nepal        NEPAL                          0                        0       22    353
6-24 months                  GMS-Nepal        NEPAL                          0                        1       38    353
6-24 months                  IRC              INDIA                          1                        0        0      3
6-24 months                  IRC              INDIA                          1                        1        0      3
6-24 months                  IRC              INDIA                          0                        0        1      3
6-24 months                  IRC              INDIA                          0                        1        2      3
6-24 months                  JiVitA-3         BANGLADESH                     1                        0     3216   5370
6-24 months                  JiVitA-3         BANGLADESH                     1                        1      914   5370
6-24 months                  JiVitA-3         BANGLADESH                     0                        0      986   5370
6-24 months                  JiVitA-3         BANGLADESH                     0                        1      254   5370
6-24 months                  JiVitA-4         BANGLADESH                     1                        0     1490   2982
6-24 months                  JiVitA-4         BANGLADESH                     1                        1      856   2982
6-24 months                  JiVitA-4         BANGLADESH                     0                        0      393   2982
6-24 months                  JiVitA-4         BANGLADESH                     0                        1      243   2982
6-24 months                  Keneba           GAMBIA                         1                        0      253   1269
6-24 months                  Keneba           GAMBIA                         1                        1      146   1269
6-24 months                  Keneba           GAMBIA                         0                        0      524   1269
6-24 months                  Keneba           GAMBIA                         0                        1      346   1269
6-24 months                  LCNI-5           MALAWI                         1                        0       16    162
6-24 months                  LCNI-5           MALAWI                         1                        1       12    162
6-24 months                  LCNI-5           MALAWI                         0                        0       72    162
6-24 months                  LCNI-5           MALAWI                         0                        1       62    162
6-24 months                  MAL-ED           BANGLADESH                     1                        0       11    158
6-24 months                  MAL-ED           BANGLADESH                     1                        1        9    158
6-24 months                  MAL-ED           BANGLADESH                     0                        0       80    158
6-24 months                  MAL-ED           BANGLADESH                     0                        1       58    158
6-24 months                  MAL-ED           BRAZIL                         1                        0        8    163
6-24 months                  MAL-ED           BRAZIL                         1                        1        1    163
6-24 months                  MAL-ED           BRAZIL                         0                        0      144    163
6-24 months                  MAL-ED           BRAZIL                         0                        1       10    163
6-24 months                  MAL-ED           INDIA                          1                        0        3    153
6-24 months                  MAL-ED           INDIA                          1                        1        5    153
6-24 months                  MAL-ED           INDIA                          0                        0       86    153
6-24 months                  MAL-ED           INDIA                          0                        1       59    153
6-24 months                  MAL-ED           NEPAL                          1                        0        3    193
6-24 months                  MAL-ED           NEPAL                          1                        1        1    193
6-24 months                  MAL-ED           NEPAL                          0                        0      149    193
6-24 months                  MAL-ED           NEPAL                          0                        1       40    193
6-24 months                  MAL-ED           PERU                           1                        0        2    149
6-24 months                  MAL-ED           PERU                           1                        1        2    149
6-24 months                  MAL-ED           PERU                           0                        0       88    149
6-24 months                  MAL-ED           PERU                           0                        1       57    149
6-24 months                  MAL-ED           SOUTH AFRICA                   1                        0        1    157
6-24 months                  MAL-ED           SOUTH AFRICA                   1                        1        0    157
6-24 months                  MAL-ED           SOUTH AFRICA                   0                        0       97    157
6-24 months                  MAL-ED           SOUTH AFRICA                   0                        1       59    157
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        2    143
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0    143
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0       29    143
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1      112    143
6-24 months                  PROVIDE          BANGLADESH                     1                        0       78    455
6-24 months                  PROVIDE          BANGLADESH                     1                        1       37    455
6-24 months                  PROVIDE          BANGLADESH                     0                        0      240    455
6-24 months                  PROVIDE          BANGLADESH                     0                        1      100    455
6-24 months                  SAS-FoodSuppl    INDIA                          1                        0        0     91
6-24 months                  SAS-FoodSuppl    INDIA                          1                        1        0     91
6-24 months                  SAS-FoodSuppl    INDIA                          0                        0       20     91
6-24 months                  SAS-FoodSuppl    INDIA                          0                        1       71     91


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/4029668a-8797-462b-81d2-f99489031c4c/ddf95d9c-65ec-4d56-8e1b-0e4af27571d2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4029668a-8797-462b-81d2-f99489031c4c/ddf95d9c-65ec-4d56-8e1b-0e4af27571d2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4029668a-8797-462b-81d2-f99489031c4c/ddf95d9c-65ec-4d56-8e1b-0e4af27571d2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4029668a-8797-462b-81d2-f99489031c4c/ddf95d9c-65ec-4d56-8e1b-0e4af27571d2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                0.6295244   0.5793436   0.6797052
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    NA                0.7440027   0.6507154   0.8372899
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                0.2713273   0.2590270   0.2836277
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    NA                0.2587825   0.2391873   0.2783778
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                0.4181436   0.3955555   0.4407317
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    NA                0.4549084   0.4141015   0.4957154
0-24 months (no birth st.)   Keneba      GAMBIA       1                    NA                0.5037122   0.4641354   0.5432890
0-24 months (no birth st.)   Keneba      GAMBIA       0                    NA                0.5547289   0.5274288   0.5820289
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                0.3537732   0.1668341   0.5407123
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    NA                0.4258607   0.3448610   0.5068604
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                0.6191537   0.4231650   0.8151425
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    NA                0.5252260   0.4521734   0.5982786
0-24 months (no birth st.)   PROVIDE     BANGLADESH   1                    NA                0.4030881   0.3283342   0.4778421
0-24 months (no birth st.)   PROVIDE     BANGLADESH   0                    NA                0.4171602   0.3713006   0.4630197
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                0.1763162   0.1365940   0.2160384
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    NA                0.3075351   0.2069201   0.4081501
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                0.1376820   0.1285168   0.1468471
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    NA                0.1320817   0.1177982   0.1463653
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                0.0867744   0.0731122   0.1004366
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    NA                0.1144554   0.0890579   0.1398529
0-6 months (no birth st.)    Keneba      GAMBIA       1                    NA                0.2431592   0.2085300   0.2777884
0-6 months (no birth st.)    Keneba      GAMBIA       0                    NA                0.2759120   0.2513001   0.3005238
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                0.2758621   0.1128022   0.4389220
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    NA                0.2055556   0.1463790   0.2647321
0-6 months (no birth st.)    PROVIDE     BANGLADESH   1                    NA                0.1715399   0.1094100   0.2336697
0-6 months (no birth st.)    PROVIDE     BANGLADESH   0                    NA                0.1746741   0.1387621   0.2105860
6-24 months                  GMS-Nepal   NEPAL        1                    NA                0.5552876   0.4984330   0.6121422
6-24 months                  GMS-Nepal   NEPAL        0                    NA                0.6307950   0.5114302   0.7501599
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                0.2209112   0.2065636   0.2352588
6-24 months                  JiVitA-3    BANGLADESH   0                    NA                0.2049990   0.1769837   0.2330143
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                0.3649092   0.3424187   0.3873998
6-24 months                  JiVitA-4    BANGLADESH   0                    NA                0.3860988   0.3410145   0.4311831
6-24 months                  Keneba      GAMBIA       1                    NA                0.3661804   0.3200158   0.4123449
6-24 months                  Keneba      GAMBIA       0                    NA                0.3967924   0.3645379   0.4290470
6-24 months                  LCNI-5      MALAWI       1                    NA                0.4509974   0.2666287   0.6353661
6-24 months                  LCNI-5      MALAWI       0                    NA                0.4636737   0.3788378   0.5485097
6-24 months                  MAL-ED      BANGLADESH   1                    NA                0.4500000   0.2312745   0.6687255
6-24 months                  MAL-ED      BANGLADESH   0                    NA                0.4202899   0.3376733   0.5029064
6-24 months                  PROVIDE     BANGLADESH   1                    NA                0.3057463   0.2224364   0.3890562
6-24 months                  PROVIDE     BANGLADESH   0                    NA                0.3015865   0.2534661   0.3497068


### Parameter: E(Y)


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        NA                   NA                0.6523702   0.6079743   0.6967661
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   NA                   NA                0.2684847   0.2575491   0.2794203
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   NA                   NA                0.4243531   0.4041458   0.4445604
0-24 months (no birth st.)   Keneba      GAMBIA       NA                   NA                0.5389321   0.5158847   0.5619796
0-24 months (no birth st.)   LCNI-5      MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   MAL-ED      BANGLADESH   NA                   NA                0.5358852   0.4681109   0.6036595
0-24 months (no birth st.)   PROVIDE     BANGLADESH   NA                   NA                0.4114583   0.3712361   0.4516805
0-6 months (no birth st.)    GMS-Nepal   NEPAL        NA                   NA                0.2009029   0.1635496   0.2382563
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   NA                   NA                0.1362858   0.1283472   0.1442245
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   NA                   NA                0.0924163   0.0803439   0.1044888
0-6 months (no birth st.)    Keneba      GAMBIA       NA                   NA                0.2652948   0.2448823   0.2857072
0-6 months (no birth st.)    MAL-ED      BANGLADESH   NA                   NA                0.2153110   0.1594513   0.2711707
0-6 months (no birth st.)    PROVIDE     BANGLADESH   NA                   NA                0.1736111   0.1426515   0.2045707
6-24 months                  GMS-Nepal   NEPAL        NA                   NA                0.5665722   0.5148041   0.6183404
6-24 months                  JiVitA-3    BANGLADESH   NA                   NA                0.2175047   0.2040809   0.2309284
6-24 months                  JiVitA-4    BANGLADESH   NA                   NA                0.3685446   0.3480535   0.3890357
6-24 months                  Keneba      GAMBIA       NA                   NA                0.3877069   0.3608893   0.4145245
6-24 months                  LCNI-5      MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  MAL-ED      BANGLADESH   NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  PROVIDE     BANGLADESH   NA                   NA                0.3010989   0.2589018   0.3432960


### Parameter: RR


agecat                       studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal   NEPAL        0                    1                 1.1818488   1.0185243   1.371363
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   0                    1                 0.9537650   0.8768844   1.037386
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   0                    1                 1.0879239   0.9822674   1.204945
0-24 months (no birth st.)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba      GAMBIA       0                    1                 1.1012814   1.0061660   1.205388
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   LCNI-5      MALAWI       0                    1                 1.2037675   0.6848903   2.115749
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED      BANGLADESH   0                    1                 0.8482966   0.6001381   1.199069
0-24 months (no birth st.)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE     BANGLADESH   0                    1                 1.0349106   0.8400682   1.274944
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal   NEPAL        0                    1                 1.7442245   1.1723911   2.594970
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   0                    1                 0.9593248   0.8470584   1.086471
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   0                    1                 1.3189995   1.0075173   1.726779
0-6 months (no birth st.)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba      GAMBIA       0                    1                 1.1346967   0.9622133   1.338099
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED      BANGLADESH   0                    1                 0.7451389   0.3861012   1.438048
0-6 months (no birth st.)    PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE     BANGLADESH   0                    1                 1.0182709   0.6717091   1.543638
6-24 months                  GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal   NEPAL        0                    1                 1.1359789   0.9184064   1.405095
6-24 months                  JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3    BANGLADESH   0                    1                 0.9279702   0.8033963   1.071860
6-24 months                  JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4    BANGLADESH   0                    1                 1.0580681   0.9300170   1.203750
6-24 months                  Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  Keneba      GAMBIA       0                    1                 1.0835983   0.9346822   1.256240
6-24 months                  LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  LCNI-5      MALAWI       0                    1                 1.0281073   0.6567505   1.609447
6-24 months                  MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED      BANGLADESH   0                    1                 0.9339775   0.5528860   1.577746
6-24 months                  PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE     BANGLADESH   0                    1                 0.9863945   0.7231078   1.345545


### Parameter: PAR


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0228458    0.0018122   0.0438794
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0028426   -0.0077136   0.0020283
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0062095   -0.0037172   0.0161362
0-24 months (no birth st.)   Keneba      GAMBIA       1                    NA                 0.0352200    0.0032052   0.0672347
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.0690839   -0.1026686   0.2408364
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.0832686   -0.2660059   0.0994687
0-24 months (no birth st.)   PROVIDE     BANGLADESH   1                    NA                 0.0083702   -0.0546064   0.0713468
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.0245867    0.0036484   0.0455250
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                -0.0013961   -0.0050708   0.0022785
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0056419   -0.0000519   0.0113358
0-6 months (no birth st.)    Keneba      GAMBIA       1                    NA                 0.0221356   -0.0063491   0.0506202
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                -0.0605511   -0.2099840   0.0888819
0-6 months (no birth st.)    PROVIDE     BANGLADESH   1                    NA                 0.0020712   -0.0512228   0.0553653
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0112846   -0.0106915   0.0332607
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0034065   -0.0102930   0.0034799
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0036354   -0.0069115   0.0141823
6-24 months                  Keneba      GAMBIA       1                    NA                 0.0215265   -0.0165820   0.0596349
6-24 months                  LCNI-5      MALAWI       1                    NA                 0.0057927   -0.1625838   0.1741692
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.0259494   -0.2301676   0.1782688
6-24 months                  PROVIDE     BANGLADESH   1                    NA                -0.0046474   -0.0755860   0.0662912


### Parameter: PAF


agecat                       studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal   NEPAL        1                    NA                 0.0350197    0.0020047   0.0669425
0-24 months (no birth st.)   JiVitA-3    BANGLADESH   1                    NA                -0.0105877   -0.0288662   0.0073661
0-24 months (no birth st.)   JiVitA-4    BANGLADESH   1                    NA                 0.0146329   -0.0090562   0.0377658
0-24 months (no birth st.)   Keneba      GAMBIA       1                    NA                 0.0653514    0.0039283   0.1229868
0-24 months (no birth st.)   LCNI-5      MALAWI       1                    NA                 0.1633741   -0.3612056   0.4857920
0-24 months (no birth st.)   MAL-ED      BANGLADESH   1                    NA                -0.1553851   -0.5523535   0.1400704
0-24 months (no birth st.)   PROVIDE     BANGLADESH   1                    NA                 0.0203428   -0.1453356   0.1620550
0-6 months (no birth st.)    GMS-Nepal   NEPAL        1                    NA                 0.1223810    0.0131205   0.2195449
0-6 months (no birth st.)    JiVitA-3    BANGLADESH   1                    NA                -0.0102442   -0.0374981   0.0162937
0-6 months (no birth st.)    JiVitA-4    BANGLADESH   1                    NA                 0.0610490   -0.0036971   0.1216185
0-6 months (no birth st.)    Keneba      GAMBIA       1                    NA                 0.0834376   -0.0305105   0.1847860
0-6 months (no birth st.)    MAL-ED      BANGLADESH   1                    NA                -0.2812261   -1.2003633   0.2539685
0-6 months (no birth st.)    PROVIDE     BANGLADESH   1                    NA                 0.0119303   -0.3481400   0.2758306
6-24 months                  GMS-Nepal   NEPAL        1                    NA                 0.0199173   -0.0197504   0.0580420
6-24 months                  JiVitA-3    BANGLADESH   1                    NA                -0.0156619   -0.0479541   0.0156353
6-24 months                  JiVitA-4    BANGLADESH   1                    NA                 0.0098642   -0.0191435   0.0380462
6-24 months                  Keneba      GAMBIA       1                    NA                 0.0555226   -0.0480654   0.1488722
6-24 months                  LCNI-5      MALAWI       1                    NA                 0.0126814   -0.4341366   0.3202892
6-24 months                  MAL-ED      BANGLADESH   1                    NA                -0.0611940   -0.6707647   0.3259776
6-24 months                  PROVIDE     BANGLADESH   1                    NA                -0.0154348   -0.2805620   0.1948005
