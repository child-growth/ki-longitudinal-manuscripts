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

agecat      studyid                    country                        impfloor    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      190     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        6     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       17     213
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     213
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       55      60
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        3      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0        2      60
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0      60
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       33      41
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2      41
Birth       ki0047075b-MAL-ED          INDIA                          0                  0        6      41
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0      41
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        8      25
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       16      25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        0      25
Birth       ki0047075b-MAL-ED          PERU                           1                  0       37     215
Birth       ki0047075b-MAL-ED          PERU                           1                  1        2     215
Birth       ki0047075b-MAL-ED          PERU                           0                  0      174     215
Birth       ki0047075b-MAL-ED          PERU                           0                  1        2     215
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       86      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0        9      96
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        2     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      106     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        6     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       68      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        4      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      72
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      72
Birth       ki1000108-IRC              INDIA                          1                  0      274     287
Birth       ki1000108-IRC              INDIA                          1                  1       13     287
Birth       ki1000108-IRC              INDIA                          0                  0        0     287
Birth       ki1000108-IRC              INDIA                          0                  1        0     287
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  0      517     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                  1       16     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  0       69     605
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                  1        3     605
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      488     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1        3     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0       47     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1        1     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      555     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        3     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      167     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        7     732
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0       98     544
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1        2     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      420     544
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       24     544
Birth       ki1114097-CONTENT          PERU                           1                  0        2       2
Birth       ki1114097-CONTENT          PERU                           1                  1        0       2
Birth       ki1114097-CONTENT          PERU                           0                  0        0       2
Birth       ki1114097-CONTENT          PERU                           0                  1        0       2
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     1307   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1       87   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0    18649   22399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1     2356   22399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      289    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       18    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0     2298    2820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1      215    2820
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
6 months    ki0047075b-MAL-ED          PERU                           1                  0       55     270
6 months    ki0047075b-MAL-ED          PERU                           1                  1        3     270
6 months    ki0047075b-MAL-ED          PERU                           0                  0      205     270
6 months    ki0047075b-MAL-ED          PERU                           0                  1        7     270
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      549     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        8     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0       41     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        6     604
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3979    4824
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1      255    4824
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      168     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       27     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       16     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0      166     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0      184     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       28     227
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0      195     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1       25     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       16     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        9     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      134     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       66     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      165     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       94     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0     259
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     259
24 months   ki1000108-IRC              INDIA                          1                  0      282     305
24 months   ki1000108-IRC              INDIA                          1                  1       23     305
24 months   ki1000108-IRC              INDIA                          0                  0        0     305
24 months   ki1000108-IRC              INDIA                          0                  1        0     305
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  0      304     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                  1       73     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  0       28     427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                  1       22     427
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      492     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       41     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0       34     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       11     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      323     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       23     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      155     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1       13     514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       69     374
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        3     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      268     374
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       34     374
24 months   ki1114097-CONTENT          PERU                           1                  0      151     164
24 months   ki1114097-CONTENT          PERU                           1                  1        3     164
24 months   ki1114097-CONTENT          PERU                           0                  0       10     164
24 months   ki1114097-CONTENT          PERU                           0                  1        0     164
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0      629    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1       45    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     6637    8609
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1     1298    8609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      543    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       23    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0     3751    4746
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      429    4746


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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




# Results Detail

## Results Plots
![](/tmp/7b253ea0-c095-4cd1-8073-717e61a01483/2ff343de-58d7-4f0d-940d-3f2eb07919ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7b253ea0-c095-4cd1-8073-717e61a01483/2ff343de-58d7-4f0d-940d-3f2eb07919ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7b253ea0-c095-4cd1-8073-717e61a01483/2ff343de-58d7-4f0d-940d-3f2eb07919ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7b253ea0-c095-4cd1-8073-717e61a01483/2ff343de-58d7-4f0d-940d-3f2eb07919ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0670443   0.0457159   0.0883727
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1104248   0.1056645   0.1151851
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0595360   0.0073518   0.1117202
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0855463   0.0737457   0.0973468
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0143627   0.0044736   0.0242517
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.1276596   0.0321760   0.2231431
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0297952   0.0154049   0.0441854
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0393258   0.0107520   0.0678997
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0312825   0.0225479   0.0400171
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.0625705   0.0585203   0.0666207
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0274147   0.0118916   0.0429378
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.0601270   0.0526962   0.0675578
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1970795   0.1571975   0.2369615
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.3980929   0.2686291   0.5275567
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0768445   0.0542068   0.0994822
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.2697416   0.1443723   0.3951109
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0668290   0.0403557   0.0933024
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.0761562   0.0361335   0.1161789
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0871559   0.0632412   0.1110706
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.1609087   0.1517542   0.1700632
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0417795   0.0217660   0.0617930
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1024859   0.0919453   0.1130265


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1090674   0.1045072   0.1136275
Birth       kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0826241   0.0709364   0.0943118
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0321678   0.0192256   0.0451101
6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.0605735   0.0567154   0.0644317
6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0561774   0.0493938   0.0629611
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2224824   0.1829871   0.2619778
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0700389   0.0479542   0.0921236
24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.1559995   0.1472541   0.1647450
24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.0952381   0.0856745   0.1048017


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.647042   1.1928342    2.274203
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4       BANGLADESH   0                    1                 1.436883   0.5906862    3.495312
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   0                    1                 8.888298   3.2159417   24.565693
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.319874   0.5515999    3.158206
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    1                 2.000175   1.5082660    2.652517
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.193238   1.2265538    3.921797
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   0                    1                 2.019961   1.3875578    2.940593
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   0                    1                 3.510226   2.0223572    6.092736
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    1                 1.139568   0.5896927    2.202189
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    1                 1.846217   1.3976793    2.438698
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    1                 1.000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    1                 2.453018   1.4975243    4.018164


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0420231    0.0207092   0.0633369
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0230881   -0.0251200   0.0712962
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0088162    0.0009634   0.0166689
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0023727   -0.0055977   0.0103431
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0292911    0.0206242   0.0379579
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0287627    0.0135603   0.0439651
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.0254029    0.0085280   0.0422778
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.0131209    0.0025226   0.0237191
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0032099   -0.0127279   0.0191477
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.0688437    0.0451070   0.0925803
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.0534586    0.0331465   0.0737707


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.3852945    0.1566292   0.5519612
Birth       kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.2794355   -0.6429932   0.6839833
6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.3803539    0.0300934   0.6041256
6 months    ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0737592   -0.2081364   0.2898798
6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4835618    0.3226819   0.6062288
6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5119980    0.1569237   0.7175274
24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.1141795    0.0362567   0.1858019
24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.1458438    0.0253842   0.2514149
24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.0458302   -0.2106692   0.2479861
24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4413068    0.2691049   0.5729372
24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5613150    0.2990855   0.7254379
