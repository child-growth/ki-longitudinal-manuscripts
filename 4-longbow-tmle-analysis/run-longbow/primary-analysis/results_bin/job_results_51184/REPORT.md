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

**Intervention Variable:** impfloor

**Adjustment Set:**

* arm
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

agecat                       studyid                    country                        impfloor    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       86     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      1      100     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      0      159     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      1       28     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      0       87     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      1       95     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      0        4     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      1       10     196
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      0       72     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      1       14     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      0       79     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      1       38     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      0       21     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      1       27     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      0       70     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      1      120     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       94     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1      117     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     231
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        3     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       32     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      166     209
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      177     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     198
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     198
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      0      123     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                      1      147     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      0        0     270
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                      1        0     270
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      193     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     1                      1      276     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       18     529
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0                      1       42     529
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      366     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      1      213     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       30     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       25     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      310     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      191     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       66     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      0       39     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      1       40     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      0      121     421
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      1      221     421
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      0      142     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      1       42     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      1        3     197
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1379   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      280   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    12371   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4387   18417
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      361    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      154    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1908    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1451    3874
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      148     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       38     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       13     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        4     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      0      168     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      1       19     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     189
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      0      145     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      1       37     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      0       10     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      1        4     196
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      0       85     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      0      105     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      1       12     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      0       28     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      1       20     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      0      122     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      1       68     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      145     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       66     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        8     231
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      139     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       59     209
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      115     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       80     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     195
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     195
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      0      186     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                      1       84     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      0        0     270
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                      1        0     270
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      372     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     1                      1       97     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       36     529
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0                      1       24     529
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      492     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       87     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       41     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       14     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      414     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       37     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      0       69     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      1       10     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      0      278     421
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      1       64     421
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      0      156     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      1       28     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      1        2     197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1525   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      126   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    14441   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2281   18373
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      457    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       30    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2882    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      282    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      0       84     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      1       62     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      1        5     159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      0      157     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      1        9     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      0        2     168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      1        0     168
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      0       87     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      1       58     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      0        4     155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      1        6     155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      0       71     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      1       13     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      0       79     189
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      1       26     189
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      0       21     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      1        7     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      0       69     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      1       52     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       93     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       51     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     156
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        5     156
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       30     143
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      107     143
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       21     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       98     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     119
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     119
6-24 months                  ki1000108-IRC              INDIA                          1                      0      123     186
6-24 months                  ki1000108-IRC              INDIA                          1                      1       63     186
6-24 months                  ki1000108-IRC              INDIA                          0                      0        0     186
6-24 months                  ki1000108-IRC              INDIA                          0                      1        0     186
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      0      139     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     1                      1      179     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      0        8     344
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0                      1       18     344
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      0      301     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      1      126     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      0       19     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      1       11     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      287     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      104     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       29     506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      0       37     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      1       30     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      0      115     339
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      1      157     339
6-24 months                  ki1114097-CONTENT          PERU                           1                      0      142     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      1       14     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      1        1     167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      0      933   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      1      157   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      0     7290   10505
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2125   10505
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      0      358    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                      1      125    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1907    3643
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1253    3643


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/081dddfe-6f76-4fc5-87ee-4e68da9bcad2/e3067fff-b92b-4251-bb93-47e63852f89a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/081dddfe-6f76-4fc5-87ee-4e68da9bcad2/e3067fff-b92b-4251-bb93-47e63852f89a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/081dddfe-6f76-4fc5-87ee-4e68da9bcad2/e3067fff-b92b-4251-bb93-47e63852f89a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/081dddfe-6f76-4fc5-87ee-4e68da9bcad2/e3067fff-b92b-4251-bb93-47e63852f89a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.5376344   0.4658053   0.6094635
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1746079   0.0956943   0.2535215
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                0.3309642   0.2452951   0.4166333
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                0.5702948   0.4289056   0.7116839
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                0.6299266   0.5610419   0.6988113
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.5545024   0.4872940   0.6217107
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405088   0.8594912
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5911964   0.5466565   0.6357362
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6884132   0.5745293   0.8022970
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3704166   0.3311849   0.4096483
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4024329   0.2651545   0.5397113
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.3769169   0.3348300   0.4190038
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.4514600   0.3711811   0.5317390
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.5039323   0.3877273   0.6201374
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.6471689   0.5960550   0.6982828
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2229600   0.1927530   0.2531671
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2565522   0.2484284   0.2646760
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3207748   0.2634035   0.3781461
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4284294   0.4075199   0.4493389
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                0.3999676   0.2569044   0.5430308
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                0.3585610   0.2900382   0.4270838
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3127962   0.2501027   0.3754897
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848305   0.6151695
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2084805   0.1718551   0.2451060
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.3720942   0.2451443   0.4990441
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1512450   0.1221302   0.1803598
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.2391424   0.1230215   0.3552633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1744505   0.1412449   0.2076561
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2415941   0.1730536   0.3101345
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1288331   0.0551912   0.2024750
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1870279   0.1456072   0.2284487
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1057374   0.0821526   0.1293221
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.1331424   0.1272639   0.1390210
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.0830917   0.0464303   0.1197531
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.0867527   0.0744952   0.0990103
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4246575   0.3442264   0.5050887
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193179   0.6499128
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                0.1587911   0.0805673   0.2370149
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                0.2460320   0.1628345   0.3292294
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3541667   0.2758007   0.4325326
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368287   0.6965047
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.2964200   0.2529100   0.3399299
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3851250   0.1813996   0.5888505
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2624905   0.2188136   0.3061674
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2376455   0.1560795   0.3192114
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4502011   0.3233518   0.5770505
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5779272   0.5187691   0.6370853
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1979458   0.1611177   0.2347740
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2189834   0.2091567   0.2288101
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2652150   0.2076053   0.3228248
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3948859   0.3735569   0.4162148


