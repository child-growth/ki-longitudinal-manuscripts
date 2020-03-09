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

**Outcome Variable:** ever_wasted

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
* W_parity
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
* delta_W_parity
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        impfloor    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ---------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     0      145     258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     1      113     258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     0        0     258
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     1        0     258
0-24 months (no birth wast)   CONTENT          PERU                           1                     0      197     215
0-24 months (no birth wast)   CONTENT          PERU                           1                     1        4     215
0-24 months (no birth wast)   CONTENT          PERU                           0                     0       14     215
0-24 months (no birth wast)   CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                     0       47     518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                     1       46     518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                     0      211     518
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                     1      214     518
0-24 months (no birth wast)   IRC              INDIA                          1                     0      135     305
0-24 months (no birth wast)   IRC              INDIA                          1                     1      170     305
0-24 months (no birth wast)   IRC              INDIA                          0                     0        0     305
0-24 months (no birth wast)   IRC              INDIA                          0                     1        0     305
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     0     1773   26465
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     1      314   26465
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     0    20212   26465
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     1     4166   26465
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     0      525    5380
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     1      122    5380
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     0     3468    5380
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     1     1265    5380
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                     0      173     242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                     1       50     242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                     0       12     242
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                     1        7     242
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                     0      195     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                     1       13     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                     0        2     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                     1        0     210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                     0      135     231
0-24 months (no birth wast)   MAL-ED           INDIA                          1                     1       81     231
0-24 months (no birth wast)   MAL-ED           INDIA                          0                     0        8     231
0-24 months (no birth wast)   MAL-ED           INDIA                          0                     1        7     231
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                     0       86     229
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                     1       17     229
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                     0      102     229
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                     1       24     229
0-24 months (no birth wast)   MAL-ED           PERU                           1                     0       55     272
0-24 months (no birth wast)   MAL-ED           PERU                           1                     1        4     272
0-24 months (no birth wast)   MAL-ED           PERU                           0                     0      196     272
0-24 months (no birth wast)   MAL-ED           PERU                           0                     1       17     272
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                     0      195     257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                     1       41     257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                     0       18     257
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                     1        3     257
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       12     248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        2     248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      202     248
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       32     248
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                     0      380     599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                     1      152     599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                     0       42     599
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                     1       25     599
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     0      498     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     1       78     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     0      148     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     1       30     754
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     0      523     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     1      103     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     0       42     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     1       19     687
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     0      173     246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     1       73     246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     0        0     246
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     1        0     246
0-6 months (no birth wast)    CONTENT          PERU                           1                     0      198     215
0-6 months (no birth wast)    CONTENT          PERU                           1                     1        3     215
0-6 months (no birth wast)    CONTENT          PERU                           0                     0       14     215
0-6 months (no birth wast)    CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                     0       71     504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                     1       19     504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                     0      332     504
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                     1       82     504
0-6 months (no birth wast)    IRC              INDIA                          1                     0      179     291
0-6 months (no birth wast)    IRC              INDIA                          1                     1      112     291
0-6 months (no birth wast)    IRC              INDIA                          0                     0        0     291
0-6 months (no birth wast)    IRC              INDIA                          0                     1        0     291
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     0     1924   26171
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     1      139   26171
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     0    22370   26171
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     1     1738   26171
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     0      587    4945
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     1       14    4945
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     0     4233    4945
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     1      111    4945
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                     0      208     241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                     1       14     241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                     0       15     241
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                     1        4     241
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                     0      200     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                     1        8     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                     0        2     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                     1        0     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                     0      179     229
0-6 months (no birth wast)    MAL-ED           INDIA                          1                     1       35     229
0-6 months (no birth wast)    MAL-ED           INDIA                          0                     0       14     229
0-6 months (no birth wast)    MAL-ED           INDIA                          0                     1        1     229
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                     0       94     227
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                     1        8     227
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                     0      118     227
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                     1        7     227
0-6 months (no birth wast)    MAL-ED           PERU                           1                     0       58     272
0-6 months (no birth wast)    MAL-ED           PERU                           1                     1        1     272
0-6 months (no birth wast)    MAL-ED           PERU                           0                     0      209     272
0-6 months (no birth wast)    MAL-ED           PERU                           0                     1        4     272
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                     0      223     256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                     1       12     256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                     0       20     256
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                     1        1     256
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       14     248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0     248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      224     248
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       10     248
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                     0      478     581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                     1       41     581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                     0       57     581
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                     1        5     581
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     0      559     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     1       13     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     0      170     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     1        7     749
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     0      591     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     1       31     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     0       55     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     1        6     683
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     0      196     261
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     1       65     261
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     0        0     261
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     1        0     261
6-24 months                   CONTENT          PERU                           1                     0      199     215
6-24 months                   CONTENT          PERU                           1                     1        2     215
6-24 months                   CONTENT          PERU                           0                     0       14     215
6-24 months                   CONTENT          PERU                           0                     1        0     215
6-24 months                   GMS-Nepal        NEPAL                          1                     0       46     463
6-24 months                   GMS-Nepal        NEPAL                          1                     1       37     463
6-24 months                   GMS-Nepal        NEPAL                          0                     0      199     463
6-24 months                   GMS-Nepal        NEPAL                          0                     1      181     463
6-24 months                   IRC              INDIA                          1                     0      207     306
6-24 months                   IRC              INDIA                          1                     1       99     306
6-24 months                   IRC              INDIA                          0                     0        0     306
6-24 months                   IRC              INDIA                          0                     1        0     306
6-24 months                   JiVitA-3         BANGLADESH                     1                     0     1316   17259
6-24 months                   JiVitA-3         BANGLADESH                     1                     1      191   17259
6-24 months                   JiVitA-3         BANGLADESH                     0                     0    13117   17259
6-24 months                   JiVitA-3         BANGLADESH                     0                     1     2635   17259
6-24 months                   JiVitA-4         BANGLADESH                     1                     0      533    5422
6-24 months                   JiVitA-4         BANGLADESH                     1                     1      112    5422
6-24 months                   JiVitA-4         BANGLADESH                     0                     0     3548    5422
6-24 months                   JiVitA-4         BANGLADESH                     0                     1     1229    5422
6-24 months                   MAL-ED           BANGLADESH                     1                     0      183     240
6-24 months                   MAL-ED           BANGLADESH                     1                     1       38     240
6-24 months                   MAL-ED           BANGLADESH                     0                     0       14     240
6-24 months                   MAL-ED           BANGLADESH                     0                     1        5     240
6-24 months                   MAL-ED           BRAZIL                         1                     0      199     207
6-24 months                   MAL-ED           BRAZIL                         1                     1        6     207
6-24 months                   MAL-ED           BRAZIL                         0                     0        2     207
6-24 months                   MAL-ED           BRAZIL                         0                     1        0     207
6-24 months                   MAL-ED           INDIA                          1                     0      163     235
6-24 months                   MAL-ED           INDIA                          1                     1       57     235
6-24 months                   MAL-ED           INDIA                          0                     0        8     235
6-24 months                   MAL-ED           INDIA                          0                     1        7     235
6-24 months                   MAL-ED           NEPAL                          1                     0       89     228
6-24 months                   MAL-ED           NEPAL                          1                     1       13     228
6-24 months                   MAL-ED           NEPAL                          0                     0      107     228
6-24 months                   MAL-ED           NEPAL                          0                     1       19     228
6-24 months                   MAL-ED           PERU                           1                     0       54     270
6-24 months                   MAL-ED           PERU                           1                     1        4     270
6-24 months                   MAL-ED           PERU                           0                     0      198     270
6-24 months                   MAL-ED           PERU                           0                     1       14     270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                     0      199     255
6-24 months                   MAL-ED           SOUTH AFRICA                   1                     1       35     255
6-24 months                   MAL-ED           SOUTH AFRICA                   0                     0       19     255
6-24 months                   MAL-ED           SOUTH AFRICA                   0                     1        2     255
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       10     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        2     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      205     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1       26     243
6-24 months                   NIH-Birth        BANGLADESH                     1                     0      344     539
6-24 months                   NIH-Birth        BANGLADESH                     1                     1      135     539
6-24 months                   NIH-Birth        BANGLADESH                     0                     0       37     539
6-24 months                   NIH-Birth        BANGLADESH                     0                     1       23     539
6-24 months                   NIH-Crypto       BANGLADESH                     1                     0      481     730
6-24 months                   NIH-Crypto       BANGLADESH                     1                     1       71     730
6-24 months                   NIH-Crypto       BANGLADESH                     0                     0      153     730
6-24 months                   NIH-Crypto       BANGLADESH                     0                     1       25     730
6-24 months                   PROVIDE          BANGLADESH                     1                     0      482     615
6-24 months                   PROVIDE          BANGLADESH                     1                     1       83     615
6-24 months                   PROVIDE          BANGLADESH                     0                     0       34     615
6-24 months                   PROVIDE          BANGLADESH                     0                     1       16     615


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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




