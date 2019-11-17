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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        impfloor    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0      173     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1       50     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0      195     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1       13     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0      135     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1       81     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0        8     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       86     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      102     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1       24     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       55     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        4     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      196     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1       17     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      195     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       41     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       18     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       12     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        2     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      202     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       32     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      145     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      113     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     258
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      135     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1      170     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1        0     305
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     0      380     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                     1      152     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     0       42     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                     1       25     599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      523     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      103     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       42     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       19     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      498     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       78     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      148     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       30     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       47     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       46     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      211     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1      214     518
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1773   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      314   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    20212   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     4166   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      525    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      122    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3468    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     1265    5380
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0      208     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1       14     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0      200     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        8     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0        2     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0      179     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1       35     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0       14     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        1     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       94     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        8     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      118     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        7     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       58     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      209     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        4     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      223     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       12     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       20     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      224     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       10     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      173     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       73     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      179     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1      112     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1        0     291
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     0      478     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                     1       41     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     0       57     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                     1        5     581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      591     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       31     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0       55     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      559     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       13     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      170     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        7     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0       71     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1       19     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      332     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       82     504
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1924   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      139   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    22370   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     1738   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0      587    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       14    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     4233    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      111    4945
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0      183     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1       38     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     0       14     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                     1        5     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     0      199     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                     1        6     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     0      163     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                     1       57     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     0        8     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                     1        7     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     0       89     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                     1       13     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     0      107     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                     1       19     228
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     0       54     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                     1        4     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      198     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1       14     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      199     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       35     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       19     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       10     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        2     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      205     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       26     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      196     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       65     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     261
6-24 months                   ki1000108-IRC              INDIA                          1                     0      207     306
6-24 months                   ki1000108-IRC              INDIA                          1                     1       99     306
6-24 months                   ki1000108-IRC              INDIA                          0                     0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                     1        0     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0      344     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1      135     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0       37     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       23     539
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      482     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       83     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0       34     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1       16     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      481     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       71     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      153     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       25     730
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     0       46     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                     1       37     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     0      199     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                     1      181     463
6-24 months                   ki1114097-CONTENT          PERU                           1                     0      197     215
6-24 months                   ki1114097-CONTENT          PERU                           1                     1        4     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           0                     1        0     215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1316   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      191   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    13117   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2635   17259
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      533    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      112    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3548    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     1229    5422


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
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
![](/tmp/f6db04c2-1abe-47ab-bf66-2e624db559c3/2b8c98d1-cabd-43e8-a5f0-7da1a012e917/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6db04c2-1abe-47ab-bf66-2e624db559c3/2b8c98d1-cabd-43e8-a5f0-7da1a012e917/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6db04c2-1abe-47ab-bf66-2e624db559c3/2b8c98d1-cabd-43e8-a5f0-7da1a012e917/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6db04c2-1abe-47ab-bf66-2e624db559c3/2b8c98d1-cabd-43e8-a5f0-7da1a012e917/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3750000   0.3102978   0.4397022
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1650485   0.0932003   0.2368968
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1904762   0.1217617   0.2591907
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2857143   0.2472943   0.3241343
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3731343   0.2572317   0.4890370
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1645367   0.1354716   0.1936019
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3114754   0.1951777   0.4277731
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1354167   0.1074549   0.1633784
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1685393   0.1135095   0.2235691
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4946237   0.3929119   0.5963354
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5035294   0.4559485   0.5511103
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1504552   0.1318519   0.1690585
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1708918   0.1653968   0.1763868
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1885626   0.1522153   0.2249099
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2672723   0.2527452   0.2817995
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0560000   0.0156046   0.0963954
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0498392   0.0327251   0.0669534
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2111111   0.1267152   0.2955071
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1980676   0.1596390   0.2364963
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0673776   0.0549868   0.0797684
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0720923   0.0683125   0.0758720
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0232945   0.0085868   0.0380022
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0255525   0.0205926   0.0305124
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1719457   0.1220936   0.2217978
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1274510   0.0625922   0.1923098
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1507937   0.0881733   0.2134140
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2818372   0.2415103   0.3221640
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3833333   0.2601961   0.5064705
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1469027   0.1176886   0.1761167
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3200000   0.1905965   0.4494035
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1286232   0.1006760   0.1565704
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1404494   0.0893717   0.1915272
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4457831   0.3387347   0.5528315
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4763158   0.4260459   0.5265857
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1267419   0.1073317   0.1461520
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1672803   0.1608349   0.1737258
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1736434   0.1380515   0.2092353
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2572744   0.2427618   0.2717871


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3809524   0.3181926   0.4437122
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1790393   0.1292752   0.2288034
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2954925   0.2589234   0.3320615
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5019305   0.4588313   0.5450297
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1692802   0.1639950   0.1745654
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2578067   0.2441658   0.2714476
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0660793   0.0336915   0.0984671
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2003968   0.1654147   0.2353790
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0717206   0.0680808   0.0753604
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2931354   0.2546710   0.3315999
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4708423   0.4253270   0.5163576
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1637407   0.1576229   0.1698584
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2473257   0.2337872   0.2608642


### Parameter: RR


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.6431579   0.8675868   3.112044
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    1                 1.2444444   0.7044915   2.198241
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    1                 1.1540616   0.6556811   2.031259
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.3059701   0.9309680   1.832027
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.8930447   1.2524868   2.861203
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.2445981   0.8457677   1.831501
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0180051   0.8118318   1.276538
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1358317   1.0001975   1.289859
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.4174197   1.1616595   1.729490
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    1                 0.7140000   0.2673693   1.906711
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.0208497   0.4187728   2.488543
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.9735590   0.8568903   4.545430
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.7401130   0.7047572   4.296506
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9382151   0.6016137   1.463144
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0699735   0.8849730   1.293648
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.0969317   0.5665235   2.123935
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.5304709   0.6823433   3.432790
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    1                 1.8011696   1.0018550   3.238205
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    1                 1.1831502   0.6134561   2.281898
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.3601235   0.9568788   1.933302
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.1783133   1.3880661   3.418460
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0919449   0.7148538   1.667955
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0684922   0.8219663   1.388957
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.3198507   1.1269335   1.545793
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.4816251   1.1983121   1.831921


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0113219   -0.0069463   0.0295901
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0059524   -0.0112553   0.0231601
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0139908   -0.0407352   0.0687168
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0097782   -0.0040570   0.0236134
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0130470    0.0019531   0.0241409
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0078194   -0.0067872   0.0224260
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0073068   -0.0848241   0.0994378
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0188250    0.0010463   0.0366036
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0692441    0.0349994   0.1034888
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0123521   -0.0487664   0.0240623
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0001758   -0.0074758   0.0078273
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0043335   -0.0025968   0.0112639
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0039750   -0.0034211   0.0113711
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0107143   -0.0868892   0.0654606
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0043430   -0.0074977   0.0161837
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0019835   -0.0116550   0.0156221
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0072210   -0.0092733   0.0237152
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0132495   -0.0045489   0.0310479
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0128999   -0.0369456   0.0627454
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0112983   -0.0033754   0.0259720
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0140730    0.0026569   0.0254890
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0028837   -0.0113181   0.0170854
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0250592   -0.0720102   0.1221286
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0369988    0.0183006   0.0556970
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0736823    0.0397813   0.1075833


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0480686   -0.0323921   0.1222585
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0156250   -0.0306138   0.0597893
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0781435   -0.2836513   0.3379671
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0330912   -0.0148461   0.0787641
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0734693    0.0095663   0.1332493
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0545910   -0.0527474   0.1509852
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0145575   -0.1872082   0.1820331
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1112060   -0.0003835   0.2103481
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2685892    0.1227073   0.3902129
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.1869281   -0.8781388   0.2498966
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0022200   -0.0992559   0.0943283
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0799948   -0.0547090   0.1974947
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1488636   -0.1685294   0.3800472
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0534653   -0.5111368   0.2655931
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0605544   -0.1199734   0.2119831
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0784692   -0.6569589   0.4874834
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0403031   -0.0559017   0.1277425
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0486506   -0.0187547   0.1115960
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0919118   -0.3414160   0.3852584
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0385429   -0.0127865   0.0872707
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0874229    0.0149201   0.1545894
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0219278   -0.0921913   0.1241231
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0532221   -0.1771614   0.2385170
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2259597    0.1029907   0.3320711
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2979161    0.1467921   0.4222722
