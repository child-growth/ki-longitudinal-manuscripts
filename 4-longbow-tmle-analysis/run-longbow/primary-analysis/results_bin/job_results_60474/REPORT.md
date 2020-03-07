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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** impsan

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
* impfloor
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
* delta_impfloor
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid      country                        impsan    ever_swasted   n_cell       n
----------------------------  -----------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                    0       81     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                    1        0     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                    0      763     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                    1       26     870
0-24 months (no birth wast)   COHORTS      INDIA                          1                    0     1908    5168
0-24 months (no birth wast)   COHORTS      INDIA                          1                    1       58    5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                    0     3009    5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                    1      193    5168
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                    0      169    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                    1       10    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                    0      917    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                    1       89    1185
0-24 months (no birth wast)   CONTENT      PERU                           1                    0      200     215
0-24 months (no birth wast)   CONTENT      PERU                           1                    1        1     215
0-24 months (no birth wast)   CONTENT      PERU                           0                    0       14     215
0-24 months (no birth wast)   CONTENT      PERU                           0                    1        0     215
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     1                    0    17885   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     1                    1      626   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     0                    0     7670   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     0                    1      321   26502
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     1                    0     3991    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     1                    1      170    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     0                    0     1159    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     0                    1       61    5381
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                    0        3     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                    1        0     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                    0      800     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                    1        7     810
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                    0      193     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                    1       11     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                    0       37     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                    1        1     242
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                    0      202     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                    1        4     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                    0        4     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                    1        0     210
0-24 months (no birth wast)   MAL-ED       INDIA                          1                    0      102     229
0-24 months (no birth wast)   MAL-ED       INDIA                          1                    1        3     229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                    0      116     229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                    1        8     229
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                    0      232     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                    1        3     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                    0        1     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                    1        0     236
0-24 months (no birth wast)   MAL-ED       PERU                           1                    0       65     263
0-24 months (no birth wast)   MAL-ED       PERU                           1                    1        0     263
0-24 months (no birth wast)   MAL-ED       PERU                           0                    0      194     263
0-24 months (no birth wast)   MAL-ED       PERU                           0                    1        4     263
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                    0        4     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                    1        0     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                    0      234     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                    1       12     250
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      233     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        8     241
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                    0      216     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                    1       17     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                    0      332     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                    1       37     602
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                    0      634     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                    1       17     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                    0       89     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                    1        3     743
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                    0       50      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                    1        0      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                    0        2      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                    1        0      52
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                    0       67     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                    1        0     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                    0      582     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                    1        1     650
0-6 months (no birth wast)    COHORTS      INDIA                          1                    0     1760    4723
0-6 months (no birth wast)    COHORTS      INDIA                          1                    1       22    4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                    0     2882    4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                    1       59    4723
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                    0      176    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                    1        3    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                    0      987    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                    1       14    1180
0-6 months (no birth wast)    CONTENT      PERU                           1                    0      200     215
0-6 months (no birth wast)    CONTENT      PERU                           1                    1        1     215
0-6 months (no birth wast)    CONTENT      PERU                           0                    0       14     215
0-6 months (no birth wast)    CONTENT      PERU                           0                    1        0     215
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     1                    0    18019   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     1                    1      288   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     0                    0     7753   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     0                    1      147   26207
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     1                    0     3819    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     1                    1       19    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     0                    0     1105    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     0                    1        2    4945
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                    0        0     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                    1        0     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                    0      265     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                    1        0     265
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                    0      197     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                    1        6     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                    0       37     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                    1        1     241
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                    0      203     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                    1        3     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                    0        4     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                    1        0     210
0-6 months (no birth wast)    MAL-ED       INDIA                          1                    0      102     227
0-6 months (no birth wast)    MAL-ED       INDIA                          1                    1        2     227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                    0      119     227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                    1        4     227
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                    0      232     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                    1        1     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                    0        1     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                    1        0     234
0-6 months (no birth wast)    MAL-ED       PERU                           1                    0       65     263
0-6 months (no birth wast)    MAL-ED       PERU                           1                    1        0     263
0-6 months (no birth wast)    MAL-ED       PERU                           0                    0      197     263
0-6 months (no birth wast)    MAL-ED       PERU                           0                    1        1     263
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                    0        4     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                    1        0     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                    0      242     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                    1        3     249
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      238     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        3     241
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                    0      224     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                    1        3     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                    0      351     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                    1        6     584
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                    0      646     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                    1        1     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                    0       91     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                    1        0     738
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                    0       50      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                    1        0      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                    0        2      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                    1        0      52
6-24 months                   COHORTS      GUATEMALA                      1                    0       80     858
6-24 months                   COHORTS      GUATEMALA                      1                    1        0     858
6-24 months                   COHORTS      GUATEMALA                      0                    0      749     858
6-24 months                   COHORTS      GUATEMALA                      0                    1       29     858
6-24 months                   COHORTS      INDIA                          1                    0     1863    5025
6-24 months                   COHORTS      INDIA                          1                    1       40    5025
6-24 months                   COHORTS      INDIA                          0                    0     2969    5025
6-24 months                   COHORTS      INDIA                          0                    1      153    5025
6-24 months                   COHORTS      PHILIPPINES                    1                    0      140    1113
6-24 months                   COHORTS      PHILIPPINES                    1                    1        7    1113
6-24 months                   COHORTS      PHILIPPINES                    0                    0      889    1113
6-24 months                   COHORTS      PHILIPPINES                    0                    1       77    1113
6-24 months                   CONTENT      PERU                           1                    0      201     215
6-24 months                   CONTENT      PERU                           1                    1        0     215
6-24 months                   CONTENT      PERU                           0                    0       14     215
6-24 months                   CONTENT      PERU                           0                    1        0     215
6-24 months                   JiVitA-3     BANGLADESH                     1                    0    12012   17286
6-24 months                   JiVitA-3     BANGLADESH                     1                    1      359   17286
6-24 months                   JiVitA-3     BANGLADESH                     0                    0     4722   17286
6-24 months                   JiVitA-3     BANGLADESH                     0                    1      193   17286
6-24 months                   JiVitA-4     BANGLADESH                     1                    0     4016    5423
6-24 months                   JiVitA-4     BANGLADESH                     1                    1      170    5423
6-24 months                   JiVitA-4     BANGLADESH                     0                    0     1169    5423
6-24 months                   JiVitA-4     BANGLADESH                     0                    1       68    5423
6-24 months                   LCNI-5       MALAWI                         1                    0        3     801
6-24 months                   LCNI-5       MALAWI                         1                    1        0     801
6-24 months                   LCNI-5       MALAWI                         0                    0      790     801
6-24 months                   LCNI-5       MALAWI                         0                    1        8     801
6-24 months                   MAL-ED       BANGLADESH                     1                    0      197     240
6-24 months                   MAL-ED       BANGLADESH                     1                    1        5     240
6-24 months                   MAL-ED       BANGLADESH                     0                    0       38     240
6-24 months                   MAL-ED       BANGLADESH                     0                    1        0     240
6-24 months                   MAL-ED       BRAZIL                         1                    0      202     207
6-24 months                   MAL-ED       BRAZIL                         1                    1        1     207
6-24 months                   MAL-ED       BRAZIL                         0                    0        4     207
6-24 months                   MAL-ED       BRAZIL                         0                    1        0     207
6-24 months                   MAL-ED       INDIA                          1                    0      107     233
6-24 months                   MAL-ED       INDIA                          1                    1        1     233
6-24 months                   MAL-ED       INDIA                          0                    0      121     233
6-24 months                   MAL-ED       INDIA                          0                    1        4     233
6-24 months                   MAL-ED       NEPAL                          1                    0      232     235
6-24 months                   MAL-ED       NEPAL                          1                    1        2     235
6-24 months                   MAL-ED       NEPAL                          0                    0        1     235
6-24 months                   MAL-ED       NEPAL                          0                    1        0     235
6-24 months                   MAL-ED       PERU                           1                    0       65     263
6-24 months                   MAL-ED       PERU                           1                    1        0     263
6-24 months                   MAL-ED       PERU                           0                    0      195     263
6-24 months                   MAL-ED       PERU                           0                    1        3     263
6-24 months                   MAL-ED       SOUTH AFRICA                   1                    0        4     250
6-24 months                   MAL-ED       SOUTH AFRICA                   1                    1        0     250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                    0      236     250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                    1       10     250
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    0        0     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                    1        0     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    0      232     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                    1        5     237
6-24 months                   NIH-Birth    BANGLADESH                     1                    0      194     542
6-24 months                   NIH-Birth    BANGLADESH                     1                    1       14     542
6-24 months                   NIH-Birth    BANGLADESH                     0                    0      300     542
6-24 months                   NIH-Birth    BANGLADESH                     0                    1       34     542
6-24 months                   NIH-Crypto   BANGLADESH                     1                    0      613     719
6-24 months                   NIH-Crypto   BANGLADESH                     1                    1       17     719
6-24 months                   NIH-Crypto   BANGLADESH                     0                    0       86     719
6-24 months                   NIH-Crypto   BANGLADESH                     0                    1        3     719
6-24 months                   PROVIDE      BANGLADESH                     1                    0       10      10
6-24 months                   PROVIDE      BANGLADESH                     1                    1        0      10
6-24 months                   PROVIDE      BANGLADESH                     0                    0        0      10
6-24 months                   PROVIDE      BANGLADESH                     0                    1        0      10


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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

* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/b953f944-9ec5-4c5a-b719-b71a4010082c/8646b38e-2295-4b5a-8a53-a215e51dedc5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b953f944-9ec5-4c5a-b719-b71a4010082c/8646b38e-2295-4b5a-8a53-a215e51dedc5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b953f944-9ec5-4c5a-b719-b71a4010082c/8646b38e-2295-4b5a-8a53-a215e51dedc5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b953f944-9ec5-4c5a-b719-b71a4010082c/8646b38e-2295-4b5a-8a53-a215e51dedc5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                0.0359411   0.0263607   0.0455214
0-24 months (no birth wast)   COHORTS     INDIA         0                    NA                0.0541619   0.0464459   0.0618779
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                0.0467587   0.0104859   0.0830315
0-24 months (no birth wast)   COHORTS     PHILIPPINES   0                    NA                0.0841426   0.0672737   0.1010114
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    1                    NA                0.0352562   0.0317037   0.0388088
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    0                    NA                0.0413519   0.0346057   0.0480982
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    1                    NA                0.0432799   0.0363019   0.0502578
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    0                    NA                0.0532160   0.0292681   0.0771639
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                0.0884885   0.0491060   0.1278710
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    0                    NA                0.0951895   0.0655435   0.1248356
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                0.0138204   0.0077222   0.0199187
0-6 months (no birth wast)    COHORTS     INDIA         0                    NA                0.0186835   0.0138491   0.0235179
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    1                    NA                0.0157896   0.0135345   0.0180448
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    0                    NA                0.0162242   0.0121201   0.0203283
6-24 months                   COHORTS     INDIA         1                    NA                0.0267925   0.0184209   0.0351641
6-24 months                   COHORTS     INDIA         0                    NA                0.0437096   0.0366056   0.0508137
6-24 months                   COHORTS     PHILIPPINES   1                    NA                0.0476190   0.0131777   0.0820604
6-24 months                   COHORTS     PHILIPPINES   0                    NA                0.0797101   0.0626228   0.0967975
6-24 months                   JiVitA-3    BANGLADESH    1                    NA                0.0316866   0.0275773   0.0357959
6-24 months                   JiVitA-3    BANGLADESH    0                    NA                0.0400001   0.0316001   0.0484001
6-24 months                   JiVitA-4    BANGLADESH    1                    NA                0.0433844   0.0363459   0.0504230
6-24 months                   JiVitA-4    BANGLADESH    0                    NA                0.0605934   0.0370736   0.0841132
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                0.0814656   0.0412602   0.1216710
6-24 months                   NIH-Birth   BANGLADESH    0                    NA                0.0957493   0.0643643   0.1271343


