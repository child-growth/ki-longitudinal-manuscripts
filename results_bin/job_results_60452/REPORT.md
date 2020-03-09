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

agecat                        studyid      country                        impsan    ever_wasted   n_cell       n
----------------------------  -----------  -----------------------------  -------  ------------  -------  ------
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                   0       73     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      1                   1        8     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                   0      666     870
0-24 months (no birth wast)   COHORTS      GUATEMALA                      0                   1      123     870
0-24 months (no birth wast)   COHORTS      INDIA                          1                   0     1675    5168
0-24 months (no birth wast)   COHORTS      INDIA                          1                   1      291    5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                   0     2500    5168
0-24 months (no birth wast)   COHORTS      INDIA                          0                   1      702    5168
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                   0      142    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    1                   1       37    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                   0      661    1185
0-24 months (no birth wast)   COHORTS      PHILIPPINES                    0                   1      345    1185
0-24 months (no birth wast)   CONTENT      PERU                           1                   0      197     215
0-24 months (no birth wast)   CONTENT      PERU                           1                   1        4     215
0-24 months (no birth wast)   CONTENT      PERU                           0                   0       14     215
0-24 months (no birth wast)   CONTENT      PERU                           0                   1        0     215
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     1                   0    15464   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     1                   1     3047   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     0                   0     6551   26502
0-24 months (no birth wast)   JiVitA-3     BANGLADESH                     0                   1     1440   26502
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     1                   0     3144    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     1                   1     1017    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     0                   0      850    5381
0-24 months (no birth wast)   JiVitA-4     BANGLADESH                     0                   1      370    5381
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                   0        3     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         1                   1        0     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                   0      753     810
0-24 months (no birth wast)   LCNI-5       MALAWI                         0                   1       54     810
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                   0      157     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     1                   1       47     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                   0       28     242
0-24 months (no birth wast)   MAL-ED       BANGLADESH                     0                   1       10     242
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                   0      193     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         1                   1       13     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                   0        4     210
0-24 months (no birth wast)   MAL-ED       BRAZIL                         0                   1        0     210
0-24 months (no birth wast)   MAL-ED       INDIA                          1                   0       74     229
0-24 months (no birth wast)   MAL-ED       INDIA                          1                   1       31     229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                   0       69     229
0-24 months (no birth wast)   MAL-ED       INDIA                          0                   1       55     229
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                   0      189     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          1                   1       46     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                   0        1     236
0-24 months (no birth wast)   MAL-ED       NEPAL                          0                   1        0     236
0-24 months (no birth wast)   MAL-ED       PERU                           1                   0       59     263
0-24 months (no birth wast)   MAL-ED       PERU                           1                   1        6     263
0-24 months (no birth wast)   MAL-ED       PERU                           0                   0      183     263
0-24 months (no birth wast)   MAL-ED       PERU                           0                   1       15     263
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                   0        3     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   1                   1        1     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                   0      203     250
0-24 months (no birth wast)   MAL-ED       SOUTH AFRICA                   0                   1       43     250
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      208     241
0-24 months (no birth wast)   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       33     241
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                   0      180     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     1                   1       53     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                   0      244     602
0-24 months (no birth wast)   NIH-Birth    BANGLADESH                     0                   1      125     602
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                   0      560     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     1                   1       91     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                   0       77     743
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH                     0                   1       15     743
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                   0       47      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     1                   1        3      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                   0        2      52
0-24 months (no birth wast)   PROVIDE      BANGLADESH                     0                   1        0      52
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                   0       67     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      1                   1        0     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                   0      571     650
0-6 months (no birth wast)    COHORTS      GUATEMALA                      0                   1       12     650
0-6 months (no birth wast)    COHORTS      INDIA                          1                   0     1651    4723
0-6 months (no birth wast)    COHORTS      INDIA                          1                   1      131    4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                   0     2687    4723
0-6 months (no birth wast)    COHORTS      INDIA                          0                   1      254    4723
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                   0      162    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    1                   1       17    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                   0      911    1180
0-6 months (no birth wast)    COHORTS      PHILIPPINES                    0                   1       90    1180
0-6 months (no birth wast)    CONTENT      PERU                           1                   0      198     215
0-6 months (no birth wast)    CONTENT      PERU                           1                   1        3     215
0-6 months (no birth wast)    CONTENT      PERU                           0                   0       14     215
0-6 months (no birth wast)    CONTENT      PERU                           0                   1        0     215
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     1                   0    17043   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     1                   1     1264   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     0                   0     7286   26207
0-6 months (no birth wast)    JiVitA-3     BANGLADESH                     0                   1      614   26207
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     1                   0     3742    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     1                   1       96    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     0                   0     1078    4945
0-6 months (no birth wast)    JiVitA-4     BANGLADESH                     0                   1       29    4945
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                   0        0     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         1                   1        0     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                   0      265     265
0-6 months (no birth wast)    LCNI-5       MALAWI                         0                   1        0     265
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                   0      188     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     1                   1       15     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                   0       35     241
0-6 months (no birth wast)    MAL-ED       BANGLADESH                     0                   1        3     241
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                   0      198     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         1                   1        8     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                   0        4     210
0-6 months (no birth wast)    MAL-ED       BRAZIL                         0                   1        0     210
0-6 months (no birth wast)    MAL-ED       INDIA                          1                   0       89     227
0-6 months (no birth wast)    MAL-ED       INDIA                          1                   1       15     227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                   0      102     227
0-6 months (no birth wast)    MAL-ED       INDIA                          0                   1       21     227
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                   0      217     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          1                   1       16     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                   0        1     234
0-6 months (no birth wast)    MAL-ED       NEPAL                          0                   1        0     234
0-6 months (no birth wast)    MAL-ED       PERU                           1                   0       64     263
0-6 months (no birth wast)    MAL-ED       PERU                           1                   1        1     263
0-6 months (no birth wast)    MAL-ED       PERU                           0                   0      194     263
0-6 months (no birth wast)    MAL-ED       PERU                           0                   1        4     263
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                   0        4     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   1                   1        0     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                   0      232     249
0-6 months (no birth wast)    MAL-ED       SOUTH AFRICA                   0                   1       13     249
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      231     241
0-6 months (no birth wast)    MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       10     241
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                   0      213     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     1                   1       14     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                   0      325     584
0-6 months (no birth wast)    NIH-Birth    BANGLADESH                     0                   1       32     584
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                   0      631     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     1                   1       16     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                   0       87     738
0-6 months (no birth wast)    NIH-Crypto   BANGLADESH                     0                   1        4     738
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                   0       48      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     1                   1        2      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                   0        2      52
0-6 months (no birth wast)    PROVIDE      BANGLADESH                     0                   1        0      52
6-24 months                   COHORTS      GUATEMALA                      1                   0       71     858
6-24 months                   COHORTS      GUATEMALA                      1                   1        9     858
6-24 months                   COHORTS      GUATEMALA                      0                   0      660     858
6-24 months                   COHORTS      GUATEMALA                      0                   1      118     858
6-24 months                   COHORTS      INDIA                          1                   0     1727    5025
6-24 months                   COHORTS      INDIA                          1                   1      176    5025
6-24 months                   COHORTS      INDIA                          0                   0     2637    5025
6-24 months                   COHORTS      INDIA                          0                   1      485    5025
6-24 months                   COHORTS      PHILIPPINES                    1                   0      123    1113
6-24 months                   COHORTS      PHILIPPINES                    1                   1       24    1113
6-24 months                   COHORTS      PHILIPPINES                    0                   0      669    1113
6-24 months                   COHORTS      PHILIPPINES                    0                   1      297    1113
6-24 months                   CONTENT      PERU                           1                   0      199     215
6-24 months                   CONTENT      PERU                           1                   1        2     215
6-24 months                   CONTENT      PERU                           0                   0       14     215
6-24 months                   CONTENT      PERU                           0                   1        0     215
6-24 months                   JiVitA-3     BANGLADESH                     1                   0    10448   17286
6-24 months                   JiVitA-3     BANGLADESH                     1                   1     1923   17286
6-24 months                   JiVitA-3     BANGLADESH                     0                   0     4006   17286
6-24 months                   JiVitA-3     BANGLADESH                     0                   1      909   17286
6-24 months                   JiVitA-4     BANGLADESH                     1                   0     3206    5423
6-24 months                   JiVitA-4     BANGLADESH                     1                   1      980    5423
6-24 months                   JiVitA-4     BANGLADESH                     0                   0      876    5423
6-24 months                   JiVitA-4     BANGLADESH                     0                   1      361    5423
6-24 months                   LCNI-5       MALAWI                         1                   0        3     801
6-24 months                   LCNI-5       MALAWI                         1                   1        0     801
6-24 months                   LCNI-5       MALAWI                         0                   0      736     801
6-24 months                   LCNI-5       MALAWI                         0                   1       62     801
6-24 months                   MAL-ED       BANGLADESH                     1                   0      167     240
6-24 months                   MAL-ED       BANGLADESH                     1                   1       35     240
6-24 months                   MAL-ED       BANGLADESH                     0                   0       30     240
6-24 months                   MAL-ED       BANGLADESH                     0                   1        8     240
6-24 months                   MAL-ED       BRAZIL                         1                   0      197     207
6-24 months                   MAL-ED       BRAZIL                         1                   1        6     207
6-24 months                   MAL-ED       BRAZIL                         0                   0        4     207
6-24 months                   MAL-ED       BRAZIL                         0                   1        0     207
6-24 months                   MAL-ED       INDIA                          1                   0       87     233
6-24 months                   MAL-ED       INDIA                          1                   1       21     233
6-24 months                   MAL-ED       INDIA                          0                   0       84     233
6-24 months                   MAL-ED       INDIA                          0                   1       41     233
6-24 months                   MAL-ED       NEPAL                          1                   0      198     235
6-24 months                   MAL-ED       NEPAL                          1                   1       36     235
6-24 months                   MAL-ED       NEPAL                          0                   0        1     235
6-24 months                   MAL-ED       NEPAL                          0                   1        0     235
6-24 months                   MAL-ED       PERU                           1                   0       60     263
6-24 months                   MAL-ED       PERU                           1                   1        5     263
6-24 months                   MAL-ED       PERU                           0                   0      185     263
6-24 months                   MAL-ED       PERU                           0                   1       13     263
6-24 months                   MAL-ED       SOUTH AFRICA                   1                   0        3     250
6-24 months                   MAL-ED       SOUTH AFRICA                   1                   1        1     250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                   0      210     250
6-24 months                   MAL-ED       SOUTH AFRICA                   0                   1       36     250
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0      210     237
6-24 months                   MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       27     237
6-24 months                   NIH-Birth    BANGLADESH                     1                   0      159     542
6-24 months                   NIH-Birth    BANGLADESH                     1                   1       49     542
6-24 months                   NIH-Birth    BANGLADESH                     0                   0      224     542
6-24 months                   NIH-Birth    BANGLADESH                     0                   1      110     542
6-24 months                   NIH-Crypto   BANGLADESH                     1                   0      550     719
6-24 months                   NIH-Crypto   BANGLADESH                     1                   1       80     719
6-24 months                   NIH-Crypto   BANGLADESH                     0                   0       75     719
6-24 months                   NIH-Crypto   BANGLADESH                     0                   1       14     719
6-24 months                   PROVIDE      BANGLADESH                     1                   0        9      10
6-24 months                   PROVIDE      BANGLADESH                     1                   1        1      10
6-24 months                   PROVIDE      BANGLADESH                     0                   0        0      10
6-24 months                   PROVIDE      BANGLADESH                     0                   1        0      10


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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/232929b5-f372-4062-89d7-9250ceb6c88f/c37a6765-4ed6-4063-989f-2b13e9fd2ce2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/232929b5-f372-4062-89d7-9250ceb6c88f/c37a6765-4ed6-4063-989f-2b13e9fd2ce2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/232929b5-f372-4062-89d7-9250ceb6c88f/c37a6765-4ed6-4063-989f-2b13e9fd2ce2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/232929b5-f372-4062-89d7-9250ceb6c88f/c37a6765-4ed6-4063-989f-2b13e9fd2ce2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                0.0987654   0.0337559   0.1637749
0-24 months (no birth wast)   COHORTS      GUATEMALA     0                    NA                0.1558935   0.1305672   0.1812199
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                0.1629781   0.1446114   0.1813448
0-24 months (no birth wast)   COHORTS      INDIA         0                    NA                0.2070647   0.1927172   0.2214122
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                0.2356332   0.1671845   0.3040819
0-24 months (no birth wast)   COHORTS      PHILIPPINES   0                    NA                0.3385135   0.3090539   0.3679732
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    1                    NA                0.1690231   0.1623839   0.1756623
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    0                    NA                0.1858811   0.1720671   0.1996951
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    1                    NA                0.2508594   0.2352087   0.2665102
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    0                    NA                0.2901465   0.2547992   0.3254938
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                0.2330543   0.1751185   0.2909901
0-24 months (no birth wast)   MAL-ED       BANGLADESH    0                    NA                0.2363166   0.0946246   0.3780085
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                0.3033500   0.2155839   0.3911160
0-24 months (no birth wast)   MAL-ED       INDIA         0                    NA                0.4465437   0.3589738   0.5341135
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                0.0923077   0.0218048   0.1628106
0-24 months (no birth wast)   MAL-ED       PERU          0                    NA                0.0757576   0.0388302   0.1126850
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                0.2275139   0.1736195   0.2814083
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    0                    NA                0.3316700   0.2833701   0.3799699
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                0.1397176   0.1130372   0.1663979
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    0                    NA                0.1576195   0.0807916   0.2344474
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                0.0735329   0.0600969   0.0869689
0-6 months (no birth wast)    COHORTS      INDIA         0                    NA                0.0850239   0.0746035   0.0954442
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                0.0936397   0.0493049   0.1379745
0-6 months (no birth wast)    COHORTS      PHILIPPINES   0                    NA                0.0900806   0.0722661   0.1078950
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    1                    NA                0.0714723   0.0669268   0.0760177
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    0                    NA                0.0753224   0.0667350   0.0839099
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    1                    NA                0.0254170   0.0201272   0.0307068
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    0                    NA                0.0236450   0.0138796   0.0334104
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                0.1437523   0.0754336   0.2120710
0-6 months (no birth wast)    MAL-ED       INDIA         0                    NA                0.1666448   0.0995833   0.2337063
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                0.0594210   0.0280565   0.0907855
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    0                    NA                0.0905618   0.0606626   0.1204611
6-24 months                   COHORTS      GUATEMALA     1                    NA                0.1125000   0.0432186   0.1817814
6-24 months                   COHORTS      GUATEMALA     0                    NA                0.1516710   0.1264510   0.1768909
6-24 months                   COHORTS      INDIA         1                    NA                0.1105780   0.0941224   0.1270336
6-24 months                   COHORTS      INDIA         0                    NA                0.1417480   0.1296447   0.1538514
6-24 months                   COHORTS      PHILIPPINES   1                    NA                0.1867115   0.1195152   0.2539078
6-24 months                   COHORTS      PHILIPPINES   0                    NA                0.3064668   0.2773370   0.3355967
6-24 months                   JiVitA-3     BANGLADESH    1                    NA                0.1621727   0.1542854   0.1700601
6-24 months                   JiVitA-3     BANGLADESH    0                    NA                0.1872089   0.1696741   0.2047436
6-24 months                   JiVitA-4     BANGLADESH    1                    NA                0.2414973   0.2257941   0.2572005
6-24 months                   JiVitA-4     BANGLADESH    0                    NA                0.2859530   0.2515877   0.3203183
6-24 months                   MAL-ED       BANGLADESH    1                    NA                0.1732673   0.1209651   0.2255695
6-24 months                   MAL-ED       BANGLADESH    0                    NA                0.2105263   0.0806335   0.3404191
6-24 months                   MAL-ED       INDIA         1                    NA                0.2038659   0.1286178   0.2791140
6-24 months                   MAL-ED       INDIA         0                    NA                0.3289352   0.2470567   0.4108137
6-24 months                   MAL-ED       PERU          1                    NA                0.0769231   0.0120199   0.1418262
6-24 months                   MAL-ED       PERU          0                    NA                0.0656566   0.0310917   0.1002214
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                0.2509237   0.1925495   0.3092980
6-24 months                   NIH-Birth    BANGLADESH    0                    NA                0.3187869   0.2685438   0.3690300
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                0.1271740   0.1011297   0.1532183
6-24 months                   NIH-Crypto   BANGLADESH    0                    NA                0.1678298   0.0907392   0.2449205


