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
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     0       66     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                     1       72     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     0       38     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                     1       40     216
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     0       83     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                     1       17     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     0       96     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                     1       12     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     0       61     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                     1       67     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     0       39     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                     1       41     208
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     0       65     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                     1       25     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     0       92     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                     1       30     212
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     0       85     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                     1      117     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     0       30     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                     1       34     266
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       81     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       86     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       51     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       47     265
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       33     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1      151     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        8     219
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       27     219
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     0       10     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                     1       39     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     0       23     249
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                     1      177     249
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     0       29    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                     1       58    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     0      417    1063
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                     1      559    1063
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      334     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      235     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       62     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       22     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     0       69     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                     1       78     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     0      114     492
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                     1      231     492
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     4091   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                     1     1882   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     3493   11215
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                     1     1749   11215
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     0       79   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                     1       19   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     0    13637   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                     1     4663   18398
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     0     1421    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                     1     1056    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     0      858    3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                     1      551    3886
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     0      107     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                     1       31     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     0       63     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                     1       15     216
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     0       88     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                     1       12     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     0      100     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                     1        8     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     0      104     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                     1       24     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     0       60     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                     1       20     208
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     0       84     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                     1        6     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     0      114     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                     1        8     212
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     0      132     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                     1       70     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     0       42     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                     1       22     266
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0      116     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       51     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       73     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       25     265
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0      131     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       53     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0       23     219
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       12     219
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     0       23     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                     1       26     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     0       76     249
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                     1      124     249
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     0       74    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                     1       13    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     0      778    1062
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                     1      197    1062
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      462     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      107     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       67     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                     1       17     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     0      122     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                     1       25     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     0      280     492
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                     1       65     492
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     5033   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      934   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     4263   11201
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      971   11201
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     0       80   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                     1       17   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     0    15859   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2399   18355
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     0     2239    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                     1      209    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     0     1107    3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                     1      104    3659
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     0       59     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                     1       41     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     0       33     158
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                     1       25     158
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     0       72     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         1                     1        5     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     0       87     168
6-24 months                  ki0047075b-MAL-ED         BRAZIL                         0                     1        4     168
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     0       55     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                     1       43     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     0       36     155
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                     1       21     155
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     0       62     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                     1       19     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     0       92     195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                     1       22     195
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     0       66     149
6-24 months                  ki0047075b-MAL-ED         PERU                           1                     1       47     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     0       24     149
6-24 months                  ki0047075b-MAL-ED         PERU                           0                     1       12     149
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     0       63     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                     1       35     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     0       37     157
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                     1       22     157
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     0       25     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                     1       98     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     0        7     145
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                     1       15     145
6-24 months                  ki1000109-EE              PAKISTAN                       1                     0       10      97
6-24 months                  ki1000109-EE              PAKISTAN                       1                     1       13      97
6-24 months                  ki1000109-EE              PAKISTAN                       0                     0       21      97
6-24 months                  ki1000109-EE              PAKISTAN                       0                     1       53      97
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     0       29     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                     1       46     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     0      375     813
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                     1      363     813
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     0      314     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                     1      128     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     0       59     506
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                     1        5     506
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     0       63     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                     1       53     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     0      111     393
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                     1      166     393
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     0     2956    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                     1      950    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     0     2390    7078
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                     1      782    7078
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     0       11   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     1                     1        2   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     0     8226   10525
6-24 months                  kiGH5241-JiVitA-3         BANGLADESH                     0                     1     2286   10525
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

* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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
![](/tmp/a6532950-2138-42c2-8b23-e1ec96ff1d81/0385594c-62f4-48fb-a181-6612e839e7ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6532950-2138-42c2-8b23-e1ec96ff1d81/0385594c-62f4-48fb-a181-6612e839e7ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6532950-2138-42c2-8b23-e1ec96ff1d81/0385594c-62f4-48fb-a181-6612e839e7ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6532950-2138-42c2-8b23-e1ec96ff1d81/0385594c-62f4-48fb-a181-6612e839e7ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.5343019   0.4526814   0.6159224
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.4788823   0.3749737   0.5827909
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1727043   0.0970523   0.2483562
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.1089426   0.0485466   0.1693386
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                0.5200184   0.4341253   0.6059114
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    NA                0.5214781   0.4165625   0.6263936
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2766962   0.1861472   0.3672452
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    NA                0.2458165   0.1691316   0.3225013
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                0.5840615   0.5161511   0.6519720
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    NA                0.5132921   0.3892028   0.6373813
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.5203217   0.4445925   0.5960508
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.4759570   0.3794762   0.5724378
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8206522   0.7650924   0.8762120
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7714286   0.6319952   0.9108619
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                0.8027885   0.6868322   0.9187447
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    NA                0.8853414   0.8409800   0.9297029
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6659009   0.5398431   0.7919586
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.5722449   0.5162193   0.6282704
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.4148475   0.3745413   0.4551537
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.2652623   0.1710671   0.3594575
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.5282728   0.4460341   0.6105115
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.6698548   0.6201137   0.7195958
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.3167140   0.3052254   0.3282025
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.3314378   0.3190979   0.3437776
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1921669   0.1753806   0.2089531
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.2548124   0.2468273   0.2627975
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.4214559   0.3979892   0.4449226
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.4004722   0.3726906   0.4282537
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.2373477   0.1682644   0.3064309
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.1939315   0.1053901   0.2824728
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                0.1200000   0.0561551   0.1838449
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    NA                0.0740741   0.0245628   0.1235853
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                0.1877530   0.1230494   0.2524566
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    NA                0.2607509   0.1641814   0.3573204
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                0.0666667   0.0150100   0.1183233
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    NA                0.0655738   0.0215454   0.1096021
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                0.3583109   0.2936911   0.4229307
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    NA                0.3256610   0.2085103   0.4428116
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3098176   0.2409136   0.3787217
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.2470085   0.1613681   0.3326489
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2895474   0.2236669   0.3554280
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3301711   0.1655605   0.4947817
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                0.5302456   0.3723548   0.6881364
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    NA                0.6144685   0.5470987   0.6818383
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.1380401   0.1008250   0.1752551
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.2034695   0.1767480   0.2301910
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.1892731   0.1570434   0.2215029
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.1941751   0.1100791   0.2782711
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.1745795   0.1147098   0.2344493
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.1888697   0.1476206   0.2301188
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.1600763   0.1510142   0.1691385
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.1798700   0.1698895   0.1898504
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                0.1753583   0.1591855   0.1915311
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                0.1313902   0.1256231   0.1371572
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.0851065   0.0721741   0.0980389
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.0868430   0.0647440   0.1089420
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                0.4259582   0.3274803   0.5244360
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    NA                0.3992187   0.2763137   0.5221236
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                0.4414397   0.3426451   0.5402344
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    NA                0.3400589   0.2172983   0.4628195
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                0.2277096   0.1336189   0.3218004
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    NA                0.1861936   0.1126778   0.2597094
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                0.4215060   0.3298046   0.5132074
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    NA                0.3527813   0.1992887   0.5062739
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                0.3574260   0.2616280   0.4532240
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                0.3673696   0.2397464   0.4949928
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7967480   0.7253845   0.8681115
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6818182   0.4865140   0.8771223
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                0.5375248   0.3188293   0.7562203
6-24 months                  ki1000109-EE              PAKISTAN                       0                    NA                0.7148930   0.6108915   0.8188944
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                0.6159751   0.4517100   0.7802403
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    NA                0.4913233   0.4437461   0.5389004
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                0.2895928   0.2472661   0.3319194
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    NA                0.0781250   0.0123109   0.1439391
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                0.4654040   0.3722488   0.5585592
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    NA                0.5969272   0.5388381   0.6550162
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                0.2413717   0.2279839   0.2547595
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    NA                0.2470661   0.2320731   0.2620592
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                0.3760812   0.3512254   0.4009370
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                0.3810233   0.3534515   0.4085952


### Parameter: E(Y)


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.5185185   0.4517302   0.5853069
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.1394231   0.0922358   0.1866104
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.5192308   0.4511677   0.5872938
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.5018868   0.4415735   0.5622001
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5804327   0.5278252   0.6330403
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.6280488   0.5852977   0.6707999
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.3237628   0.3151026   0.3324231
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.2544842   0.2466711   0.2622973
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.2129630   0.1582389   0.2676870
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.0961538   0.0559939   0.1363138
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          NA                   NA                0.2115385   0.1559035   0.2671734
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.0660377   0.0325283   0.0995472
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.2867925   0.2322370   0.3413479
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.1977401   0.1736271   0.2218531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.1829268   0.1487307   0.2171229
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.1700741   0.1631162   0.1770320
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.1316263   0.1259812   0.1372713
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.4177215   0.3405766   0.4948664
6-24 months                  ki0047075b-MAL-ED         INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED         PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                0.3630573   0.2875961   0.4385185
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1000109-EE              PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          NA                   NA                0.5572519   0.5080809   0.6064229
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.2447019   0.2346857   0.2547181
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.8962766   0.6959012   1.1543475
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.6308045   0.3105413   1.2813571
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          0                    1                 1.0028070   0.7794999   1.2900861
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8883984   0.5714089   1.3812379
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           0                    1                 0.8788322   0.6736413   1.1465241
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.9147360   0.7152106   1.1699240
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.9400189   0.7750206   1.1401447
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       0                    1                 1.1028328   0.9461632   1.2854444
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.8593544   0.7037368   1.0493839
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.6394213   0.4431690   0.9225816
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.2680092   1.0667295   1.5072680
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0464892   0.9952730   1.1003410
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 1.3259956   1.2095256   1.4536809
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 0.9502113   0.8702772   1.0374874
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.8170776   0.4790842   1.3935251
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         0                    1                 0.6172840   0.2627042   1.4504505
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          0                    1                 1.3887974   0.8466847   2.2780125
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          0                    1                 0.9836066   0.3528132   2.7421928
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           0                    1                 0.9088782   0.6118117   1.3501860
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 0.7972706   0.5322040   1.1943549
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.1403005   0.6592640   1.9723285
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       0                    1                 1.1588375   0.8469666   1.5855460
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          0                    1                 1.4739885   1.0842918   2.0037431
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 1.0258988   0.6449610   1.6318326
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.0818548   0.7190583   1.6276982
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.1236512   1.0412680   1.2125525
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     0                    1                 0.7492668   0.6770515   0.8291846
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0204037   0.7596822   1.3706043
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     0                    1                 0.9372250   0.6448182   1.3622300
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         INDIA                          0                    1                 0.7703404   0.5075976   1.1690843
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         NEPAL                          0                    1                 0.8176801   0.4604220   1.4521476
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         PERU                           0                    1                 0.8369545   0.5139000   1.3630915
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1                 1.0278200   0.6616771   1.5965703
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 0.8557514   0.6338782   1.1552858
6-24 months                  ki1000109-EE              PAKISTAN                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000109-EE              PAKISTAN                       0                    1                 1.3299720   0.8621297   2.0516930
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          0                    1                 0.7976349   0.6048980   1.0517831
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     0                    1                 0.2697754   0.1147303   0.6343463
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          0                    1                 1.2826000   1.0262340   1.6030093
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       0                    1                 1.0235920   0.9434854   1.1105000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     0                    1                 1.0131412   0.9189053   1.1170412


### Parameter: PAR


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0157834   -0.0608638    0.0292971
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0332812   -0.0846006    0.0180383
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0007876   -0.0515083    0.0499332
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0172622   -0.0853312    0.0508067
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0163924   -0.0494588    0.0166741
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0184349   -0.0632663    0.0263966
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0078668   -0.0319738    0.0162402
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0646814   -0.0357919    0.1651547
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0854681   -0.2071717    0.0362354
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0212793   -0.0348955   -0.0076632
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0997760    0.0315395    0.1680125
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0070488   -0.0005702    0.0146679
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0623173    0.0444043    0.0802304
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0079201   -0.0209210    0.0050808
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0243847   -0.0642744    0.0155050
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0238462   -0.0659128    0.0182205
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.0237855   -0.0198894    0.0674603
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0006289   -0.0396887    0.0384308
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0124462   -0.0439743    0.0190819
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0230252   -0.0630592    0.0170088
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0072562   -0.0204795    0.0349919
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.0721640   -0.0706656    0.2149937
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0597000    0.0141666    0.1052335
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0006197   -0.0111717    0.0124110
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0083473   -0.0429189    0.0596134
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0099978    0.0038710    0.0161245
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0437321   -0.0603739   -0.0270902
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0004360   -0.0080057    0.0088777
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0082367   -0.0662221    0.0497487
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0285365   -0.0846936    0.0276206
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0174532   -0.0878447    0.0529383
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0255328   -0.0708619    0.0197963
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0056313   -0.0543364    0.0655990
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0174376   -0.0496969    0.0148217
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.1428876   -0.0465532    0.3323283
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1129001   -0.2667209    0.0409207
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0267469   -0.0383890   -0.0151048
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0918479    0.0134610    0.1702348
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0033302   -0.0056286    0.0122890
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0018306   -0.0121158    0.0157769


### Parameter: PAF


agecat                       studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0304394   -0.1211298    0.0529149
0-24 months (no birth st.)   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2387065   -0.6598437    0.0755794
0-24 months (no birth st.)   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0015168   -0.1041186    0.0915505
0-24 months (no birth st.)   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0665381   -0.3644006    0.1662980
0-24 months (no birth st.)   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0288766   -0.0889221    0.0278578
0-24 months (no birth st.)   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0367311   -0.1300592    0.0488893
0-24 months (no birth st.)   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0096788   -0.0398297    0.0195979
0-24 months (no birth st.)   ki1000109-EE              PAKISTAN                       1                    NA                 0.0745633   -0.0496434    0.1840724
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.1472490   -0.3799216    0.0461920
0-24 months (no birth st.)   ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.0540677   -0.0894622   -0.0198231
0-24 months (no birth st.)   ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1588666    0.0416926    0.2617135
0-24 months (no birth st.)   ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0217716   -0.0020491    0.0450261
0-24 months (no birth st.)   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.2448770    0.1736523    0.3099627
0-24 months (no birth st.)   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0191522   -0.0509991    0.0117298
0-6 months (no birth st.)    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.1145021   -0.3197137    0.0587997
0-6 months (no birth st.)    ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.2480000   -0.7591052    0.1146044
0-6 months (no birth st.)    ki0047075b-MAL-ED         INDIA                          1                    NA                 0.1124404   -0.1163974    0.2943712
0-6 months (no birth st.)    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0095238   -0.8136804    0.4380828
0-6 months (no birth st.)    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0359858   -0.1316623    0.0516017
0-6 months (no birth st.)    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0802851   -0.2295767    0.0508799
0-6 months (no birth st.)    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0244478   -0.0735945    0.1135368
0-6 months (no birth st.)    ki1000109-EE              PAKISTAN                       1                    NA                 0.1197923   -0.1534589    0.3283111
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.3019117    0.0553798    0.4841023
0-6 months (no birth st.)    ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                 0.0032632   -0.0608037    0.0634608
0-6 months (no birth st.)    ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.0456318   -0.2795922    0.2881961
0-6 months (no birth st.)    ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0587847    0.0220910    0.0941016
0-6 months (no birth st.)    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.3322443   -0.4696208   -0.2077094
0-6 months (no birth st.)    kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0050970   -0.0985212    0.0989415
6-24 months                  ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0197181   -0.1682991    0.1099668
6-24 months                  ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0691119   -0.2139067    0.0584118
6-24 months                  ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0830091   -0.4740257    0.2042820
6-24 months                  ki0047075b-MAL-ED         PERU                           1                    NA                -0.0644812   -0.1858455    0.0444622
6-24 months                  ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0155107   -0.1643178    0.1675648
6-24 months                  ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0223757   -0.0649148    0.0184641
6-24 months                  ki1000109-EE              PAKISTAN                       1                    NA                 0.2100014   -0.1296333    0.4475218
6-24 months                  ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.2244200   -0.5700160    0.0451024
6-24 months                  ki1017093c-NIH-Crypto     BANGLADESH                     1                    NA                -0.1017589   -0.1463941   -0.0588616
6-24 months                  ki1113344-GMS-Nepal       NEPAL                          1                    NA                 0.1648229    0.0104713    0.2950980
6-24 months                  ki1126311-ZVITAMBO        ZIMBABWE                       1                    NA                 0.0136091   -0.0236900    0.0495493
6-24 months                  kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.0048439   -0.0327903    0.0411068
