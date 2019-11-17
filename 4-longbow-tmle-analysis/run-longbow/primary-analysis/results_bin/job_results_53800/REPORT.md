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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** exclfeed6

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

agecat        studyid                    country                        exclfeed6    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       32    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        1    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      188    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       12    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       12    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      196    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2    210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        2    219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      199    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        5    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0        5    271
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      265    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      235    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-24 months   ki1000108-IRC              INDIA                          1                    0        0     14
0-24 months   ki1000108-IRC              INDIA                          1                    1        0     14
0-24 months   ki1000108-IRC              INDIA                          0                    0       12     14
0-24 months   ki1000108-IRC              INDIA                          0                    1        2     14
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       42     48
0-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     48
0-24 months   ki1000109-EE               PAKISTAN                       0                    0        5     48
0-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     48
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16    413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2    413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30    166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      156    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      470    641
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    641
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0      709   2119
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1       30   2119
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1291   2119
0-24 months   ki1101329-Keneba           GAMBIA                         0                    1       89   2119
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      366    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    564
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    564
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6847   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2054   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3366   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      924   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      106   4657
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       32    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        1    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      194    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        6    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       12    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      197    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        1    210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        2    218
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      201    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       15    218
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        5    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      215    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        5    225
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0        5    271
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      266    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      234    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    236
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       15     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-6 months    ki1000108-IRC              INDIA                          1                    0        0     14
0-6 months    ki1000108-IRC              INDIA                          1                    1        0     14
0-6 months    ki1000108-IRC              INDIA                          0                    0       11     14
0-6 months    ki1000108-IRC              INDIA                          0                    1        3     14
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       39     47
0-6 months    ki1000109-EE               PAKISTAN                       1                    1        3     47
0-6 months    ki1000109-EE               PAKISTAN                       0                    0        5     47
0-6 months    ki1000109-EE               PAKISTAN                       0                    1        0     47
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      156    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      468    638
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    638
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0      615   1924
0-6 months    ki1101329-Keneba           GAMBIA                         1                    1       13   1924
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0     1249   1924
0-6 months    ki1101329-Keneba           GAMBIA                         0                    1       47   1924
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      375    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       39    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      118    553
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       21    553
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0       18     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        2     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0        6     26
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0     26
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       32    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        1    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      188    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       12    233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       12    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        0    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      196    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        2    210
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        2    219
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      199    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        5    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      217    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0        5    271
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      265    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        1    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        0    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      235    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       19     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        0     19
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        0     19
6-24 months   ki1000108-IRC              INDIA                          1                    0        0     14
6-24 months   ki1000108-IRC              INDIA                          1                    1        0     14
6-24 months   ki1000108-IRC              INDIA                          0                    0       12     14
6-24 months   ki1000108-IRC              INDIA                          0                    1        2     14
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       42     48
6-24 months   ki1000109-EE               PAKISTAN                       1                    1        1     48
6-24 months   ki1000109-EE               PAKISTAN                       0                    0        5     48
6-24 months   ki1000109-EE               PAKISTAN                       0                    1        0     48
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      355    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1       40    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       16    413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1        2    413
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0      136    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       30    166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      156    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1        2    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      470    641
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    641
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0      709   2119
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1       30   2119
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0     1291   2119
6-24 months   ki1101329-Keneba           GAMBIA                         0                    1       89   2119
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      366    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1       54    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0      121    564
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       23    564
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    0       42    240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1        0    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    0      195    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                    1        3    240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6847   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2054   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3366   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      261   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      924   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      106   4657


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b5dc3c28-eab4-4ac3-97a4-6ec140f9c589/7848713f-0af7-4f06-8a17-5a1a73c17d7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5dc3c28-eab4-4ac3-97a4-6ec140f9c589/7848713f-0af7-4f06-8a17-5a1a73c17d7a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5dc3c28-eab4-4ac3-97a4-6ec140f9c589/7848713f-0af7-4f06-8a17-5a1a73c17d7a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5dc3c28-eab4-4ac3-97a4-6ec140f9c589/7848713f-0af7-4f06-8a17-5a1a73c17d7a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0402068   0.0259549   0.0544586
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0642181   0.0512431   0.0771932
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1285971   0.0965257   0.1606685
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1593616   0.0990447   0.2196786
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0561172   0.0499092   0.0623252
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0588764   0.0491811   0.0685718
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0740758   0.0638608   0.0842909
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0904240   0.0717451   0.1091030
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0217452   0.0106232   0.0328673
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0359480   0.0257837   0.0461123
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0944911   0.0662833   0.1226989
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1542253   0.0940092   0.2144413
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0403409   0.0260766   0.0546051
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0641642   0.0511931   0.0771353
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1281544   0.0960653   0.1602436
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1545364   0.0941193   0.2149536
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0561656   0.0499641   0.0623672
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0584257   0.0487545   0.0680968
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0739078   0.0636766   0.0841391
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0922689   0.0739565   0.1105812


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0561586   0.0463537   0.0659635
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0311850   0.0234163   0.0389538
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1084991   0.0825542   0.1344440
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0561586   0.0463537   0.0659635
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.597196   1.0619188   2.402290
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.239232   0.7872605   1.950682
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.049169   0.8581447   1.282716
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.220695   0.9570228   1.557014
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.653143   0.9224954   2.962487
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.632167   0.9978468   2.669717
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.590551   1.0581883   2.390739
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.205861   0.7577212   1.919045
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.040239   0.8506894   1.272024
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.248432   0.9851473   1.582080


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0159518    0.0033832   0.0285203
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0079277   -0.0095058   0.0253611
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0005805   -0.0021139   0.0032750
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0047303   -0.0000155   0.0094760
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0094398   -0.0006976   0.0195772
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0140080   -0.0027426   0.0307586
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0158177    0.0032424   0.0283930
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0083704   -0.0090595   0.0258003
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0005321   -0.0021525   0.0032167
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0048983    0.0001667   0.0096298


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2840489    0.0278776   0.4727146
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0580676   -0.0782253   0.1771325
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0102392   -0.0385968   0.0567790
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0600241   -0.0025305   0.1186754
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.3027023   -0.0951494   0.5560204
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1291070   -0.0367699   0.2684445
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2816616    0.0254175   0.4705322
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0613103   -0.0750170   0.1803494
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0093852   -0.0392543   0.0557482
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0621558   -0.0002819   0.1206961
