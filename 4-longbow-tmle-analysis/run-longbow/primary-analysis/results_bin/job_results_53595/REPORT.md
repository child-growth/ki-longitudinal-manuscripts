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

agecat      studyid                    country                        exclfeed36    wasted   n_cell      n
----------  -------------------------  -----------------------------  -----------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       27    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        4    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      147    208
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       30    208
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        4     62
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0       56     62
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        2     62
Birth       ki0047075b-MAL-ED          INDIA                          1                  0        1     40
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     40
Birth       ki0047075b-MAL-ED          INDIA                          0                  0       34     40
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        5     40
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0       23     25
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        2     25
Birth       ki0047075b-MAL-ED          PERU                           1                  0        5    218
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    218
Birth       ki0047075b-MAL-ED          PERU                           0                  0      208    218
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5    218
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0       94    104
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        9    104
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      110    111
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    111
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        3      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      3
Birth       ki1000108-IRC              INDIA                          1                  0        0      3
Birth       ki1000108-IRC              INDIA                          1                  1        0      3
Birth       ki1000108-IRC              INDIA                          0                  0        2      3
Birth       ki1000108-IRC              INDIA                          0                  1        1      3
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      6
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      6
Birth       ki1000109-EE               PAKISTAN                       0                  0        3      6
Birth       ki1000109-EE               PAKISTAN                       0                  1        1      6
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  0       86    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                  1       29    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  0      293    483
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                  1       75    483
Birth       ki1101329-Keneba           GAMBIA                         1                  0      267   1192
Birth       ki1101329-Keneba           GAMBIA                         1                  1       76   1192
Birth       ki1101329-Keneba           GAMBIA                         0                  0      622   1192
Birth       ki1101329-Keneba           GAMBIA                         0                  1      227   1192
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  0      320    491
Birth       ki1113344-GMS-Nepal        NEPAL                          1                  1       76    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  0       77    491
Birth       ki1113344-GMS-Nepal        NEPAL                          0                  1       18    491
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5974   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      762   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1689   8619
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      194   8619
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0     1537   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1      174   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      370   2128
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1       47   2128
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       29    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      203    240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        7    240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       12    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      196    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        1    209
6 months    ki0047075b-MAL-ED          INDIA                          1                  0        8    233
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        1    233
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      206    233
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18    233
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      227    235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4    235
6 months    ki0047075b-MAL-ED          PERU                           1                  0        6    272
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    272
6 months    ki0047075b-MAL-ED          PERU                           0                  0      266    272
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      242    250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7    250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        4    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      238    243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        1      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      9
6 months    ki1000108-IRC              INDIA                          1                  0        0      4
6 months    ki1000108-IRC              INDIA                          1                  1        0      4
6 months    ki1000108-IRC              INDIA                          0                  0        3      4
6 months    ki1000108-IRC              INDIA                          0                  1        1      4
6 months    ki1000109-EE               PAKISTAN                       1                  0        4      9
6 months    ki1000109-EE               PAKISTAN                       1                  1        0      9
6 months    ki1000109-EE               PAKISTAN                       0                  0        5      9
6 months    ki1000109-EE               PAKISTAN                       0                  1        0      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127    168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41    168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      142    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      436    603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       22    603
6 months    ki1101329-Keneba           GAMBIA                         1                  0      483   1790
6 months    ki1101329-Keneba           GAMBIA                         1                  1       24   1790
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1197   1790
6 months    ki1101329-Keneba           GAMBIA                         0                  1       86   1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      383    527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       95    527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10    527
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47    272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0    272
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221    272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4    272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     5986   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      575   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1804   8535
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      170   8535
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3081   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      159   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      870   4188
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78   4188
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       23    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      168    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       19    212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      155    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        3    169
24 months   ki0047075b-MAL-ED          INDIA                          1                  0        8    224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1    224
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      189    224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26    224
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      218    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        5    227
24 months   ki0047075b-MAL-ED          PERU                           1                  0        4    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201
24 months   ki0047075b-MAL-ED          PERU                           0                  0      193    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        4    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      233    235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1    235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        3    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      206    213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4    213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        9      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        0      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0        0      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0      9
24 months   ki1000108-IRC              INDIA                          1                  0        0      4
24 months   ki1000108-IRC              INDIA                          1                  1        0      4
24 months   ki1000108-IRC              INDIA                          0                  0        4      4
24 months   ki1000108-IRC              INDIA                          0                  1        0      4
24 months   ki1000109-EE               PAKISTAN                       1                  0        0      3
24 months   ki1000109-EE               PAKISTAN                       1                  1        0      3
24 months   ki1000109-EE               PAKISTAN                       0                  0        3      3
24 months   ki1000109-EE               PAKISTAN                       0                  1        0      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      130    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       11    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      385    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1       51    577
24 months   ki1101329-Keneba           GAMBIA                         1                  0      380   1395
24 months   ki1101329-Keneba           GAMBIA                         1                  1       44   1395
24 months   ki1101329-Keneba           GAMBIA                         0                  0      867   1395
24 months   ki1101329-Keneba           GAMBIA                         0                  1      104   1395
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      304    445
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       60    445
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23    445
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33    184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1    184
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147    184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3    184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     2556   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      755   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      782   4317
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      224   4317
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2541   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      591   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      702   4035
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      201   4035


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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/041046bf-2dd1-4b2d-9624-bada027f5eac/d24dba34-5f59-49de-972e-f846c690827e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/041046bf-2dd1-4b2d-9624-bada027f5eac/d24dba34-5f59-49de-972e-f846c690827e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/041046bf-2dd1-4b2d-9624-bada027f5eac/d24dba34-5f59-49de-972e-f846c690827e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/041046bf-2dd1-4b2d-9624-bada027f5eac/d24dba34-5f59-49de-972e-f846c690827e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2610990   0.1821062   0.3400917
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2053957   0.1642338   0.2465575
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.2438996   0.2186598   0.2691393
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.2569851   0.2317245   0.2822457
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1926372   0.1537683   0.2315061
Birth       ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1996309   0.1204774   0.2787844
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1109548   0.1033010   0.1186086
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1103801   0.1022951   0.1184652
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1039223   0.0873248   0.1205198
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1029956   0.0829932   0.1229981
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0481641   0.0298404   0.0664879
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0666931   0.0530465   0.0803397
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0920134   0.0644547   0.1195722
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0977341   0.0395728   0.1558954
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0876627   0.0799147   0.0954107
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0870572   0.0736762   0.1004382
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0502460   0.0396003   0.0608918
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0775718   0.0597769   0.0953667
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0841647   0.0401052   0.1282241
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.1169280   0.0867204   0.1471356
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.1001128   0.0711670   0.1290587
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.1087950   0.0893770   0.1282131
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1596832   0.1218886   0.1974777
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2816643   0.1830775   0.3802511
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2266150   0.2093755   0.2438546
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2259502   0.1938880   0.2580123
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1903053   0.1742154   0.2063952
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2157788   0.1829903   0.2485673


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2153209   0.1786253   0.2520165
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.2541946   0.2294667   0.2789226
Birth       ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1914460   0.1566101   0.2262820
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1109177   0.1033745   0.1184610
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1038534   0.0874500   0.1202568
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0614525   0.0503239   0.0725811
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0929791   0.0681617   0.1177965
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0872876   0.0805483   0.0940269
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0565903   0.0475372   0.0656433
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.1074523   0.0821617   0.1327430
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.1060932   0.0899270   0.1222593
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1820225   0.1461311   0.2179138
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2267779   0.2114523   0.2421034
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1962825   0.1816413   0.2109237


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.7866583   0.5476295   1.130018
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.0536513   1.0038302   1.105945
Birth       ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0363050   0.6638761   1.617663
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9948207   0.9567237   1.034435
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9910832   0.8666569   1.133373
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.3847048   0.8989622   2.132912
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0621718   0.5451754   2.069442
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9930927   0.8321171   1.185210
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.5438391   1.1310633   2.107255
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.3892766   0.7748375   2.490960
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.0867241   0.7749796   1.523872
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7638948   1.1578361   2.687189
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9970661   0.8501500   1.169371
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1338561   0.9545950   1.346780


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0457780   -0.1135935   0.0220374
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0102951    0.0015359   0.0190543
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0011912   -0.0183035   0.0159211
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0000371   -0.0009769   0.0009028
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0000689   -0.0026162   0.0024784
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.0132884   -0.0031046   0.0296814
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0009657   -0.0115105   0.0134419
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003751   -0.0039452   0.0031951
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0063442    0.0014347   0.0112538
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0232877   -0.0171259   0.0637013
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0059804   -0.0182185   0.0301792
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0223393    0.0026266   0.0420520
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0001628   -0.0082177   0.0085434
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0059772   -0.0022662   0.0142207


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.2126038   -0.5721627   0.0647228
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0405008    0.0056655   0.0741156
Birth       ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0062221   -0.0997003   0.0793100
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0003341   -0.0088419   0.0081020
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0006635   -0.0254948   0.0235665
6 months    ki1101329-Keneba      GAMBIA       1                    NA                 0.2162384   -0.0969883   0.4400284
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0103861   -0.1332904   0.1358476
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0042968   -0.0460295   0.0357710
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1121085    0.0173711   0.1977120
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.2167257   -0.2582366   0.5123980
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0563689   -0.2017297   0.2590349
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1227283    0.0092193   0.2232331
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007180   -0.0369272   0.0369964
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0304522   -0.0123021   0.0714009
