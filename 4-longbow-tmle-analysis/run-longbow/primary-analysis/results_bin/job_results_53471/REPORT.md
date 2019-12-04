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

agecat      studyid                    country                        exclfeed36    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -----------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0       32     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0      182     221
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     221
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0        4      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    1        1      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0       58      65
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    1        2      65
Birth       ki0047075b-MAL-ED          INDIA                          1                    0        1      42
Birth       ki0047075b-MAL-ED          INDIA                          1                    1        0      42
Birth       ki0047075b-MAL-ED          INDIA                          0                    0       39      42
Birth       ki0047075b-MAL-ED          INDIA                          0                    1        2      42
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          1                    1        0      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0       25      26
Birth       ki0047075b-MAL-ED          NEPAL                          0                    1        1      26
Birth       ki0047075b-MAL-ED          PERU                           1                    0        5     223
Birth       ki0047075b-MAL-ED          PERU                           1                    1        0     223
Birth       ki0047075b-MAL-ED          PERU                           0                    0      214     223
Birth       ki0047075b-MAL-ED          PERU                           0                    1        4     223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      103     105
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        1     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      111     119
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        8     119
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        3       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       3
Birth       ki1000108-IRC              INDIA                          1                    0        0       4
Birth       ki1000108-IRC              INDIA                          1                    1        0       4
Birth       ki1000108-IRC              INDIA                          0                    0        4       4
Birth       ki1000108-IRC              INDIA                          0                    1        0       4
Birth       ki1000109-EE               PAKISTAN                       1                    0        2       7
Birth       ki1000109-EE               PAKISTAN                       1                    1        1       7
Birth       ki1000109-EE               PAKISTAN                       0                    0        4       7
Birth       ki1000109-EE               PAKISTAN                       0                    1        0       7
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0      118     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    1        1     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0      368     490
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    1        3     490
Birth       ki1101329-Keneba           GAMBIA                         1                    0      358    1253
Birth       ki1101329-Keneba           GAMBIA                         1                    1        5    1253
Birth       ki1101329-Keneba           GAMBIA                         0                    0      871    1253
Birth       ki1101329-Keneba           GAMBIA                         0                    1       19    1253
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0      409     526
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    1       13     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0      101     526
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    1        3     526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0     7457   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1      865   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2103   10681
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    1      256   10681
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1848    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    1      146    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0      457    2517
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    1       66    2517
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       29     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      203     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        7     240
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       12     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      197     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          1                    0        8     233
6 months    ki0047075b-MAL-ED          INDIA                          1                    1        1     233
6 months    ki0047075b-MAL-ED          INDIA                          0                    0      216     233
6 months    ki0047075b-MAL-ED          INDIA                          0                    1        8     233
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        4     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      230     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        1     235
6 months    ki0047075b-MAL-ED          PERU                           1                    0        6     272
6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     272
6 months    ki0047075b-MAL-ED          PERU                           0                    0      256     272
6 months    ki0047075b-MAL-ED          PERU                           0                    1       10     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      243     250
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     250
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        4     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      225     243
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       14     243
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        2       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
6 months    ki1000108-IRC              INDIA                          1                    0        0       4
6 months    ki1000108-IRC              INDIA                          1                    1        0       4
6 months    ki1000108-IRC              INDIA                          0                    0        4       4
6 months    ki1000108-IRC              INDIA                          0                    1        0       4
6 months    ki1000109-EE               PAKISTAN                       1                    0        3       9
6 months    ki1000109-EE               PAKISTAN                       1                    1        1       9
6 months    ki1000109-EE               PAKISTAN                       0                    0        5       9
6 months    ki1000109-EE               PAKISTAN                       0                    1        0       9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      140     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       28     168
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      143     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      447     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       11     603
6 months    ki1101329-Keneba           GAMBIA                         1                    0      490    1790
6 months    ki1101329-Keneba           GAMBIA                         1                    1       17    1790
6 months    ki1101329-Keneba           GAMBIA                         0                    0     1242    1790
6 months    ki1101329-Keneba           GAMBIA                         0                    1       41    1790
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      410     527
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       12     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0       98     527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1        7     527
6 months    ki1148112-LCNI-5           MALAWI                         1                    0       44     272
6 months    ki1148112-LCNI-5           MALAWI                         1                    1        3     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    0      208     272
6 months    ki1148112-LCNI-5           MALAWI                         0                    1       17     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6169    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      409    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1846    8552
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      128    8552
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3098    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      143    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      854    4185
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       90    4185
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       21     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      163     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       24     212
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       11     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      157     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          1                    0        8     224
24 months   ki0047075b-MAL-ED          INDIA                          1                    1        1     224
24 months   ki0047075b-MAL-ED          INDIA                          0                    0      186     224
24 months   ki0047075b-MAL-ED          INDIA                          0                    1       29     224
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        4     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      216     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        7     227
24 months   ki0047075b-MAL-ED          PERU                           1                    0        4     201
24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     201
24 months   ki0047075b-MAL-ED          PERU                           0                    0      182     201
24 months   ki0047075b-MAL-ED          PERU                           0                    1       15     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        1     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      208     235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       26     235
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      142     213
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1       68     213
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        6       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        3       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0       9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0       9
24 months   ki1000108-IRC              INDIA                          1                    0        0       4
24 months   ki1000108-IRC              INDIA                          1                    1        0       4
24 months   ki1000108-IRC              INDIA                          0                    0        3       4
24 months   ki1000108-IRC              INDIA                          0                    1        1       4
24 months   ki1000109-EE               PAKISTAN                       1                    0        0       3
24 months   ki1000109-EE               PAKISTAN                       1                    1        0       3
24 months   ki1000109-EE               PAKISTAN                       0                    0        3       3
24 months   ki1000109-EE               PAKISTAN                       0                    1        0       3
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      128     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       13     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      397     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       39     577
24 months   ki1101329-Keneba           GAMBIA                         1                    0      399    1394
24 months   ki1101329-Keneba           GAMBIA                         1                    1       25    1394
24 months   ki1101329-Keneba           GAMBIA                         0                    0      879    1394
24 months   ki1101329-Keneba           GAMBIA                         0                    1       91    1394
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      329     446
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       34     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       69     446
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       14     446
24 months   ki1148112-LCNI-5           MALAWI                         1                    0       30     189
24 months   ki1148112-LCNI-5           MALAWI                         1                    1        4     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    0      135     189
24 months   ki1148112-LCNI-5           MALAWI                         0                    1       20     189
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2829    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      496    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      863    4334
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      146    4334
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2870    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      275    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      787    4049
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      117    4049


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
![](/tmp/9c1f1842-bf78-49ef-87a4-991a32e04f33/ffba5d08-d093-4ac1-b803-7885c84199e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c1f1842-bf78-49ef-87a4-991a32e04f33/ffba5d08-d093-4ac1-b803-7885c84199e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9c1f1842-bf78-49ef-87a4-991a32e04f33/ffba5d08-d093-4ac1-b803-7885c84199e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c1f1842-bf78-49ef-87a4-991a32e04f33/ffba5d08-d093-4ac1-b803-7885c84199e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                0.0137741   0.0017794   0.0257688
Birth       ki1101329-Keneba      GAMBIA       0                    NA                0.0213483   0.0118483   0.0308483
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1045438   0.0981361   0.1109515
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1060576   0.0992413   0.1128740
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0839809   0.0710085   0.0969532
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0846215   0.0700881   0.0991549
6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0334637   0.0177848   0.0491427
6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0319563   0.0223111   0.0416016
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0284360   0.0125625   0.0443096
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0666667   0.0189095   0.1144238
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0619674   0.0558297   0.0681052
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0655991   0.0551958   0.0760025
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0469807   0.0395992   0.0543623
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0783573   0.0609995   0.0957152
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.0844582   0.0358977   0.1330186
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.0886625   0.0617865   0.1155384
24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0595377   0.0369645   0.0821109
24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0935333   0.0751810   0.1118855
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0937021   0.0636346   0.1237697
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1623288   0.0831705   0.2414870
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.1490457   0.1357494   0.1623420
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1458009   0.1205106   0.1710913
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0901631   0.0782849   0.1020413
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1194446   0.0966823   0.1422069


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1101329-Keneba      GAMBIA       NA                   NA                0.0191540   0.0115617   0.0267464
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1049527   0.0986146   0.1112909
Birth       kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0842273   0.0714625   0.0969920
6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0324022   0.0241972   0.0406072
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0360531   0.0201218   0.0519845
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0627923   0.0572659   0.0683187
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0556750   0.0484735   0.0628765
24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.0901213   0.0667360   0.1135066
24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0832138   0.0687092   0.0977183
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1076233   0.0788298   0.1364169
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.1481311   0.1360218   0.1602403
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0968140   0.0862351   0.1073930


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1101329-Keneba      GAMBIA       0                    1                 1.5498876   0.5828980   4.121050
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0144802   0.9816950   1.048360
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0076284   0.9020087   1.125616
6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.9549545   0.5468733   1.667549
6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 2.3444444   0.9454214   5.813725
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0586068   0.8862221   1.264523
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.6678612   1.2822050   2.169513
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0497796   0.5472280   2.013854
24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.5709919   1.0248589   2.408151
24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.7323914   0.9651004   3.109707
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9782296   0.8092025   1.182563
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.3247612   1.0550662   1.663395


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.0053799   -0.0054900   0.0162498
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0004089   -0.0003647   0.0011825
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0002464   -0.0017126   0.0022054
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0010615   -0.0142774   0.0121545
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0076171   -0.0024945   0.0177287
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0008249   -0.0018275   0.0034773
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0086943    0.0042896   0.0130990
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0056631   -0.0365913   0.0479176
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0236761    0.0033777   0.0439745
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0139212   -0.0024577   0.0303001
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0009147   -0.0073537   0.0055244
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0066509    0.0009784   0.0123235


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1101329-Keneba      GAMBIA       1                    NA                 0.2808770   -0.5597600   0.6684503
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0038961   -0.0035126   0.0112502
Birth       kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0029254   -0.0206247   0.0259321
6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0327599   -0.5328177   0.3041619
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.2112746   -0.1042928   0.4366642
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0131368   -0.0300422   0.0545057
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.1561617    0.0763039   0.2291154
24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0628392   -0.5464002   0.4320549
24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.2845210    0.0001664   0.4880046
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1293511   -0.0331543   0.2662959
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0061747   -0.0506373   0.0364063
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0686980    0.0079117   0.1257599
