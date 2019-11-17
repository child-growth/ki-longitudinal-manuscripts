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

agecat      studyid                    country                        anywast06    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      170    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       50    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       59     65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        3     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        3     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       32     47
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        1     47
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       13     47
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        1     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       22     27
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        4     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     27
Birth       ki0047075b-MAL-ED          PERU                           0                   0      219    233
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4    233
Birth       ki0047075b-MAL-ED          PERU                           1                   0       10    233
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      100    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       21    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      110    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        5    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       37     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       51     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        4     92
Birth       ki1000108-IRC              INDIA                          0                   0      155    388
Birth       ki1000108-IRC              INDIA                          0                   1        9    388
Birth       ki1000108-IRC              INDIA                          1                   0      217    388
Birth       ki1000108-IRC              INDIA                          1                   1        7    388
Birth       ki1000109-EE               PAKISTAN                       0                   0      119    240
Birth       ki1000109-EE               PAKISTAN                       0                   1       37    240
Birth       ki1000109-EE               PAKISTAN                       1                   0       73    240
Birth       ki1000109-EE               PAKISTAN                       1                   1       11    240
Birth       ki1000109-ResPak           PAKISTAN                       0                   0       27     42
Birth       ki1000109-ResPak           PAKISTAN                       0                   1        1     42
Birth       ki1000109-ResPak           PAKISTAN                       1                   0       13     42
Birth       ki1000109-ResPak           PAKISTAN                       1                   1        1     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      392    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1        4    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      143    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        0    539
Birth       ki1101329-Keneba           GAMBIA                         0                   0      970   1542
Birth       ki1101329-Keneba           GAMBIA                         0                   1       24   1542
Birth       ki1101329-Keneba           GAMBIA                         1                   0      543   1542
Birth       ki1101329-Keneba           GAMBIA                         1                   1        5   1542
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0      406    684
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1       16    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      257    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1        5    684
Birth       ki1114097-CMIN             BANGLADESH                     0                   0       15     20
Birth       ki1114097-CMIN             BANGLADESH                     0                   1        0     20
Birth       ki1114097-CMIN             BANGLADESH                     1                   0        5     20
Birth       ki1114097-CMIN             BANGLADESH                     1                   1        0     20
Birth       ki1114097-CONTENT          PERU                           0                   0        2      2
Birth       ki1114097-CONTENT          PERU                           0                   1        0      2
Birth       ki1114097-CONTENT          PERU                           1                   0        0      2
Birth       ki1114097-CONTENT          PERU                           1                   1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      179    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       54    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      194    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       15    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      154    236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       73    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      188    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       47    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1    236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      254    273
6 months    ki0047075b-MAL-ED          PERU                           0                   1        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                   0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      218    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        5    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       30    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      220    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       13    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      155    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       22    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      168    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       20    365
6 months    ki1000108-IRC              INDIA                          0                   0      162    407
6 months    ki1000108-IRC              INDIA                          0                   1       18    407
6 months    ki1000108-IRC              INDIA                          1                   0      216    407
6 months    ki1000108-IRC              INDIA                          1                   1       11    407
6 months    ki1000109-EE               PAKISTAN                       0                   0      196    373
6 months    ki1000109-EE               PAKISTAN                       0                   1       53    373
6 months    ki1000109-EE               PAKISTAN                       1                   0       96    373
6 months    ki1000109-EE               PAKISTAN                       1                   1       28    373
6 months    ki1000109-ResPak           PAKISTAN                       0                   0      111    239
6 months    ki1000109-ResPak           PAKISTAN                       0                   1       32    239
6 months    ki1000109-ResPak           PAKISTAN                       1                   0       81    239
6 months    ki1000109-ResPak           PAKISTAN                       1                   1       15    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      443    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        7    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      147    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        7    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1713   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       15   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      297   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2029
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1411   2056
6 months    ki1101329-Keneba           GAMBIA                         0                   1       30   2056
6 months    ki1101329-Keneba           GAMBIA                         1                   0      578   2056
6 months    ki1101329-Keneba           GAMBIA                         1                   1       37   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      247    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1       23    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      324    564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       12    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      219    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        9    564
6 months    ki1114097-CMIN             BANGLADESH                     0                   0      179    243
6 months    ki1114097-CMIN             BANGLADESH                     0                   1       22    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   0       36    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   1        6    243
6 months    ki1114097-CONTENT          PERU                           0                   0      207    215
6 months    ki1114097-CONTENT          PERU                           0                   1        4    215
6 months    ki1114097-CONTENT          PERU                           1                   0        4    215
6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      142    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       20    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       42    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        8    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      156    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       12    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      129    227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       22    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       68    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        8    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      178    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       43    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3    228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      179    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       14    201
24 months   ki0047075b-MAL-ED          PERU                           1                   0        7    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      190    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       21    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        5    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      136    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       66    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        8    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      125    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       51    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      120    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       70    366
24 months   ki1000108-IRC              INDIA                          0                   0      163    409
24 months   ki1000108-IRC              INDIA                          0                   1       18    409
24 months   ki1000108-IRC              INDIA                          1                   0      205    409
24 months   ki1000108-IRC              INDIA                          1                   1       23    409
24 months   ki1000109-EE               PAKISTAN                       0                   0       73    167
24 months   ki1000109-EE               PAKISTAN                       0                   1       36    167
24 months   ki1000109-EE               PAKISTAN                       1                   0       35    167
24 months   ki1000109-EE               PAKISTAN                       1                   1       23    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      390    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       42    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      136    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       10    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                   0     1009   1563
24 months   ki1101329-Keneba           GAMBIA                         0                   1       82   1563
24 months   ki1101329-Keneba           GAMBIA                         1                   0      425   1563
24 months   ki1101329-Keneba           GAMBIA                         1                   1       47   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      267    488
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       33    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      168    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       20    488
24 months   ki1114097-CMIN             BANGLADESH                     0                   0      147    242
24 months   ki1114097-CMIN             BANGLADESH                     0                   1       53    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   0       27    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   1       15    242
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/5c6ad580-fe3f-43a6-992a-6d5cd6b20870/ce44fb7c-455d-4974-a189-7a1d59b8334d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c6ad580-fe3f-43a6-992a-6d5cd6b20870/ce44fb7c-455d-4974-a189-7a1d59b8334d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c6ad580-fe3f-43a6-992a-6d5cd6b20870/ce44fb7c-455d-4974-a189-7a1d59b8334d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c6ad580-fe3f-43a6-992a-6d5cd6b20870/ce44fb7c-455d-4974-a189-7a1d59b8334d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA          0                    NA                0.0548780   0.0199777   0.0897784
Birth       ki1000108-IRC              INDIA          1                    NA                0.0312500   0.0084353   0.0540647
Birth       ki1000109-EE               PAKISTAN       0                    NA                0.2416208   0.1737791   0.3094625
Birth       ki1000109-EE               PAKISTAN       1                    NA                0.1261039   0.0534596   0.1987481
Birth       ki1101329-Keneba           GAMBIA         0                    NA                0.0241449   0.0145993   0.0336904
Birth       ki1101329-Keneba           GAMBIA         1                    NA                0.0091241   0.0011606   0.0170876
Birth       ki1113344-GMS-Nepal        NEPAL          0                    NA                0.0379147   0.0196791   0.0561503
Birth       ki1113344-GMS-Nepal        NEPAL          1                    NA                0.0190840   0.0025047   0.0356632
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.1221359   0.0732715   0.1710004
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.1060050   0.0618241   0.1501859
6 months    ki1000108-IRC              INDIA          0                    NA                0.1057688   0.0622042   0.1493333
6 months    ki1000108-IRC              INDIA          1                    NA                0.0507260   0.0226602   0.0787918
6 months    ki1000109-EE               PAKISTAN       0                    NA                0.2147938   0.1639240   0.2656636
6 months    ki1000109-EE               PAKISTAN       1                    NA                0.2268084   0.1526421   0.3009747
6 months    ki1000109-ResPak           PAKISTAN       0                    NA                0.2360807   0.1677810   0.3043804
6 months    ki1000109-ResPak           PAKISTAN       1                    NA                0.1483758   0.0766771   0.2200744
6 months    ki1017093b-PROVIDE         BANGLADESH     0                    NA                0.0155556   0.0041126   0.0269986
6 months    ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.0454545   0.0125289   0.0783802
6 months    ki1101329-Keneba           GAMBIA         0                    NA                0.0210578   0.0136136   0.0285019
6 months    ki1101329-Keneba           GAMBIA         1                    NA                0.0588301   0.0402767   0.0773834
6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                0.0357143   0.0158539   0.0555747
6 months    ki1113344-GMS-Nepal        NEPAL          1                    NA                0.0394737   0.0141764   0.0647710
6 months    ki1114097-CMIN             BANGLADESH     0                    NA                0.1094527   0.0662026   0.1527029
6 months    ki1114097-CMIN             BANGLADESH     1                    NA                0.1428571   0.0368106   0.2489037
24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                0.1234568   0.0726804   0.1742331
24 months   ki0047075b-MAL-ED          BANGLADESH     1                    NA                0.1600000   0.0581433   0.2618567
24 months   ki0047075b-MAL-ED          INDIA          0                    NA                0.1456954   0.0892995   0.2020913
24 months   ki0047075b-MAL-ED          INDIA          1                    NA                0.1052632   0.0361142   0.1744122
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                0.1037736   0.0626352   0.1449119
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    NA                0.1923077   0.0404989   0.3441165
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                0.2874131   0.2199931   0.3548331
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    NA                0.3678700   0.2993376   0.4364024
24 months   ki1000108-IRC              INDIA          0                    NA                0.0988142   0.0549153   0.1427132
24 months   ki1000108-IRC              INDIA          1                    NA                0.1017153   0.0625391   0.1408915
24 months   ki1000109-EE               PAKISTAN       0                    NA                0.3292550   0.2388673   0.4196426
24 months   ki1000109-EE               PAKISTAN       1                    NA                0.4175550   0.2854798   0.5496302
24 months   ki1017093b-PROVIDE         BANGLADESH     0                    NA                0.0971978   0.0693596   0.1250360
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    NA                0.0674739   0.0281042   0.1068435
24 months   ki1101329-Keneba           GAMBIA         0                    NA                0.0755308   0.0598550   0.0912065
24 months   ki1101329-Keneba           GAMBIA         1                    NA                0.0986247   0.0718472   0.1254022
24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                0.1098487   0.0744061   0.1452913
24 months   ki1113344-GMS-Nepal        NEPAL          1                    NA                0.1081961   0.0640881   0.1523041
24 months   ki1114097-CMIN             BANGLADESH     0                    NA                0.2657146   0.2042187   0.3272106
24 months   ki1114097-CMIN             BANGLADESH     1                    NA                0.3494492   0.1962975   0.5026009


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA          NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1000109-EE               PAKISTAN       NA                   NA                0.2000000   0.1492882   0.2507118
Birth       ki1101329-Keneba           GAMBIA         NA                   NA                0.0188067   0.0120244   0.0255891
Birth       ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.0307018   0.0177643   0.0436392
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.1150685   0.0822869   0.1478501
6 months    ki1000108-IRC              INDIA          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    ki1000109-ResPak           PAKISTAN       NA                   NA                0.1966527   0.1461562   0.2471492
6 months    ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ki1101329-Keneba           GAMBIA         NA                   NA                0.0325875   0.0249109   0.0402642
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.0372340   0.0215945   0.0528736
6 months    ki1114097-CMIN             BANGLADESH     NA                   NA                0.1152263   0.0749980   0.1554547
24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1134454   0.0730697   0.1538211
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.3306011   0.2823401   0.3788621
24 months   ki1000108-IRC              INDIA          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1000109-EE               PAKISTAN       NA                   NA                0.3532934   0.2805798   0.4260070
24 months   ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1101329-Keneba           GAMBIA         NA                   NA                0.0825336   0.0688872   0.0961800
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   ki1114097-CMIN             BANGLADESH     NA                   NA                0.2809917   0.2242434   0.3377401


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA          1                    0                 0.5694444   0.2162511   1.4994928
Birth       ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE               PAKISTAN       1                    0                 0.5219082   0.2749825   0.9905655
Birth       ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA         1                    0                 0.3778893   0.1449574   0.9851193
Birth       ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL          1                    0                 0.5033397   0.1864681   1.3586822
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 0.8679264   0.4869672   1.5469138
6 months    ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA          1                    0                 0.4795935   0.2403376   0.9570286
6 months    ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN       1                    0                 1.0559354   0.7056971   1.5799974
6 months    ki1000109-ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN       1                    0                 0.6284958   0.3587204   1.1011558
6 months    ki1017093b-PROVIDE         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH     1                    0                 2.9220779   1.0407048   8.2045740
6 months    ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA         1                    0                 2.7937450   1.7405042   4.4843390
6 months    ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL          1                    0                 1.1052632   0.4731170   2.5820391
6 months    ki1114097-CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH     1                    0                 1.3051948   0.5629336   3.0261714
24 months   ki0047075b-MAL-ED          BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH     1                    0                 1.2960000   0.6073656   2.7654118
24 months   ki0047075b-MAL-ED          INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA          1                    0                 0.7224880   0.3370479   1.5487088
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0                 1.8531468   0.7660802   4.4827595
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                    0                 1.2799346   0.9492353   1.7258445
24 months   ki1000108-IRC              INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA          1                    0                 1.0293591   0.5722644   1.8515570
24 months   ki1000109-EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE               PAKISTAN       1                    0                 1.2681813   0.8329129   1.9309148
24 months   ki1017093b-PROVIDE         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH     1                    0                 0.6941913   0.3617278   1.3322218
24 months   ki1101329-Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA         1                    0                 1.3057556   0.9278574   1.8375643
24 months   ki1113344-GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL          1                    0                 0.9849560   0.5858030   1.6560831
24 months   ki1114097-CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH     1                    0                 1.3151298   0.8022700   2.1558408


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA          0                    NA                -0.0136409   -0.0377409    0.0104590
Birth       ki1000109-EE               PAKISTAN       0                    NA                -0.0416208   -0.0774833   -0.0057583
Birth       ki1101329-Keneba           GAMBIA         0                    NA                -0.0053381   -0.0097705   -0.0009057
Birth       ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0072129   -0.0166782    0.0022523
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0070674   -0.0410788    0.0269439
6 months    ki1000108-IRC              INDIA          0                    NA                -0.0345157   -0.0636218   -0.0054096
6 months    ki1000109-EE               PAKISTAN       0                    NA                 0.0023644   -0.0274009    0.0321297
6 months    ki1000109-ResPak           PAKISTAN       0                    NA                -0.0394280   -0.0798782    0.0010222
6 months    ki1017093b-PROVIDE         BANGLADESH     0                    NA                 0.0076233   -0.0013249    0.0165714
6 months    ki1101329-Keneba           GAMBIA         0                    NA                 0.0115298    0.0054109    0.0176486
6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0015198   -0.0114828    0.0145223
6 months    ki1114097-CMIN             BANGLADESH     0                    NA                 0.0057736   -0.0140851    0.0256323
24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                 0.0086187   -0.0183051    0.0355425
24 months   ki0047075b-MAL-ED          INDIA          0                    NA                -0.0135368   -0.0435147    0.0164411
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                 0.0096718   -0.0078666    0.0272102
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.0431880   -0.0068807    0.0932566
24 months   ki1000108-IRC              INDIA          0                    NA                 0.0014303   -0.0314459    0.0343065
24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.0240384   -0.0326037    0.0806805
24 months   ki1017093b-PROVIDE         BANGLADESH     0                    NA                -0.0072324   -0.0199157    0.0054509
24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0070028   -0.0024526    0.0164583
24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0012421   -0.0230147    0.0205305
24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.0152771   -0.0124295    0.0429838


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA          0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       ki1000109-EE               PAKISTAN       0                    NA                -0.2081040   -0.3978558   -0.0441100
Birth       ki1101329-Keneba           GAMBIA         0                    NA                -0.2838410   -0.5161216   -0.0871474
Birth       ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.2349357   -0.5659674    0.0261189
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                -0.0614194   -0.4013134    0.1960321
6 months    ki1000108-IRC              INDIA          0                    NA                -0.4844100   -0.9357459   -0.1383069
6 months    ki1000109-EE               PAKISTAN       0                    NA                 0.0108878   -0.1360973    0.1388565
6 months    ki1000109-ResPak           PAKISTAN       0                    NA                -0.2004956   -0.4253481   -0.0111143
6 months    ki1017093b-PROVIDE         BANGLADESH     0                    NA                 0.3288889   -0.1267356    0.6002699
6 months    ki1101329-Keneba           GAMBIA         0                    NA                 0.3538091    0.1606633    0.5025087
6 months    ki1113344-GMS-Nepal        NEPAL          0                    NA                 0.0408163   -0.3798730    0.3332478
6 months    ki1114097-CMIN             BANGLADESH     0                    NA                 0.0501066   -0.1380606    0.2071622
24 months   ki0047075b-MAL-ED          BANGLADESH     0                    NA                 0.0652557   -0.1614181    0.2476897
24 months   ki0047075b-MAL-ED          INDIA          0                    NA                -0.1024283   -0.3521712    0.1011877
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                    NA                 0.0852551   -0.0804572    0.2255516
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                    NA                 0.1306346   -0.0348691    0.2696699
24 months   ki1000108-IRC              INDIA          0                    NA                 0.0142680   -0.3748669    0.2932643
24 months   ki1000109-EE               PAKISTAN       0                    NA                 0.0680410   -0.1069703    0.2153831
24 months   ki1017093b-PROVIDE         BANGLADESH     0                    NA                -0.0803909   -0.2299673    0.0509955
24 months   ki1101329-Keneba           GAMBIA         0                    NA                 0.0848480   -0.0363254    0.1918530
24 months   ki1113344-GMS-Nepal        NEPAL          0                    NA                -0.0114368   -0.2331282    0.1703990
24 months   ki1114097-CMIN             BANGLADESH     0                    NA                 0.0543686   -0.0494378    0.1479068
