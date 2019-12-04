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

agecat        studyid                    country                        impfloor    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       37    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       73    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        6    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        5    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        6     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1       18     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0     24
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     24
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       60    175
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1      101    175
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        6    175
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        8    175
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        9     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       34     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0       10     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       39     92
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       23     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       13     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       64     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     80
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     80
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        8     51
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       41     51
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       78    223
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      145    223
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    223
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    223
0-24 months   ki1000108-IRC              INDIA                          1                     0      128    308
0-24 months   ki1000108-IRC              INDIA                          1                     1      180    308
0-24 months   ki1000108-IRC              INDIA                          0                     0        0    308
0-24 months   ki1000108-IRC              INDIA                          0                     1        0    308
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      168    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      193    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       33    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1       24    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      105    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      165    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       24    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       14    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       86    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      138    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       31    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       55    310
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       47    504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       36    504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      185    504
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      236    504
0-24 months   ki1114097-CONTENT          PERU                           1                     0        2      9
0-24 months   ki1114097-CONTENT          PERU                           1                     1        7      9
0-24 months   ki1114097-CONTENT          PERU                           0                     0        0      9
0-24 months   ki1114097-CONTENT          PERU                           0                     1        0      9
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      294   7545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   7545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     4062   7545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2930   7545
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      135   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       58   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1395   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      474   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       10     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       45     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0        2     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        3     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        1     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1       14     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0        0     15
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     15
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       21     80
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1       55     80
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0        1     80
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1        3     80
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        5     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1       22     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0        3     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       16     46
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        8     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        4     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       24     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     29
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     29
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        1     14
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       13     14
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39    139
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      100    139
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    139
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    139
0-6 months    ki1000108-IRC              INDIA                          1                     0       72    187
0-6 months    ki1000108-IRC              INDIA                          1                     1      115    187
0-6 months    ki1000108-IRC              INDIA                          0                     0        0    187
0-6 months    ki1000108-IRC              INDIA                          0                     1        0    187
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       52    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1      140    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0       12    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1       17    221
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       33    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      132    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0        7    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       17    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      122    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        4    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       54    197
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       23    202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       15    202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       57    202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1      107    202
0-6 months    ki1114097-CONTENT          PERU                           1                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                     1        4      4
0-6 months    ki1114097-CONTENT          PERU                           0                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      103   4719
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   4719
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1427   4719
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2930   4719
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0       29    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       36    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      213    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      270    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       27     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       28     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        4     61
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        2     61
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       39     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       46     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        5     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       12     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0        7     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       23     46
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     24
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        3     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     24
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       15     24
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        9     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       40     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     51
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     51
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        7     37
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       28     37
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       45     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     84
6-24 months   ki1000108-IRC              INDIA                          1                     0       56    121
6-24 months   ki1000108-IRC              INDIA                          1                     1       65    121
6-24 months   ki1000108-IRC              INDIA                          0                     0        0    121
6-24 months   ki1000108-IRC              INDIA                          0                     1        0    121
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      116    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       53    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       21    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1        7    197
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       72    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       33    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       69    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       16    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       27    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1    113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       24    302
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       21    302
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      128    302
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      129    302
6-24 months   ki1114097-CONTENT          PERU                           1                     0        2      5
6-24 months   ki1114097-CONTENT          PERU                           1                     1        3      5
6-24 months   ki1114097-CONTENT          PERU                           0                     0        0      5
6-24 months   ki1114097-CONTENT          PERU                           0                     1        0      5
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      191   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2635   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0   2826
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      106   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       22   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1182   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      204   1514


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/77782069-c50f-4185-aa89-d5d1e8c00eaf/ba3aa3c0-2b26-4f97-a0ee-18999df46c6f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77782069-c50f-4185-aa89-d5d1e8c00eaf/ba3aa3c0-2b26-4f97-a0ee-18999df46c6f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/77782069-c50f-4185-aa89-d5d1e8c00eaf/ba3aa3c0-2b26-4f97-a0ee-18999df46c6f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/77782069-c50f-4185-aa89-d5d1e8c00eaf/ba3aa3c0-2b26-4f97-a0ee-18999df46c6f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.6636364   0.5737409   0.7535318
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.4545455   0.2011212   0.7079697
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.6273292   0.5434386   0.7112198
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5714286   0.3326866   0.8101705
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.7906977   0.6589695   0.9224259
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.7959184   0.7066152   0.8852215
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.5345605   0.4803033   0.5888177
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4248204   0.2741433   0.5754975
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.6101689   0.5497197   0.6706180
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3459579   0.2002675   0.4916483
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6208178   0.5563947   0.6852409
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.6322226   0.5284136   0.7360316
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4587605   0.3266650   0.5908561
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5597144   0.5080223   0.6114066
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4416260   0.3874950   0.4957570
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4214034   0.4096617   0.4331452
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.3123494   0.2267762   0.3979226
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2564647   0.2360869   0.2768425
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7289544   0.6660136   0.7918951
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.5822682   0.3945761   0.7699603
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.8000000   0.7395838   0.8604162
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4484303   0.8515697
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3988554   0.2331775   0.5645332
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.6530854   0.5791919   0.7269790
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6959907   0.6337390   0.7582423
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.6748159   0.6608209   0.6888109
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.6232552   0.4797401   0.7667703
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.5618923   0.5166029   0.6071816
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.5411765   0.4195451   0.6628078
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4404574   0.2556623   0.6252526
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5021843   0.4368658   0.5675029
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1849823   0.1050391   0.2649256
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1480464   0.1294100   0.1666828


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.6446281   0.5577732   0.7314830
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.6228571   0.5433246   0.7023896
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.7934783   0.7160127   0.8709439
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5191388   0.4683286   0.5699489
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5396825   0.4917879   0.5875772
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4226640   0.4115226   0.4338055
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7104072   0.6505603   0.7702542
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.6039604   0.5356875   0.6722333
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6757788   0.6624235   0.6891341
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.5368421   0.4223932   0.6512910
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3045685   0.2390070   0.3701301
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4966887   0.4351829   0.5581945
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 0.6849315   0.3861446   1.2149107
0-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 0.9108911   0.5874231   1.4124786
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 1.0066026   0.8227214   1.2315819
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.7947097   0.5494619   1.1494217
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.5669872   0.3676667   0.8743638
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0183707   0.8380418   1.2375027
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.2200579   0.9015624   1.6510684
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9542089   0.8416688   1.0817969
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.8210827   0.6173960   1.0919683
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.7987718   0.5724226   1.1146248
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.8125000   0.5904824   1.1179948
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 1.6373992   1.0640770   2.5196261
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9695761   0.8847070   1.0625866
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.9015445   0.7062493   1.1508435
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 0.9239130   0.4590405   1.8595643
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.7971698   0.3690609   1.7218829
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.1401427   0.7340244   1.7709567
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.8003272   0.5101874   1.2554673


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0190083   -0.0482288    0.0102123
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0044720   -0.0248142    0.0158701
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0027806   -0.0824301    0.0879912
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0154218   -0.0361917    0.0053482
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0290001   -0.0499810   -0.0080191
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0017629   -0.0310642    0.0345900
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0809220   -0.0389646    0.2008086
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0189620   -0.0720110    0.0340870
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0543474   -0.1367210    0.0280261
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0185471   -0.0440434    0.0069491
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0162162   -0.0398277    0.0073953
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.2051050    0.0558737    0.3543364
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0202119   -0.0812225    0.0407987
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0648610   -0.2035369    0.0738148
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0043344   -0.0419154    0.0332466
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0090409   -0.0370914    0.0190095
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0562313   -0.1121569    0.2246195
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0357089   -0.1133804    0.0419626


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                -0.0294872   -0.0762681    0.0152603
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0071799   -0.0403006    0.0248863
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0035043   -0.1100031    0.1054046
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0297064   -0.0707108    0.0097276
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0498995   -0.0869501   -0.0141119
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0028316   -0.0513259    0.0541993
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1499437   -0.1056193    0.3464335
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0448630   -0.1782390    0.0734149
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.2106474   -0.5754380    0.0696764
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0261077   -0.0629029    0.0094137
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0206897   -0.0514932    0.0092115
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.3396001    0.0342155    0.5484210
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0299090   -0.1242784    0.0565392
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.1161564   -0.3948326    0.1068426
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0080738   -0.0805275    0.0595215
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0296844   -0.1265874    0.0588835
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1132124   -0.3021426    0.3960782
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.2392180   -0.8862395    0.1858609
