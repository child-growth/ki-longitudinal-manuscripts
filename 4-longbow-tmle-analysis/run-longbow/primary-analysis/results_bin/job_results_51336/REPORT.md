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
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       34    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       66    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0       10    121
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1       11    121
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        6     23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1       16     23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0     23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        1     23
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       25    170
0-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       41    170
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       40    170
0-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       64    170
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       19     92
0-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       73     92
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     92
0-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     92
0-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     32
0-24 months   ki0047075b-MAL-ED       PERU                           1                   1        6     32
0-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     32
0-24 months   ki0047075b-MAL-ED       PERU                           0                   1       20     32
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0       11     76
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       63     76
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        8     44
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       36     44
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       66    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       81    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0      136    421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1      138    421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0      123    306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1      169    306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        5    306
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        9    306
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       96    307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      170    307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   0       18    307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       23    307
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
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   0     2904   7564
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2231   7564
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   0     1463   7564
0-24 months   kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   7564
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   0     1115   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     1                   1      390   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   0      415   2062
0-24 months   kiGH5241-JiVitA-4       BANGLADESH                     0                   1      142   2062
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   0       11     59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     1                   1       40     59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   0        1     59
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0                   1        7     59
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   0        1     14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         1                   1       12     14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   0        0     14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0                   1        1     14
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   0       11     77
0-6 months    ki0047075b-MAL-ED       INDIA                          1                   1       24     77
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   0       11     77
0-6 months    ki0047075b-MAL-ED       INDIA                          0                   1       31     77
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   0        8     42
0-6 months    ki0047075b-MAL-ED       NEPAL                          1                   1       34     42
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   0        0     42
0-6 months    ki0047075b-MAL-ED       NEPAL                          0                   1        0     42
0-6 months    ki0047075b-MAL-ED       PERU                           1                   0        0      9
0-6 months    ki0047075b-MAL-ED       PERU                           1                   1        1      9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   0        0      9
0-6 months    ki0047075b-MAL-ED       PERU                           0                   1        8      9
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        0     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        0     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        3     26
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       23     26
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        1     12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       11     12
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   0       22    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     1                   1       62    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   0       42    223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0                   1       97    223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   0       38    183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     1                   1      138    183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   0        1    183
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0                   1        6    183
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   0       16    196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     1                   1      154    196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   0        4    196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0                   1       22    196
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
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   0      981   4732
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     1                   1     2231   4732
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   0      554   4732
0-6 months    kiGH5241-JiVitA-3       BANGLADESH                     0                   1      966   4732
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   0      172    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     1                   1      233    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   0       70    548
0-6 months    kiGH5241-JiVitA-4       BANGLADESH                     0                   1       73    548
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   0       23     62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     1                   1       26     62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   0        9     62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0                   1        4     62
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   0        5      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         1                   1        4      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   0        0      9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0                   1        0      9
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   0       14     93
6-24 months   ki0047075b-MAL-ED       INDIA                          1                   1       17     93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   0       29     93
6-24 months   ki0047075b-MAL-ED       INDIA                          0                   1       33     93
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   0       11     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          1                   1       39     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   0        0     50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0                   1        0     50
6-24 months   ki0047075b-MAL-ED       PERU                           1                   0        3     23
6-24 months   ki0047075b-MAL-ED       PERU                           1                   1        5     23
6-24 months   ki0047075b-MAL-ED       PERU                           0                   0        3     23
6-24 months   ki0047075b-MAL-ED       PERU                           0                   1       12     23
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   0        1     50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   1                   1        1     50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   0        8     50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0                   1       40     50
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   0        0     32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   1                   1        0     32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   0        7     32
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0                   1       25     32
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   0       44    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     1                   1       19    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   0       94    198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0                   1       41    198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   0       85    123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     1                   1       31    123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   0        4    123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0                   1        3    123
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
![](/tmp/8d2c6e1b-6e13-4b45-bd99-1c65b15d46c8/081ff526-6b51-4c08-bbaf-5c71d0f4645f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d2c6e1b-6e13-4b45-bd99-1c65b15d46c8/081ff526-6b51-4c08-bbaf-5c71d0f4645f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d2c6e1b-6e13-4b45-bd99-1c65b15d46c8/081ff526-6b51-4c08-bbaf-5c71d0f4645f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d2c6e1b-6e13-4b45-bd99-1c65b15d46c8/081ff526-6b51-4c08-bbaf-5c71d0f4645f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                0.6600665   0.5639939   0.7561392
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    NA                0.5237067   0.3247112   0.7227022
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.6284529   0.4972539   0.7596519
0-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.6183256   0.5142703   0.7223808
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.5528524   0.4658284   0.6398763
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.5045188   0.4421240   0.5669136
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                0.5787671   0.5206376   0.6368967
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    NA                0.6428571   0.3621822   0.9235321
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                0.6380678   0.5806544   0.6954812
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    NA                0.6353095   0.4828729   0.7877460
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                0.5481140   0.2863480   0.8098800
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    NA                0.3620681   0.2990802   0.4250559
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                0.2733187   0.2363269   0.3103105
0-24 months   ki1135781-COHORTS       INDIA         0                    NA                0.2133252   0.1917028   0.2349475
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.7294482   0.6130663   0.8458302
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5988517   0.5583685   0.6393349
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.4308865   0.4170034   0.4447695
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.4087291   0.3884670   0.4289912
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.2585165   0.2355674   0.2814656
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.2535726   0.2152878   0.2918574
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                0.7051816   0.5533238   0.8570395
0-6 months    ki0047075b-MAL-ED       INDIA         0                    NA                0.7263654   0.5831900   0.8695408
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.7318984   0.6363163   0.8274804
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.6967845   0.6204239   0.7731452
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                0.3952610   0.3486442   0.4418779
0-6 months    ki1135781-COHORTS       INDIA         0                    NA                0.3345402   0.3024001   0.3666803
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                0.8367347   0.7280039   0.9454655
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    NA                0.7489177   0.6935154   0.8043201
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                0.6881323   0.6717723   0.7044922
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    NA                0.6557057   0.6307198   0.6806917
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.5757195   0.5272597   0.6241794
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.5034786   0.4208627   0.5860944
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                0.5435187   0.3429363   0.7441010
6-24 months   ki0047075b-MAL-ED       INDIA         0                    NA                0.5253962   0.3799089   0.6708835
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                0.2820800   0.1742448   0.3899153
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    NA                0.2992425   0.2200167   0.3784683
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                0.5201968   0.2993589   0.7410347
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    NA                0.5054156   0.4515450   0.5592863
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                0.1426200   0.1219316   0.1633085
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    NA                0.1683319   0.1322540   0.2044098


### Parameter: E(Y)


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.6176471   0.5365376   0.6987565
0-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH    NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    NA                   NA                0.6286645   0.5746609   0.6826681
0-24 months   ki1135781-COHORTS       GUATEMALA     NA                   NA                0.3787879   0.3179432   0.4396325
0-24 months   ki1135781-COHORTS       INDIA         NA                   NA                0.2344546   0.2156201   0.2532892
0-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.6134700   0.5751620   0.6517779
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.4226600   0.4115317   0.4337883
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki0047075b-MAL-ED       INDIA         NA                   NA                0.7142857   0.6098683   0.8187031
0-6 months    ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1135781-COHORTS       INDIA         NA                   NA                0.3565891   0.3304405   0.3827378
0-6 months    ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.7642857   0.7146210   0.8139505
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    NA                   NA                0.6756128   0.6622741   0.6889516
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA         NA                   NA                0.5376344   0.4216441   0.6536247
6-24 months   ki1017093-NIH-Birth     BANGLADESH    NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1135781-COHORTS       PHILIPPINES   NA                   NA                0.5086849   0.4571562   0.5602135
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH    0                    1                 0.7934151   0.5278071   1.1926848
0-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 0.9838853   0.7520650   1.2871631
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9125742   0.7468489   1.1150738
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH    0                    1                 1.1107354   0.7096843   1.7384254
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    0                    1                 0.9956770   0.7716346   1.2847696
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       GUATEMALA     0                    1                 0.6605707   0.3975669   1.0975605
0-24 months   ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       INDIA         0                    1                 0.7804997   0.6591797   0.9241482
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8209653   0.6902134   0.9764864
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9485772   0.8945203   1.0059007
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 0.9808758   0.8231987   1.1687547
0-6 months    ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA         0                    1                 1.0300402   0.7674567   1.3824658
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH    0                    1                 0.9520236   0.8020259   1.1300744
0-6 months    ki1135781-COHORTS       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       INDIA         0                    1                 0.8463778   0.7270824   0.9852465
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS       PHILIPPINES   0                    1                 0.8950480   0.7707387   1.0394068
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    0                    1                 0.9528775   0.9113687   0.9962768
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    0                    1                 0.8745206   0.7270209   1.0519452
6-24 months   ki0047075b-MAL-ED       INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA         0                    1                 0.9666571   0.6076948   1.5376567
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH    0                    1                 1.0608424   0.6642052   1.6943357
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS       PHILIPPINES   0                    1                 0.9715853   0.6270876   1.5053369
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    0                    1                 1.1802825   0.9110854   1.5290188


### Parameter: PAR


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0237029   -0.0628011    0.0153954
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0108058   -0.1135963    0.0919847
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0326623   -0.1024371    0.0371124
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0029322   -0.0102359    0.0161003
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0094033   -0.0314253    0.0126187
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.1693262   -0.4202679    0.0816156
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.0388641   -0.0684799   -0.0092483
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1159783   -0.2250743   -0.0068823
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0082265   -0.0161614   -0.0002916
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0005146   -0.0121991    0.0111700
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0091041   -0.1043447    0.1225529
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0188939   -0.0960947    0.0583069
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.0386719   -0.0765903   -0.0007535
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0724490   -0.1732018    0.0283039
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0125194   -0.0223338   -0.0027051
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0173254   -0.0425697    0.0079190
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0058843   -0.1725790    0.1608105
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0209503   -0.0708441    0.1127446
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0115120   -0.2253273    0.2023033
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0066534   -0.0043511    0.0176580


### Parameter: PAF


agecat        studyid                 country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH    1                    NA                -0.0372474   -0.1006550    0.0225074
0-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0174952   -0.1983090    0.1360355
0-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0627892   -0.2057712    0.0632377
0-24 months   ki1017093b-PROVIDE      BANGLADESH    1                    NA                 0.0050408   -0.0178496    0.0274163
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH    1                    NA                -0.0149576   -0.0506820    0.0195521
0-24 months   ki1135781-COHORTS       GUATEMALA     1                    NA                -0.4470211   -1.2864978    0.0842458
0-24 months   ki1135781-COHORTS       INDIA         1                    NA                -0.1657637   -0.2981414   -0.0468852
0-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.1890529   -0.3810415   -0.0237540
0-24 months   kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0194637   -0.0384008   -0.0008719
0-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0019944   -0.0483169    0.0422812
0-6 months    ki0047075b-MAL-ED       INDIA         1                    NA                 0.0127457   -0.1595193    0.1594180
0-6 months    ki1017093-NIH-Birth     BANGLADESH    1                    NA                -0.0264990   -0.1408107    0.0763584
0-6 months    ki1135781-COHORTS       INDIA         1                    NA                -0.1084494   -0.2201531   -0.0069720
0-6 months    ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0947931   -0.2355973    0.0299657
0-6 months    kiGH5241-JiVitA-3       BANGLADESH    1                    NA                -0.0185305   -0.0331752   -0.0040933
0-6 months    kiGH5241-JiVitA-4       BANGLADESH    1                    NA                -0.0310271   -0.0773273    0.0132831
6-24 months   ki0047075b-MAL-ED       INDIA         1                    NA                -0.0109447   -0.3738961    0.2561234
6-24 months   ki1017093-NIH-Birth     BANGLADESH    1                    NA                 0.0691358   -0.2875771    0.3270243
6-24 months   ki1135781-COHORTS       PHILIPPINES   1                    NA                -0.0226309   -0.5424499    0.3220047
6-24 months   kiGH5241-JiVitA-4       BANGLADESH    1                    NA                 0.0445721   -0.0322228    0.1156536
