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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        impfloor    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      212     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       17     242
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        2     242
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      206     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2     210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      201     235
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       19     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       14     235
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        1     235
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0      102     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      124     229
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2     229
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       58     271
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      212     271
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      233     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     256
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234     248
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     248
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      248     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       13     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     261
0-24 months   ki1000108-IRC              INDIA                          1                   0      271     306
0-24 months   ki1000108-IRC              INDIA                          1                   1       35     306
0-24 months   ki1000108-IRC              INDIA                          0                   0        0     306
0-24 months   ki1000108-IRC              INDIA                          0                   1        0     306
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      432     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       41     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       53     532
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        6     532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      574     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       70     465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       13     465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      325     465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       57     465
0-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1299   15645
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       64   15645
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0    13454   15645
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      828   15645
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      603    5278
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       22    5278
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4249    5278
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      404    5278
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      217     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        6     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       18     242
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        1     242
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0      207     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        1     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        2     210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0      202     234
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1       17     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       14     234
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1        1     234
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0      101     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      123     228
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        3     228
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       58     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      213     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      231     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     254
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     254
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234     248
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     248
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      220     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       31     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     251
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     251
0-6 months    ki1000108-IRC              INDIA                          1                   0      249     300
0-6 months    ki1000108-IRC              INDIA                          1                   1       51     300
0-6 months    ki1000108-IRC              INDIA                          0                   0        0     300
0-6 months    ki1000108-IRC              INDIA                          0                   1        0     300
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   0      139     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                   1        8     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   0       19     169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                   1        3     169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      571     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       13     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       52     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        1     637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      239     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        5     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0        6     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        0     250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       62     423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      312     423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       38     423
0-6 months    ki1114097-CONTENT          PERU                           1                   0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           0                   0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                   1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0        2      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       42      46
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        2      46
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0      212     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       11     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       17     242
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        2     242
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0      206     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        2     210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0     210
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0      201     235
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1       19     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       14     235
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1        1     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0      102     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      124     229
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        2     229
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       58     271
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     271
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      212     271
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1        1     271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      233     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     256
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     256
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       14     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      234     248
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0     248
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      248     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       13     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0     261
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     261
6-24 months   ki1000108-IRC              INDIA                          1                   0      271     306
6-24 months   ki1000108-IRC              INDIA                          1                   1       35     306
6-24 months   ki1000108-IRC              INDIA                          0                   0        0     306
6-24 months   ki1000108-IRC              INDIA                          0                   1        0     306
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   0      432     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                   1       41     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   0       53     532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                   1        6     532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      574     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51     640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       70     465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       13     465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      325     465
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       57     465
6-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
6-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1299   15645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       64   15645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0    13454   15645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      828   15645
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      603    5278
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       22    5278
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0     4249    5278
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      404    5278


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
![](/tmp/d1eeffaa-a5bc-46f0-9de6-a50676b57905/796cce73-25ca-4601-8e59-0c34cc1a4618/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1eeffaa-a5bc-46f0-9de6-a50676b57905/796cce73-25ca-4601-8e59-0c34cc1a4618/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1eeffaa-a5bc-46f0-9de6-a50676b57905/796cce73-25ca-4601-8e59-0c34cc1a4618/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1eeffaa-a5bc-46f0-9de6-a50676b57905/796cce73-25ca-4601-8e59-0c34cc1a4618/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808   0.0613003   0.1120612
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949   0.0244994   0.1788905
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319   0.0206325   0.0518313
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079   0.0071767   0.0602390
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1695570   0.0908594   0.2482546
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1496397   0.1138585   0.1854209
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0455230   0.0246513   0.0663947
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0572314   0.0528864   0.0615763
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0356665   0.0150455   0.0562875
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0866950   0.0773811   0.0960089
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1423804   0.0577897   0.2269710
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1079184   0.0752708   0.1405660
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808   0.0613003   0.1120612
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949   0.0244994   0.1788905
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319   0.0206325   0.0518313
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079   0.0071767   0.0602390
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1513004   0.0720236   0.2305772
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1489064   0.1131222   0.1846906
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0454804   0.0239721   0.0669888
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0573290   0.0529583   0.0616998
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0356873   0.0155358   0.0558389
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0867535   0.0774472   0.0960597


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1505376   0.1180002   0.1830751
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0570150   0.0529229   0.0611071
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0807124   0.0720896   0.0893352
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1158392   0.0853051   0.1463734
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1505376   0.1180002   0.1830751
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0570150   0.0529229   0.0611071
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0807124   0.0720896   0.0893352


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356   2.646793
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263   2.281748
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.8825333   0.5233974   1.488095
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2571969   0.7907634   1.998757
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4307151   1.3542252   4.362920
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7579585   0.3891229   1.476400
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356   2.646793
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263   2.281748
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9841772   0.5530306   1.751449
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2605210   0.7820843   2.031639
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4309303   1.3721483   4.306694


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0190194   -0.0902224   0.0521836
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0114920   -0.0088656   0.0318496
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0450459    0.0251675   0.0649244
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0265411   -0.1019815   0.0488992
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0007628   -0.0723980   0.0708724
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0115346   -0.0094187   0.0324878
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0450250    0.0255538   0.0644963


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.1263430   -0.7147587   0.2601592
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2015615   -0.2497538   0.4898963
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5581042    0.2292836   0.7466359
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2291203   -1.0807806   0.2739567
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0050669   -0.6136467   0.3739897
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.2023078   -0.2658698   0.4973315
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5578455    0.2388091   0.7431648
