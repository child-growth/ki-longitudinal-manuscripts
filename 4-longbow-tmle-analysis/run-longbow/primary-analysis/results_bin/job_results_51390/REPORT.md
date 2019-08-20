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

agecat                        studyid                    country                        impfloor    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     0      173     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                     1       50     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     0       12     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                     1        7     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     0      195     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                     1       12     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     0      136     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                     1       80     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     0        8     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                     1        7     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     0       86     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                     1       17     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     0      103     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                     1       23     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     0       55     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                     1        4     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     0      197     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                     1       16     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      196     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       40     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       18     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       13     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      205     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       29     248
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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     0       41     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                     1       44     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     0      175     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                     1      204     464
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     0      194     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                     1        7     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                     1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1773   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      314   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0    20216   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     4166   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      525    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      122    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     3468    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1     1265    5380
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     0      208     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                     1       14     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     0       15     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                     1        4     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     0      200     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                     1        7     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     0        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     0      180     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                     1       35     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     0       14     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                     1        1     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     0       94     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                     1        8     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     0      119     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                     1        6     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     0       58     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                     1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     0      209     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                     1        4     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      225     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       10     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       20     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      226     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        8     248
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
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      592     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       30     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0       55     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        6     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      559     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       13     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      170     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        7     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     0       66     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                     1       14     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     0      310     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                     1       57     447
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     0      198     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                     1        3     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                     1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1924   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      139   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0    22374   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     1738   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0      587    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       14    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0     4233    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      111    4945
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     0      182     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                     1       39     240
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
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     0      199     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                     1       13     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0      200     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       34     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0       19     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0       11     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      206     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      196     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       65     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     261
6-24 months                   ki1000108-IRC              INDIA                          1                     0      207     306
6-24 months                   ki1000108-IRC              INDIA                          1                     1       99     306
6-24 months                   ki1000108-IRC              INDIA                          0                     0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                     1        0     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     0      343     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                     1      135     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     0       37     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                     1       23     538
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




# Results Detail

