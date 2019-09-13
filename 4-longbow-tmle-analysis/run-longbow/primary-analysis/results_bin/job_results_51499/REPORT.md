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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        impfloor    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      189     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       34     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       14     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        5     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      206     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0      173     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1       47     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        6     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       94     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        9     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      116     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       10     229
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       55     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      206     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      215     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     257
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      211     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       23     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      198     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       63     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     261
0-24 months   ki1000108-IRC              INDIA                          1                 0      253     306
0-24 months   ki1000108-IRC              INDIA                          1                 1       53     306
0-24 months   ki1000108-IRC              INDIA                          0                 0        0     306
0-24 months   ki1000108-IRC              INDIA                          0                 1        0     306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      437     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1      112     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       49     621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       23     621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      563     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       75     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       47     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       15     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      524     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       56     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      163     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       15     758
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       62     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       23     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      261     474
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      128     474
0-24 months   ki1114097-CONTENT          PERU                           1                 0      197     215
0-24 months   ki1114097-CONTENT          PERU                           1                 1        4     215
0-24 months   ki1114097-CONTENT          PERU                           0                 0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                 1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2003   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      115   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    22480   26858
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     2260   26858
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      591    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       57    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3958    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      819    5425
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      215     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       18     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      208     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0      205     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1       15     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0       13     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       97     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        6     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      125     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        1     229
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       58     272
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        1     272
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      213     272
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     272
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      232     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        4     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     257
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     257
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       14     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      230     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      233     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       24     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     257
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     257
0-6 months    ki1000108-IRC              INDIA                          1                 0      289     305
0-6 months    ki1000108-IRC              INDIA                          1                 1       16     305
0-6 months    ki1000108-IRC              INDIA                          0                 0        0     305
0-6 months    ki1000108-IRC              INDIA                          0                 1        0     305
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 0      512     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                 1       35     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 0       64     619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                 1        8     619
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      615     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       23     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0       55     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      567     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       13     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      174     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        4     758
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       81     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        4     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      373     474
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       16     474
0-6 months    ki1114097-CONTENT          PERU                           1                 0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           0                 0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2044   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       62   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    23655   26751
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      990   26751
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0      604    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1       12    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4341    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1      122    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      190     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       31     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       14     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      203     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0      178     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1       42     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0       10     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       97     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        5     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      117     228
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        9     228
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       54     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      205     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      215     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       19     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0       21     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0     255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       12     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      210     243
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1       21     243
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      211     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       50     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     261
6-24 months   ki1000108-IRC              INDIA                          1                 0      262     306
6-24 months   ki1000108-IRC              INDIA                          1                 1       44     306
6-24 months   ki1000108-IRC              INDIA                          0                 0        0     306
6-24 months   ki1000108-IRC              INDIA                          0                 1        0     306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 0      383     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                 1       96     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 0       42     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                 1       18     539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      503     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       62     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0       36     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       13     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      504     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       48     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      163     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       15     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       61     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       22     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      254     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      126     463
6-24 months   ki1114097-CONTENT          PERU                           1                 0      197     215
6-24 months   ki1114097-CONTENT          PERU                           1                 1        4     215
6-24 months   ki1114097-CONTENT          PERU                           0                 0       14     215
6-24 months   ki1114097-CONTENT          PERU                           0                 1        0     215
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     1449   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       58   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    14298   17241
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     1436   17241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      597    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       48    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4023    5421
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      753    5421


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
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/f893ba9d-7dbe-43f2-baa9-a9f7c4e4564c/bfdbfc1d-e87a-46d5-8d5c-79b6ff9bab27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f893ba9d-7dbe-43f2-baa9-a9f7c4e4564c/bfdbfc1d-e87a-46d5-8d5c-79b6ff9bab27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f893ba9d-7dbe-43f2-baa9-a9f7c4e4564c/bfdbfc1d-e87a-46d5-8d5c-79b6ff9bab27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f893ba9d-7dbe-43f2-baa9-a9f7c4e4564c/bfdbfc1d-e87a-46d5-8d5c-79b6ff9bab27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1524664   0.1051882   0.1997445
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647468   0.4615690
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.2136364   0.1593598   0.2679129
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.4000000   0.1515528   0.6484472
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0873786   0.0327239   0.1420334
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0793651   0.0320639   0.1266662
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2052529   0.1714566   0.2390492
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3112294   0.2005682   0.4218905
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1182253   0.0932063   0.1432442
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2147702   0.1062985   0.3232419
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0963724   0.0723092   0.1204356
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0854416   0.0436835   0.1271997
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2607700   0.1658193   0.3557206
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3265735   0.2798693   0.3732776
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0683034   0.0519393   0.0846676
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0898018   0.0858081   0.0937955
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0918372   0.0569015   0.1267729
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1678970   0.1559846   0.1798094
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0639854   0.0434602   0.0845106
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1111111   0.0384611   0.1837611
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0360502   0.0215748   0.0505255
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1129032   0.0340714   0.1917350
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0295584   0.0181161   0.0410007
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0395240   0.0369027   0.0421453
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0197200   0.0043426   0.0350973
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0272856   0.0216343   0.0329369
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1909091   0.1388646   0.2429536
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.3333333   0.0942649   0.5724018
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0490196   0.0070270   0.0910123
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0714286   0.0263613   0.1164958
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2008463   0.1648437   0.2368489
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2966712   0.1774630   0.4158795
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1105480   0.0847565   0.1363395
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2313269   0.1044545   0.3581994
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0873818   0.0637760   0.1109876
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0775296   0.0389443   0.1161150
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2486969   0.1535775   0.3438163
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3289559   0.2816215   0.3762903
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0569166   0.0415041   0.0723291
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0896070   0.0847245   0.0944895
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0783389   0.0450313   0.1116465
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1550741   0.1435742   0.1665740


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0829694   0.0471654   0.1187734
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2173913   0.1849240   0.2498586
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3185654   0.2765770   0.3605538
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0884280   0.0845825   0.0922736
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1614747   0.1501435   0.1728058
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0694669   0.0494218   0.0895120
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0393256   0.0368449   0.0418063
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0614035   0.0301736   0.0926335
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2115028   0.1769952   0.2460104
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3196544   0.2771306   0.3621782
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0866539   0.0820272   0.0912806
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1477587   0.1371623   0.1583552


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    1                 1.7260062   0.7638160   3.900281
0-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.8723404   0.9570686   3.662913
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 0.9082892   0.3828292   2.154980
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.5163212   1.0257353   2.241543
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 1.8166182   1.0517768   3.137644
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8865776   0.5122319   1.534500
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.2523430   0.8481105   1.849244
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.3147479   1.0327546   1.673739
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.8282025   1.2456113   2.683280
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7365079   0.8382638   3.597268
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.1318373   1.3995795   7.008108
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.3371474   0.9027905   1.980485
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.3836535   0.6189096   3.093338
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.7460317   0.8106464   3.760736
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 1.4571428   0.5028581   4.222395
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.4771058   0.9512693   2.293611
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.0925466   1.1541581   3.793892
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8872515   0.5040519   1.561774
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.3227180   0.8799725   1.988225
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.5743570   1.1948170   2.074460
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.9795283   1.2887762   3.040506


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0086907   -0.0077585   0.0251398
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0118956   -0.0053544   0.0291455
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0044092   -0.0441829   0.0353645
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0121384   -0.0010458   0.0253225
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0103462    0.0004550   0.0202373
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0027049   -0.0138305   0.0084208
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0577954   -0.0291425   0.1447334
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0201246    0.0041962   0.0360530
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0696375    0.0359425   0.1033324
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0054815   -0.0033801   0.0143431
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0068070   -0.0004742   0.0140882
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0097672   -0.0014568   0.0209912
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0066632   -0.0076754   0.0210017
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0090909   -0.0071508   0.0253326
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0123839   -0.0216885   0.0464563
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0106565   -0.0032043   0.0245173
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0116018    0.0011236   0.0220800
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0010804   -0.0126027   0.0104418
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0709575   -0.0165039   0.1584189
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0297373    0.0145460   0.0449286
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0694198    0.0369144   0.1019252


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0539266   -0.0530109   0.1500043
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0527444   -0.0264141   0.1257982
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0531426   -0.6595466   0.3316794
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0558366   -0.0065207   0.1143306
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0804701    0.0015488   0.1531532
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0288772   -0.1545965   0.0831530
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.1814240   -0.1425440   0.4135310
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2275816    0.0244474   0.3884183
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4312593    0.1784708   0.6062636
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0789082   -0.0558885   0.1964965
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.1588297   -0.0189113   0.3055651
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2483674   -0.0989286   0.4859070
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2525540   -0.5531126   0.6402865
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0454545   -0.0388318   0.1229023
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.2016807   -0.5826684   0.5973169
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0503846   -0.0172180   0.1134945
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0949801    0.0071758   0.1750191
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0125191   -0.1552064   0.1125439
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.2219820   -0.1058662   0.4526353
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3431736    0.1434832   0.4963076
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4698187    0.1976618   0.6496588
