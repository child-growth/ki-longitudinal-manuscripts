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

agecat        studyid                 country                        impsan    wast_rec90d   n_cell      n
------------  ----------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       33    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       67    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0       10    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1       11    121
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        6     24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1       17     24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0     24
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        1     24
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       25    172
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       43    172
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       39    172
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       65    172
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       19     97
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       78     97
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     97
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     97
0-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     33
0-24 months   ki0047075b-MAL-ED       PERU                           1                   1        6     33
0-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     33
0-24 months   ki0047075b-MAL-ED       PERU                           0                   1       21     33
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     79
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     79
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0       12     79
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       65     79
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     50
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     50
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        9     50
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       41     50
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       66    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       81    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0      136    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1      138    421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0        9     15
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1        6     15
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        0     15
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0     15
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       96    306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      169    306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       18    306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       23    306
0-24 months   ki1114097-CONTENT       PERU                           1                   0        2      9
0-24 months   ki1114097-CONTENT       PERU                           1                   1        7      9
0-24 months   ki1114097-CONTENT       PERU                           0                   0        0      9
0-24 months   ki1114097-CONTENT       PERU                           0                   1        0      9
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0       10    264
0-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1       14    264
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      154    264
0-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1       86    264
0-24 months   ki1135781-COHORTS       INDIA                          1                   0      452   1962
0-24 months   ki1135781-COHORTS       INDIA                          1                   1      178   1962
0-24 months   ki1135781-COHORTS       INDIA                          0                   0     1050   1962
0-24 months   ki1135781-COHORTS       INDIA                          0                   1      282   1962
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       22    683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       58    683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      242    683
0-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      361    683
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0     77
0-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0     77
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       65     77
0-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12     77
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     2903   7560
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2228   7560
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1463   7560
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   7560
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     1115   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      390   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      415   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      142   2062
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   0       11     60
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   1       41     60
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   0        1     60
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   1        7     60
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   0        1     15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   1       13     15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   0        0     15
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   1        1     15
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   0       11     79
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   1       26     79
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   0       11     79
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   1       31     79
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   0        8     47
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   1       39     47
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   0        0     47
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   1        0     47
0-6 months    ki0047075b-MAL-ED       PERU                           1                   0        0      9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   1        1      9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   0        0      9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   1        8      9
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        0     28
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     28
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        4     28
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       24     28
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1     14
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       13     14
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   0       22    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   1       62    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   0       42    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   1       97    223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   0        8     13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   1        5     13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   0        0     13
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   1        0     13
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       16    195
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      153    195
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0        4    195
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       22    195
0-6 months    ki1114097-CONTENT       PERU                           1                   0        0      4
0-6 months    ki1114097-CONTENT       PERU                           1                   1        4      4
0-6 months    ki1114097-CONTENT       PERU                           0                   0        0      4
0-6 months    ki1114097-CONTENT       PERU                           0                   1        0      4
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   0        1    125
0-6 months    ki1135781-COHORTS       GUATEMALA                      1                   1       14    125
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   0       30    125
0-6 months    ki1135781-COHORTS       GUATEMALA                      0                   1       80    125
0-6 months    ki1135781-COHORTS       INDIA                          1                   0      269   1290
0-6 months    ki1135781-COHORTS       INDIA                          1                   1      178   1290
0-6 months    ki1135781-COHORTS       INDIA                          0                   0      561   1290
0-6 months    ki1135781-COHORTS       INDIA                          0                   1      282   1290
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   0        8    280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    1                   1       41    280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   0       58    280
0-6 months    ki1135781-COHORTS       PHILIPPINES                    0                   1      173    280
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   0        0      4
0-6 months    ki1148112-LCNI-5        MALAWI                         1                   1        0      4
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   0        4      4
0-6 months    ki1148112-LCNI-5        MALAWI                         0                   1        0      4
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   0      980   4728
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2228   4728
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   0      554   4728
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   4728
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      172    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      233    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   0       70    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       73    548
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       22     61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       26     61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0        9     61
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1        4     61
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        5      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1        4      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        0      9
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       14     93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       17     93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       28     93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       34     93
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       11     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       39     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     50
6-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     24
6-24 months   ki0047075b-MAL-ED       PERU                           1                   1        5     24
6-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     24
6-24 months   ki0047075b-MAL-ED       PERU                           0                   1       13     24
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        8     51
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       41     51
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     36
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     36
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8     36
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       28     36
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       44    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       19    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0       94    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1       41    198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0        1      2
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1        1      2
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        0      2
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        0      2
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       80    111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1       16    111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       14    111
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1        1    111
6-24 months   ki1114097-CONTENT       PERU                           1                   0        2      5
6-24 months   ki1114097-CONTENT       PERU                           1                   1        3      5
6-24 months   ki1114097-CONTENT       PERU                           0                   0        0      5
6-24 months   ki1114097-CONTENT       PERU                           0                   1        0      5
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   0        9    139
6-24 months   ki1135781-COHORTS       GUATEMALA                      1                   1        0    139
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   0      124    139
6-24 months   ki1135781-COHORTS       GUATEMALA                      0                   1        6    139
6-24 months   ki1135781-COHORTS       INDIA                          1                   0      183    672
6-24 months   ki1135781-COHORTS       INDIA                          1                   1        0    672
6-24 months   ki1135781-COHORTS       INDIA                          0                   0      489    672
6-24 months   ki1135781-COHORTS       INDIA                          0                   1        0    672
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   0       14    403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    1                   1       17    403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   0      184    403
6-24 months   ki1135781-COHORTS       PHILIPPINES                    0                   1      188    403
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   0        0     73
6-24 months   ki1148112-LCNI-5        MALAWI                         1                   1        0     73
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   0       61     73
6-24 months   ki1148112-LCNI-5        MALAWI                         0                   1       12     73
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     1923   2832
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1        0   2832
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0      909   2832
6-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1        0   2832
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0      943   1514
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      157   1514
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      345   1514
6-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1       69   1514


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/ede5b138-b152-49f5-a9ab-aec398d92aff/b894ed83-509b-47ce-ae95-f93e23375428/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ede5b138-b152-49f5-a9ab-aec398d92aff/b894ed83-509b-47ce-ae95-f93e23375428/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ede5b138-b152-49f5-a9ab-aec398d92aff/b894ed83-509b-47ce-ae95-f93e23375428/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ede5b138-b152-49f5-a9ab-aec398d92aff/b894ed83-509b-47ce-ae95-f93e23375428/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6675964   0.5714309   0.7637618
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5106413   0.3078742   0.7134083
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6240063   0.4936723   0.7543403
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6230182   0.5192516   0.7267848
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5566162   0.4697712   0.6434612
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5061582   0.4439656   0.5683509
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6394668   0.5819762   0.6969573
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.5458127   0.3789290   0.7126964
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5579021   0.3131131   0.8026911
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3590878   0.2962972   0.4218784
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2761364   0.2390127   0.3132601
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2138995   0.1921543   0.2356448
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7348446   0.6161450   0.8535442
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5988715   0.5584160   0.6393270
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4311682   0.4173134   0.4450230
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4092262   0.3889978   0.4294546
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2580310   0.2350797   0.2809823
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2600638   0.2197929   0.3003347
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.6975421   0.5508679   0.8442162
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.7430819   0.6044999   0.8816639
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7427721   0.6474480   0.8380961
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6991920   0.6228428   0.7755411
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3920710   0.3447661   0.4393760
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3347067   0.3024123   0.3670011
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6886486   0.6723211   0.7049762
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6560597   0.6317476   0.6803719
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5741685   0.5257720   0.6225649
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5113421   0.4267288   0.5959554
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5742885   0.3721229   0.7764542
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5506832   0.4063231   0.6950432
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2950978   0.1784752   0.4117205
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.3068023   0.2269500   0.3866546
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5189244   0.2903397   0.7475091
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5056623   0.4516484   0.5596761
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1418447   0.1212618   0.1624277
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1696663   0.1316775   0.2076551


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.6279070   0.5477344   0.7080796
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.6274510   0.5732906   0.6816113
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4224868   0.4113573   0.4336163
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.7215190   0.6193314   0.8237066
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.6755499   0.6622049   0.6888949
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5483871   0.4327976   0.6639766
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.7648952   0.5013042   1.1670851
0-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 0.9984165   0.7639220   1.3048918
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9093487   0.7451912   1.1096685
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.8535435   0.6207697   1.1736018
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 0.6436395   0.4016144   1.0315161
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 0.7746156   0.6545329   0.9167290
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8149635   0.6838213   0.9712559
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9491105   0.8951587   1.0063139
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.0078781   0.8430297   1.2049615
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.0652862   0.8075170   1.4053384
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9413277   0.7951054   1.1144408
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 0.8536891   0.7315747   0.9961868
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8950480   0.7707387   1.0394068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9526770   0.9120249   0.9951411
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 0.8905785   0.7396356   1.0723254
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 0.9588963   0.6167729   1.4907955
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0396629   0.6467629   1.6712445
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9744430   0.6191905   1.5335170
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1961406   0.9159408   1.5620578


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0229683   -0.0620892    0.0161526
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0039007   -0.0975569    0.1053582
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0364262   -0.1061434    0.0332911
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0120158   -0.0344062    0.0103746
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1791142   -0.4117441    0.0535157
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0416818   -0.0714228   -0.0119407
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1213746   -0.2328973   -0.0098519
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0086814   -0.0165831   -0.0007797
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0000290   -0.0118421    0.0117840
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0239769   -0.0838749    0.1318288
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0297676   -0.1062841    0.0467489
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0354819   -0.0741533    0.0031896
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0724490   -0.1732018    0.0283039
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0130987   -0.0228505   -0.0033470
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0157743   -0.0409884    0.0094397
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0259014   -0.1954849    0.1436821
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0079325   -0.0892102    0.1050751
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0102395   -0.2320338    0.2115547
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0074287   -0.0035598    0.0184172


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0356302   -0.0982024    0.0233768
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                 0.0062122   -0.1692634    0.1553536
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0700247   -0.2128665    0.0559943
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0191502   -0.0555979    0.0160390
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.4728615   -1.2334272    0.0287031
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.1777817   -0.3106367   -0.0583939
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1978493   -0.3943365   -0.0290507
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0205483   -0.0394138   -0.0020253
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0001125   -0.0469632    0.0446416
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0332312   -0.1283697    0.1716882
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0417495   -0.1549764    0.0603773
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0995035   -0.2135182    0.0037992
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0947931   -0.2355973    0.0299657
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0193897   -0.0339427   -0.0050416
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0282495   -0.0744879    0.0159992
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0472320   -0.4076183    0.2208862
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0261772   -0.3534690    0.2993331
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0201295   -0.5640997    0.3346562
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0497657   -0.0269088    0.1207153