## Results Plots
![](/tmp/b1e2865a-ebb2-4f5f-80c7-fa803d95c644/dbdb8f02-3910-4b3b-abcc-3072424471ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b1e2865a-ebb2-4f5f-80c7-fa803d95c644/dbdb8f02-3910-4b3b-abcc-3072424471ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b1e2865a-ebb2-4f5f-80c7-fa803d95c644/dbdb8f02-3910-4b3b-abcc-3072424471ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b1e2865a-ebb2-4f5f-80c7-fa803d95c644/dbdb8f02-3910-4b3b-abcc-3072424471ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.2242152   0.1693625   0.2790679
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.3684211   0.1510726   0.5857695
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                0.3703704   0.3058311   0.4349096
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136511   0.7196823
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1618026   0.0895385   0.2340668
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1838195   0.1158301   0.2518088
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2870638   0.2485767   0.3255509
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3713038   0.2461832   0.4964244
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1654192   0.1363305   0.1945079
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3012962   0.1809718   0.4216207
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1351326   0.1072055   0.1630596
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1673322   0.1128572   0.2218072
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.5325939   0.4191301   0.6460577
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5345620   0.4838722   0.5852517
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1547304   0.1330973   0.1763636
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1699342   0.1643270   0.1755415
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2145671   0.1646559   0.2644782
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2662447   0.2503048   0.2821846
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                0.0784314   0.0261418   0.1307210
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    NA                0.0480000   0.0104430   0.0855570
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0789981   0.0557719   0.1022242
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.0806452   0.0128097   0.1484807
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0482315   0.0313814   0.0650816
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.0983607   0.0235732   0.1731481
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0227273   0.0105059   0.0349487
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0395480   0.0108170   0.0682791
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1754725   0.0906438   0.2603012
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1549420   0.1178467   0.1920372
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0673818   0.0543772   0.0803863
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0718849   0.0679737   0.0757960
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0231055   0.0085876   0.0376235
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0255882   0.0206240   0.0305525
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1764706   0.1261049   0.2268362
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647434   0.4615724
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                0.2590909   0.2010718   0.3171101
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    NA                0.4666667   0.2136604   0.7196729
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                0.1247670   0.0595985   0.1899354
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    NA                0.1515699   0.0882401   0.2148997
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2854666   0.2449185   0.3260146
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3757399   0.2443749   0.5071048
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1479016   0.1186829   0.1771202
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3041742   0.1709648   0.4373835
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.1286274   0.1007556   0.1564993
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.1398904   0.0882131   0.1915677
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4696433   0.3597915   0.5794952
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.4737647   0.4231617   0.5243677
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1430178   0.1158738   0.1701618
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1652220   0.1587052   0.1717387
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1994173   0.1462234   0.2526112
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2565196   0.2411060   0.2719331


### Parameter: E(Y)


agecat                        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2355372   0.1819640   0.2891104
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3766234   0.3140034   0.4392434
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1746725   0.1253885   0.2239565
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2954925   0.2589234   0.3320615
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5344828   0.4890476   0.5799179
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1692546   0.1639554   0.1745538
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2578067   0.2441658   0.2714476
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0616740   0.0303107   0.0930373
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1588367   0.1249135   0.1927598
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0717096   0.0680527   0.0753666
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0252781   0.0205710   0.0299851
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.1403509   0.0951649   0.1855368
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2936803   0.2551592   0.3322014
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        0                    1                 1.2600000   0.7129247   2.226883
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        0                    1                 1.1360721   0.6357313   2.030197
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.2934538   0.8998807   1.859161
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.8214104   1.1770655   2.818480
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.2382818   0.8416142   1.821906
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0036951   0.7951104   1.266999
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0982600   0.9521761   1.266756
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.2408460   0.9723477   1.583486
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        0                    1                 0.6120000   0.2189360   1.710747
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.0208497   0.4187728   2.488543
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.0393442   0.8832641   4.708586
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.7401130   0.7047572   4.296506
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8829987   0.5147565   1.514671
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.0668297   0.8739874   1.302222
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.1074503   0.5735084   2.138497
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.4912281   0.6659204   3.339380
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       INDIA        0                    1                 1.8011696   1.0018550   3.238205
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki0047075b-MAL-ED       NEPAL        0                    1                 1.2148243   0.6219097   2.373010
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.3162308   0.9027901   1.919010
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.0565989   1.2722171   3.324589
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.0875627   0.7088096   1.668703
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0087755   0.7799825   1.304681
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.1552544   0.9531399   1.400228
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.2863458   0.9758529   1.695630


### Parameter: PAR


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0113219   -0.0069463   0.0295901
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0062530   -0.0109777   0.0234837
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0128699   -0.0418192   0.0675589
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0084287   -0.0054590   0.0223164
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0121645    0.0011078   0.0232212
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0081035   -0.0065526   0.0227596
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0018888   -0.1017428   0.1055204
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0145242   -0.0065669   0.0356153
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0432396   -0.0055790   0.0920582
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0167574   -0.0522636   0.0187488
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0001758   -0.0074758   0.0078273
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0044771   -0.0024533   0.0114075
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0039750   -0.0034211   0.0113711
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0166358   -0.0929194   0.0596479
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0043279   -0.0084574   0.0171132
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0021725   -0.0112930   0.0156380
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0068627   -0.0096127   0.0233381
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0132495   -0.0045489   0.0310479
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0155839   -0.0346076   0.0657755
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0082137   -0.0064550   0.0228825
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0130741    0.0017291   0.0244191
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0028794   -0.0112586   0.0170174
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0011990   -0.0989684   0.1013665
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0207228   -0.0056063   0.0470520
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0479084   -0.0044111   0.1002280


### Parameter: PAF


agecat                        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0480686   -0.0323921   0.1222585
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0166028   -0.0302451   0.0613204
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0736799   -0.2987274   0.3393003
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0285242   -0.0195905   0.0743683
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0685001    0.0048209   0.1281047
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0565744   -0.0511180   0.1532331
0-24 months (no birth wast)   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0035339   -0.2105094   0.1797299
0-24 months (no birth wast)   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0858126   -0.0476566   0.2022781
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.1677211   -0.0445197   0.3368357
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL        1                    NA                -0.2717087   -0.9779745   0.1823742
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0022200   -0.0992559   0.0943283
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0849410   -0.0535558   0.2052316
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.1488636   -0.1685294   0.3800472
0-6 months (no birth wast)    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1047351   -0.7056151   0.2844578
0-6 months (no birth wast)    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0603530   -0.1357016   0.2225629
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0859452   -0.6391663   0.4902920
6-24 months                   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0374332   -0.0564128   0.1229423
6-24 months                   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0486506   -0.0187547   0.1115960
6-24 months                   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.1110354   -0.3281800   0.4050068
6-24 months                   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0279683   -0.0232393   0.0766133
6-24 months                   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0812176    0.0092101   0.1479918
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0218955   -0.0916662   0.1236439
6-24 months                   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0025465   -0.2345832   0.1941301
6-24 months                   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1265590   -0.0501837   0.2735564
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.1937059   -0.0476396   0.3794525