### Parameter: E(Y)


agecat                        studyid     country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         NA                   NA                0.0485681   0.0427068   0.0544294
0-24 months (no birth wast)   COHORTS     PHILIPPINES   NA                   NA                0.0835443   0.0677832   0.0993054
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    NA                   NA                0.0357332   0.0331536   0.0383127
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    NA                   NA                0.0429288   0.0372183   0.0486393
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    NA                   NA                0.0897010   0.0668555   0.1125465
0-6 months (no birth wast)    COHORTS     INDIA         NA                   NA                0.0171501   0.0134470   0.0208532
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    NA                   NA                0.0165986   0.0147809   0.0184163
6-24 months                   COHORTS     INDIA         NA                   NA                0.0384080   0.0330939   0.0437221
6-24 months                   COHORTS     PHILIPPINES   NA                   NA                0.0754717   0.0599461   0.0909973
6-24 months                   JiVitA-3    BANGLADESH    NA                   NA                0.0319334   0.0290402   0.0348265
6-24 months                   JiVitA-4    BANGLADESH    NA                   NA                0.0438871   0.0380629   0.0497114
6-24 months                   NIH-Birth   BANGLADESH    NA                   NA                0.0885609   0.0646203   0.1125014


### Parameter: RR


agecat                        studyid     country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS     INDIA         0                    1                 1.506964   1.1144635   2.037700
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS     PHILIPPINES   0                    1                 1.799507   0.8072041   4.011657
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    0                    1                 1.172897   0.9730387   1.413805
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    0                    1                 1.229578   0.7564003   1.998759
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    0                    1                 1.075727   0.6263847   1.847410
0-6 months (no birth wast)    COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS     INDIA         0                    1                 1.351875   0.8106830   2.254353
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    0                    1                 1.027521   0.7728142   1.366176
6-24 months                   COHORTS     INDIA         1                    1                 1.000000   1.0000000   1.000000
6-24 months                   COHORTS     INDIA         0                    1                 1.631413   1.1477146   2.318963
6-24 months                   COHORTS     PHILIPPINES   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   COHORTS     PHILIPPINES   0                    1                 1.673913   0.7872542   3.559187
6-24 months                   JiVitA-3    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH    0                    1                 1.262366   0.9916049   1.607060
6-24 months                   JiVitA-4    BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH    0                    1                 1.396663   0.9108316   2.141634
6-24 months                   NIH-Birth   BANGLADESH    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   NIH-Birth   BANGLADESH    0                    1                 1.175334   0.6516607   2.119831