### Parameter: E(Y)


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     NA                   NA                0.1505747   0.1267966   0.1743528
0-24 months (no birth wast)   COHORTS      INDIA         NA                   NA                0.1921440   0.1814014   0.2028866
0-24 months (no birth wast)   COHORTS      PHILIPPINES   NA                   NA                0.3223629   0.2957407   0.3489850
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    NA                   NA                0.1693080   0.1640179   0.1745980
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    NA                   NA                0.2577588   0.2441239   0.2713937
0-24 months (no birth wast)   MAL-ED       BANGLADESH    NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   MAL-ED       INDIA         NA                   NA                0.3755459   0.3126876   0.4384041
0-24 months (no birth wast)   MAL-ED       PERU          NA                   NA                0.0798479   0.0470264   0.1126695
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    NA                   NA                0.1426649   0.1175009   0.1678289
0-6 months (no birth wast)    COHORTS      INDIA         NA                   NA                0.0815160   0.0737115   0.0893204
0-6 months (no birth wast)    COHORTS      PHILIPPINES   NA                   NA                0.0906780   0.0742871   0.1070688
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    NA                   NA                0.0716602   0.0680237   0.0752968
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    NA                   NA                0.0252781   0.0205710   0.0299851
0-6 months (no birth wast)    MAL-ED       INDIA         NA                   NA                0.1585903   0.1109652   0.2062154
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    NA                   NA                0.0787671   0.0569010   0.1006332
6-24 months                   COHORTS      GUATEMALA     NA                   NA                0.1480186   0.1242431   0.1717942
6-24 months                   COHORTS      INDIA         NA                   NA                0.1315423   0.1221962   0.1408884
6-24 months                   COHORTS      PHILIPPINES   NA                   NA                0.2884097   0.2617831   0.3150363
6-24 months                   JiVitA-3     BANGLADESH    NA                   NA                0.1638320   0.1577097   0.1699543
6-24 months                   JiVitA-4     BANGLADESH    NA                   NA                0.2472801   0.2337480   0.2608122
6-24 months                   MAL-ED       BANGLADESH    NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   MAL-ED       INDIA         NA                   NA                0.2660944   0.2092298   0.3229590
6-24 months                   MAL-ED       PERU          NA                   NA                0.0684411   0.0378665   0.0990157
6-24 months                   NIH-Birth    BANGLADESH    NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   NIH-Crypto   BANGLADESH    NA                   NA                0.1307371   0.1060790   0.1553953


