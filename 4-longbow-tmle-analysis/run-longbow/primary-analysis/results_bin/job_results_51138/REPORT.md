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

**Intervention Variable:** predexfd6

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

agecat      studyid                    country                        predexfd6    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0      117     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     231
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       26     175
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        1     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      142     175
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        6     175
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       13     190
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      170     190
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5     190
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       22     170
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        1     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      142     170
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        5     170
Birth       ki0047075b-MAL-ED          PERU                           1                   0      104     256
Birth       ki0047075b-MAL-ED          PERU                           1                   1        2     256
Birth       ki0047075b-MAL-ED          PERU                           0                   0      146     256
Birth       ki0047075b-MAL-ED          PERU                           0                   1        4     256
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     211
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      207     211
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0    13791   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1     1305   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3439   19082
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1      547   19082
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0      574     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       45     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      132     767
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       16     767
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       15     232
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        3     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      208     232
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       28     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0     235
6 months    ki0047075b-MAL-ED          PERU                           1                   0      110     269
6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     269
6 months    ki0047075b-MAL-ED          PERU                           0                   0      149     269
6 months    ki0047075b-MAL-ED          PERU                           0                   1        7     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      233     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      228     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0    12596   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      627   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     3082   16682
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1      377   16682
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3186    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      146    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      837    4259
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       90    4259
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       94     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1       18     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       90     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        7     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      139     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       13     224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        4     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       24     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       26     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        2     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        5     227
24 months   ki0047075b-MAL-ED          PERU                           1                   0       80     198
24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     198
24 months   ki0047075b-MAL-ED          PERU                           0                   0      105     198
24 months   ki0047075b-MAL-ED          PERU                           0                   1        9     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      199     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       25     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      142     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     5691    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      986    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1526    8542
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1      339    8542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3010    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      279    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      772    4174
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      113    4174


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
![](/tmp/790e2e96-0df6-4882-8041-4c2d77937eec/5e91b7b5-85cc-4a67-b373-06327406fdad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/790e2e96-0df6-4882-8041-4c2d77937eec/5e91b7b5-85cc-4a67-b373-06327406fdad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/790e2e96-0df6-4882-8041-4c2d77937eec/5e91b7b5-85cc-4a67-b373-06327406fdad/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/790e2e96-0df6-4882-8041-4c2d77937eec/5e91b7b5-85cc-4a67-b373-06327406fdad/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0199018   0.0076673   0.0321362
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0207798   0.0114877   0.0300719
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0967214   0.0921753   0.1012674
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0978247   0.0931830   0.1024663
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0807210   0.0577295   0.1037125
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0774676   0.0524508   0.1024845
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3028463   0.2419492   0.3637435
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1805197   0.1181085   0.2429309
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0384343   0.0229542   0.0539145
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0314253   0.0219930   0.0408575
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0272277   0.0113435   0.0431120
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0633803   0.0232695   0.1034910
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0520966   0.0482481   0.0559451
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0852033   0.0755968   0.0948099
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0468583   0.0388276   0.0548889
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0825668   0.0643129   0.1008207
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1607143   0.0925334   0.2288952
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0721649   0.0205468   0.1237831
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0737120   0.0297847   0.1176392
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0869479   0.0602636   0.1136323
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0671837   0.0453838   0.0889837
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0889012   0.0711198   0.1066826
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1005608   0.0694109   0.1317108
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1412620   0.0790672   0.2034567
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1525852   0.1433206   0.1618499
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1606992   0.1429735   0.1784248
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0862146   0.0747433   0.0976858
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1204978   0.0973642   0.1436314


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
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0441205   0.4881134   2.2334719
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0114072   1.0058902   1.0169545
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9596964   0.8030057   1.1469621
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 0.5960769   0.3999295   0.8884258
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8176349   0.4950313   1.3504739
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3277849   0.9843161   5.5049211
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.6354881   1.4404437   1.8569426
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.7620539   1.3498909   2.3000627
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4490263   0.1954795   1.0314363
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.1795628   0.6032160   2.3065841
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.3232550   0.9039187   1.9371252
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4047412   0.8197905   2.4070759
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0531763   0.9375213   1.1830989
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3976508   1.1128952   1.7552666


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0007978   -0.0091457    0.0107412
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0003335    0.0001758    0.0004911
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0011903   -0.0036704    0.0012897
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0501582   -0.0869372   -0.0133791
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0048914   -0.0174790    0.0076962
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0094023   -0.0018963    0.0207010
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0080880    0.0058438    0.0103323
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0085538    0.0043191    0.0127885
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0410971   -0.0812377   -0.0009564
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0112100   -0.0274686    0.0498886
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0154336   -0.0031683    0.0340355
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0098558   -0.0077737    0.0274853
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0025307   -0.0016973    0.0067586
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0077002    0.0023312    0.0130691


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0385396   -0.5841732    0.4164741
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0034357    0.0018310    0.0050379
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0149671   -0.0464586    0.0155767
6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1984983   -0.3531075   -0.0615551
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.1458240   -0.5883144    0.1733925
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2566832   -0.0967984    0.4962429
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.1343873    0.0979192    0.1693811
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1543669    0.0756920    0.2263452
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3435714   -0.7049407   -0.0587959
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1320039   -0.4663569    0.4861979
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.1868080   -0.0704069    0.3822151
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0892603   -0.0836660    0.2345918
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0163146   -0.0112211    0.0431005
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0819910    0.0226661    0.1377148