# Results Detail

## Results Plots
![](/tmp/fbb7806c-0dc9-4dc5-a17e-7187db0a381e/433b30ab-ef83-4c46-a5b0-e69fb01bcbd3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fbb7806c-0dc9-4dc5-a17e-7187db0a381e/433b30ab-ef83-4c46-a5b0-e69fb01bcbd3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fbb7806c-0dc9-4dc5-a17e-7187db0a381e/433b30ab-ef83-4c46-a5b0-e69fb01bcbd3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fbb7806c-0dc9-4dc5-a17e-7187db0a381e/433b30ab-ef83-4c46-a5b0-e69fb01bcbd3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal    NEPAL        1                    NA                0.5402170   0.4348992   0.6455348
0-24 months (no birth wast)   GMS-Nepal    NEPAL        0                    NA                0.5043193   0.4562518   0.5523867
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   1                    NA                0.1734554   0.1542229   0.1926880
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   0                    NA                0.1691078   0.1634603   0.1747553
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   1                    NA                0.2135568   0.1682393   0.2588743
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   0                    NA                0.2643714   0.2470427   0.2817001
0-24 months (no birth wast)   MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   MAL-ED       INDIA        1                    NA                0.3750000   0.3102978   0.4397022
0-24 months (no birth wast)   MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   MAL-ED       NEPAL        1                    NA                0.1760068   0.1011553   0.2508582
0-24 months (no birth wast)   MAL-ED       NEPAL        0                    NA                0.1834406   0.1151279   0.2517533
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   1                    NA                0.2871079   0.2486142   0.3256015
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0                    NA                0.3689550   0.2447179   0.4931922
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   1                    NA                0.1357900   0.1078446   0.1637353
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0                    NA                0.1739391   0.1193748   0.2285034
0-24 months (no birth wast)   PROVIDE      BANGLADESH   1                    NA                0.1641659   0.1351096   0.1932222
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0                    NA                0.3064899   0.1867396   0.4262402
0-6 months (no birth wast)    GMS-Nepal    NEPAL        1                    NA                0.2263388   0.1416059   0.3110717
0-6 months (no birth wast)    GMS-Nepal    NEPAL        0                    NA                0.1986929   0.1602518   0.2371339
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   1                    NA                0.0693998   0.0585762   0.0802234
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   0                    NA                0.0715264   0.0676157   0.0754371
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   1                    NA                0.0131668   0.0030145   0.0233191
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   0                    NA                0.0247942   0.0198483   0.0297400
0-6 months (no birth wast)    MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    MAL-ED       NEPAL        0                    NA                0.0560000   0.0156046   0.0963954
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    PROVIDE      BANGLADESH   1                    NA                0.0498392   0.0327251   0.0669534
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
6-24 months                   GMS-Nepal    NEPAL        1                    NA                0.4560178   0.3425556   0.5694799
6-24 months                   GMS-Nepal    NEPAL        0                    NA                0.4761956   0.4257398   0.5266514
6-24 months                   JiVitA-3     BANGLADESH   1                    NA                0.1445775   0.1211981   0.1679569
6-24 months                   JiVitA-3     BANGLADESH   0                    NA                0.1639988   0.1574428   0.1705547
6-24 months                   JiVitA-4     BANGLADESH   1                    NA                0.1930980   0.1485716   0.2376244
6-24 months                   JiVitA-4     BANGLADESH   0                    NA                0.2546486   0.2375949   0.2717022
6-24 months                   MAL-ED       BANGLADESH   1                    NA                0.1719457   0.1220936   0.2217978
6-24 months                   MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   MAL-ED       NEPAL        1                    NA                0.1356353   0.0655833   0.2056872
6-24 months                   MAL-ED       NEPAL        0                    NA                0.1428509   0.0808071   0.2048946
6-24 months                   NIH-Birth    BANGLADESH   1                    NA                0.2847270   0.2442576   0.3251965
6-24 months                   NIH-Birth    BANGLADESH   0                    NA                0.3675773   0.2383092   0.4968454
6-24 months                   NIH-Crypto   BANGLADESH   1                    NA                0.1290148   0.1010670   0.1569625
6-24 months                   NIH-Crypto   BANGLADESH   0                    NA                0.1381799   0.0873944   0.1889654
6-24 months                   PROVIDE      BANGLADESH   1                    NA                0.1469911   0.1177564   0.1762257
6-24 months                   PROVIDE      BANGLADESH   0                    NA                0.3099962   0.1746583   0.4453341


### Parameter: E(Y)


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal    NEPAL        NA                   NA                0.5019305   0.4588313   0.5450297
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   NA                   NA                0.1692802   0.1639950   0.1745654
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   NA                   NA                0.2578067   0.2441658   0.2714476
0-24 months (no birth wast)   MAL-ED       BANGLADESH   NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   MAL-ED       INDIA        NA                   NA                0.3809524   0.3181926   0.4437122
0-24 months (no birth wast)   MAL-ED       NEPAL        NA                   NA                0.1790393   0.1292752   0.2288034
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   NA                   NA                0.2954925   0.2589234   0.3320615
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-6 months (no birth wast)    GMS-Nepal    NEPAL        NA                   NA                0.2003968   0.1654147   0.2353790
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   NA                   NA                0.0717206   0.0680809   0.0753604
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   NA                   NA                0.0252781   0.0205710   0.0299851
0-6 months (no birth wast)    MAL-ED       NEPAL        NA                   NA                0.0660793   0.0336915   0.0984671
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    PROVIDE      BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
6-24 months                   GMS-Nepal    NEPAL        NA                   NA                0.4708423   0.4253270   0.5163576
6-24 months                   JiVitA-3     BANGLADESH   NA                   NA                0.1637407   0.1576229   0.1698584
6-24 months                   JiVitA-4     BANGLADESH   NA                   NA                0.2473257   0.2337872   0.2608642
6-24 months                   MAL-ED       BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   MAL-ED       NEPAL        NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   NIH-Birth    BANGLADESH   NA                   NA                0.2931354   0.2546710   0.3315999
6-24 months                   NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447


### Parameter: RR


agecat                        studyid      country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal    NEPAL        0                    1                 0.9335494   0.7511996   1.160164
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   0                    1                 0.9749352   0.8690789   1.093685
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   0                    1                 1.2379444   0.9914686   1.545693
0-24 months (no birth wast)   MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       BANGLADESH   0                    1                 1.6431579   0.8675868   3.112044
0-24 months (no birth wast)   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       INDIA        0                    1                 1.2444444   0.7044915   2.198241
0-24 months (no birth wast)   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       NEPAL        0                    1                 1.0422362   0.5938072   1.829308
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   0                    1                 1.2850745   0.8946332   1.845915
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   0                    1                 1.2809424   0.8798625   1.864852
0-24 months (no birth wast)   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE      BANGLADESH   0                    1                 1.8669523   1.2161669   2.865981
0-6 months (no birth wast)    GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal    NEPAL        0                    1                 0.8778559   0.5756899   1.338622
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   0                    1                 1.0306418   0.8748116   1.214230
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   0                    1                 1.8830814   0.8461895   4.190546
0-6 months (no birth wast)    MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED       NEPAL        0                    1                 0.7140000   0.2673693   1.906711
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   0                    1                 1.0208497   0.4187728   2.488543
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   0                    1                 1.7401130   0.7047572   4.296506
0-6 months (no birth wast)    PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE      BANGLADESH   0                    1                 1.9735590   0.8568903   4.545430
6-24 months                   GMS-Nepal    NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal    NEPAL        0                    1                 1.0442479   0.7967688   1.368595
6-24 months                   JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3     BANGLADESH   0                    1                 1.1343308   0.9620874   1.337411
6-24 months                   JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4     BANGLADESH   0                    1                 1.3187528   1.0375458   1.676176
6-24 months                   MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       BANGLADESH   0                    1                 1.5304709   0.6823433   3.432790
6-24 months                   MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       INDIA        0                    1                 1.8011696   1.0018550   3.238205
6-24 months                   MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       NEPAL        0                    1                 1.0531986   0.5361448   2.068895
6-24 months                   NIH-Birth    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth    BANGLADESH   0                    1                 1.2909813   0.8842694   1.884757
6-24 months                   NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto   BANGLADESH   0                    1                 1.0710398   0.6993939   1.640172
6-24 months                   PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE      BANGLADESH   0                    1                 2.1089459   1.3050815   3.407950


### Parameter: PAR


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal    NEPAL        1                    NA                -0.0382865   -0.1353249   0.0587519
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   1                    NA                -0.0041752   -0.0230718   0.0147213
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   1                    NA                 0.0442499   -0.0004996   0.0889994
0-24 months (no birth wast)   MAL-ED       BANGLADESH   1                    NA                 0.0113219   -0.0069463   0.0295901
0-24 months (no birth wast)   MAL-ED       INDIA        1                    NA                 0.0059524   -0.0112553   0.0231601
0-24 months (no birth wast)   MAL-ED       NEPAL        1                    NA                 0.0030325   -0.0538709   0.0599360
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   1                    NA                 0.0083846   -0.0054094   0.0221786
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   1                    NA                 0.0074461   -0.0072194   0.0221116
0-24 months (no birth wast)   PROVIDE      BANGLADESH   1                    NA                 0.0134178    0.0024076   0.0244280
0-6 months (no birth wast)    GMS-Nepal    NEPAL        1                    NA                -0.0259420   -0.1026269   0.0507429
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   1                    NA                 0.0023208   -0.0084665   0.0131080
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   1                    NA                 0.0121112    0.0023174   0.0219051
0-6 months (no birth wast)    MAL-ED       NEPAL        1                    NA                -0.0123521   -0.0487664   0.0240623
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   1                    NA                 0.0001758   -0.0074758   0.0078273
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   1                    NA                 0.0039750   -0.0034211   0.0113711
0-6 months (no birth wast)    PROVIDE      BANGLADESH   1                    NA                 0.0043335   -0.0025968   0.0112639
6-24 months                   GMS-Nepal    NEPAL        1                    NA                 0.0148246   -0.0889534   0.1186025
6-24 months                   JiVitA-3     BANGLADESH   1                    NA                 0.0191631   -0.0035881   0.0419144
6-24 months                   JiVitA-4     BANGLADESH   1                    NA                 0.0542277    0.0101365   0.0983189
6-24 months                   MAL-ED       BANGLADESH   1                    NA                 0.0072210   -0.0092733   0.0237152
6-24 months                   MAL-ED       INDIA        1                    NA                 0.0132495   -0.0045489   0.0310479
6-24 months                   MAL-ED       NEPAL        1                    NA                 0.0047156   -0.0495313   0.0589626
6-24 months                   NIH-Birth    BANGLADESH   1                    NA                 0.0084084   -0.0060780   0.0228948
6-24 months                   NIH-Crypto   BANGLADESH   1                    NA                 0.0024921   -0.0116540   0.0166382
6-24 months                   PROVIDE      BANGLADESH   1                    NA                 0.0139845    0.0025560   0.0254131


### Parameter: PAF


agecat                        studyid      country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal    NEPAL        1                    NA                -0.0762784   -0.2883640   0.1008944
0-24 months (no birth wast)   JiVitA-3     BANGLADESH   1                    NA                -0.0246647   -0.1426688   0.0811531
0-24 months (no birth wast)   JiVitA-4     BANGLADESH   1                    NA                 0.1716398   -0.0205176   0.3276151
0-24 months (no birth wast)   MAL-ED       BANGLADESH   1                    NA                 0.0480686   -0.0323921   0.1222585
0-24 months (no birth wast)   MAL-ED       INDIA        1                    NA                 0.0156250   -0.0306138   0.0597893
0-24 months (no birth wast)   MAL-ED       NEPAL        1                    NA                 0.0169379   -0.3582004   0.2884620
0-24 months (no birth wast)   NIH-Birth    BANGLADESH   1                    NA                 0.0283750   -0.0194173   0.0739267
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH   1                    NA                 0.0519850   -0.0557537   0.1487290
0-24 months (no birth wast)   PROVIDE      BANGLADESH   1                    NA                 0.0755576    0.0121162   0.1349248
0-6 months (no birth wast)    GMS-Nepal    NEPAL        1                    NA                -0.1294530   -0.5854195   0.1953775
0-6 months (no birth wast)    JiVitA-3     BANGLADESH   1                    NA                 0.0323586   -0.1300733   0.1714431
0-6 months (no birth wast)    JiVitA-4     BANGLADESH   1                    NA                 0.4791209   -0.0869639   0.7503919
0-6 months (no birth wast)    MAL-ED       NEPAL        1                    NA                -0.1869281   -0.8781388   0.2498966
0-6 months (no birth wast)    NIH-Birth    BANGLADESH   1                    NA                 0.0022200   -0.0992559   0.0943283
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH   1                    NA                 0.1488636   -0.1685294   0.3800472
0-6 months (no birth wast)    PROVIDE      BANGLADESH   1                    NA                 0.0799948   -0.0547090   0.1974947
6-24 months                   GMS-Nepal    NEPAL        1                    NA                 0.0314852   -0.2160589   0.2286385
6-24 months                   JiVitA-3     BANGLADESH   1                    NA                 0.1170334   -0.0333680   0.2455446
6-24 months                   JiVitA-4     BANGLADESH   1                    NA                 0.2192562    0.0203133   0.3778002
6-24 months                   MAL-ED       BANGLADESH   1                    NA                 0.0403031   -0.0559017   0.1277425
6-24 months                   MAL-ED       INDIA        1                    NA                 0.0486506   -0.0187547   0.1115960
6-24 months                   MAL-ED       NEPAL        1                    NA                 0.0335988   -0.4415967   0.3521549
6-24 months                   NIH-Birth    BANGLADESH   1                    NA                 0.0286843   -0.0219806   0.0768375
6-24 months                   NIH-Crypto   BANGLADESH   1                    NA                 0.0189503   -0.0946837   0.1207885
6-24 months                   PROVIDE      BANGLADESH   1                    NA                 0.0868737    0.0142676   0.1541318
