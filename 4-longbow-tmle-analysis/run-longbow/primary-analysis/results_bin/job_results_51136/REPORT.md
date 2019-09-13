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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        exclfeed6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       56     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      169     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       11     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      157     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        5     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      178     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       11     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      153     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        6     170
Birth       ki0047075b-MAL-ED          PERU                           1                   0        9     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        1     256
Birth       ki0047075b-MAL-ED          PERU                           0                   0      241     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        5     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      210     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1     211
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      113     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        5     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0       7
Birth       ki1000108-IRC              INDIA                          1                   0        0      14
Birth       ki1000108-IRC              INDIA                          1                   1        0      14
Birth       ki1000108-IRC              INDIA                          0                   0       14      14
Birth       ki1000108-IRC              INDIA                          0                   1        0      14
Birth       ki1000109-EE               PAKISTAN                       1                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       1                   1        0       2
Birth       ki1000109-EE               PAKISTAN                       0                   0        1       2
Birth       ki1000109-EE               PAKISTAN                       0                   1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   0       47      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                   1        1      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   0        2      50
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                   1        0      50
Birth       ki1101329-Keneba           GAMBIA                         1                   0      474    1401
Birth       ki1101329-Keneba           GAMBIA                         1                   1       10    1401
Birth       ki1101329-Keneba           GAMBIA                         0                   0      898    1401
Birth       ki1101329-Keneba           GAMBIA                         0                   1       19    1401
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13765   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1303   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3465   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      549   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      572     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       45     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      134     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       16     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       55     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      172     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        6     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      193     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      219     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1     235
6 months    ki0047075b-MAL-ED          PERU                           1                   0       10     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1     269
6 months    ki0047075b-MAL-ED          PERU                           0                   0      249     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        9     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      229     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
6 months    ki1000108-IRC              INDIA                          1                   0        0      14
6 months    ki1000108-IRC              INDIA                          1                   1        0      14
6 months    ki1000108-IRC              INDIA                          0                   0       13      14
6 months    ki1000108-IRC              INDIA                          0                   1        1      14
6 months    ki1000109-EE               PAKISTAN                       1                   0      153     372
6 months    ki1000109-EE               PAKISTAN                       1                   1       65     372
6 months    ki1000109-EE               PAKISTAN                       0                   0      125     372
6 months    ki1000109-EE               PAKISTAN                       0                   1       29     372
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      342     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1       37     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       16     398
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1        3     398
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       28     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      134     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        2     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      435     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       12     583
6 months    ki1101329-Keneba           GAMBIA                         1                   0      564    1908
6 months    ki1101329-Keneba           GAMBIA                         1                   1       22    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1280    1908
6 months    ki1101329-Keneba           GAMBIA                         0                   1       42    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      393     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       11     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      133     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        9     546
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    12572   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      627   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3106   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      377   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3174    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      145    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      849    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       91    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        9     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      140     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       16     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      153     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        3     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        2     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      193     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       26     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      205     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        7     227
24 months   ki0047075b-MAL-ED          PERU                           1                   0        8     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0     198
24 months   ki0047075b-MAL-ED          PERU                           0                   0      177     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1       13     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      202     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      143     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       68     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       14      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      19
24 months   ki1000108-IRC              INDIA                          1                   0        0      14
24 months   ki1000108-IRC              INDIA                          1                   1        0      14
24 months   ki1000108-IRC              INDIA                          0                   0       13      14
24 months   ki1000108-IRC              INDIA                          0                   1        1      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      133     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       11     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      395     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       38     577
24 months   ki1101329-Keneba           GAMBIA                         1                   0      480    1513
24 months   ki1101329-Keneba           GAMBIA                         1                   1       35    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   0      908    1513
24 months   ki1101329-Keneba           GAMBIA                         0                   1       90    1513
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      324     480
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       36     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      103     480
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       17     480
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                   1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5679    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      986    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1538    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      339    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3000    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      276    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      782    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      116    4174


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/82c629a6-0ea4-4e30-8cfb-69691c9d1861/d2f80578-ddc3-4912-b07f-165476aad170/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82c629a6-0ea4-4e30-8cfb-69691c9d1861/d2f80578-ddc3-4912-b07f-165476aad170/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82c629a6-0ea4-4e30-8cfb-69691c9d1861/d2f80578-ddc3-4912-b07f-165476aad170/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82c629a6-0ea4-4e30-8cfb-69691c9d1861/d2f80578-ddc3-4912-b07f-165476aad170/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0199042   0.0076741   0.0321342
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0205775   0.0113997   0.0297554
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0967243   0.0921766   0.1012719
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0977822   0.0931433   0.1024211
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0811909   0.0581636   0.1042182
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0782379   0.0530252   0.1034505
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3048330   0.2438953   0.3657706
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1804853   0.1182997   0.2426708
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0385550   0.0229423   0.0541677
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0314621   0.0220140   0.0409102
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0272277   0.0113435   0.0431120
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0633803   0.0232695   0.1034910
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0522445   0.0483986   0.0560904
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0846525   0.0750927   0.0942124
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0464901   0.0382696   0.0547105
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0808015   0.0630705   0.0985324
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1698113   0.0684847   0.2711379
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1025641   0.0548412   0.1502870
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0725427   0.0287290   0.1163564
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0875664   0.0608463   0.1142864
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0697809   0.0480688   0.0914931
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0893953   0.0716310   0.1071595
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1000599   0.0690031   0.1311166
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1405201   0.0787550   0.2022851
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1525832   0.1433895   0.1617769
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1585428   0.1410414   0.1760442
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0856447   0.0741615   0.0971280
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1210110   0.0985254   0.1434965


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0206995   0.0132415   0.0281575
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0970548   0.0924831   0.1016266
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0795306   0.0569401   0.1021211
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0335430   0.0254620   0.0416240
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0366300   0.0208588   0.0524012
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0601846   0.0563303   0.0640390
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0554121   0.0477101   0.0631140
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1196172   0.0755162   0.1637183
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0826173   0.0687407   0.0964939
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1104167   0.0823500   0.1384833
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1551159   0.1463315   0.1639003
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0939147   0.0835386   0.1042909


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0338309   0.4837229   2.2095426
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0109376   1.0053958   1.0165099
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9636291   0.8080606   1.1491479
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.5920793   0.3975797   0.8817297
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8160311   0.4930017   1.3507189
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3277849   0.9843161   5.5049211
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6203143   1.4265489   1.8403986
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7380376   1.3282656   2.2742248
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.6039886   0.2834065   1.2872051
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.2071002   0.6132632   2.3759634
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.2810840   0.8859742   1.8523974
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4043596   0.8195449   2.4064890
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0390581   0.9255946   1.1664304
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.4129415   1.1311253   1.7649713


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0007953   -0.0091281    0.0107188
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003305    0.0001723    0.0004888
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0016602   -0.0040273    0.0007069
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0521448   -0.0888359   -0.0154537
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0050120   -0.0177179    0.0076938
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0094023   -0.0018963    0.0207010
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0079401    0.0057035    0.0101768
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0089220    0.0045803    0.0132637
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0501941   -0.1338885    0.0335003
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0123793   -0.0262675    0.0510261
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0128364   -0.0056442    0.0313170
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0103568   -0.0072228    0.0279364
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025327   -0.0016340    0.0066994
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0082700    0.0028956    0.0136444


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0384235   -0.5827280    0.4158002
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0034057    0.0017928    0.0050160
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0208753   -0.0508666    0.0082602
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.2063602   -0.3605579   -0.0696384
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1494210   -0.5963202    0.1723662
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2566832   -0.0967984    0.4962429
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1319292    0.0955812    0.1668164
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1610121    0.0792685    0.2354985
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.4196226   -1.3066617    0.1263008
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1457723   -0.4546343    0.4983584
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1553714   -0.0985576    0.3506053
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0937973   -0.0785688    0.2386176
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0163278   -0.0107902    0.0427182
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0880586    0.0285548    0.1439177
