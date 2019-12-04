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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** exclfeed36

**Adjustment Set:**

* arm
* sex
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
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
* delta_W_mwtkg
* delta_W_mbmi
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
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

agecat      studyid                    country                        exclfeed36    swasted   n_cell      n
----------  -------------------------  -----------------------------  -----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       31    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      169    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        4     62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0       58     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        0     62
Birth       ki0047075b-MAL-ED          INDIA                          1                   0        1     40
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   0       39     40
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        0     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0       24     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        1     25
Birth       ki0047075b-MAL-ED          PERU                           1                   0        5    218
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    218
Birth       ki0047075b-MAL-ED          PERU                           0                   0      213    218
Birth       ki0047075b-MAL-ED          PERU                           0                   1        0    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      103    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      3
Birth       ki1000108-IRC              INDIA                          1                   0        0      3
Birth       ki1000108-IRC              INDIA                          1                   1        0      3
Birth       ki1000108-IRC              INDIA                          0                   0        3      3
Birth       ki1000108-IRC              INDIA                          0                   1        0      3
Birth       ki1000109-EE               PAKISTAN                       1                   0        2      6
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      6
Birth       ki1000109-EE               PAKISTAN                       0                   0        3      6
Birth       ki1000109-EE               PAKISTAN                       0                   1        1      6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   0      113    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                   1        2    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   0      358    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                   1       10    483
Birth       ki1101329-Keneba           GAMBIA                         1                   0      312   1192
Birth       ki1101329-Keneba           GAMBIA                         1                   1       31   1192
Birth       ki1101329-Keneba           GAMBIA                         0                   0      793   1192
Birth       ki1101329-Keneba           GAMBIA                         0                   1       56   1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   0      378    491
Birth       ki1113344-GMS-Nepal        NEPAL                          1                   1       18    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   0       92    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                   1        3    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6593   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                   1      143   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1854   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                   1       29   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1692   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   0      407   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                   1       10   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       30    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      208    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        2    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       12    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      197    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          1                   0        9    233
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      218    233
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        6    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        4    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      231    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    235
6 months    ki0047075b-MAL-ED          PERU                           1                   0        6    272
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    272
6 months    ki0047075b-MAL-ED          PERU                           0                   0      266    272
6 months    ki0047075b-MAL-ED          PERU                           0                   1        0    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      246    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        3    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        4    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      239    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      9
6 months    ki1000108-IRC              INDIA                          1                   0        0      4
6 months    ki1000108-IRC              INDIA                          1                   1        0      4
6 months    ki1000108-IRC              INDIA                          0                   0        4      4
6 months    ki1000108-IRC              INDIA                          0                   1        0      4
6 months    ki1000109-EE               PAKISTAN                       1                   0        4      9
6 months    ki1000109-EE               PAKISTAN                       1                   1        0      9
6 months    ki1000109-EE               PAKISTAN                       0                   0        5      9
6 months    ki1000109-EE               PAKISTAN                       0                   1        0      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0      156    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1       12    168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      145    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        0    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      453    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        5    603
6 months    ki1101329-Keneba           GAMBIA                         1                   0      498   1790
6 months    ki1101329-Keneba           GAMBIA                         1                   1        9   1790
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1261   1790
6 months    ki1101329-Keneba           GAMBIA                         0                   1       22   1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      416    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1        6    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      105    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1        0    527
6 months    ki1148112-LCNI-5           MALAWI                         1                   0       47    272
6 months    ki1148112-LCNI-5           MALAWI                         1                   1        0    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   0      225    272
6 months    ki1148112-LCNI-5           MALAWI                         0                   1        0    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0     6462   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       99   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0     1951   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       23   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3221   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       19   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      937   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       11   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       25    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      187    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          1                   0        9    224
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      213    224
24 months   ki0047075b-MAL-ED          INDIA                          0                   1        2    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      223    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        0    227
24 months   ki0047075b-MAL-ED          PERU                           1                   0        4    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    201
24 months   ki0047075b-MAL-ED          PERU                           0                   0      195    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1        2    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        1    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      234    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        0    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        3    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      210    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        0    213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        9      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0        0      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0      9
24 months   ki1000108-IRC              INDIA                          1                   0        0      4
24 months   ki1000108-IRC              INDIA                          1                   1        0      4
24 months   ki1000108-IRC              INDIA                          0                   0        4      4
24 months   ki1000108-IRC              INDIA                          0                   1        0      4
24 months   ki1000109-EE               PAKISTAN                       1                   0        0      3
24 months   ki1000109-EE               PAKISTAN                       1                   1        0      3
24 months   ki1000109-EE               PAKISTAN                       0                   0        3      3
24 months   ki1000109-EE               PAKISTAN                       0                   1        0      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      139    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        2    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      429    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1        7    577
24 months   ki1101329-Keneba           GAMBIA                         1                   0      418   1395
24 months   ki1101329-Keneba           GAMBIA                         1                   1        6   1395
24 months   ki1101329-Keneba           GAMBIA                         0                   0      950   1395
24 months   ki1101329-Keneba           GAMBIA                         0                   1       21   1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      355    445
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1        7    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       76    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1        7    445
24 months   ki1148112-LCNI-5           MALAWI                         1                   0       34    184
24 months   ki1148112-LCNI-5           MALAWI                         1                   1        0    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   0      150    184
24 months   ki1148112-LCNI-5           MALAWI                         0                   1        0    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0     3164   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      147   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0      975   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       31   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     3056   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1       76   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      878   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       25   4035


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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/52d7a055-eb0c-4eb7-824d-8bb12c20d1b5/e8cf5912-cb15-478f-ae9f-a5464102eae2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/52d7a055-eb0c-4eb7-824d-8bb12c20d1b5/e8cf5912-cb15-478f-ae9f-a5464102eae2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/52d7a055-eb0c-4eb7-824d-8bb12c20d1b5/e8cf5912-cb15-478f-ae9f-a5464102eae2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/52d7a055-eb0c-4eb7-824d-8bb12c20d1b5/e8cf5912-cb15-478f-ae9f-a5464102eae2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0940640   0.0650533   0.1230747
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0658026   0.0493074   0.0822979
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0212199   0.0171999   0.0252398
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0154322   0.0079052   0.0229592
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0111486   0.0060016   0.0162955
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0234997   0.0034780   0.0435213
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0177515   0.0062542   0.0292487
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0171473   0.0100418   0.0242529
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0150789   0.0120061   0.0181518
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0117151   0.0054772   0.0179530
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0058969   0.0019351   0.0098587
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0117987   0.0057186   0.0178788
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0141509   0.0029044   0.0253975
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0216272   0.0124745   0.0307798
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0193370   0.0051354   0.0335386
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0843373   0.0244858   0.1441889
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0443961   0.0352734   0.0535189
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0319018   0.0213157   0.0424879
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0246788   0.0184762   0.0308815
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0270909   0.0159395   0.0382423


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0729866   0.0582140   0.0877592
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0199559   0.0164404   0.0234714
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0136278   0.0077812   0.0194744
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0173184   0.0112733   0.0233635
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0142941   0.0115468   0.0170414
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0071633   0.0038384   0.0104883
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0193548   0.0121227   0.0265870
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0314607   0.0152239   0.0476974
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0412323   0.0338115   0.0486531
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0250310   0.0196459   0.0304161


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 0.6995515   0.4750937    1.030054
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7272519   0.4291445    1.232441
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.1078640   0.7980688    5.567303
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9659652   0.4477489    2.083955
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7769200   0.4370657    1.381039
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 2.0008187   0.8543257    4.685889
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.5283213   0.6211156    3.760598
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 4.3614457   1.5707064   12.110608
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.7185725   0.4864409    1.061478
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0977386   0.6745952    1.786301


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.0210774   -0.0443399   0.0021851
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0012640   -0.0031472   0.0006193
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0024792   -0.0018200   0.0067785
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0004330   -0.0101206   0.0092545
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0007848   -0.0024239   0.0008542
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0012664   -0.0003595   0.0028923
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0052039   -0.0048907   0.0152985
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0121237    0.0004112   0.0238361
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0031638   -0.0064154   0.0000878
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0003521   -0.0025506   0.0032548


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                -0.2887851   -0.6482811   -0.0076965
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0633384   -0.1625076    0.0273711
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1819254   -0.1559082    0.4210214
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0250048   -0.7689132    0.4060563
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0549063   -0.1776044    0.0550075
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1767880   -0.1224081    0.3962286
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.2688679   -0.4728780    0.6370683
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.3853591   -0.0298156    0.6331543
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0767309   -0.1543419   -0.0043380
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0140680   -0.1091500    0.1235975
