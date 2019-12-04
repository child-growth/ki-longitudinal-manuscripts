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

agecat                       studyid                    country                        impfloor    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      0       85     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     1                      1      101     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9     203
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      0      152     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         1                      1       31     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     185
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      0       85     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          1                      1       98     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      0        4     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0                      1       10     197
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      0       72     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          1                      1       14     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      0       78     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0                      1       38     202
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      0       21     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           1                      1       27     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      0       70     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0                      1      120     238
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       91     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1      118     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       13     229
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        3     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        8     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       31     209
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      167     209
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
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      365     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                      1      213     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       30     633
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                      1       25     633
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      310     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      191     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       66     653
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      0       50     453
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          1                      1       42     453
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      0      148     453
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL                          0                      1      213     453
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      0      142     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           1                      1       42     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      0       10     197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0                      1        3     197
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1375   18325
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      279   18325
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    12329   18325
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     4342   18325
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      361    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      154    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     1908    3874
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1     1451    3874
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      147     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     1                      1       39     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       13     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        4     203
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      0      163     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         1                      1       20     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     185
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      0      144     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          1                      1       39     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      0       10     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0                      1        4     197
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      0       85     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      0      104     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0                      1       12     202
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      0       28     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           1                      1       20     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      0      122     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0                      1       68     238
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      144     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       65     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        8     229
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        7     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      138     209
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       60     209
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
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      491     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                      1       87     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       41     633
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                      1       14     633
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      414     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       87     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      115     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       37     653
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      0       80     453
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          1                      1       12     453
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      0      294     453
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL                          0                      1       67     453
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      0      156     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           1                      1       28     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      0       11     197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0                      1        2     197
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1521   18281
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      125   18281
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    14380   18281
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2255   18281
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      457    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       30    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     2882    3651
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      282    3651
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      0       83     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     1                      1       62     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      0        8     158
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0                      1        5     158
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      0      150     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         1                      1       11     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      0        2     163
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0                      1        0     163
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      0       85     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          1                      1       59     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      0        4     154
6-24 months                  ki0047075b-MAL-ED          INDIA                          0                      1        6     154
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      0       71     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          1                      1       13     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      0       78     188
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0                      1       26     188
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      0       21     149
6-24 months                  ki0047075b-MAL-ED          PERU                           1                      1        7     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      0       69     149
6-24 months                  ki0047075b-MAL-ED          PERU                           0                      1       52     149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0       90     155
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       53     155
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        7     155
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        5     155
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     142
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        4     142
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0       29     142
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1      107     142
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
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      0      300     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                      1      126     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      0       19     456
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                      1       11     456
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      287     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      104     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      0       86     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                      1       29     506
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      0       36     317
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          1                      1       30     317
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      0      105     317
6-24 months                  ki1113344-GMS-Nepal        NEPAL                          0                      1      146     317
6-24 months                  ki1114097-CONTENT          PERU                           1                      0      142     167
6-24 months                  ki1114097-CONTENT          PERU                           1                      1       14     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      0       10     167
6-24 months                  ki1114097-CONTENT          PERU                           0                      1        1     167
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      0      931   10472
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                      1      157   10472
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      0     7278   10472
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                      1     2106   10472
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
![](/tmp/a8b79c53-1fc2-44d6-910b-5296d1befae7/b606dc15-50bb-4c88-a8da-d30a37ef33e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8b79c53-1fc2-44d6-910b-5296d1befae7/b606dc15-50bb-4c88-a8da-d30a37ef33e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a8b79c53-1fc2-44d6-910b-5296d1befae7/b606dc15-50bb-4c88-a8da-d30a37ef33e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a8b79c53-1fc2-44d6-910b-5296d1befae7/b606dc15-50bb-4c88-a8da-d30a37ef33e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.5430108   0.4712444   0.6147772
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5294118   0.2915562   0.7672673
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                0.1547018   0.0750015   0.2344020
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    NA                0.3161751   0.2297419   0.4026083
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                0.5794121   0.4384342   0.7203900
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    NA                0.6288368   0.5599139   0.6977598
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.5645933   0.4972273   0.6319593
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.6500000   0.4405048   0.8594952
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5912490   0.5467592   0.6357388
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6780103   0.5627804   0.7932403
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.3667023   0.3273911   0.4060134
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.4722250   0.3371786   0.6072714
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.3758637   0.3334925   0.4182349
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.4465002   0.3614911   0.5315094
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4765705   0.3666710   0.5864701
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5933235   0.5420071   0.6446399
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2224311   0.1916965   0.2531657
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2547256   0.2466472   0.2628041
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.3161613   0.2608302   0.3714924
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4285274   0.4077997   0.4492550
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                0.4173870   0.2769016   0.5578723
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    NA                0.3573788   0.2889173   0.4258404
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3110048   0.2481097   0.3738999
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4000000   0.1848264   0.6151736
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.2094333   0.1726917   0.2461750
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.3782334   0.2485143   0.5079525
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.1500823   0.1209090   0.1792555
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.2577154   0.1370203   0.3784105
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.1725195   0.1396127   0.2054264
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2436619   0.1749311   0.3123927
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.1240266   0.0544144   0.1936388
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.1844879   0.1442964   0.2246793
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.1075810   0.0832330   0.1319291
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.1323806   0.1264917   0.1382695
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.0882408   0.0501983   0.1262833
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.0867496   0.0744539   0.0990453
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4275862   0.3468051   0.5083673
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.3846154   0.1193126   0.6499181
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                0.1568155   0.0788479   0.2347832
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    NA                0.2466485   0.1629733   0.3303237
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                0.2500000   0.0890719   0.4109281
6-24 months                  ki0047075b-MAL-ED       PERU           0                    NA                0.4297521   0.3412490   0.5182552
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.3706294   0.2912132   0.4500455
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.4166667   0.1368228   0.6965105
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                0.5628931   0.5082955   0.6174907
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    NA                0.6923077   0.5146429   0.8699725
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                0.2969662   0.2534050   0.3405273
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    NA                0.3976059   0.1942813   0.6009305
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.2643217   0.2206300   0.3080133
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.2437494   0.1638615   0.3236372
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4433334   0.3141642   0.5725026
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5791536   0.5172605   0.6410468
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                0.2009846   0.1641333   0.2378358
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    NA                0.2181759   0.2082397   0.2281121
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2482800   0.1944435   0.3021165
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.3948118   0.3734935   0.4161301


### Parameter: E(Y)


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.5418719   0.4731628   0.6105810
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2574257   0.1969827   0.3178687
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           NA                   NA                0.6176471   0.5557776   0.6795165
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.5720524   0.5078289   0.6362759
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.6011342   0.5593675   0.6429009
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5629139   0.5171858   0.6086420
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2521692   0.2444469   0.2598915
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.4143005   0.3961166   0.4324844
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           NA                   NA                0.3697479   0.3082891   0.4312067
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3187773   0.2582893   0.3792652
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.2287335   0.1929075   0.2645595
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1743929   0.1394121   0.2093738
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.1301898   0.1246228   0.1357568
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.0854560   0.0740923   0.0968198
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  ki0047075b-MAL-ED       NEPAL          NA                   NA                0.2074468   0.1493309   0.2655627
6-24 months                  ki0047075b-MAL-ED       PERU           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     NA                   NA                0.5726744   0.5203223   0.6250266
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5552050   0.5004138   0.6099963
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     NA                   NA                0.2161001   0.2067207   0.2254795
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.3782597   0.3596753   0.3968440


### Parameter: RR


agecat                       studyid                 country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.9749563   0.6103754   1.557304
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          0                    1                 2.0437718   1.1398938   3.664379
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           0                    1                 1.0853014   0.8320321   1.415666
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.1512712   0.8164327   1.623435
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.1467424   0.9536205   1.378974
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.2877614   0.9497909   1.745994
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.1879313   0.9549204   1.477799
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          0                    1                 1.2449857   0.9728318   1.593276
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.1451888   0.9945180   1.318687
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.3554073   1.1302036   1.625485
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           0                    1                 0.8562290   0.5817957   1.260113
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.2861538   0.7239480   2.284959
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.8059847   1.2304750   2.650668
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.7171608   1.0343203   2.850801
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.4123728   1.0061289   1.982646
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.4874859   0.8142861   2.717245
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.2305196   0.9775077   1.549019
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.9831011   0.6256121   1.544867
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.8995037   0.4399460   1.839105
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       NEPAL          0                    1                 1.5728578   0.8613392   2.872134
6-24 months                  ki0047075b-MAL-ED       PERU           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       PERU           0                    1                 1.7190083   0.8744979   3.379070
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 1.1242138   0.5554961   2.275186
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     0                    1                 1.2299098   0.9348170   1.618154
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     0                    1                 1.3388931   0.7859675   2.280800
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.9221695   0.6391931   1.330422
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  ki1113344-GMS-Nepal     NEPAL          0                    1                 1.3063614   0.9576207   1.782104
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     0                    1                 1.0855355   0.8995709   1.309944
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     0                    1                 1.5901876   1.2716915   1.988451


### Parameter: PAR


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0011388   -0.0219512   0.0196735
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.1027240    0.0337739   0.1716741
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                 0.0382349   -0.0871753   0.1636452
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0074591   -0.0120133   0.0269315
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0098852   -0.0039065   0.0236769
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0092851   -0.0024629   0.0210331
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0177045   -0.0034475   0.0388564
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0863434   -0.0134542   0.1861410
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0297381   -0.0004469   0.0599230
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.0981392    0.0442891   0.1519892
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                -0.0476391   -0.1727902   0.0775120
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0077725   -0.0120761   0.0276211
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0193001    0.0040357   0.0345645
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0094754   -0.0011029   0.0200536
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0173733   -0.0002654   0.0350120
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0503663   -0.0139243   0.1146569
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0226088   -0.0013610   0.0465786
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0027847   -0.0397631   0.0341936
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0035356   -0.0264284   0.0193572
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                 0.0506313   -0.0129722   0.1142348
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                 0.1459732   -0.0036013   0.2955476
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0035642   -0.0190404   0.0261687
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0097813   -0.0047255   0.0242882
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0034724   -0.0085833   0.0155282
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0014758   -0.0221428   0.0191912
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1118716   -0.0049808   0.2287240
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0151155   -0.0210349   0.0512659
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.1299797    0.0781258   0.1818335


### Parameter: PAF


agecat                       studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0021017   -0.0412568   0.0355811
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL          1                    NA                 0.3990431    0.0721221   0.6107794
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU           1                    NA                 0.0619042   -0.1650658   0.2446574
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0130392   -0.0216475   0.0465482
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0164442   -0.0068426   0.0391924
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0246953   -0.0071038   0.0554903
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0449845   -0.0103147   0.0972569
0-24 months (no birth st.)   ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1533865   -0.0444154   0.3137266
0-24 months (no birth st.)   kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1179290   -0.0101048   0.2297341
0-24 months (no birth st.)   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.2368792    0.0957468   0.3559842
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU           1                    NA                -0.1288421   -0.5238980   0.1637994
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0243823   -0.0398964   0.0846877
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0843782    0.0159125   0.1480806
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0593854   -0.0087832   0.1229476
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0914899   -0.0055277   0.1791469
0-6 months (no birth st.)    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.2888093   -0.1908687   0.5752746
0-6 months (no birth st.)    kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.1736601   -0.0323221   0.3385421
0-6 months (no birth st.)    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0325869   -0.5705026   0.3210863
6-24 months                  ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0083376   -0.0638059   0.0442385
6-24 months                  ki0047075b-MAL-ED       NEPAL          1                    NA                 0.2440687   -0.1268000   0.4928717
6-24 months                  ki0047075b-MAL-ED       PERU           1                    NA                 0.3686441   -0.1462161   0.6522381
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                 0.0095250   -0.0527700   0.0681338
6-24 months                  ki1017093-NIH-Birth     BANGLADESH     1                    NA                 0.0170801   -0.0086615   0.0421648
6-24 months                  ki1017093b-PROVIDE      BANGLADESH     1                    NA                 0.0115579   -0.0293919   0.0508788
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0056147   -0.0873985   0.0700181
6-24 months                  ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.2014961   -0.0405918   0.3872635
6-24 months                  kiGH5241-JiVitA-3       BANGLADESH     1                    NA                 0.0699468   -0.1131631   0.2229359
6-24 months                  kiGH5241-JiVitA-4       BANGLADESH     1                    NA                 0.3436255    0.1913591   0.4672202
