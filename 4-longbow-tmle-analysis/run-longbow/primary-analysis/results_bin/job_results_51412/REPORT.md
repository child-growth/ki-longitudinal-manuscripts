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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        impfloor    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      212     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        3     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     209
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0      206     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       10     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       15     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0      100     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      126     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       59     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      210     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1        3     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      225     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       11     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       14     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      228     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        6     248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       34     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     258
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     258
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      0      246     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                      1       59     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      0        0     305
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                      1        0     305
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      0      487     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     1                      1       45     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      0       58     599
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0                      1        9     599
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      0      612     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                      1       14     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      0       56     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                      1        5     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      559     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     754
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0       72     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1       13     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      294     464
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       85     464
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      0      201     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       49   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23485   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      897   26469
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      626    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       21    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4523    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      210    5380
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      215     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        7     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0      205     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     209
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      210     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        5     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       15     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1        0     230
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      0      101     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          1                      1        1     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      0      125     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0                      1        0     227
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      0       59     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           1                      1        0     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      0      212     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0                      1        1     272
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      232     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     256
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       14     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      232     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        2     248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      224     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       22     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     246
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      0      244     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                      1       47     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      0        0     291
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                      1        0     291
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      0      512     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     1                      1        7     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      0       60     581
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0                      1        2     581
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      0      619     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                      1        3     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      0       58     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                      1        3     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      571     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1        1     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      177     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        0     749
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0       78     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1        2     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      354     447
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       13     447
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      0      201     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1       25   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23703   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      409   26175
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      597    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        4    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4327    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       17    4945
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      217     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0      203     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      215     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        5     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0      100     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      126     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       58     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      210     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1        2     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      225     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        9     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       12     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      227     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        4     243
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0      245     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       16     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     261
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     261
6-24 months                   ki1000108-IRC              INDIA                          1                      0      289     306
6-24 months                   ki1000108-IRC              INDIA                          1                      1       17     306
6-24 months                   ki1000108-IRC              INDIA                          0                      0        0     306
6-24 months                   ki1000108-IRC              INDIA                          0                      1        0     306
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      0      439     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      1       39     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      0       52     538
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      1        8     538
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      0      554     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                      1       11     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      0       48     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                      1        2     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      535     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       17     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      0      175     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                      1        3     730
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      0       70     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                      1       13     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      301     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       79     463
6-24 months                   ki1114097-CONTENT          PERU                           1                      0      201     215
6-24 months                   ki1114097-CONTENT          PERU                           1                      1        0     215
6-24 months                   ki1114097-CONTENT          PERU                           0                      0       14     215
6-24 months                   ki1114097-CONTENT          PERU                           0                      1        0     215
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1479   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       28   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    15228   17259
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      524   17259
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      628    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       17    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4556    5422
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      221    5422


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/59d7df84-953a-4590-be1f-0b33240c11bd/7f546be6-958c-4d4d-9562-d2a2a57124c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59d7df84-953a-4590-be1f-0b33240c11bd/7f546be6-958c-4d4d-9562-d2a2a57124c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59d7df84-953a-4590-be1f-0b33240c11bd/7f546be6-958c-4d4d-9562-d2a2a57124c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59d7df84-953a-4590-be1f-0b33240c11bd/7f546be6-958c-4d4d-9562-d2a2a57124c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0845865   0.0609210   0.1082519
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1343284   0.0526073   0.2160494
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0223642   0.0107726   0.0339558
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0819672   0.0130784   0.1508560
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1422320   0.0635098   0.2209542
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2234725   0.1813451   0.2655998
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0255520   0.0162944   0.0348096
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0366335   0.0339468   0.0393203
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0271983   0.0070564   0.0473402
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0434118   0.0372045   0.0496192
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0117695   0.0068774   0.0166616
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170516   0.0151060   0.0189973
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0815900   0.0570273   0.1061526
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1333333   0.0472395   0.2194271
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1500150   0.0704718   0.2295583
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2067954   0.1659484   0.2476425
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0200718   0.0095705   0.0305731
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0330801   0.0301124   0.0360478
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0259896   0.0126459   0.0393334
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0462731   0.0399106   0.0526355


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2112069   0.1740283   0.2483855
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0357399   0.0331585   0.0383213
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0429368   0.0372250   0.0486486
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0165807   0.0147653   0.0183961
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0873606   0.0634787   0.1112425
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1987041   0.1623187   0.2350895
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0319833   0.0290874   0.0348792
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0438952   0.0380697   0.0497208


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.588060   0.8129350   3.102257
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 3.665105   1.3653919   9.838199
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.571183   0.8752052   2.820613
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.433686   0.9918904   2.072261
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.596121   0.7478269   3.406674
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.448804   0.9384780   2.236634
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.634188   0.8014849   3.332028
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.378498   0.7816126   2.431200
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.648086   0.9736869   2.789591
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.780443   1.0464729   3.029200


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0055638   -0.0040351   0.0151627
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0052923   -0.0010389   0.0116234
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0689749   -0.0045026   0.1424523
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0101879    0.0011956   0.0191803
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0157385   -0.0041142   0.0355912
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0048112   -0.0001233   0.0097458
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0057706   -0.0043086   0.0158499
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0486891   -0.0251386   0.1225167
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0119115    0.0019243   0.0218986
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0179056    0.0048601   0.0309511


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0617168   -0.0499751   0.1615274
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.1913570   -0.0528139   0.3788993
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.3265750   -0.1265370   0.5974377
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2850577   -0.0165533   0.4971808
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.3665499   -0.3102989   0.6937653
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2901714   -0.0720693   0.5300148
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0660554   -0.0554302   0.1735573
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2450330   -0.2332988   0.5378450
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.3724279   -0.0372226   0.6202872
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.4079169    0.0291334   0.6389180
