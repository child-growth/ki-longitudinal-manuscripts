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

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* brthmon
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
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_brthmon
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

agecat                       studyid                   country                        earlybf    ever_stunted   n_cell       n
---------------------------  ------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     0       65     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     1       73     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     0       78     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     1       17     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     0       92     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     1       15     202
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     0       61     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     1       66     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     0       37     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     1       45     209
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     0       65     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     1       25     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     0       91     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     1       30     211
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       78     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       87     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       49     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       46     260
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       32     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      152     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     0       12     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     1       31     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     0       26     206
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     1      137     206
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     0       77     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     1       77     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     0      155     527
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     1      218     527
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     3956   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     2020   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3375   11219
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1868   11219
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       79   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1       17   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    13594   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4618   18308
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1421    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1056    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      858    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1      551    3886
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       62     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     1       16     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     0       83     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     0       98     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     1        9     202
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     0      103     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     1       24     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     0       60     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     1       22     209
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     0       84     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     1        6     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     0      113     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     1        8     211
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      115     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       50     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       71     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       24     260
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      130     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       54     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     0       24     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     1       19     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     0       66     206
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     1       97     206
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     0      127     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     1       27     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     0      311     527
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     1       62     527
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5032   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      941   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4260   11210
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      977   11210
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       80   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1       15   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    15797   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2373   18265
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2239    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      209    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1107    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      104    3659
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     0       58     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     1       42     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     0       33     157
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     1       24     157
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     0       69     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     1        5     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     0       83     163
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     1        6     163
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     0       55     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     1       42     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     0       34     154
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     1       23     154
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     0       62     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     1       19     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     0       91     194
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     1       22     194
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     0       66     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     1       47     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     0       24     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     1       12     149
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       61     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       37     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       36     156
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       22     156
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       24     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     144
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     144
6-24 months                  ki1000109-EE              PAKISTAN                       1                     0       12      88
6-24 months                  ki1000109-EE              PAKISTAN                       1                     1       12      88
6-24 months                  ki1000109-EE              PAKISTAN                       0                     0       24      88
6-24 months                  ki1000109-EE              PAKISTAN                       0                     1       40      88
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     0       59     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     1       50     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     0      101     366
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     1      156     366
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     3065    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1081    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     2512    7553
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      895    7553
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     0       11   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     1        2   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     0     8212   10492
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2267   10492
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1417    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                     1      855    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     0      853    3649
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                     1      524    3649


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/f02a8a39-227a-47c2-84ba-3ca96d40052f/8af76aaf-eed1-4dad-84f8-449b22dffdee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f02a8a39-227a-47c2-84ba-3ca96d40052f/8af76aaf-eed1-4dad-84f8-449b22dffdee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f02a8a39-227a-47c2-84ba-3ca96d40052f/8af76aaf-eed1-4dad-84f8-449b22dffdee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f02a8a39-227a-47c2-84ba-3ca96d40052f/8af76aaf-eed1-4dad-84f8-449b22dffdee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5435118   0.4621320   0.6248916
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4874981   0.3796859   0.5953103
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1812590   0.1034352   0.2590829
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1354679   0.0692687   0.2016672
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5324740   0.4468048   0.6181432
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5310409   0.4200192   0.6420627
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2835266   0.1910071   0.3760461
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2516239   0.1738973   0.3293505
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5799517   0.5117492   0.6481542
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5161085   0.3941761   0.6380410
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.5192787   0.4431744   0.5953829
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4865738   0.3884649   0.5846828
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8260870   0.7711946   0.8809793
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                0.7386563   0.5993716   0.8779409
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                0.8402044   0.7836575   0.8967513
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6658856   0.5399571   0.7918141
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5722453   0.5162156   0.6282749
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4140046   0.3736904   0.4543188
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2694366   0.1772450   0.3616283
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5118824   0.4331059   0.5906588
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5787384   0.5293400   0.6281367
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3394089   0.3277374   0.3510805
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3540441   0.3415143   0.3665740
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1750741   0.1593608   0.1907875
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2535709   0.2456291   0.2615128
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4217530   0.3982110   0.4452950
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3990221   0.3711584   0.4268857
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2352307   0.1642096   0.3062517
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1895668   0.1012098   0.2779238
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1263158   0.0593474   0.1932842
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0841121   0.0313911   0.1368332
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1979633   0.1294230   0.2665036
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2566829   0.1598740   0.3534919
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150094   0.1183239
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0661157   0.0217359   0.1104956
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.3460447   0.2801570   0.4119325
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3363047   0.2177166   0.4548929
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3035674   0.2335060   0.3736287
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2590097   0.1735764   0.3444430
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2958997   0.2303087   0.3614907
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3432465   0.1788449   0.5076481
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.4797091   0.3330472   0.6263711
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.5854676   0.5104013   0.6605339
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1380401   0.1008250   0.1752551
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2034695   0.1767480   0.2301910
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1892218   0.1570110   0.2214327
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1925237   0.1096483   0.2753992
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1773860   0.1173500   0.2374221
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1660882   0.1283623   0.2038142
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1604302   0.1513947   0.1694658
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1806908   0.1707030   0.1906785
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1578040   0.1425866   0.1730214
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1305975   0.1248764   0.1363187
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0849725   0.0719920   0.0979531
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0862706   0.0643118   0.1082295
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4381585   0.3408134   0.5355036
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.3928924   0.2630565   0.5227282
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.0675676   0.0102027   0.1249325
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0674157   0.0151624   0.1196691
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4462465   0.3475900   0.5449030
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3806012   0.2549436   0.5062587
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2500435   0.1569027   0.3431843
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2002114   0.1274488   0.2729740
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4152878   0.3237504   0.5068253
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.2883132   0.1295733   0.4470530
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3691382   0.2720054   0.4662709
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3618415   0.2359876   0.4876953
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8032787   0.7324939   0.8740635
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865093   0.8771270
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                0.4889695   0.2775028   0.7004362
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                0.6286558   0.5090235   0.7482881
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6120866   0.4446282   0.7795449
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4910358   0.4434108   0.5386608
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4712622   0.3771517   0.5653728
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6058497   0.5463603   0.6653391
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2583156   0.2450609   0.2715704
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2650470   0.2503459   0.2797482
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3744719   0.3494881   0.3994557
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3793705   0.3518541   0.4068870


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5231481   0.4563856   0.5899107
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1584158   0.1079383   0.2088934
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5311005   0.4632825   0.5989184
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5115385   0.4506616   0.5724154
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8173516   0.7660617   0.8686415
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       NA                   NA                0.8155340   0.7624394   0.8686286
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5597723   0.5173495   0.6021951
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.3465550   0.3377489   0.3553610
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2531680   0.2454102   0.2609258
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2175926   0.1624398   0.2727454
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1039604   0.0617667   0.1461541
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2200957   0.1637912   0.2764002
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0663507   0.0326877   0.1000137
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2846154   0.2296617   0.3395691
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3013699   0.2404592   0.3622805
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.5631068   0.4952092   0.6310044
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1688805   0.1368637   0.2008972
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1710972   0.1641255   0.1780689
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1307419   0.1251476   0.1363361
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4203822   0.3429219   0.4978424
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0674847   0.0288550   0.1061143
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3782051   0.3018621   0.4545482
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7847222   0.7173567   0.8520877
6-24 months                  ki1000109-EE              PAKISTAN                       NA                   NA                0.5909091   0.4875952   0.6942230
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5628415   0.5119537   0.6137294
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2616179   0.2517052   0.2715306
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.8969411   0.6929865   1.1609222
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.7473721   0.3906516   1.4298291
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 0.9973087   0.7687547   1.2938128
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8874790   0.5661813   1.3911074
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 0.8899164   0.6845832   1.1568372
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.9370186   0.7343980   1.1955423
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9338346   0.7702576   1.1321499
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    1                 1.1374769   0.9313516   1.3892215
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.8593748   0.7038594   1.0492508
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.6508059   0.4566480   0.9275159
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.1306081   0.9503906   1.3449993
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0431197   0.9946810   1.0939171
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.4483631   1.3171019   1.5927057
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9461037   0.8660542   1.0335523
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.8058761   0.4652421   1.3959104
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.6658879   0.2930014   1.5133259
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 1.2966188   0.7773342   2.1628025
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9917355   0.3557703   2.7645348
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 0.9718535   0.6508680   1.4511377
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.8532198   0.5745272   1.2671010
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1600097   0.6863910   1.9604315
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    1                 1.2204637   0.8809065   1.6909080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.4739885   1.0842918   2.0037431
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 1.0174499   0.6413995   1.6139774
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 0.9363094   0.6240191   1.4048852
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.1262888   1.0442761   1.2147424
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.8275933   0.7447159   0.9196939
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0152769   0.7545348   1.3661227
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.8966900   0.6045385   1.3300278
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.9977528   0.3160532   3.1498199
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.8528945   0.5782554   1.2579719
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8007062   0.4736842   1.3534975
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.6942491   0.3839927   1.2551849
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.9802332   0.6327435   1.5185571
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8487941   0.6289904   1.1454091
6-24 months                  ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN                       0                    1                 1.2856748   0.7988807   2.0690945
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.8022327   0.6041342   1.0652887
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.2697754   0.1147303   0.6343463
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.2855894   1.0301913   1.6043040
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0260588   0.9521102   1.1057508
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0130814   0.9183943   1.1175309


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0203637   -0.0668896    0.0261623
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0228432   -0.0770419    0.0313555
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0013735   -0.0543372    0.0515902
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0228631   -0.0920753    0.0463491
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0122825   -0.0455624    0.0209973
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0077402   -0.0518493    0.0363688
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0087354   -0.0328310    0.0153603
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0768777   -0.0432664    0.1970218
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0854529   -0.2070506    0.0361448
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0204365   -0.0340747   -0.0067982
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0478899   -0.0173293    0.1131092
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0071460   -0.0005652    0.0148572
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0780939    0.0609506    0.0952371
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0082172   -0.0212567    0.0048223
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0176381   -0.0594787    0.0242026
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0223554   -0.0675962    0.0228854
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0221324   -0.0244945    0.0687593
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0003160   -0.0393704    0.0387385
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0001801   -0.0324560    0.0320959
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0189520   -0.0590205    0.0211165
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0054702   -0.0217513    0.0326917
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0833976   -0.0459184    0.2127137
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0597000    0.0141666    0.1052335
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0006710   -0.0111448    0.0124867
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0085056   -0.0584399    0.0414287
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0106670    0.0045832    0.0167508
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0270621   -0.0428652   -0.0112591
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0005700   -0.0079595    0.0090995
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0177763   -0.0755600    0.0400073
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0000829   -0.0424513    0.0422855
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0241686   -0.0817569    0.0334197
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0387033   -0.1094818    0.0320752
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0193147   -0.0625634    0.0239340
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0090670   -0.0511538    0.0692877
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0185565   -0.0510927    0.0139797
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.1019396   -0.0791248    0.2830039
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1090115   -0.2658993    0.0478763
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0267469   -0.0383890   -0.0151048
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0915793    0.0132956    0.1698630
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0033023   -0.0055430    0.0121475
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0034398   -0.0105229    0.0174026


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0389253   -0.1319276    0.0464358
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.1441977   -0.5406701    0.1502475
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0025861   -0.1074427    0.0923423
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0877111   -0.3886511    0.1480109
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0216368   -0.0820318    0.0353872
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0151313   -0.1050969    0.0675103
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0106874   -0.0406648    0.0184265
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0942667   -0.0670715    0.2312111
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1472227   -0.3796867    0.0460734
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0519261   -0.0873554   -0.0176512
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0855525   -0.0391130    0.1952615
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0206201   -0.0018889    0.0426234
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.3084666    0.2408744    0.3700405
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0198706   -0.0518063    0.0110955
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0810601   -0.2914847    0.0950795
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2150376   -0.7293081    0.1462965
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1005581   -0.1362805    0.2880316
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0047619   -0.8050043    0.4406958
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0005206   -0.0983302    0.0885788
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0665880   -0.2168093    0.0650876
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0181511   -0.0763610    0.1043644
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.1481027   -0.1166206    0.3500666
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3019117    0.0553798    0.4841023
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0035333   -0.0606695    0.0638499
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0503645   -0.3917206    0.2072649
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0623447    0.0261336    0.0972094
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.2069892   -0.3371869   -0.0894684
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0066629   -0.0980601    0.1013984
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0422862   -0.1893326    0.0865798
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0012285   -0.8743831    0.4651795
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0572609   -0.2029743    0.0708026
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.1831327   -0.5723472    0.1097367
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0487778   -0.1638926    0.0549516
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0239737   -0.1490523    0.1709452
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0236472   -0.0662936    0.0172936
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.1725131   -0.2019500    0.4303136
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2166904   -0.5702969    0.0572894
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1017589   -0.1463941   -0.0588616
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1627089    0.0101854    0.2917296
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0126224   -0.0217741    0.0458610
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0091022   -0.0286199    0.0454410