### Parameter: RR


agecat                        studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      GUATEMALA     0                    1                 1.5784221   0.8012777   3.109304
0-24 months (no birth wast)   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      INDIA         0                    1                 1.2705058   1.1135993   1.449520
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   COHORTS      PHILIPPINES   0                    1                 1.4366123   1.0608600   1.945455
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    0                    1                 1.0997380   1.0146011   1.192019
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    0                    1                 1.1566098   1.0110634   1.323108
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       BANGLADESH    0                    1                 1.0139980   0.5301250   1.939528
0-24 months (no birth wast)   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       INDIA         0                    1                 1.4720413   1.0397615   2.084041
0-24 months (no birth wast)   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED       PERU          0                    1                 0.8207071   0.3316556   2.030902
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    0                    1                 1.4578008   1.1056410   1.922128
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    0                    1                 1.1281291   0.6681604   1.904745
0-6 months (no birth wast)    COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS      INDIA         0                    1                 1.1562698   0.9279071   1.440834
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    COHORTS      PHILIPPINES   0                    1                 0.9619907   0.5758725   1.606998
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    0                    1                 1.0538694   0.9266496   1.198555
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    0                    1                 0.9302836   0.5847402   1.480021
0-6 months (no birth wast)    MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED       INDIA         0                    1                 1.1592495   0.6200897   2.167202
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    0                    1                 1.5240706   0.8177305   2.840534
6-24 months                   COHORTS      GUATEMALA     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      GUATEMALA     0                    1                 1.3481862   0.7123909   2.551417
6-24 months                   COHORTS      INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      INDIA         0                    1                 1.2818827   1.0807954   1.520383
6-24 months                   COHORTS      PHILIPPINES   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   COHORTS      PHILIPPINES   0                    1                 1.6413925   1.1310489   2.382010
6-24 months                   JiVitA-3     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3     BANGLADESH    0                    1                 1.1543794   1.0414181   1.279594
6-24 months                   JiVitA-4     BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4     BANGLADESH    0                    1                 1.1840837   1.0361787   1.353101
6-24 months                   MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       BANGLADESH    0                    1                 1.2150376   0.6113418   2.414879
6-24 months                   MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       INDIA         0                    1                 1.6134881   1.0370571   2.510319
6-24 months                   MAL-ED       PERU          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED       PERU          0                    1                 0.8535354   0.3157269   2.307445
6-24 months                   NIH-Birth    BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Birth    BANGLADESH    0                    1                 1.2704533   0.9614324   1.678799
6-24 months                   NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   NIH-Crypto   BANGLADESH    0                    1                 1.3196865   0.7980774   2.182210


