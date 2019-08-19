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

agecat      studyid                    country                        exclfeed6    wasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       45     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        8     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      136     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       30     219
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0       11     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      151     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6     168
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        5     187
Birth       ki0047075b-MAL-ED          INDIA                          1                 1        0     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      152     187
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       30     187
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       11     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        0     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      134     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       20     165
Birth       ki0047075b-MAL-ED          PERU                           1                 0       10     249
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0     249
Birth       ki0047075b-MAL-ED          PERU                           0                 0      234     249
Birth       ki0047075b-MAL-ED          PERU                           0                 1        5     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      195     209
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0    11221   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1150   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 0     2726   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                 1      323   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 0      488     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                 1       31     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 0      110     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                 1        4     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       55     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        2     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      172     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        6     235
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       16     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      192     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        6     232
6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                 1       17     232
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       15     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      216     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        4     235
6 months    ki0047075b-MAL-ED          PERU                           1                 0       11     269
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     269
6 months    ki0047075b-MAL-ED          PERU                           0                 0      258     269
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      235     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        7     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      242     244
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    12162   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1000   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 0     3078   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                 1      415   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 0     3159    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                 1      159    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 0      864    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 1       78    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       44     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        9     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      144     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       12     209
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       15     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      151     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        3     169
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        5     224
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      194     224
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       25     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       15     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      207     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5     227
24 months   ki0047075b-MAL-ED          PERU                           1                 0        8     198
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     198
24 months   ki0047075b-MAL-ED          PERU                           0                 0      188     198
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      226     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        1     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      207     212
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5225    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1416    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0     1423    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1      449    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2644    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      618    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      694    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      203    4159


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
![](/tmp/776b155f-04da-4ce7-a614-b7410e72842e/cb6562aa-b1d1-42ea-b51c-b23dd826e95f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/776b155f-04da-4ce7-a614-b7410e72842e/cb6562aa-b1d1-42ea-b51c-b23dd826e95f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/776b155f-04da-4ce7-a614-b7410e72842e/cb6562aa-b1d1-42ea-b51c-b23dd826e95f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/776b155f-04da-4ce7-a614-b7410e72842e/cb6562aa-b1d1-42ea-b51c-b23dd826e95f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1509434   0.0543429   0.2475439
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1807229   0.1220537   0.2393920
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0293434   0.0140616   0.0446251
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0169153   0.0084263   0.0254044
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0955718   0.0903083   0.1008353
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0955208   0.0897440   0.1012977
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0874069   0.0499534   0.1248603
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1880140   0.1255334   0.2504946
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0405328   0.0244297   0.0566359
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0675772   0.0539906   0.0811638
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0896779   0.0617991   0.1175566
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0996409   0.0507153   0.1485665
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0774422   0.0722893   0.0825951
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1122721   0.1008301   0.1237141
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0491322   0.0382453   0.0600192
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0783424   0.0600704   0.0966144
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1698113   0.0684847   0.2711379
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0769231   0.0350076   0.1188386
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0899792   0.0445459   0.1354125
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1227146   0.0919021   0.1535271
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0985618   0.0729716   0.1241520
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1094826   0.0901742   0.1287910
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1705223   0.1316245   0.2094201
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2525615   0.1754595   0.3296636
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2173358   0.2060787   0.2285929
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2265398   0.2053761   0.2477034
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1913496   0.1758726   0.2068266
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2164836   0.1832930   0.2496743


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
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.1972892   0.5841791   2.453873
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.5764619   0.2796739   1.188199
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9994666   0.9681408   1.031806
6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE          PAKISTAN     0                    1                 2.1510214   1.2498643   3.701916
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.6672223   1.0681991   2.602165
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1110975   0.6212759   1.987101
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4497530   1.2885277   1.631152
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5945212   1.1528249   2.205450
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.4529915   0.2019072   1.016315
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.3638105   0.7754391   2.398614
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.1108011   0.8125949   1.518443
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.4811058   1.0109018   2.170017
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0423490   0.9378346   1.158511
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1313513   0.9546013   1.340827


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0225726   -0.0631130   0.1082581
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0083853   -0.0199516   0.0031810
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000465   -0.0006747   0.0005817
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.0429123    0.0122464   0.0735781
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0192156    0.0045984   0.0338329
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0018972   -0.0128469   0.0166413
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0075172    0.0049142   0.0101203
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0065016    0.0015322   0.0114710
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0693329   -0.1513639   0.0126981
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0224775   -0.0189659   0.0639210
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0071185   -0.0139237   0.0281606
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0173692   -0.0044117   0.0391500
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0017409   -0.0035938   0.0070756
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0060536   -0.0018536   0.0139608


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1300894   -0.5330383    0.5063760
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.4000976   -1.0554802    0.0463185
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0004869   -0.0070844    0.0060674
6 months    ki1000109-EE          PAKISTAN     1                    NA                 0.3292861    0.0662746    0.5182126
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.3216092    0.0353141    0.5229389
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0207176   -0.1541500    0.1690906
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0884804    0.0576079    0.1183414
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1168636    0.0186455    0.2052515
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.6900270   -1.6904806   -0.0615914
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.1998771   -0.2618926    0.4926694
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0673587   -0.1543841    0.2465074
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0924425   -0.0302527    0.2005257
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0079465   -0.0167073    0.0320024
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0306662   -0.0099966    0.0696920
