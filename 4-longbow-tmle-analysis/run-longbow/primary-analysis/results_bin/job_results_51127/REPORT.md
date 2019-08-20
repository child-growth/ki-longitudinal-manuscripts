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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        impfloor    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      210     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        6     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       18     234
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     234
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0      165     174
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        7     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0        2     174
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     174
Birth       ki0047075b-MAL-ED          INDIA                          1                  0      174     191
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        7     191
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       10     191
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0     191
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       62     164
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        4     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       96     164
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     164
Birth       ki0047075b-MAL-ED          PERU                           1                  0       53     259
Birth       ki0047075b-MAL-ED          PERU                           1                  1        3     259
Birth       ki0047075b-MAL-ED          PERU                           0                  0      199     259
Birth       ki0047075b-MAL-ED          PERU                           0                  1        4     259
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      196     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       21     218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     218
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        7     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105     117
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     117
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       68      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      71
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      71
Birth       ki1000108-IRC              INDIA                          1                  0      274     287
Birth       ki1000108-IRC              INDIA                          1                  1       13     287
Birth       ki1000108-IRC              INDIA                          0                  0        0     287
Birth       ki1000108-IRC              INDIA                          0                  1        0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  0       24      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0       21      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        1      27
Birth       ki1114097-CONTENT          PERU                           1                  0        2       2
Birth       ki1114097-CONTENT          PERU                           1                  1        0       2
Birth       ki1114097-CONTENT          PERU                           0                  0        0       2
Birth       ki1114097-CONTENT          PERU                           0                  1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1009   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1       67   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0    16517   19563
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1970   19563
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0       65     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        6     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      693     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       58     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      214     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        7     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0       18     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0      207     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0        2     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0      212     235
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        8     235
6 months    ki0047075b-MAL-ED          INDIA                          0                  0       14     235
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0      102     229
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        1     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      126     229
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     229
6 months    ki0047075b-MAL-ED          PERU                           1                  0       54     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1        4     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1        8     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      223     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       20     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       13     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      218     245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       13     245
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      221     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       36     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     257
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     257
6 months    ki1000108-IRC              INDIA                          1                  0      285     303
6 months    ki1000108-IRC              INDIA                          1                  1       18     303
6 months    ki1000108-IRC              INDIA                          0                  0        0     303
6 months    ki1000108-IRC              INDIA                          0                  1        0     303
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  0      446     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                  1       31     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  0       54     535
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                  1        4     535
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      531     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        8     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0       38     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        6     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      521     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       16     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      171     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        7     715
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       78     441
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        0     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      346     441
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       17     441
6 months    ki1114097-CONTENT          PERU                           1                  0      197     215
6 months    ki1114097-CONTENT          PERU                           1                  1        4     215
6 months    ki1114097-CONTENT          PERU                           0                  0       14     215
6 months    ki1114097-CONTENT          PERU                           0                  1        0     215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1429   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1       36   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0    14328   16773
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      980   16773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0      574    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       16    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3980    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      254    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      170     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       25     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0      166     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      186     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       13     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       95     221
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        3     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      119     221
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     221
24 months   ki0047075b-MAL-ED          PERU                           1                  0       46     201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3     201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      140     201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       12     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      196     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       24     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        9     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      135     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       65     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      168     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       92     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     260
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     260
24 months   ki1000108-IRC              INDIA                          1                  0      282     305
24 months   ki1000108-IRC              INDIA                          1                  1       23     305
24 months   ki1000108-IRC              INDIA                          0                  0        0     305
24 months   ki1000108-IRC              INDIA                          0                  1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      306     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       71     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0       28     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       22     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      494     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0       34     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      324     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       22     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       13     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       69     385
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        3     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      278     385
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       35     385
24 months   ki1114097-CONTENT          PERU                           1                  0      151     164
24 months   ki1114097-CONTENT          PERU                           1                  1        3     164
24 months   ki1114097-CONTENT          PERU                           0                  0       10     164
24 months   ki1114097-CONTENT          PERU                           0                  1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      629    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       45    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6638    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1297    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      544    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       22    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3766    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      414    4746


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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
![](/tmp/20b914f7-8df2-4e80-aed3-19ecce014865/b12b596c-c9aa-49eb-82ab-b89de1f81df7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/20b914f7-8df2-4e80-aed3-19ecce014865/b12b596c-c9aa-49eb-82ab-b89de1f81df7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/20b914f7-8df2-4e80-aed3-19ecce014865/b12b596c-c9aa-49eb-82ab-b89de1f81df7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/20b914f7-8df2-4e80-aed3-19ecce014865/b12b596c-c9aa-49eb-82ab-b89de1f81df7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0618096   0.0445519   0.0790673
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1052834   0.1004416   0.1101252
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0845070   0.0003034   0.1687107
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0772304   0.0544983   0.0999624
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0148423   0.0046251   0.0250595
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1363636   0.0348769   0.2378504
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0297952   0.0154049   0.0441854
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0318681   0.0232223   0.0405139
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0625059   0.0584652   0.0665465
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0275016   0.0121296   0.0428735
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0598928   0.0524761   0.0673095
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1913328   0.1518842   0.2307815
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4044711   0.2746020   0.5343401
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0711238   0.0492651   0.0929825
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2729531   0.1214706   0.4244355
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0644428   0.0383576   0.0905280
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0753485   0.0352133   0.1154837
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.1020437   0.0715274   0.1325600
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1601114   0.1510274   0.1691954
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0396991   0.0206826   0.0587157
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0989823   0.0886310   0.1093335


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1041251   0.0994430   0.1088072
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0605735   0.0567154   0.0644317
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0559701   0.0491990   0.0627413
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2177986   0.1786036   0.2569935
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1558834   0.1471384   0.1646284
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0918668   0.0824774   0.1012563


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.7033505   1.2818276    2.263489
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 0.9138926   0.3225440    2.589413
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 9.1875000   3.3336277   25.320811
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.3198736   0.5515999    3.158206
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.9613925   1.4902552    2.581478
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.1777945   1.2263355    3.867448
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 2.1139657   1.4535392    3.074462
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.8377169   2.0343839    7.239573
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.1692311   0.5981368    2.285600
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.5690466   1.1584768    2.125125
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.4933113   1.5223620    4.083524


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0423155    0.0249425   0.0596886
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0066482   -0.0865005   0.0732042
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0091714    0.0010436   0.0172993
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0023727   -0.0055977   0.0103431
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0287054    0.0201138   0.0372971
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0284686    0.0133974   0.0435397
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.0264658    0.0094184   0.0435131
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.0137982    0.0031312   0.0244652
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0036506   -0.0122807   0.0195819
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.0538396    0.0236417   0.0840375
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.0521677    0.0327697   0.0715658


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.4063912    0.2162757   0.5503886
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                -0.0853873   -1.7889040   0.5775883
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.3819242    0.0327505   0.6050474
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0737592   -0.2081364   0.2898798
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.4738938    0.3152413   0.5957879
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5086386    0.1570366   0.7135866
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                 0.1215148    0.0411655   0.1951309
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                 0.1624808    0.0344236   0.2735547
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                 0.0536119   -0.2110779   0.2604517
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                 0.3453841    0.1214678   0.5122295
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                 0.5678623    0.3094299   0.7295815
