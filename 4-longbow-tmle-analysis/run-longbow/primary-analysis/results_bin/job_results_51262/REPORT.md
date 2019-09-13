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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        predexfd6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       16     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0       83     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       22     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      136     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       13     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        2     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      144     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       28     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       21     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        1     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      124     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       19     165
Birth       ki0047075b-MAL-ED          PERU                           1                 0      103     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        1     249
Birth       ki0047075b-MAL-ED          PERU                           0                 0      141     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        4     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      192     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      112     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0       7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0       7
Birth       ki1000108-IRC              INDIA                          1                 0        0      12
Birth       ki1000108-IRC              INDIA                          1                 1        0      12
Birth       ki1000108-IRC              INDIA                          0                 0        8      12
Birth       ki1000108-IRC              INDIA                          0                 1        4      12
Birth       ki1000109-EE               PAKISTAN                       1                 0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                 1        0       1
Birth       ki1000109-EE               PAKISTAN                       0                 0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                 1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 0       43      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                 1        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 0        2      47
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                 1        0      47
Birth       ki1101329-Keneba           GAMBIA                         1                 0      438    1336
Birth       ki1101329-Keneba           GAMBIA                         1                 1       13    1336
Birth       ki1101329-Keneba           GAMBIA                         0                 0      870    1336
Birth       ki1101329-Keneba           GAMBIA                         0                 1       15    1336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    11242   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1153   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2705   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      320   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      490     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       31     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      108     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        4     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0      119     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      108     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       34     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      197     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      202     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          PERU                           1                 0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           0                 0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      232     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      241     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1     244
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       17      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        2      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
6 months    ki1000108-IRC              INDIA                          1                 0        0      14
6 months    ki1000108-IRC              INDIA                          1                 1        0      14
6 months    ki1000108-IRC              INDIA                          0                 0       11      14
6 months    ki1000108-IRC              INDIA                          0                 1        3      14
6 months    ki1000109-EE               PAKISTAN                       1                 0      201     376
6 months    ki1000109-EE               PAKISTAN                       1                 1       19     376
6 months    ki1000109-EE               PAKISTAN                       0                 0      126     376
6 months    ki1000109-EE               PAKISTAN                       0                 1       30     376
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 0      330     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                 1       46     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 0       17     395
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                 1        2     395
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       41     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        2     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      424     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       22     582
6 months    ki1101329-Keneba           GAMBIA                         1                 0      562    1908
6 months    ki1101329-Keneba           GAMBIA                         1                 1       24    1908
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1232    1908
6 months    ki1101329-Keneba           GAMBIA                         0                 1       90    1908
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      368     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       36     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      128     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14     546
6 months    ki1148112-LCNI-5           MALAWI                         1                 0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                 1        4     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    12182   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1004   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3058   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      411   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3172    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      159    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      851    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       15     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0       91     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      138     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       16     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        1     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      183     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       24     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      194     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          PERU                           1                 0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1     198
24 months   ki0047075b-MAL-ED          PERU                           0                 0      113     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      223     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      206     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4     212
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       18      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0        0      19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0      19
24 months   ki1000108-IRC              INDIA                          1                 0        0      14
24 months   ki1000108-IRC              INDIA                          1                 1        0      14
24 months   ki1000108-IRC              INDIA                          0                 0       14      14
24 months   ki1000108-IRC              INDIA                          0                 1        0      14
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      132     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      381     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       53     578
24 months   ki1101329-Keneba           GAMBIA                         1                 0      463    1514
24 months   ki1101329-Keneba           GAMBIA                         1                 1       51    1514
24 months   ki1101329-Keneba           GAMBIA                         0                 0      891    1514
24 months   ki1101329-Keneba           GAMBIA                         0                 1      109    1514
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      298     479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       61     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0       91     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       29     479
24 months   ki1148112-LCNI-5           MALAWI                         1                 0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                 1        1     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                 1        3     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5234    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1419    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1414    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      446    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2655    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      620    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      683    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      201    4159


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/8f7fe27c-bb49-45a2-b530-b187e8839f8c/93b3c3b1-4acd-4b68-9929-4fd59e367413/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8f7fe27c-bb49-45a2-b530-b187e8839f8c/93b3c3b1-4acd-4b68-9929-4fd59e367413/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8f7fe27c-bb49-45a2-b530-b187e8839f8c/93b3c3b1-4acd-4b68-9929-4fd59e367413/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8f7fe27c-bb49-45a2-b530-b187e8839f8c/93b3c3b1-4acd-4b68-9929-4fd59e367413/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1383090   0.0736554   0.2029626
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.2033874   0.1248642   0.2819106
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0305575   0.0152189   0.0458960
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0170382   0.0085293   0.0255471
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0956110   0.0903561   0.1008658
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0954079   0.0896305   0.1011854
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0870609   0.0497297   0.1243921
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1864396   0.1239484   0.2489309
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0419229   0.0258800   0.0579657
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0679966   0.0544152   0.0815780
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0889310   0.0610853   0.1167767
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0959267   0.0464013   0.1454520
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0777452   0.0725941   0.0828963
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1101862   0.0988148   0.1215576
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0484803   0.0377910   0.0591696
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0787451   0.0601912   0.0972991
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1339286   0.0707028   0.1971543
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0618557   0.0138018   0.1099095
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0879195   0.0432316   0.1326075
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1231958   0.0923646   0.1540270
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0970546   0.0714801   0.1226290
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1102278   0.0908757   0.1295798
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1695882   0.1305508   0.2086256
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2343045   0.1562784   0.3123306
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2170066   0.2057683   0.2282449
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2271491   0.2054099   0.2488882
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1908372   0.1754597   0.2062147
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2199850   0.1869704   0.2529997


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1735160   0.1232462   0.2237857
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0209581   0.0132741   0.0286420
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0955253   0.0903072   0.1007433
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0597484   0.0491105   0.0703864
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0915751   0.0673602   0.1157900
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849595   0.0801414   0.0897775
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556338   0.0463917   0.0648759
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1004785   0.0596222   0.1413347
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1056803   0.0901896   0.1211711
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1878914   0.1528732   0.2229097
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2190767   0.2091475   0.2290059
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1974032   0.1830515   0.2117549


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.4705293   0.8014048   2.698332
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.5575791   0.2745838   1.132239
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9978764   0.9669132   1.029831
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 2.1414852   1.2422645   3.691612
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6219447   1.0534378   2.497257
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0786638   0.5896007   1.973396
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4172733   1.2591768   1.595220
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6242714   1.1737531   2.247711
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4618557   0.1860826   1.146322
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.4012337   0.7944957   2.471323
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.1357297   0.8286868   1.556537
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.3816083   0.9200876   2.074630
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0467380   0.9395474   1.166158
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1527367   0.9755637   1.362086


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0352070   -0.0139108   0.0843248
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0095994   -0.0212174   0.0020185
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000857   -0.0007229   0.0005515
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0432583    0.0126291   0.0738874
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0178256    0.0032570   0.0323941
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0026441   -0.0120544   0.0173426
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0072143    0.0046186   0.0098100
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0071535    0.0023099   0.0119971
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0334501   -0.0706298   0.0037296
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0245372   -0.0162946   0.0653690
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0086257   -0.0124012   0.0296527
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0183032   -0.0037625   0.0403690
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0020701   -0.0032683   0.0074085
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0065660   -0.0012494   0.0143815


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.2029035   -0.1327482    0.4390962
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.4580287   -1.1127837   -0.0061834
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0008970   -0.0075903    0.0057518
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.3319409    0.0695535    0.5203346
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2983436    0.0151608    0.5000995
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0288734   -0.1455324    0.1767262
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0849142    0.0541353    0.1146916
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1285825    0.0327909    0.2148870
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.3329082   -0.7360379   -0.0233902
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2181925   -0.2367332    0.5057762
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0816211   -0.1403512    0.2603860
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0974139   -0.0270708    0.2068106
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0094492   -0.0152213    0.0335203
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0332621   -0.0068837    0.0718072
