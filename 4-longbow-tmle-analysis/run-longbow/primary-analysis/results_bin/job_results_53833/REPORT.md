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

agecat        studyid                    country                        impfloor    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0      189     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       34     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       14     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        5     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0      205     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        3     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0      173     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1       47     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0        9     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1        6     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       93     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1       10     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      116     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1       10     229
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       55     272
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        4     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      206     272
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        7     272
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      214     257
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       22     257
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       73     536
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       26     536
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      304     536
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      133     536
0-24 months   ki1114097-CONTENT          PERU                           1                 0      197     215
0-24 months   ki1114097-CONTENT          PERU                           1                 1        4     215
0-24 months   ki1114097-CONTENT          PERU                           0                 0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                 1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2003   26854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      115   26854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0    22468   26854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1     2268   26854
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      591    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       57    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     3958    5425
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      819    5425
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      215     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0       18     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0      207     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0      204     235
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1       16     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0       13     235
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1        2     235
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       96     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        7     229
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       91     536
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1        8     536
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      415     536
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       22     536
0-6 months    ki1114097-CONTENT          PERU                           1                 0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           0                 0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                 1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2044   26747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1       62   26747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0    23643   26747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      998   26747
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      214     255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       20     255
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       60     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       23     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      253     463
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      127     463
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
![](/tmp/8698fa84-24b3-449d-9497-d9a42ee09ef3/b26c47d3-4e9e-4180-83a3-89129b714e74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8698fa84-24b3-449d-9497-d9a42ee09ef3/b26c47d3-4e9e-4180-83a3-89129b714e74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8698fa84-24b3-449d-9497-d9a42ee09ef3/b26c47d3-4e9e-4180-83a3-89129b714e74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8698fa84-24b3-449d-9497-d9a42ee09ef3/b26c47d3-4e9e-4180-83a3-89129b714e74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                0.1524664   0.1051882   0.1997445
0-24 months   ki0047075b-MAL-ED       BANGLADESH   0                    NA                0.2631579   0.0647468   0.4615690
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.2136364   0.1593598   0.2679129
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.4000000   0.1515528   0.6484472
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0910552   0.0345931   0.1475173
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0829851   0.0344773   0.1314929
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2060788   0.1721700   0.2399877
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3132433   0.2039045   0.4225820
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1168581   0.0918946   0.1418216
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2371862   0.1268264   0.3475461
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0962307   0.0721892   0.1202722
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0863313   0.0444103   0.1282523
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.2801283   0.1933734   0.3668832
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3028257   0.2596822   0.3459692
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0717392   0.0550890   0.0883893
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0899543   0.0859222   0.0939864
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0899577   0.0518240   0.1280915
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1680499   0.1560300   0.1800698
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0639854   0.0434602   0.0845106
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1111111   0.0384611   0.1837611
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0360502   0.0215748   0.0505255
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1129032   0.0340714   0.1917350
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.0808081   0.0270719   0.1345442
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0503432   0.0298237   0.0708628
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0321324   0.0222393   0.0420255
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0401992   0.0375882   0.0428103
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0200650   0.0047061   0.0354240
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0272783   0.0216297   0.0329268
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.1909091   0.1388646   0.2429536
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.3333333   0.0942649   0.5724018
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.0490196   0.0070270   0.0910123
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.0714286   0.0263613   0.1164958
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.2009641   0.1649854   0.2369429
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2968267   0.1771478   0.4165055
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1097258   0.0839274   0.1355242
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2973596   0.1691358   0.4255834
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0871616   0.0635769   0.1107462
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0799990   0.0407460   0.1192521
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.3045020   0.2081008   0.4009031
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.3335342   0.2861249   0.3809435
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0535625   0.0403861   0.0667389
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0900054   0.0850925   0.0949183
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0739711   0.0420488   0.1058934
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1555641   0.1440575   0.1670706


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0873362   0.0506897   0.1239828
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2173913   0.1849240   0.2498586
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2966418   0.2579360   0.3353476
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0887391   0.0848621   0.0926161
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1614747   0.1501435   0.1728058
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0694669   0.0494218   0.0895120
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.0559701   0.0364922   0.0754481
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0396306   0.0371318   0.0421294
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.0614035   0.0301736   0.0926335
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2115028   0.1769952   0.2460104
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3239741   0.2813000   0.3666481
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
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 0.9113715   0.3921508   2.118057
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.5200165   1.0340220   2.234431
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.0296949   1.2172644   3.384360
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.8971284   0.5198829   1.548117
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0810252   0.7698696   1.517939
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2539080   0.9926410   1.583942
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.8680983   1.2204745   2.859373
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.7365079   0.8382638   3.597268
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.1318373   1.3995795   7.008108
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.6229977   0.2855976   1.358996
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2510499   0.9117708   1.716578
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.3594932   0.6165139   2.997859
6-24 months   ki0047075b-MAL-ED       INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        0                    1                 1.7460317   0.8106464   3.760736
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       NEPAL        0                    1                 1.4571428   0.5028581   4.222395
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.4770132   0.9499841   2.296426
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 2.7100250   1.6581707   4.429119
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9178246   0.5241856   1.607068
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 1.0953434   0.7750609   1.547978
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.6803800   1.3054925   2.162921
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.1030378   1.3609808   3.249692


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0086907   -0.0077585   0.0251398
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0118956   -0.0053544   0.0291455
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0037189   -0.0448430   0.0374051
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0113125   -0.0019376   0.0245625
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0117134    0.0017527   0.0216740
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0025632   -0.0136775   0.0085512
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0165135   -0.0624122   0.0954392
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0169999    0.0008279   0.0331720
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0715169    0.0348613   0.1081725
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0054815   -0.0033801   0.0143431
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0068070   -0.0004742   0.0140882
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0248379   -0.0717451   0.0220693
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0074982   -0.0021892   0.0171856
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0063181   -0.0080074   0.0206436
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0090909   -0.0071508   0.0253326
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.0123839   -0.0216885   0.0464563
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0105386   -0.0033214   0.0243987
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0124241    0.0018125   0.0230356
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0008602   -0.0123826   0.0106622
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0194721   -0.0686830   0.1076272
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0330914    0.0200183   0.0461645
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0737876    0.0426274   0.1049478


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH   1                    NA                 0.0539266   -0.0530109   0.1500043
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0527444   -0.0264141   0.1257982
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                -0.0425819   -0.6368757   0.3359441
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0520373   -0.0106737   0.1108571
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0911039    0.0116274   0.1641896
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0273644   -0.1529703   0.0845578
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0556682   -0.2514747   0.2874306
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1915722   -0.0131423   0.3549224
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4428987    0.1604760   0.6303121
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0789082   -0.0558885   0.1964965
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.1588297   -0.0189113   0.3055651
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.4437710   -1.5587230   0.1853457
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1892023   -0.0957413   0.4000473
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.2394754   -0.5588284   0.6289536
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                 0.0454545   -0.0388318   0.1229023
6-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                 0.2016807   -0.5826684   0.5973169
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0498274   -0.0177512   0.1129189
6-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.1017117    0.0127120   0.1826884
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0099676   -0.1526864   0.1150806
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                 0.0601040   -0.2552155   0.2962128
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3818801    0.2132827   0.5143463
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.4993790    0.2377952   0.6711889