### Parameter: E(Y)


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.5369458   0.4681830   0.6057086
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2561576   0.1959618   0.3163535
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           NA                   NA                0.6176471   0.5557776   0.6795165
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.5627706   0.4986637   0.6268774
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6011342   0.5593675   0.6429009
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6199525   0.5735307   0.6663743
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2534072   0.2456310   0.2611834
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4143005   0.3961166   0.4324844
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3203463   0.2600435   0.3806492
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2287335   0.1929075   0.2645595
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1757720   0.1393702   0.2121737
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1310075   0.1253900   0.1366249
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2063492   0.1485016   0.2641968
6-24 months                  ki0047075b-MAL-ED       PERU           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5726744   0.5203223   0.6250266
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5516224   0.4986033   0.6046416
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2172299   0.2078539   0.2266059
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3782597   0.3596753   0.3968440


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.9847059   0.6162277   1.573518
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    1                 1.8954708   1.1228987   3.199585
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    1                 1.1045632   0.8428946   1.447464
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.1722222   0.8307468   1.654060
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.1644408   0.9719296   1.395083
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.0864333   0.7601953   1.552676
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.1977706   0.9735848   1.473579
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.2842376   1.0063308   1.638891
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.1506645   1.0026327   1.320552
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.3356081   1.1080537   1.609894
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    1                 0.8964751   0.5971855   1.345759
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.2787879   0.7202638   2.270416
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.7847910   1.2178052   2.615754
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.5811594   0.9389471   2.662626
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.3848862   0.9852924   1.946539
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.4517075   0.7872271   2.677061
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.2591806   1.0045983   1.578278
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.0440599   0.6584286   1.655550
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.9057072   0.4429299   1.851999
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    1                 1.5494064   0.8514517   2.819491
6-24 months                  ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       PERU           0                    1                 1.7190083   0.8744979   3.379070
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.1764706   0.5800720   2.386054
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.2299098   0.9348170   1.618154
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.2992548   0.7501248   2.250376
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.9053489   0.6181056   1.326079
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    1                 1.2837088   0.9511169   1.732603
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.1062792   0.9145790   1.338161
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.4889271   1.1886957   1.864989


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0006886   -0.0214984   0.0201212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0815497    0.0134934   0.1496060
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                 0.0473523   -0.0784661   0.1731707
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0082682   -0.0110937   0.0276301
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0099378   -0.0039874   0.0238631
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0049777   -0.0072019   0.0171573
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0166512   -0.0037073   0.0370098
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1160201    0.0110047   0.2210356
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0304471    0.0009423   0.0599520
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0935256    0.0372253   0.1498260
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                -0.0302197   -0.1577821   0.0973427
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0075501   -0.0121111   0.0272113
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0202529    0.0050722   0.0354336
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0080610   -0.0022804   0.0184025
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0154423   -0.0023739   0.0332586
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0469389   -0.0217596   0.1156374
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0252701    0.0021852   0.0483550
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0023643   -0.0333200   0.0380487
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0032739   -0.0260043   0.0194565
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0475581   -0.0164489   0.1115651
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                 0.1459732   -0.0036013   0.2955476
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0048077   -0.0176997   0.0273151
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0097813   -0.0047255   0.0242882
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0033612   -0.0086999   0.0154224
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0003554   -0.0206002   0.0213110
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1014213   -0.0134144   0.2162569
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0192840   -0.0168363   0.0554044
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.1130446    0.0569219   0.1691674


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0012824   -0.0407985   0.0367333
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.3183576    0.0053618   0.5328590
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                 0.0766656   -0.1516440   0.2597136
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0146919   -0.0203851   0.0485632
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0165318   -0.0069831   0.0394976
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0132600   -0.0197042   0.0451585
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0423083   -0.0108705   0.0926897
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1871436   -0.0024699   0.3408924
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1201511   -0.0042332   0.2291291
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.2257435    0.0779721   0.3498319
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                -0.0817305   -0.4879608   0.2135942
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0235686   -0.0397626   0.0830423
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0885438    0.0205111   0.1518511
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0506008   -0.0160757   0.1129019
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0813212   -0.0168263   0.1699952
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.2670443   -0.2442267   0.5682266
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1928905   -0.0039501   0.3511374
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0276673   -0.4935319   0.3669832
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0077694   -0.0631907   0.0447630
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                 0.2304739   -0.1442955   0.4825021
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                 0.3686441   -0.1462161   0.6522381
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0133929   -0.0513485   0.0741475
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0170801   -0.0086615   0.0421648
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0112123   -0.0298492   0.0506365
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0013520   -0.0816421   0.0779781
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1838600   -0.0544172   0.3682913
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0887725   -0.0934484   0.2406267
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.2988546    0.1342527   0.4321612