### Parameter: PAR


agecat                        studyid     country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                 0.0126270    0.0039211   0.0213330
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                 0.0367856    0.0010345   0.0725368
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    1                    NA                 0.0004769   -0.0016732   0.0026270
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    1                    NA                -0.0003511   -0.0042800   0.0035779
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                 0.0012125   -0.0314648   0.0338898
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                 0.0033297   -0.0020334   0.0086928
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    1                    NA                 0.0008090   -0.0005627   0.0021807
6-24 months                   COHORTS     INDIA         1                    NA                 0.0116155    0.0038778   0.0193531
6-24 months                   COHORTS     PHILIPPINES   1                    NA                 0.0278527   -0.0055227   0.0612280
6-24 months                   JiVitA-3    BANGLADESH    1                    NA                 0.0002467   -0.0023503   0.0028438
6-24 months                   JiVitA-4    BANGLADESH    1                    NA                 0.0005027   -0.0033580   0.0043634
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                 0.0070953   -0.0268500   0.0410405


### Parameter: PAF


agecat                        studyid     country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS     INDIA         1                    NA                 0.2599863    0.0608783   0.4168804
0-24 months (no birth wast)   COHORTS     PHILIPPINES   1                    NA                 0.4403129   -0.1861707   0.7359152
0-24 months (no birth wast)   JiVitA-3    BANGLADESH    1                    NA                 0.0133468   -0.0488296   0.0718372
0-24 months (no birth wast)   JiVitA-4    BANGLADESH    1                    NA                -0.0081779   -0.1039732   0.0793049
0-24 months (no birth wast)   NIH-Birth   BANGLADESH    1                    NA                 0.0135172   -0.4270357   0.3180631
0-6 months (no birth wast)    COHORTS     INDIA         1                    NA                 0.1941494   -0.1838194   0.4514406
0-6 months (no birth wast)    JiVitA-3    BANGLADESH    1                    NA                 0.0487375   -0.0376700   0.1279498
6-24 months                   COHORTS     INDIA         1                    NA                 0.3024230    0.0753576   0.4737278
6-24 months                   COHORTS     PHILIPPINES   1                    NA                 0.3690476   -0.2598982   0.6840214
6-24 months                   JiVitA-3    BANGLADESH    1                    NA                 0.0077268   -0.0771194   0.0858894
6-24 months                   JiVitA-4    BANGLADESH    1                    NA                 0.0114547   -0.0805877   0.0956570
6-24 months                   NIH-Birth   BANGLADESH    1                    NA                 0.0801175   -0.3941132   0.3930307