### Parameter: PAR


agecat                        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                 0.0518093   -0.0114732   0.1150918
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                 0.0291658    0.0133547   0.0449770
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                 0.0867297    0.0215861   0.1518732
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    1                    NA                 0.0002849   -0.0035628   0.0041325
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    1                    NA                 0.0068993   -0.0013975   0.0151962
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                 0.0024829   -0.0211485   0.0261143
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                 0.0721959    0.0047779   0.1396139
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                -0.0124598   -0.0723842   0.0474646
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                 0.0681671    0.0232427   0.1130916
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                 0.0029473   -0.0070392   0.0129338
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                 0.0079831   -0.0034244   0.0193905
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                -0.0029618   -0.0439243   0.0380008
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    1                    NA                 0.0001880   -0.0026257   0.0030017
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    1                    NA                -0.0001389   -0.0030632   0.0027854
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                 0.0148380   -0.0371423   0.0668184
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                 0.0193461   -0.0071112   0.0458034
6-24 months                   COHORTS      GUATEMALA     1                    NA                 0.0355186   -0.0313402   0.1023775
6-24 months                   COHORTS      INDIA         1                    NA                 0.0209643    0.0065468   0.0353818
6-24 months                   COHORTS      PHILIPPINES   1                    NA                 0.1016982    0.0369579   0.1664385
6-24 months                   JiVitA-3     BANGLADESH    1                    NA                 0.0016593   -0.0030212   0.0063397
6-24 months                   JiVitA-4     BANGLADESH    1                    NA                 0.0057828   -0.0023260   0.0138916
6-24 months                   MAL-ED       BANGLADESH    1                    NA                 0.0058993   -0.0163386   0.0281373
6-24 months                   MAL-ED       INDIA         1                    NA                 0.0622285    0.0018801   0.1225770
6-24 months                   MAL-ED       PERU          1                    NA                -0.0084820   -0.0638448   0.0468808
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                 0.0424342   -0.0052082   0.0900767
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                 0.0035631   -0.0063911   0.0135173


