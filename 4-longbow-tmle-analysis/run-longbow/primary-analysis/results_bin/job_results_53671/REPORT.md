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
* W_mwtkg
* W_mbmi
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
* delta_W_mwtkg
* delta_W_mbmi
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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       43    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       78    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        3     17
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       14     17
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0    175
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    175
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       66    175
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      109    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       19     96
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       77     96
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1       28     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     79
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       14     79
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       11     79
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       52     79
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       34     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     51
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      221    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       13    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    234
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      202    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1      218    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    421
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0        9     15
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6     15
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0     15
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0     15
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      117    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      193    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    310
0-24 months   ki1114097-CONTENT          PERU                           1                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           1                    1        2      2
0-24 months   ki1114097-CONTENT          PERU                           0                    0        0      2
0-24 months   ki1114097-CONTENT          PERU                           0                    1        0      2
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       52     78
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        9     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0       13     78
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        4     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     4362   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3189   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0        6   7562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        5   7562
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1530   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      532   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0       12     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       48     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0        1     11
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       10     11
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     80
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     80
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0       22     80
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       58     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0        8     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       38     46
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        6     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       18     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       11     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2     14
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       78     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     78
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0       64    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1      158    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    1        1    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0        8     13
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        5     13
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        0     13
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1        0     13
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       21    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1      176    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        0    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        0    197
0-6 months    ki1114097-CONTENT          PERU                           1                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           1                    1        1      1
0-6 months    ki1114097-CONTENT          PERU                           0                    0        0      1
0-6 months    ki1114097-CONTENT          PERU                           0                    1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                    1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                    1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     1534   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3189   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        2   4730
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        5   4730
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      242    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      306    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0        0    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        0    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       31     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       30     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0        2      6
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        4      6
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       44     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       51     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       39     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0        6     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       18     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        2     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0        7     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       34     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1       23     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0        0     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        6     37
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      143    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       13    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0    156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0      138    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1       60    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0        0    198
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    1        0    198
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0        1      2
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        1      2
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0        0      2
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        0      2
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
![](/tmp/bb208b4e-8e36-42e6-8bed-b28853ded0c6/9276cc54-2db0-4d50-be1e-7c84de870889/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb208b4e-8e36-42e6-8bed-b28853ded0c6/9276cc54-2db0-4d50-be1e-7c84de870889/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb208b4e-8e36-42e6-8bed-b28853ded0c6/9276cc54-2db0-4d50-be1e-7c84de870889/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb208b4e-8e36-42e6-8bed-b28853ded0c6/9276cc54-2db0-4d50-be1e-7c84de870889/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.4223282   0.4109235   0.4337329
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    NA                0.4545455   0.4377123   0.4713786


### Parameter: E(Y)


agecat        studyid             country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   NA                   NA                0.422375   0.4112475   0.4335026


### Parameter: RR


agecat        studyid             country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    1                 1.000000   1.000000   1.000000
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   0                    1                 1.076285   1.028069   1.126762


### Parameter: PAR


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.0000469   -0.000462   0.0005558


### Parameter: PAF


agecat        studyid             country      intervention_level   baseline_level    estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ---------  -----------  ----------
0-24 months   kiGH5241-JiVitA-3   BANGLADESH   1                    NA                0.000111   -0.0010962   0.0013166
