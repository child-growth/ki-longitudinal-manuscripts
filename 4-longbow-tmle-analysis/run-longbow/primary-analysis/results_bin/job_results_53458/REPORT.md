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

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* hhwealth_quart
* W_nrooms
* month
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_month
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      212    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0        8    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       62     65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        3     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        0     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       41     45
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        2     45
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        2     45
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     45
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       25     27
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        1     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     27
Birth       ki0047075b-MAL-ED          PERU                           0                   0      229    233
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4    233
Birth       ki0047075b-MAL-ED          PERU                           1                   0        0    233
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      110    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    113
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    113
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      114    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       78     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        2     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2     92
Birth       ki1000108-IRC              INDIA                          0                   0      306    387
Birth       ki1000108-IRC              INDIA                          0                   1       13    387
Birth       ki1000108-IRC              INDIA                          1                   0       65    387
Birth       ki1000108-IRC              INDIA                          1                   1        3    387
Birth       ki1000109-EE               PAKISTAN                       0                   0      177    240
Birth       ki1000109-EE               PAKISTAN                       0                   1       47    240
Birth       ki1000109-EE               PAKISTAN                       1                   0       15    240
Birth       ki1000109-EE               PAKISTAN                       1                   1        1    240
Birth       ki1000109-ResPak           PAKISTAN                       0                   0       30     34
Birth       ki1000109-ResPak           PAKISTAN                       0                   1        0     34
Birth       ki1000109-ResPak           PAKISTAN                       1                   0        4     34
Birth       ki1000109-ResPak           PAKISTAN                       1                   1        0     34
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      512    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1        4    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0       23    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        0    539
Birth       ki1101329-Keneba           GAMBIA                         0                   0     1348   1419
Birth       ki1101329-Keneba           GAMBIA                         0                   1       26   1419
Birth       ki1101329-Keneba           GAMBIA                         1                   0       45   1419
Birth       ki1101329-Keneba           GAMBIA                         1                   1        0   1419
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0      502    585
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       19    585
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0       62    585
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1        2    585
Birth       ki1114097-CMIN             BANGLADESH                     0                   0       16     18
Birth       ki1114097-CMIN             BANGLADESH                     0                   1        0     18
Birth       ki1114097-CMIN             BANGLADESH                     1                   0        2     18
Birth       ki1114097-CMIN             BANGLADESH                     1                   1        0     18
Birth       ki1114097-CONTENT          PERU                           0                   0        2      2
Birth       ki1114097-CONTENT          PERU                           0                   1        0      2
Birth       ki1114097-CONTENT          PERU                           1                   0        0      2
Birth       ki1114097-CONTENT          PERU                           1                   1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      227    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      210    236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       17    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      229    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        6    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      263    273
6 months    ki0047075b-MAL-ED          PERU                           0                   1       10    273
6 months    ki0047075b-MAL-ED          PERU                           1                   0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      246    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      233    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      276    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       37    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       47    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5    365
6 months    ki1000108-IRC              INDIA                          0                   0      309    406
6 months    ki1000108-IRC              INDIA                          0                   1       28    406
6 months    ki1000108-IRC              INDIA                          1                   0       68    406
6 months    ki1000108-IRC              INDIA                          1                   1        1    406
6 months    ki1000109-EE               PAKISTAN                       0                   0      272    373
6 months    ki1000109-EE               PAKISTAN                       0                   1       75    373
6 months    ki1000109-EE               PAKISTAN                       1                   0       20    373
6 months    ki1000109-EE               PAKISTAN                       1                   1        6    373
6 months    ki1000109-ResPak           PAKISTAN                       0                   0      162    227
6 months    ki1000109-ResPak           PAKISTAN                       0                   1       40    227
6 months    ki1000109-ResPak           PAKISTAN                       1                   0       23    227
6 months    ki1000109-ResPak           PAKISTAN                       1                   1        2    227
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      579    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       11    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       11    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        3    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1949   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       19   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       51   2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0   2019
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1786   1897
6 months    ki1101329-Keneba           GAMBIA                         0                   1       50   1897
6 months    ki1101329-Keneba           GAMBIA                         1                   0       50   1897
6 months    ki1101329-Keneba           GAMBIA                         1                   1       11   1897
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      244    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1       23    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6    276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        3    276
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      484    559
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       15    559
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       54    559
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6    559
6 months    ki1114097-CMIN             BANGLADESH                     0                   0      206    243
6 months    ki1114097-CMIN             BANGLADESH                     0                   1       26    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   0        9    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   1        2    243
6 months    ki1114097-CONTENT          PERU                           0                   0      211    215
6 months    ki1114097-CONTENT          PERU                           0                   1        4    215
6 months    ki1114097-CONTENT          PERU                           1                   0        0    215
6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      178    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       28    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      167    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      180    227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       29    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      216    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        6    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        5    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        1    228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      186    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       15    201
24 months   ki0047075b-MAL-ED          PERU                           1                   0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      209    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       27    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      144    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       70    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      217    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       94    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       28    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       27    366
24 months   ki1000108-IRC              INDIA                          0                   0      302    408
24 months   ki1000108-IRC              INDIA                          0                   1       37    408
24 months   ki1000108-IRC              INDIA                          1                   0       65    408
24 months   ki1000108-IRC              INDIA                          1                   1        4    408
24 months   ki1000109-EE               PAKISTAN                       0                   0      103    167
24 months   ki1000109-EE               PAKISTAN                       0                   1       53    167
24 months   ki1000109-EE               PAKISTAN                       1                   0        5    167
24 months   ki1000109-EE               PAKISTAN                       1                   1        6    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      513    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       52    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       13    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        0    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                   0     1290   1442
24 months   ki1101329-Keneba           GAMBIA                         0                   1      105   1442
24 months   ki1101329-Keneba           GAMBIA                         1                   0       33   1442
24 months   ki1101329-Keneba           GAMBIA                         1                   1       14   1442
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      386    479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       44    479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       40    479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        9    479
24 months   ki1114097-CMIN             BANGLADESH                     0                   0      168    242
24 months   ki1114097-CMIN             BANGLADESH                     0                   1       65    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   0        6    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   1        3    242
24 months   ki1114097-CONTENT          PERU                           0                   0      161    164
24 months   ki1114097-CONTENT          PERU                           0                   1        3    164
24 months   ki1114097-CONTENT          PERU                           1                   0        0    164
24 months   ki1114097-CONTENT          PERU                           1                   1        0    164


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
![](/tmp/4a984144-db98-445e-9af3-2bf9331f1eca/5c03cd13-e470-4cb6-beb7-f174e8d3abc4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a984144-db98-445e-9af3-2bf9331f1eca/5c03cd13-e470-4cb6-beb7-f174e8d3abc4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a984144-db98-445e-9af3-2bf9331f1eca/5c03cd13-e470-4cb6-beb7-f174e8d3abc4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a984144-db98-445e-9af3-2bf9331f1eca/5c03cd13-e470-4cb6-beb7-f174e8d3abc4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                0.1182109   0.0823944   0.1540273
6 months    ki1000108-CMC-V-BCS-2002   INDIA      1                    NA                0.0961538   0.0159172   0.1763905
6 months    ki1000109-EE               PAKISTAN   0                    NA                0.2161383   0.1727721   0.2595046
6 months    ki1000109-EE               PAKISTAN   1                    NA                0.2307692   0.0686025   0.3929359
6 months    ki1101329-Keneba           GAMBIA     0                    NA                0.0273908   0.0199054   0.0348762
6 months    ki1101329-Keneba           GAMBIA     1                    NA                0.1529416   0.0620264   0.2438569
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                0.0300601   0.0150648   0.0450554
6 months    ki1113344-GMS-Nepal        NEPAL      1                    NA                0.1000000   0.0240229   0.1759771
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                0.3031685   0.2520108   0.3543261
24 months   ki1000108-CMC-V-BCS-2002   INDIA      1                    NA                0.4805414   0.3454201   0.6156627
24 months   ki1000109-EE               PAKISTAN   0                    NA                0.3397436   0.2651980   0.4142892
24 months   ki1000109-EE               PAKISTAN   1                    NA                0.5454545   0.2503174   0.8405917
24 months   ki1101329-Keneba           GAMBIA     0                    NA                0.0754707   0.0615960   0.0893455
24 months   ki1101329-Keneba           GAMBIA     1                    NA                0.2810451   0.1506994   0.4113909
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                0.1023256   0.0736495   0.1310016
24 months   ki1113344-GMS-Nepal        NEPAL      1                    NA                0.1836735   0.0751412   0.2922058


### Parameter: E(Y)


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      NA                   NA                0.1150685   0.0822869   0.1478501
6 months    ki1000109-EE               PAKISTAN   NA                   NA                0.2171582   0.1752594   0.2590570
6 months    ki1101329-Keneba           GAMBIA     NA                   NA                0.0321560   0.0242153   0.0400968
6 months    ki1113344-GMS-Nepal        NEPAL      NA                   NA                0.0375671   0.0217902   0.0533439
24 months   ki1000108-CMC-V-BCS-2002   INDIA      NA                   NA                0.3306011   0.2823401   0.3788621
24 months   ki1000109-EE               PAKISTAN   NA                   NA                0.3532934   0.2805798   0.4260070
24 months   ki1101329-Keneba           GAMBIA     NA                   NA                0.0825243   0.0683172   0.0967313
24 months   ki1113344-GMS-Nepal        NEPAL      NA                   NA                0.1106472   0.0825255   0.1387689


### Parameter: RR


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA      1                    0                 0.8134096   0.3347787    1.976336
6 months    ki1000109-EE               PAKISTAN   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN   1                    0                 1.0676923   0.5141166    2.217331
6 months    ki1101329-Keneba           GAMBIA     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA     1                    0                 5.5836924   2.9032964   10.738697
6 months    ki1113344-GMS-Nepal        NEPAL      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL      1                    0                 3.3266667   1.3405404    8.255410
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA      1                    0                 1.5850641   1.1417924    2.200425
24 months   ki1000109-EE               PAKISTAN   0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000109-EE               PAKISTAN   1                    0                 1.6054889   0.8954290    2.878614
24 months   ki1101329-Keneba           GAMBIA     0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA     1                    0                 3.7238958   2.2612511    6.132623
24 months   ki1113344-GMS-Nepal        NEPAL      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL      1                    0                 1.7949907   0.9333402    3.452108


### Parameter: PAR


agecat      studyid                    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                -0.0031424   -0.0156855   0.0094008
6 months    ki1000109-EE               PAKISTAN   0                    NA                 0.0010198   -0.0106873   0.0127270
6 months    ki1101329-Keneba           GAMBIA     0                    NA                 0.0047653    0.0014406   0.0080900
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0075070   -0.0009972   0.0160111
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                 0.0274326    0.0050548   0.0498104
24 months   ki1000109-EE               PAKISTAN   0                    NA                 0.0135498   -0.0079510   0.0350506
24 months   ki1101329-Keneba           GAMBIA     0                    NA                 0.0070535    0.0023161   0.0117910
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0083216   -0.0033726   0.0200158


### Parameter: PAF


agecat      studyid                    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                -0.0273087   -0.1420817   0.0759303
6 months    ki1000109-EE               PAKISTAN   0                    NA                 0.0046963   -0.0506976   0.0571699
6 months    ki1101329-Keneba           GAMBIA     0                    NA                 0.1481920    0.0452838   0.2400079
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.1998282   -0.0419788   0.3855202
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                 0.0829780    0.0128470   0.1481267
24 months   ki1000109-EE               PAKISTAN   0                    NA                 0.0383529   -0.0244999   0.0973497
24 months   ki1101329-Keneba           GAMBIA     0                    NA                 0.0854723    0.0279389   0.1396005
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0752084   -0.0352562   0.1738862
