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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       38    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       73    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        6    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        4    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1       17     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       61    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       97    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        6    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        9    173
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        9     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       32     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0       10     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       36     87
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       22     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       62     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       36     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       78    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      147    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    225
0-24 months   ki1000108-IRC              INDIA                          1                     0      128    308
0-24 months   ki1000108-IRC              INDIA                          1                     1      180    308
0-24 months   ki1000108-IRC              INDIA                          0                     0        0    308
0-24 months   ki1000108-IRC              INDIA                          0                     1        0    308
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      168    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      193    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       33    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1       24    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      104    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      165    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       24    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       14    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       86    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      139    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       31    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       55    311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       39    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       31    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      172    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      203    445
0-24 months   ki1114097-CONTENT          PERU                           1                     0        2      9
0-24 months   ki1114097-CONTENT          PERU                           1                     1        7      9
0-24 months   ki1114097-CONTENT          PERU                           0                     0        0      9
0-24 months   ki1114097-CONTENT          PERU                           0                     1        0      9
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      294   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     4063   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2933   7549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      135   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       58   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1395   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      474   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       10     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       45     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0        2     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        2     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1       13     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       21     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1       52     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0        1     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1        4     78
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        5     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1       20     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0        3     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       13     41
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        2     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        8     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       23     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      102    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    141
0-6 months    ki1000108-IRC              INDIA                          1                     0       72    187
0-6 months    ki1000108-IRC              INDIA                          1                     1      115    187
0-6 months    ki1000108-IRC              INDIA                          0                     0        0    187
0-6 months    ki1000108-IRC              INDIA                          0                     1        0    187
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       52    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1      140    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0       12    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1       17    221
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       32    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      132    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0        7    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       17    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      123    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       54    198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       15    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       10    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       43    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       74    142
0-6 months    ki1114097-CONTENT          PERU                           1                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                     1        4      4
0-6 months    ki1114097-CONTENT          PERU                           0                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      103   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1428   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2933   4723
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0       29    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       36    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      213    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      270    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       28     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       28     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        2     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       40     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        5     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       12     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0        7     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       23     46
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       14     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       39     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25     33
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       24    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       21    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      129    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      129    303
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/93884adc-cf63-44dc-9369-9bd8bbf8b289/f636ae62-73b4-4171-8d7f-afd7e5148987/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/93884adc-cf63-44dc-9369-9bd8bbf8b289/f636ae62-73b4-4171-8d7f-afd7e5148987/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/93884adc-cf63-44dc-9369-9bd8bbf8b289/f636ae62-73b4-4171-8d7f-afd7e5148987/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/93884adc-cf63-44dc-9369-9bd8bbf8b289/f636ae62-73b4-4171-8d7f-afd7e5148987/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.6139241   0.5287779   0.6990702
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.6000000   0.3636292   0.8363708
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.7804878   0.6404037   0.9205719
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.7826087   0.6870003   0.8782171
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.5348549   0.4805530   0.5891567
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4193496   0.2701887   0.5685106
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.6120299   0.5513136   0.6727461
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3477017   0.1998315   0.4955719
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6234121   0.5580346   0.6887897
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.6568911   0.5593687   0.7544136
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4668475   0.3268173   0.6068778
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5385892   0.4844512   0.5927271
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4350344   0.3809543   0.4891146
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4229139   0.4111405   0.4346873
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.3039373   0.2193385   0.3885362
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2564725   0.2359412   0.2770038
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7291330   0.6661904   0.7920757
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.6067244   0.4141299   0.7993189
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.8048780   0.7444925   0.8652636
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4495198   0.8504802
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4170425   0.2091205   0.6249645
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.6331517   0.5446237   0.7216797
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.6750972   0.6148113   0.7353831
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.6765780   0.6625714   0.6905847
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.6158839   0.4625617   0.7692060
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.5603677   0.5143458   0.6063897
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.5294118   0.4074100   0.6514135
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4839819   0.2997363   0.6682275
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5003641   0.4351653   0.5655629
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1836652   0.1084514   0.2588789
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1477320   0.1291208   0.1663431


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.6127168   0.5323061   0.6931274
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.7816092   0.6987929   0.8644255
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5191388   0.4683286   0.5699489
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5258427   0.4754454   0.5762400
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4228375   0.4116972   0.4339777
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7104072   0.6505603   0.7702542
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5915493   0.5100380   0.6730606
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6758416   0.6624927   0.6891906
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3045685   0.2390070   0.3701301
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4950495   0.4335437   0.5565553
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 0.9773196   0.6436676   1.4839237
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 1.0027174   0.8063445   1.2469140
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.7840437   0.5415567   1.1351066
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.5681123   0.3669876   0.8794618
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0537029   0.8778110   1.2648392
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.1536725   0.8416400   1.5813891
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 0.9721389   0.8560130   1.1040182
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.8438335   0.6315986   1.1273853
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.8321175   0.5987701   1.1564030
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 0.8075758   0.5879304   1.1092786
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 1.5181946   0.9025064   2.5539039
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0021935   0.9146447   1.0981225
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.9098594   0.6999765   1.1826743
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 0.9444444   0.4683311   1.9045828
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 0.7971698   0.3690609   1.7218829
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0338489   0.6912498   1.5462480
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.8043549   0.5239430   1.2348419


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0012073   -0.0229540    0.0205394
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0011214   -0.0889347    0.0911775
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0157161   -0.0364199    0.0049877
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0289680   -0.0499075   -0.0080285
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0003821   -0.0337243    0.0344884
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0589952   -0.0685192    0.1865095
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0121970   -0.0652470    0.0408531
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0459354   -0.1275835    0.0357127
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0187258   -0.0446513    0.0071997
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0168346   -0.0405172    0.0068480
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1745068   -0.0150619    0.3640754
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0007444   -0.0583998    0.0598887
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0574897   -0.2061147    0.0911353
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0030960   -0.0405454    0.0343534
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0090409   -0.0370914    0.0190095
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0110676   -0.1562779    0.1784131
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0343917   -0.1073508    0.0385673


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0019704   -0.0380759    0.0328793
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0014347   -0.1207479    0.1102972
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0302735   -0.0711406    0.0090345
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0496825   -0.0865039   -0.0141090
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0006125   -0.0555894    0.0538222
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1121917   -0.1678546    0.3250841
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                -0.0288455   -0.1622905    0.0892783
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.1780428   -0.5408150    0.0993177
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0263592   -0.0637951    0.0097593
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                -0.0213625   -0.0520989    0.0084760
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.2949995   -0.1161037    0.5546779
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0011015   -0.0903577    0.0848891
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.1029554   -0.4043711    0.1337684
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                -0.0058824   -0.0795730    0.0627782
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                -0.0296844   -0.1265874    0.0588835
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0223566   -0.3819110    0.3083588
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.2303941   -0.8312191    0.1732996