### Parameter: PAF


agecat                        studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   COHORTS      GUATEMALA     1                    NA                 0.3440769   -0.2397390   0.6529632
0-24 months (no birth wast)   COHORTS      INDIA         1                    NA                 0.1517916    0.0656703   0.2299746
0-24 months (no birth wast)   COHORTS      PHILIPPINES   1                    NA                 0.2690436    0.0369126   0.4452245
0-24 months (no birth wast)   JiVitA-3     BANGLADESH    1                    NA                 0.0016825   -0.0213056   0.0241532
0-24 months (no birth wast)   JiVitA-4     BANGLADESH    1                    NA                 0.0267666   -0.0059289   0.0583994
0-24 months (no birth wast)   MAL-ED       BANGLADESH    1                    NA                 0.0105415   -0.0950075   0.1059166
0-24 months (no birth wast)   MAL-ED       INDIA         1                    NA                 0.1922426   -0.0086292   0.3531101
0-24 months (no birth wast)   MAL-ED       PERU          1                    NA                -0.1560440   -1.2084404   0.3948500
0-24 months (no birth wast)   NIH-Birth    BANGLADESH    1                    NA                 0.2305428    0.0640307   0.3674318
0-24 months (no birth wast)   NIH-Crypto   BANGLADESH    1                    NA                 0.0206588   -0.0518405   0.0881610
0-6 months (no birth wast)    COHORTS      INDIA         1                    NA                 0.0979329   -0.0531670   0.2273542
0-6 months (no birth wast)    COHORTS      PHILIPPINES   1                    NA                -0.0326624   -0.5992673   0.3331998
0-6 months (no birth wast)    JiVitA-3     BANGLADESH    1                    NA                 0.0026231   -0.0374217   0.0411222
0-6 months (no birth wast)    JiVitA-4     BANGLADESH    1                    NA                -0.0054955   -0.1282176   0.1038775
0-6 months (no birth wast)    MAL-ED       INDIA         1                    NA                 0.0935618   -0.3005632   0.3682505
0-6 months (no birth wast)    NIH-Birth    BANGLADESH    1                    NA                 0.2456113   -0.1704077   0.5137572
6-24 months                   COHORTS      GUATEMALA     1                    NA                 0.2399606   -0.3748179   0.5798281
6-24 months                   COHORTS      INDIA         1                    NA                 0.1593730    0.0428074   0.2617434
6-24 months                   COHORTS      PHILIPPINES   1                    NA                 0.3526172    0.0861158   0.5414030
6-24 months                   JiVitA-3     BANGLADESH    1                    NA                 0.0101278   -0.0188789   0.0383088
6-24 months                   JiVitA-4     BANGLADESH    1                    NA                 0.0233858   -0.0099750   0.0556445
6-24 months                   MAL-ED       BANGLADESH    1                    NA                 0.0329265   -0.0992978   0.1492469
6-24 months                   MAL-ED       INDIA         1                    NA                 0.2338588   -0.0255771   0.4276663
6-24 months                   MAL-ED       PERU          1                    NA                -0.1239316   -1.3051391   0.4519974
6-24 months                   NIH-Birth    BANGLADESH    1                    NA                 0.1446499   -0.0334354   0.2920469
6-24 months                   NIH-Crypto   BANGLADESH    1                    NA                 0.0272541   -0.0518052   0.1003709
