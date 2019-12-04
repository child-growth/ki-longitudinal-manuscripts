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

agecat                        studyid                    country                        impfloor    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      0      212     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     242
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         1                      1        4     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      0      204     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          1                      1       12     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      0       15     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0                      1        0     231
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      0      100     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          1                      1        3     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      0      126     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0                      1        0     229
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      0       59     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           1                      1        0     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      0      209     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0                      1        4     272
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      224     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       12     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     257
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       13     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      227     248
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        7     248
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
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      0       77     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                      1       16     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      0      333     518
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                      1       92     518
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      0      201     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           1                      1        0     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      0       14     215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0                      1        0     215
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                      1       49   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23480   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      898   26465
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      626    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       21    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4523    5380
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      210    5380
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      0      215     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     1                      1        7     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0                      1        0     241
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      0      205     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         1                      1        3     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      0        2     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     210
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      0      208     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          1                      1        6     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      0       15     229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0                      1        0     229
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
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0      231     248
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        3     248
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
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      0       85     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                      1        5     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      0      394     504
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                      1       20     504
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      0      201     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           1                      1        0     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      0       14     215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0                      1        0     215
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2038   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                      1       25   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      0    23698   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      410   26171
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      597    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        4    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      0     4327    4945
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       17    4945
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      0      217     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     1                      1        4     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0                      1        1     240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      0      204     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         1                      1        1     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      0        2     207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0                      1        0     207
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      0      214     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          1                      1        6     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      0       15     235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0                      1        0     235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      0      100     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          1                      1        2     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      0      126     228
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0                      1        0     228
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      0       58     270
6-24 months                   ki0047075b-MAL-ED          PERU                           1                      1        0     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      0      209     270
6-24 months                   ki0047075b-MAL-ED          PERU                           0                      1        3     270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0      224     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       10     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       21     255
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     255
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0       11     243
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        1     243
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
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      0      439     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     1                      1       40     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      0       52     539
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0                      1        8     539
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
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      0      302     463
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                      1       78     463
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
![](/tmp/bf26deb7-ac58-4222-aa24-59fd4807e32d/96ff553c-afb0-4e5a-aee9-12ed29222f97/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bf26deb7-ac58-4222-aa24-59fd4807e32d/96ff553c-afb0-4e5a-aee9-12ed29222f97/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bf26deb7-ac58-4222-aa24-59fd4807e32d/96ff553c-afb0-4e5a-aee9-12ed29222f97/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bf26deb7-ac58-4222-aa24-59fd4807e32d/96ff553c-afb0-4e5a-aee9-12ed29222f97/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0845865   0.0609210   0.1082519
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1343284   0.0526073   0.2160494
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0223642   0.0107726   0.0339558
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0819672   0.0130784   0.1508560
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1715343   0.0941752   0.2488934
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2168919   0.1776447   0.2561390
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0239175   0.0145726   0.0332625
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0367386   0.0340485   0.0394286
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0290083   0.0062327   0.0517840
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0435194   0.0373040   0.0497348
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0555556   0.0081848   0.1029263
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0483092   0.0276343   0.0689840
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0116136   0.0066635   0.0165636
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0170945   0.0151420   0.0190471
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                0.0835073   0.0587097   0.1083049
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    NA                0.1333333   0.0472397   0.2194270
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1492808   0.0675379   0.2310238
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2046347   0.1640099   0.2452596
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0192299   0.0102215   0.0282382
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0330335   0.0300658   0.0360012
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0265895   0.0133961   0.0397830
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0462508   0.0398966   0.0526051


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0901503   0.0671959   0.1131046
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2084942   0.1734774   0.2435110
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0357831   0.0332025   0.0383637
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0429368   0.0372250   0.0486486
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0496032   0.0306286   0.0685777
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0166215   0.0148026   0.0184403
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0890538   0.0649864   0.1131212
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1965443   0.1603084   0.2327801
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0319833   0.0290874   0.0348792
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0438952   0.0380697   0.0497208


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.5880597   0.8129350   3.102257
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   0                    1                 3.6651054   1.3653919   9.838199
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2644225   0.7776346   2.055933
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.5360522   1.0329681   2.284152
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5002394   0.6727387   3.345606
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.8695652   0.3349377   2.257565
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4719419   0.9437548   2.295737
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   0                    1                 1.5966667   0.7844330   3.249920
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3708038   0.7645926   2.457652
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.7178184   1.0726014   2.751162
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7394366   1.0391632   2.911612


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0055638   -0.0040351   0.0151627
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0052923   -0.0010389   0.0116234
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0369599   -0.0343346   0.1082544
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0118656    0.0027819   0.0209492
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0139285   -0.0085007   0.0363577
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0059524   -0.0484094   0.0365046
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0050079    0.0000169   0.0099989
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0055465   -0.0045144   0.0156074
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0472634   -0.0285431   0.1230700
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0127534    0.0042620   0.0212449
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0173057    0.0043841   0.0302273


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0617168   -0.0499751   0.1615274
0-24 months (no birth wast)   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1913570   -0.0528139   0.3788993
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1772705   -0.2457303   0.4566370
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.3315972    0.0225383   0.5429362
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.3243950   -0.4614943   0.6876881
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.1200000   -1.4026764   0.4779156
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.3012894   -0.0662133   0.5421212
6-24 months                   ki1017093-NIH-Birth   BANGLADESH   1                    NA                 0.0622825   -0.0566201   0.1678049
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2404722   -0.2612384   0.5426063
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.3987525    0.0604089   0.6152597
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.3942502    0.0228420   0.6244898
