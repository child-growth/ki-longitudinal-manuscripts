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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** safeh20

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        safeh20    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       44    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       77    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        3     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       14     17
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       67    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      106    173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       19     91
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       72     91
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       27     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       14     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       10     76
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       50     76
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       29     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     45
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      221    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       13    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      202    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1      218    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      128    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      178    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    306
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      117    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      194    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    311
0-24 months   ki1114097-CONTENT          PERU                           1                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           1                    1        2      2
0-24 months   ki1114097-CONTENT          PERU                           0                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           0                    1        0      2
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       52     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       13     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        4     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4363   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3192   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        6   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        5   7566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1530   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      532   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       12     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       47     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       10     11
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       22     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       56     78
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       33     41
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        3     26
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       17     26
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        9     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       78     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       64    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1      158    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       39    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      144    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    183
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       21    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      177    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    198
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           1                    1        1      1
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           0                    1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1535   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3192   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        2   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        5   4734
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      242    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      306    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       32     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       30     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        2      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        4      6
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       50     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       39     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       17     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        7     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       33     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       20     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     33
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      143    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       13    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      138    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       60    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        0    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       89    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       34    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       96    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       17    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    113
6-24 months   ki1114097-CONTENT          PERU                           1                    0        0      1
6-24 months   ki1114097-CONTENT          PERU                           1                    1        1      1
6-24 months   ki1114097-CONTENT          PERU                           0                    0        0      1
6-24 months   ki1114097-CONTENT          PERU                           0                    1        0      1
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       49     74
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     74
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       12     74
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        4     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2828   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        4   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1288   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      226   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0   1514


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/2d512439-f8df-47b1-b925-67129c9602a1/62c3b870-75a1-48cd-81a5-fe93e71fc246/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2d512439-f8df-47b1-b925-67129c9602a1/62c3b870-75a1-48cd-81a5-fe93e71fc246/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2d512439-f8df-47b1-b925-67129c9602a1/62c3b870-75a1-48cd-81a5-fe93e71fc246/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2d512439-f8df-47b1-b925-67129c9602a1/62c3b870-75a1-48cd-81a5-fe93e71fc246/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.4225017   0.4110982   0.4339051
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.4545455   0.4377196   0.4713713


### Parameter: E(Y)


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.4225482   0.4114219   0.4336746


### Parameter: RR


agecat        studyid             country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.000000   1.000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.075843   1.027669   1.126276


### Parameter: PAR


agecat        studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0000466   -0.0004621   0.0005553


### Parameter: PAF


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0001103   -0.001096   0.001315
