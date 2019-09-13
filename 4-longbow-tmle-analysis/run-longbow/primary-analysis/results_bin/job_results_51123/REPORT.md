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

**Intervention Variable:** anywast06

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

agecat      studyid                    country                        anywast06    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      191    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       55    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      170    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        8    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      139    206
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       60    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      137    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       30    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2    173
Birth       ki0047075b-MAL-ED          PERU                           0                   0      268    286
Birth       ki0047075b-MAL-ED          PERU                           0                   1        7    286
Birth       ki0047075b-MAL-ED          PERU                           1                   0       11    286
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      229    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       31    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       36     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       51     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     90
Birth       ki1000108-IRC              INDIA                          0                   0      155    388
Birth       ki1000108-IRC              INDIA                          0                   1        9    388
Birth       ki1000108-IRC              INDIA                          1                   0      217    388
Birth       ki1000108-IRC              INDIA                          1                   1        7    388
Birth       ki1000109-EE               PAKISTAN                       0                   0        0      2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                   0        2      2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                   0        6      7
Birth       ki1000109-ResPak           PAKISTAN                       0                   1        0      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                   0     1263   1541
Birth       ki1101329-Keneba           GAMBIA                         0                   1       24   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   0      249   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   1        5   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                   0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                   1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                   0        3      8
Birth       ki1114097-CMIN             BANGLADESH                     1                   1        0      8
Birth       ki1114097-CMIN             PERU                           0                   0       10     10
Birth       ki1114097-CMIN             PERU                           0                   1        0     10
Birth       ki1114097-CMIN             PERU                           1                   0        0     10
Birth       ki1114097-CMIN             PERU                           1                   1        0     10
Birth       ki1114097-CONTENT          PERU                           0                   0        2      2
Birth       ki1114097-CONTENT          PERU                           0                   1        0      2
Birth       ki1114097-CONTENT          PERU                           1                   0        0      2
Birth       ki1114097-CONTENT          PERU                           1                   1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      180    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       53    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      157    236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       70    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      193    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       42    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1    236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      252    273
6 months    ki0047075b-MAL-ED          PERU                           0                   1       11    273
6 months    ki0047075b-MAL-ED          PERU                           1                   0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      221    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        5    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       27    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      152    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       22    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      172    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       20    366
6 months    ki1000108-IRC              INDIA                          0                   0      148    407
6 months    ki1000108-IRC              INDIA                          0                   1       17    407
6 months    ki1000108-IRC              INDIA                          1                   0      230    407
6 months    ki1000108-IRC              INDIA                          1                   1       12    407
6 months    ki1000109-EE               PAKISTAN                       0                   0      206    372
6 months    ki1000109-EE               PAKISTAN                       0                   1       64    372
6 months    ki1000109-EE               PAKISTAN                       1                   0       72    372
6 months    ki1000109-EE               PAKISTAN                       1                   1       30    372
6 months    ki1000109-ResPak           PAKISTAN                       0                   0      111    235
6 months    ki1000109-ResPak           PAKISTAN                       0                   1       29    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   0       80    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   1       15    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      428    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      141    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        7    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1713   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       15   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      297   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2029
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1659   2057
6 months    ki1101329-Keneba           GAMBIA                         0                   1       36   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   0      331   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   1       31   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      247    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1       23    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      380    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       11    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      163    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        9    563
6 months    ki1114097-CMIN             BANGLADESH                     0                   0      179    243
6 months    ki1114097-CMIN             BANGLADESH                     0                   1       22    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   0       36    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   1        6    243
6 months    ki1114097-CMIN             PERU                           0                   0      577    627
6 months    ki1114097-CMIN             PERU                           0                   1        4    627
6 months    ki1114097-CMIN             PERU                           1                   0       43    627
6 months    ki1114097-CMIN             PERU                           1                   1        3    627
6 months    ki1114097-CONTENT          PERU                           0                   0      207    215
6 months    ki1114097-CONTENT          PERU                           0                   1        4    215
6 months    ki1114097-CONTENT          PERU                           1                   0        4    215
6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      145    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       18    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       41    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        8    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      133    227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       21    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       66    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        7    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      183    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       38    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3    228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      179    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       14    201
24 months   ki0047075b-MAL-ED          PERU                           1                   0        7    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      192    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       20    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      138    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       65    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        7    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      125    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       49    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      123    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       71    368
24 months   ki1000108-IRC              INDIA                          0                   0      150    409
24 months   ki1000108-IRC              INDIA                          0                   1       16    409
24 months   ki1000108-IRC              INDIA                          1                   0      218    409
24 months   ki1000108-IRC              INDIA                          1                   1       25    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      391    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       40    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      137    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                   0     1203   1564
24 months   ki1101329-Keneba           GAMBIA                         0                   1       94   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   0      235   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   1       32   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      316    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       35    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      129    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       19    499
24 months   ki1114097-CMIN             BANGLADESH                     0                   0      147    242
24 months   ki1114097-CMIN             BANGLADESH                     0                   1       53    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   0       27    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   1       15    242
24 months   ki1114097-CMIN             PERU                           0                   0      209    234
24 months   ki1114097-CMIN             PERU                           0                   1       11    234
24 months   ki1114097-CMIN             PERU                           1                   0       12    234
24 months   ki1114097-CMIN             PERU                           1                   1        2    234
24 months   ki1114097-CONTENT          PERU                           0                   0      158    164
24 months   ki1114097-CONTENT          PERU                           0                   1        3    164
24 months   ki1114097-CONTENT          PERU                           1                   0        3    164
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/b3c3a396-5b22-474b-9d2d-a49eacd7a323/fc400d69-4deb-4ab6-a14d-08a0f64e5281/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3c3a396-5b22-474b-9d2d-a49eacd7a323/fc400d69-4deb-4ab6-a14d-08a0f64e5281/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3c3a396-5b22-474b-9d2d-a49eacd7a323/fc400d69-4deb-4ab6-a14d-08a0f64e5281/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3c3a396-5b22-474b-9d2d-a49eacd7a323/fc400d69-4deb-4ab6-a14d-08a0f64e5281/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.0548780   0.0199777   0.0897784
Birth       ki1000108-IRC              INDIA        1                    NA                0.0312500   0.0084353   0.0540647
Birth       ki1101329-Keneba           GAMBIA       0                    NA                0.0186480   0.0112549   0.0260412
Birth       ki1101329-Keneba           GAMBIA       1                    NA                0.0196850   0.0025958   0.0367743
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1280730   0.0789291   0.1772169
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1094612   0.0658666   0.1530559
6 months    ki1000108-IRC              INDIA        0                    NA                0.0990157   0.0518552   0.1461762
6 months    ki1000108-IRC              INDIA        1                    NA                0.0481231   0.0205534   0.0756928
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2376327   0.1867671   0.2884982
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2870488   0.1991005   0.3749972
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.2065858   0.1391447   0.2740269
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1623027   0.0872220   0.2373833
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0160920   0.0042572   0.0279267
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472973   0.0130689   0.0815257
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0215897   0.0147203   0.0284590
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0787806   0.0498948   0.1076664
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0281330   0.0117287   0.0445373
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0523256   0.0190170   0.0856342
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                0.1094527   0.0662026   0.1527029
6 months    ki1114097-CMIN             BANGLADESH   1                    NA                0.1428571   0.0368106   0.2489037
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                0.1104294   0.0621999   0.1586590
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    NA                0.1632653   0.0595321   0.2669985
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                0.1363636   0.0820435   0.1906838
24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.0958904   0.0281975   0.1635834
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2789562   0.2117960   0.3461164
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3701330   0.3025633   0.4377028
24 months   ki1000108-IRC              INDIA        0                    NA                0.0985112   0.0535877   0.1434347
24 months   ki1000108-IRC              INDIA        1                    NA                0.1048137   0.0663574   0.1432699
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0928074   0.0653900   0.1202249
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0616438   0.0225978   0.1006899
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.0729276   0.0588057   0.0870495
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.1163970   0.0777511   0.1550430
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0995248   0.0681169   0.1309328
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1278351   0.0735779   0.1820922
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                0.2649779   0.2036486   0.3263072
24 months   ki1114097-CMIN             BANGLADESH   1                    NA                0.3593934   0.2100176   0.5087692


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1101329-Keneba           GAMBIA       NA                   NA                0.0188189   0.0120322   0.0256057
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1147541   0.0820564   0.1474518
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN     NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.0325717   0.0248987   0.0402447
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1114097-CMIN             BANGLADESH   NA                   NA                0.1152263   0.0749980   0.1554547
24 months   ki0047075b-MAL-ED          BANGLADESH   NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA        NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3260870   0.2781265   0.3740475
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.0805627   0.0670700   0.0940553
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1114097-CMIN             BANGLADESH   NA                   NA                0.2809917   0.2242434   0.3377401


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5694444   0.2162511   1.499493
Birth       ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba           GAMBIA       1                    0                 1.0556102   0.4064649   2.741474
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8546784   0.4914142   1.486476
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4860150   0.2308717   1.023125
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.2079519   0.8308636   1.756182
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.7856427   0.4463959   1.382707
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9391892   1.0474302   8.247646
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 3.6489968   2.2463739   5.927409
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.8599366   0.7844933   4.409680
6 months    ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1114097-CMIN             BANGLADESH   1                    0                 1.3051948   0.5629336   3.026171
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    0                 1.4784580   0.6838633   3.196309
24 months   ki0047075b-MAL-ED          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA        1                    0                 0.7031964   0.3126424   1.581632
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.3268499   0.9813742   1.793944
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA        1                    0                 1.0639772   0.5918028   1.912880
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6642123   0.3301949   1.336114
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.5960638   1.0870776   2.343365
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2844540   0.7566243   2.180504
24 months   ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             BANGLADESH   1                    0                 1.3563146   0.8421717   2.184340


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0136409   -0.0377409   0.0104590
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0001709   -0.0028982   0.0032401
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0133189   -0.0475505   0.0209126
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0277626   -0.0607187   0.0051934
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0150555   -0.0132302   0.0433412
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0193518   -0.0598631   0.0211595
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0079218   -0.0013381   0.0171817
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0109820    0.0056748   0.0162893
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0073910   -0.0039895   0.0187715
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0057736   -0.0140851   0.0256323
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0122121   -0.0143990   0.0388231
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.0130156   -0.0410356   0.0150044
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0471307   -0.0030850   0.0973465
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0017333   -0.0333711   0.0368376
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0078854   -0.0200084   0.0042376
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0076351    0.0005403   0.0147299
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0086916   -0.0098849   0.0272681
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0160139   -0.0118834   0.0439111


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0090829   -0.1681561    0.1594302
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1160648   -0.4570685    0.1451324
6 months    ki1000108-IRC              INDIA        0                    NA                -0.3896344   -0.9069001   -0.0126822
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0595813   -0.0590502    0.1649241
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.1033561   -0.3411437    0.0922712
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3298851   -0.1248313    0.6007810
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.3371653    0.1786837    0.4650662
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2080563   -0.1689041    0.4634505
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0501066   -0.1380606    0.2071622
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0995753   -0.1429394    0.2906320
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.1055195   -0.3551906    0.0981539
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.1445343   -0.0243033    0.2855420
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0172906   -0.4032419    0.3117952
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0928548   -0.2433703    0.0394401
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0947721    0.0037254    0.1774983
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0803167   -0.1073655    0.2361896
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0569905   -0.0474881    0.1510481
