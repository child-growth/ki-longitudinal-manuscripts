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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      575     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51     641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     641
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6     730
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       72     469
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       12     469
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      331     469
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       54     469
0-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
0-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
0-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
0-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1313   15768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       64   15768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0    13563   15768
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      828   15768
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0      100     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        3     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      123     229
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        3     229
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       58     271
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        0     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      213     271
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        0     271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      232     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        2     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0       21     255
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0     255
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      572     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       13     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       52     638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        1     638
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      239     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        5     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0        6     250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        0     250
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       65     444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      331     444
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       37     444
0-6 months    ki1114097-CONTENT          PERU                           1                   0      201     215
0-6 months    ki1114097-CONTENT          PERU                           1                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           0                   0       14     215
0-6 months    ki1114097-CONTENT          PERU                           0                   1        0     215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0        5      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       43      50
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        2      50
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      575     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       12     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       51     641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        3     641
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      532     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       20     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      172     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1        6     730
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       72     469
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       12     469
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      331     469
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       54     469
6-24 months   ki1114097-CONTENT          PERU                           1                   0      201     215
6-24 months   ki1114097-CONTENT          PERU                           1                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           0                   0       14     215
6-24 months   ki1114097-CONTENT          PERU                           0                   1        0     215
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     1313   15768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       64   15768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0    13563   15768
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      828   15768
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
![](/tmp/212113f3-cb46-44a7-93a2-3f8c54e4e66b/812d9adf-1182-4acb-899c-04f9edab4c24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/212113f3-cb46-44a7-93a2-3f8c54e4e66b/812d9adf-1182-4acb-899c-04f9edab4c24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/212113f3-cb46-44a7-93a2-3f8c54e4e66b/812d9adf-1182-4acb-899c-04f9edab4c24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/212113f3-cb46-44a7-93a2-3f8c54e4e66b/812d9adf-1182-4acb-899c-04f9edab4c24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808   0.0613003   0.1120612
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949   0.0244994   0.1788905
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319   0.0206325   0.0518313
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079   0.0071767   0.0602390
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1436168   0.0687799   0.2184536
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1407408   0.1059552   0.1755263
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0471663   0.0310639   0.0632687
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0573265   0.0530104   0.0616426
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0358325   0.0152863   0.0563788
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0867121   0.0774067   0.0960175
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1309289   0.0514033   0.2104545
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.0996914   0.0689116   0.1304712
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0866808   0.0613003   0.1120612
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.1016949   0.0244994   0.1788905
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0362319   0.0206325   0.0518313
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0337079   0.0071767   0.0602390
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.1456133   0.0709338   0.2202928
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.1408947   0.1060988   0.1756907
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0471251   0.0291779   0.0650724
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0572872   0.0529756   0.0615989
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0356929   0.0154715   0.0559142
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0867481   0.0774440   0.0960523


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1407249   0.1092201   0.1722298
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0565703   0.0524546   0.0606859
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0807124   0.0720896   0.0893352
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1081081   0.0791926   0.1370237
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0883459   0.0642074   0.1124843
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1407249   0.1092201   0.1722298
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0565703   0.0524546   0.0606859
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0807124   0.0720896   0.0893352


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356   2.646793
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263   2.281748
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9799745   0.5503773   1.744894
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2154115   0.8561024   1.725524
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4199256   1.3544449   4.323572
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    1                 0.7614164   0.3849158   1.506187
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 1.1732121   0.5200356   2.646793
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 0.9303371   0.3793263   2.281748
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    1                 0.9675953   0.5474954   1.710043
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.2156409   0.8232873   1.794978
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4304057   1.3693218   4.313721


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0028918   -0.0706059   0.0648222
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0094039   -0.0061214   0.0249293
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0448798    0.0250566   0.0647030
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0228208   -0.0938073   0.0481656
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0016651   -0.0073558   0.0106860
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0006154   -0.0081205   0.0068896
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0048883   -0.0724451   0.0626684
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0094451   -0.0079638   0.0268541
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0450195    0.0254768   0.0645623


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0205495   -0.6353058   0.3631031
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1662346   -0.1593122   0.4003645
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5560465    0.2291915   0.7443013
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.2110925   -1.0763120   0.2935816
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0188476   -0.0886474   0.1157282
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                -0.0172798   -0.2512945   0.1729699
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                -0.0347368   -0.6456214   0.3493763
6-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.1669630   -0.2059198   0.4245466
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5577772    0.2372148   0.7436224
