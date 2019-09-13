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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_month
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      203    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       43    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0        7    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      170    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        0    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      159    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       32    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        1    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      152    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       18    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      253    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       33    286
Birth       ki0047075b-MAL-ED          PERU                           1                  0        0    286
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      228    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       27    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        6    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       18    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       67     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       11     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        5     90
Birth       ki1000108-IRC              INDIA                          0                  0      279    388
Birth       ki1000108-IRC              INDIA                          0                  1       40    388
Birth       ki1000108-IRC              INDIA                          1                  0       64    388
Birth       ki1000108-IRC              INDIA                          1                  1        5    388
Birth       ki1000109-EE               PAKISTAN                       0                  0        1      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1427   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       80   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0       32   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1        2   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                  0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1      8
Birth       ki1114097-CMIN             PERU                           0                  0       10     10
Birth       ki1114097-CMIN             PERU                           0                  1        0     10
Birth       ki1114097-CMIN             PERU                           1                  0        0     10
Birth       ki1114097-CMIN             PERU                           1                  1        0     10
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2
Birth       ki1114097-CONTENT          PERU                           0                  1        0      2
Birth       ki1114097-CONTENT          PERU                           1                  0        0      2
Birth       ki1114097-CONTENT          PERU                           1                  1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      190    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       44    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      202    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      176    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       42    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       14    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      220    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      213    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       60    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       50    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      189    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      219    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       94    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       36    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       17    366
6 months    ki1000108-IRC              INDIA                          0                  0      246    407
6 months    ki1000108-IRC              INDIA                          0                  1       91    407
6 months    ki1000108-IRC              INDIA                          1                  0       61    407
6 months    ki1000108-IRC              INDIA                          1                  1        9    407
6 months    ki1000109-EE               PAKISTAN                       0                  0      169    372
6 months    ki1000109-EE               PAKISTAN                       0                  1      175    372
6 months    ki1000109-EE               PAKISTAN                       1                  0       10    372
6 months    ki1000109-EE               PAKISTAN                       1                  1       18    372
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      128    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       78    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       24    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        5    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      480    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       89    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0        9    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        5    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1785   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      193   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       47   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2029
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1735   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      269   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0       30   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       23   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      391    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1      106    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0       53    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       13    563
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      146    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       86    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0        4    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        7    243
6 months    ki1114097-CMIN             PERU                           0                  0      578    627
6 months    ki1114097-CMIN             PERU                           0                  1       36    627
6 months    ki1114097-CMIN             PERU                           1                  0        8    627
6 months    ki1114097-CMIN             PERU                           1                  1        5    627
6 months    ki1114097-CONTENT          PERU                           0                  0      196    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        0    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      109    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       97    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        5    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      162    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      118    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       91    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       14    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      175    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       49    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      127    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       74    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      152    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       84    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       61    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      153    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       93    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      219    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       44    368
24 months   ki1000108-IRC              INDIA                          0                  0      192    409
24 months   ki1000108-IRC              INDIA                          0                  1      147    409
24 months   ki1000108-IRC              INDIA                          1                  0       47    409
24 months   ki1000108-IRC              INDIA                          1                  1       23    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      377    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      187    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       10    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0     1026   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      496   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0       19   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       23   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      246    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      194    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       30    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       29    499
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       75    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      158    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        7    242
24 months   ki1114097-CMIN             PERU                           0                  0      167    234
24 months   ki1114097-CMIN             PERU                           0                  1       61    234
24 months   ki1114097-CMIN             PERU                           1                  0        3    234
24 months   ki1114097-CMIN             PERU                           1                  1        3    234
24 months   ki1114097-CONTENT          PERU                           0                  0      143    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
24 months   ki1114097-CONTENT          PERU                           1                  0        0    164
24 months   ki1114097-CONTENT          PERU                           1                  1        0    164


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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/365048fb-8c91-4d4e-a108-d98c338a5f49/07054cc6-7ee5-4a66-9a92-5311eabb39e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/365048fb-8c91-4d4e-a108-d98c338a5f49/07054cc6-7ee5-4a66-9a92-5311eabb39e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/365048fb-8c91-4d4e-a108-d98c338a5f49/07054cc6-7ee5-4a66-9a92-5311eabb39e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/365048fb-8c91-4d4e-a108-d98c338a5f49/07054cc6-7ee5-4a66-9a92-5311eabb39e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1410256   0.0633533   0.2186979
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.4166667   0.1361643   0.6971690
Birth       ki1000108-IRC              INDIA        0                    NA                0.1253918   0.0890042   0.1617795
Birth       ki1000108-IRC              INDIA        1                    NA                0.0724638   0.0112132   0.1337143
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3000733   0.2490896   0.3510570
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3088915   0.1809085   0.4368744
6 months    ki1000108-IRC              INDIA        0                    NA                0.2700297   0.2225699   0.3174894
6 months    ki1000108-IRC              INDIA        1                    NA                0.1285714   0.0500621   0.2070808
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.5085239   0.4556142   0.5614335
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.5502910   0.3747240   0.7258579
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.3786408   0.3122626   0.4450190
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1724138   0.0346396   0.3101879
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1564148   0.1265123   0.1863172
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3571429   0.1158444   0.5984413
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.1345516   0.1195920   0.1495111
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.4094844   0.2819922   0.5369766
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2130258   0.1769627   0.2490890
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1830607   0.0852975   0.2808239
6 months    ki1114097-CMIN             PERU         0                    NA                0.0586319   0.0399529   0.0773109
6 months    ki1114097-CMIN             PERU         1                    NA                0.3846154   0.1651099   0.6041209
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7019289   0.6509880   0.7528698
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7837005   0.6722416   0.8951594
24 months   ki1000108-IRC              INDIA        0                    NA                0.4337040   0.3808513   0.4865566
24 months   ki1000108-IRC              INDIA        1                    NA                0.3302397   0.2191838   0.4412956
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.3261505   0.3024656   0.3498355
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.4732101   0.3483019   0.5981183
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.4411407   0.3946951   0.4875862
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4925893   0.3648783   0.6203003


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1159794   0.0840777   0.1478811
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3032787   0.2561210   0.3504363
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN     NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.1419543   0.1268686   0.1570400
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             PERU         NA                   NA                0.0653907   0.0460250   0.0847565
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7146739   0.6684741   0.7608737
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.3318414   0.3084975   0.3551853
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4468938   0.4032281   0.4905594


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 2.9545455   1.2380602    7.050820
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5778986   0.2364447    1.412452
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0293868   0.6573499    1.611983
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4761381   0.2522167    0.898860
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.0821340   0.7729760    1.514942
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.4553492   0.2009329    1.031901
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.2833066   1.1314080    4.607965
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 3.0433267   2.1870922    4.234772
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8593358   0.4905348    1.505414
6 months    ki1114097-CMIN             PERU         0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             PERU         1                    0                 6.5598291   3.4121843   12.611088
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.1164956   0.9515056    1.310095
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7614404   0.5324179    1.088978
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.4508947   1.1034635    1.907716
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1166263   0.8452031    1.475213


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0367521   -0.0066643    0.0801686
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0094125   -0.0222416    0.0034166
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0032054   -0.0165712    0.0229820
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0243294   -0.0409402   -0.0077187
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0102933   -0.0043847    0.0249714
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0254493   -0.0462264   -0.0046721
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0048202   -0.0017511    0.0113916
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0074027    0.0034390    0.0113664
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0016582   -0.0137694    0.0104531
6 months    ki1114097-CMIN             PERU         0                    NA                 0.0067588    0.0001579    0.0133598
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0127450   -0.0058867    0.0313767
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0180560   -0.0393476    0.0032356
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0056909    0.0011976    0.0101842
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0057531   -0.0098953    0.0214015


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.2067308   -0.0633741    0.4082270
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0811564   -0.1958293    0.0225200
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0105692   -0.0568445    0.0736827
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0990208   -0.1681104   -0.0340176
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0198400   -0.0089310    0.0477906
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0720552   -0.1327650   -0.0145991
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0298957   -0.0115080    0.0696046
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0521487    0.0241776    0.0793181
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0078449   -0.0667955    0.0478481
6 months    ki1114097-CMIN             PERU         0                    NA                 0.1033606    0.0007283    0.1954518
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0178333   -0.0086899    0.0436592
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0434407   -0.0960628    0.0066550
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0171495    0.0034849    0.0306267
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0128736   -0.0227996    0.0473025
