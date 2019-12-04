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

agecat      studyid                    country                        anywast06    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      146    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       31    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       41    229
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       11    229
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       53     65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        9     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        3     65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     65
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       25     47
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        8     47
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       12     47
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2     47
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       22     27
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        1     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3     27
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     27
Birth       ki0047075b-MAL-ED          PERU                           0                  0      199    233
Birth       ki0047075b-MAL-ED          PERU                           0                  1       24    233
Birth       ki0047075b-MAL-ED          PERU                           1                  0        8    233
Birth       ki0047075b-MAL-ED          PERU                           1                  1        2    233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       93    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        8    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       20    122
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    122
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       99    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       20    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    124
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        2    124
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       30     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       45     92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       10     92
Birth       ki1000108-IRC              INDIA                          0                  0      137    388
Birth       ki1000108-IRC              INDIA                          0                  1       27    388
Birth       ki1000108-IRC              INDIA                          1                  0      206    388
Birth       ki1000108-IRC              INDIA                          1                  1       18    388
Birth       ki1000109-EE               PAKISTAN                       0                  0       86    240
Birth       ki1000109-EE               PAKISTAN                       0                  1       70    240
Birth       ki1000109-EE               PAKISTAN                       1                  0       54    240
Birth       ki1000109-EE               PAKISTAN                       1                  1       30    240
Birth       ki1000109-ResPak           PAKISTAN                       0                  0       18     42
Birth       ki1000109-ResPak           PAKISTAN                       0                  1       10     42
Birth       ki1000109-ResPak           PAKISTAN                       1                  0       10     42
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        4     42
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      365    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       31    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0      126    539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       17    539
Birth       ki1101329-Keneba           GAMBIA                         0                  0      934   1542
Birth       ki1101329-Keneba           GAMBIA                         0                  1       60   1542
Birth       ki1101329-Keneba           GAMBIA                         1                  0      526   1542
Birth       ki1101329-Keneba           GAMBIA                         1                  1       22   1542
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0      340    684
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       82    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      234    684
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       28    684
Birth       ki1114097-CMIN             BANGLADESH                     0                  0       13     20
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        2     20
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        4     20
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1     20
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2
Birth       ki1114097-CONTENT          PERU                           0                  1        0      2
Birth       ki1114097-CONTENT          PERU                           1                  0        0      2
Birth       ki1114097-CONTENT          PERU                           1                  1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      151    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       32    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       46    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1       12    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      188    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       15    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      128    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       31    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       63    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1       14    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      181    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        7    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       43    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        5    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      204    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       59    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      178    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       45    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       26    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        5    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      179    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       55    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        4    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      120    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       57    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      134    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       54    365
6 months    ki1000108-IRC              INDIA                          0                  0      131    407
6 months    ki1000108-IRC              INDIA                          0                  1       49    407
6 months    ki1000108-IRC              INDIA                          1                  0      176    407
6 months    ki1000108-IRC              INDIA                          1                  1       51    407
6 months    ki1000109-EE               PAKISTAN                       0                  0      131    373
6 months    ki1000109-EE               PAKISTAN                       0                  1      118    373
6 months    ki1000109-EE               PAKISTAN                       1                  0       59    373
6 months    ki1000109-EE               PAKISTAN                       1                  1       65    373
6 months    ki1000109-ResPak           PAKISTAN                       0                  0       80    239
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       63    239
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       73    239
6 months    ki1000109-ResPak           PAKISTAN                       1                  1       23    239
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      381    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       69    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      127    604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       27    604
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1559   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      169   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      273   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       28   2029
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1252   2056
6 months    ki1101329-Keneba           GAMBIA                         0                  1      189   2056
6 months    ki1101329-Keneba           GAMBIA                         1                  0      512   2056
6 months    ki1101329-Keneba           GAMBIA                         1                  1      103   2056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      259    564
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       77    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      183    564
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       45    564
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      125    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       76    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0       25    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1       17    243
6 months    ki1114097-CONTENT          PERU                           0                  0      192    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        4    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       82    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       80    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       21    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      150    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       12    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0       80    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       71    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       50    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1       26    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      143    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       39    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       35    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1       11    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      122    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       71    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        5    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        3    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      135    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       77    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       19    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        7    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       55    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      147    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        8    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       48    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      128    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       56    366
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1      134    366
24 months   ki1000108-IRC              INDIA                          0                  0      104    409
24 months   ki1000108-IRC              INDIA                          0                  1       77    409
24 months   ki1000108-IRC              INDIA                          1                  0      133    409
24 months   ki1000108-IRC              INDIA                          1                  1       95    409
24 months   ki1000109-EE               PAKISTAN                       0                  0       32    167
24 months   ki1000109-EE               PAKISTAN                       0                  1       77    167
24 months   ki1000109-EE               PAKISTAN                       1                  0       17    167
24 months   ki1000109-EE               PAKISTAN                       1                  1       41    167
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      290    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      142    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       98    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       48    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0      739   1563
24 months   ki1101329-Keneba           GAMBIA                         0                  1      352   1563
24 months   ki1101329-Keneba           GAMBIA                         1                  0      301   1563
24 months   ki1101329-Keneba           GAMBIA                         1                  1      171   1563
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      166    488
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      134    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      103    488
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       85    488
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       64    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      136    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       13    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1       29    242
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/c1e7f7d0-afe1-4e79-aa98-3bd6313c916e/48937457-0a58-4649-91d1-7c5068964fd2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1e7f7d0-afe1-4e79-aa98-3bd6313c916e/48937457-0a58-4649-91d1-7c5068964fd2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1e7f7d0-afe1-4e79-aa98-3bd6313c916e/48937457-0a58-4649-91d1-7c5068964fd2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1e7f7d0-afe1-4e79-aa98-3bd6313c916e/48937457-0a58-4649-91d1-7c5068964fd2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1731685   0.1170158   0.2293212
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1905814   0.0799171   0.3012456
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1891892   0.0622989   0.3160795
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1818182   0.0793277   0.2843087
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1625756   0.1058644   0.2192868
Birth       ki1000108-IRC              INDIA                          1                    NA                0.0789773   0.0432095   0.1147451
Birth       ki1000109-EE               PAKISTAN                       0                    NA                0.4510331   0.3717725   0.5302937
Birth       ki1000109-EE               PAKISTAN                       1                    NA                0.3459205   0.2418699   0.4499710
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0781366   0.0518762   0.1043970
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1092439   0.0571651   0.1613227
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0601839   0.0453659   0.0750018
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.0395856   0.0230989   0.0560724
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1932869   0.1554820   0.2310919
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1035345   0.0659231   0.1411459
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1749204   0.1196501   0.2301908
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1949566   0.0899462   0.2999670
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1977438   0.1358193   0.2596683
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1898691   0.1042069   0.2755313
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0372340   0.0101120   0.0643560
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1041667   0.0175647   0.1907686
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2017937   0.1490144   0.2545730
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1612903   0.0315623   0.2910184
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3235250   0.2553631   0.3916869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2924909   0.2273292   0.3576526
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2708558   0.2055932   0.3361184
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2256834   0.1708986   0.2804682
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4728146   0.4102919   0.5353373
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.5254274   0.4364198   0.6144349
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.4502695   0.3683337   0.5322053
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2280155   0.1441271   0.3119038
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1537406   0.1206860   0.1867952
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1710847   0.1110966   0.2310728
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0976375   0.0836439   0.1116312
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0931928   0.0601318   0.1262538
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.1318888   0.1144391   0.1493385
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1648252   0.1354895   0.1941610
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2317681   0.1868131   0.2767232
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1983622   0.1462513   0.2504731
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3783508   0.3110078   0.4456939
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.4039772   0.2531495   0.5548049
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5010354   0.4230918   0.5789791
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3977848   0.2526189   0.5429507
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4705129   0.3907060   0.5503199
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3358689   0.2277586   0.4439793
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2128498   0.1531748   0.2725247
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2387710   0.1062840   0.3712580
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3632075   0.2983335   0.4280816
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2692308   0.0983756   0.4400860
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7323720   0.6664182   0.7983258
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7040498   0.6390148   0.7690848
24 months   ki1000108-IRC              INDIA                          0                    NA                0.4107038   0.3382264   0.4831811
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4116369   0.3474678   0.4758059
24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7150396   0.6292234   0.8008558
24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.6956445   0.5739296   0.8173595
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3278527   0.2834875   0.3722180
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3268902   0.2505829   0.4031975
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3226956   0.2949201   0.3504712
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3602125   0.3171533   0.4032718
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4448183   0.3886231   0.5010134
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4517717   0.3807378   0.5228055
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6799252   0.6148454   0.7450049
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.6947211   0.5511934   0.8382488


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1834061   0.1331729   0.2336393
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1847826   0.1050392   0.2645260
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                0.4166667   0.3541635   0.4791698
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0531777   0.0419744   0.0643810
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1608187   0.1332679   0.1883695
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.0508475   0.0227597   0.0789352
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3041096   0.2568508   0.3513684
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.4906166   0.4398159   0.5414174
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.3598326   0.2988570   0.4208083
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1420233   0.1269309   0.1571158
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7158470   0.6695782   0.7621158
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3346129   0.3112129   0.3580129
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.1005544   0.5650787   2.1434540
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9610390   0.4001688   2.3080159
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.4857880   0.2738019   0.8619004
Birth       ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 0.7669514   0.5411716   1.0869279
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3981133   0.7775305   2.5140116
Birth       ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 0.6577444   0.4053843   1.0672038
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.5356519   0.3544383   0.8095143
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.1145445   0.5969073   2.0810757
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9601775   0.5537052   1.6650394
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 2.7976190   0.9262833   8.4495445
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.7992832   0.3430732   1.8621496
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9040751   0.6656754   1.2278535
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8332233   0.5920379   1.1726633
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.1112758   0.8958573   1.3784938
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.5063978   0.3366452   0.7617477
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1128141   0.7376624   1.6787559
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9544770   0.6510058   1.3994134
6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.2497291   1.0015818   1.5593562
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8558647   0.6170843   1.1870411
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.0677319   0.7068765   1.6128013
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.7939255   0.5338429   1.1807175
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7138358   0.4960963   1.0271424
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1217819   0.6048445   2.0805258
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.7412587   0.3834034   1.4331239
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9613281   0.8449704   1.0937090
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0022719   0.7916318   1.2689600
24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.9728755   0.7870978   1.2025021
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9970642   0.7614594   1.3055679
24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.1162610   0.9638431   1.2927814
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0156321   0.8308551   1.2415023
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0217611   0.8134820   1.2833667


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0102376   -0.0182352    0.0387105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0044066   -0.1019219    0.0931087
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0465962   -0.0861129   -0.0070795
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0343664   -0.0814307    0.0126978
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0109172   -0.0052380    0.0270723
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.0070062   -0.0149053    0.0008930
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0324682   -0.0532284   -0.0117081
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0076522   -0.0208302    0.0361346
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0070658   -0.0421799    0.0280483
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0136134   -0.0051628    0.0323896
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0049433   -0.0221144    0.0122277
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0194154   -0.0680064    0.0291757
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0251556   -0.0727618    0.0224507
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0178020   -0.0185726    0.0541767
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0904369   -0.1396339   -0.0412399
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0051998   -0.0120740    0.0224737
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0005454   -0.0058405    0.0047498
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0101346   -0.0001304    0.0203995
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0154561   -0.0432994    0.0123873
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0043652   -0.0237303    0.0324607
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0246203   -0.0633893    0.0141486
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0432001   -0.0888900    0.0024897
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0064485   -0.0209251    0.0338220
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0102664   -0.0305773    0.0100445
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0165250   -0.0647039    0.0316538
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0098341   -0.0445783    0.0642466
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0084528   -0.0595144    0.0426088
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0008670   -0.0213838    0.0231178
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0119173   -0.0035796    0.0274142
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0039522   -0.0307578    0.0386623
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0018930   -0.0253551    0.0291411


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0558194   -0.1126647    0.1987910
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0238474   -0.7142110    0.3884863
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.4017630   -0.7745743   -0.1072737
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.0824795   -0.2019142    0.0250870
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1225907   -0.0747316    0.2836844
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1317504   -0.2877580    0.0053574
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.2018934   -0.3352517   -0.0818542
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0419131   -0.1272986    0.1857254
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0370562   -0.2386205    0.1317070
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.2677305   -0.1663846    0.5402729
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0251121   -0.1160385    0.0584063
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0638434   -0.2364762    0.0846869
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1023831   -0.3138993    0.0750824
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0362850   -0.0408907    0.1077386
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2513303   -0.3986233   -0.1195492
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0327156   -0.0821094    0.1353562
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0056170   -0.0616560    0.0474640
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0713585   -0.0034762    0.1406124
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0714527   -0.2081793    0.0498009
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0114059   -0.0648212    0.0821762
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0516783   -0.1365936    0.0268929
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1010972   -0.2142337    0.0014977
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0294051   -0.1037994    0.1465347
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0290881   -0.0883034    0.0269054
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0230846   -0.0927087    0.0421033
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0233847   -0.1149955    0.1445907
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0119629   -0.0868883    0.0577976
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0026375   -0.0674032    0.0680823
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0356152   -0.0118395    0.0808442
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0088068   -0.0716415    0.0832159
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0027764   -0.0380025    0.0419532
