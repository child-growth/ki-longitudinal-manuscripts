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

agecat      studyid                    country                        anywast06    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      163    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       35    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       47    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       10    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      157    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      120    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       24    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       53    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        9    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      128    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       13    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       27    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        5    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      245    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       30    286
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8    286
Birth       ki0047075b-MAL-ED          PERU                           1                  1        3    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      209    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       21    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      100    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       17    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       29     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       45     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        9     90
Birth       ki1000108-IRC              INDIA                          0                  0      137    388
Birth       ki1000108-IRC              INDIA                          0                  1       27    388
Birth       ki1000108-IRC              INDIA                          1                  0      206    388
Birth       ki1000108-IRC              INDIA                          1                  1       18    388
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  0        1      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        1      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1222   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       65   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0      237   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1       17   1541
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      151    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       33    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       45    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       12    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      189    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      131    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       31    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       59    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       15    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      186    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       38    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       59    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      180    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       46    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        4    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      181    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       55    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        3    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      119    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       55    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      136    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       56    366
6 months    ki1000108-IRC              INDIA                          0                  0      120    407
6 months    ki1000108-IRC              INDIA                          0                  1       45    407
6 months    ki1000108-IRC              INDIA                          1                  0      187    407
6 months    ki1000108-IRC              INDIA                          1                  1       55    407
6 months    ki1000109-EE               PAKISTAN                       0                  0      132    372
6 months    ki1000109-EE               PAKISTAN                       0                  1      138    372
6 months    ki1000109-EE               PAKISTAN                       1                  0       47    372
6 months    ki1000109-EE               PAKISTAN                       1                  1       55    372
6 months    ki1000109-ResPak           PAKISTAN                       0                  0       80    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       60    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       72    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1       23    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      368    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       67    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      121    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       27    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1481   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      214   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0      284   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       78   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      303    563
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       88    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      141    563
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       31    563
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      125    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       76    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0       25    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1       17    243
6 months    ki1114097-CMIN             PERU                           0                  0      552    627
6 months    ki1114097-CMIN             PERU                           0                  1       29    627
6 months    ki1114097-CMIN             PERU                           1                  0       34    627
6 months    ki1114097-CMIN             PERU                           1                  1       12    627
6 months    ki1114097-CONTENT          PERU                           0                  0      192    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        4    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       85    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       78    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       20    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      152    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        5    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       85    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       69    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       47    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      148    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       39    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       31    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       10    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      122    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       71    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        5    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      136    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       78    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       18    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        6    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       58    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      145    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        8    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       48    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      126    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       57    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1      137    368
24 months   ki1000108-IRC              INDIA                          0                  0      100    409
24 months   ki1000108-IRC              INDIA                          0                  1       66    409
24 months   ki1000108-IRC              INDIA                          1                  0      139    409
24 months   ki1000108-IRC              INDIA                          1                  1      104    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      289    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      142    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       98    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       48    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0      871   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      426   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0      174   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       93   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      197    499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      154    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       79    499
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       69    499
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       64    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      136    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       13    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1       29    242
24 months   ki1114097-CMIN             PERU                           0                  0      162    234
24 months   ki1114097-CMIN             PERU                           0                  1       58    234
24 months   ki1114097-CMIN             PERU                           1                  0        8    234
24 months   ki1114097-CMIN             PERU                           1                  1        6    234
24 months   ki1114097-CONTENT          PERU                           0                  0      140    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
24 months   ki1114097-CONTENT          PERU                           1                  0        3    164
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/15760701-dd14-4a8b-8d05-94c3e2008519/be6c59d0-da68-40df-859c-4428b66f7b83/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15760701-dd14-4a8b-8d05-94c3e2008519/be6c59d0-da68-40df-859c-4428b66f7b83/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15760701-dd14-4a8b-8d05-94c3e2008519/be6c59d0-da68-40df-859c-4428b66f7b83/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15760701-dd14-4a8b-8d05-94c3e2008519/be6c59d0-da68-40df-859c-4428b66f7b83/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1813498   0.1261032   0.2365963
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1755876   0.0718558   0.2793193
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1666667   0.1056488   0.2276846
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.1451613   0.0572638   0.2330588
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0921986   0.0443075   0.1400897
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1562500   0.0300821   0.2824179
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0913043   0.0540075   0.1286012
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1935484   0.0542055   0.3328913
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1944444   0.0644369   0.3244520
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1666667   0.0667101   0.2666232
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1588591   0.1022348   0.2154833
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0776105   0.0418898   0.1133311
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0502697   0.0383028   0.0622365
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0668550   0.0355800   0.0981300
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1775404   0.1212640   0.2338167
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2462685   0.1274288   0.3651082
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1885013   0.1274153   0.2495874
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1870204   0.0933229   0.2807180
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0362694   0.0098368   0.0627020
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1162791   0.0202629   0.2122952
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3204888   0.2509086   0.3900691
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2949211   0.2305105   0.3593318
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2724241   0.2042162   0.3406320
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2278504   0.1748694   0.2808314
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.5108316   0.4509606   0.5707026
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5397534   0.4419049   0.6376019
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4287922   0.3463900   0.5111944
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2455308   0.1583552   0.3327064
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1539972   0.1200219   0.1879725
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1854757   0.1225576   0.2483937
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0982259   0.0842090   0.1122428
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0937898   0.0594601   0.1281195
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1274221   0.1116033   0.1432408
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2075658   0.1651265   0.2500050
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2276112   0.1861407   0.2690818
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1868162   0.1293010   0.2443314
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3746201   0.3076550   0.4415852
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4121994   0.2611912   0.5632077
6 months    ki1114097-CMIN             PERU                           0                    NA                0.0500424   0.0322970   0.0677878
6 months    ki1114097-CMIN             PERU                           1                    NA                0.2768007   0.1459550   0.4076465
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.4804356   0.4031937   0.5576774
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4043604   0.2642353   0.5444854
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4471006   0.3681641   0.5260371
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3520900   0.2404655   0.4637146
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2079136   0.1494853   0.2663419
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2324769   0.0978465   0.3671073
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3644860   0.2998672   0.4291047
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2500000   0.0763969   0.4236031
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7160852   0.6489677   0.7832028
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7027301   0.6386205   0.7668397
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3957667   0.3207152   0.4708182
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4289381   0.3665416   0.4913346
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3302710   0.2858366   0.3747054
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3363367   0.2601666   0.4125068
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3286057   0.3030298   0.3541816
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3477155   0.2903552   0.4050758
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4389900   0.3870187   0.4909612
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4579113   0.3768784   0.5389442
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6818580   0.6169951   0.7467210
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6857261   0.5377942   0.8336580
24 months   ki1114097-CMIN             PERU                           0                    NA                0.2636364   0.2052898   0.3219830
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4285714   0.1687909   0.6883520


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1764706   0.1295885   0.2233527
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1601942   0.1099849   0.2104035
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1040462   0.0584174   0.1496751
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1034483   0.0664305   0.1404661
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0420018   0.0644226
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0508475   0.0227597   0.0789352
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3032787   0.2561210   0.3504363
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1419543   0.1268686   0.1570400
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0653907   0.0460250   0.0847565
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7146739   0.6684741   0.7608737
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3318414   0.3084975   0.3551853
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.2735043   0.2162683   0.3307402


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9682262   0.4965047   1.8881228
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 0.8709677   0.4292393   1.7672773
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 1.6947115   0.6488162   4.4265957
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.1198157   0.9264235   4.8505013
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8571429   0.3491232   2.1043973
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.4885491   0.2722970   0.8765438
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 1.3299274   0.7866981   2.2482664
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.3871128   0.7785570   2.4713436
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9921439   0.5455679   1.8042657
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 3.2059801   1.0657387   9.6443043
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9202229   0.6762181   1.2522737
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8363813   0.5942287   1.1772130
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0566171   0.8512195   1.3115767
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.5726103   0.3822484   0.8577734
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2044090   0.8029909   1.8064973
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9548375   0.6446417   1.4142965
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.6289628   1.2826604   2.0687627
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8207687   0.5736218   1.1743995
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.1003132   0.7327451   1.6522651
6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 5.5313272   3.0635677   9.9869116
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8416537   0.5738913   1.2343469
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7874962   0.5483722   1.1308930
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1181418   0.5870863   2.1295696
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.6858974   0.3349703   1.4044687
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9813498   0.8607687   1.1188226
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0838154   0.8531420   1.3768586
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0183656   0.7822484   1.3257534
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.0581542   0.8817058   1.2699136
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0431021   0.8433670   1.2901405
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0056728   0.7945809   1.2728443
24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 1.6256158   0.8526495   3.0993118


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0048792   -0.0314181    0.0216597
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0064725   -0.0387049    0.0257599
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0118477   -0.0133896    0.0370850
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0121439   -0.0054544    0.0297423
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0166667   -0.1151023    0.0817690
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0428797   -0.0823964   -0.0033630
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0029425   -0.0025159    0.0084010
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0091816   -0.0204969    0.0388601
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0064139   -0.0284768    0.0413047
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0145780   -0.0039919    0.0331480
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0172101   -0.0672359    0.0328157
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0267238   -0.0782190    0.0247714
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0079856   -0.0234356    0.0394069
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0756007   -0.1255868   -0.0256146
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0072378   -0.0108540    0.0253295
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011337   -0.0064626    0.0041951
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0145322    0.0064653    0.0225992
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0162436   -0.0381842    0.0056970
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0080960   -0.0199511    0.0361430
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0153484    0.0049943    0.0257024
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0181714   -0.0552833    0.0189405
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0285984   -0.0722229    0.0150260
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0069986   -0.0191338    0.0331311
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0115448   -0.0307331    0.0076435
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0014113   -0.0509581    0.0481354
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0198812   -0.0383881    0.0781505
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0009816   -0.0233943    0.0214311
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0032357   -0.0074714    0.0139428
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0079038   -0.0204464    0.0362540
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000399   -0.0268445    0.0267647
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0098679   -0.0068348    0.0265706


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0276486   -0.1892916    0.1120246
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0404040   -0.2620941    0.1423456
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1138692   -0.1597337    0.3229240
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1173913   -0.0651687    0.2686622
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0937500   -0.8131914    0.3402301
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3697183   -0.7434419   -0.0761059
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0552983   -0.0524913    0.1520487
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0491728   -0.1236988    0.1954495
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0329062   -0.1638334    0.1963880
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.2867012   -0.1360592    0.5521403
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0567469   -0.2352918    0.0959917
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1087659   -0.3391767    0.0820018
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0153920   -0.0470988    0.0741533
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2140501   -0.3659291   -0.0790587
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0448895   -0.0739533    0.1505812
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0116770   -0.0680764    0.0417442
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.1023727    0.0446249    0.1566300
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0768498   -0.1857160    0.0220208
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0211540   -0.0549720    0.0917867
6 months    ki1114097-CMIN             PERU                           0                    NA                 0.2347178    0.0763528    0.3659302
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0393096   -0.1229163    0.0380722
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0683351   -0.1780178    0.0311352
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0325651   -0.0968996    0.1467495
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0327103   -0.0885726    0.0202854
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0019748   -0.0737599    0.0650112
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0478318   -0.1032716    0.1782402
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029810   -0.0734084    0.0628256
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0097508   -0.0230461    0.0414963
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0176862   -0.0478636    0.0791354
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000585   -0.0401548    0.0384922
24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0360795   -0.0268293    0.0951343
