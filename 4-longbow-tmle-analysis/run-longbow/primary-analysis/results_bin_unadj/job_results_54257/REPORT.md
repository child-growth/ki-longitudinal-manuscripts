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

unadjusted

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
![](/tmp/c8826701-647a-4340-9ce7-107b37cc25c3/2c33bbdb-e0b5-4a1b-ac79-c8ed1d8f03fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8826701-647a-4340-9ce7-107b37cc25c3/2c33bbdb-e0b5-4a1b-ac79-c8ed1d8f03fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8826701-647a-4340-9ce7-107b37cc25c3/2c33bbdb-e0b5-4a1b-ac79-c8ed1d8f03fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8826701-647a-4340-9ce7-107b37cc25c3/2c33bbdb-e0b5-4a1b-ac79-c8ed1d8f03fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0405954   0.0263633   0.0548275
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0644928   0.0515302   0.0774553
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1285714   0.0965311   0.1606118
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998333   0.2196111
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0564972   0.0502089   0.0627855
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0573658   0.0475296   0.0672019
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0719603   0.0617924   0.0821282
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1029126   0.0838686   0.1219567
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0207006   0.0095620   0.0318392
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0362654   0.0260846   0.0464463
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0942029   0.0660393   0.1223665
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1510791   0.0914897   0.2106686
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0405954   0.0263633   0.0548275
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0644928   0.0515302   0.0774553
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1285714   0.0965311   0.1606118
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998333   0.2196111
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0564972   0.0502089   0.0627855
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0573658   0.0475296   0.0672019
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0719603   0.0617924   0.0821282
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1029126   0.0838686   0.1219567


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
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.588671   1.0605486   2.379784
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.242284   0.7919442   1.948710
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.015374   0.8228807   1.252897
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.430131   1.1373098   1.798343
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.751899   0.9548414   3.214305
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.603763   0.9776782   2.630780
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.588671   1.0605486   2.379784
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.242284   0.7919442   1.948710
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.015374   0.8228807   1.252897
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.430131   1.1373098   1.798343


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0155632    0.0030169   0.0281094
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0079534   -0.0094244   0.0253312
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0002006   -0.0025711   0.0029723
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0068458    0.0021338   0.0115578
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0104844    0.0003144   0.0206544
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0142962   -0.0023980   0.0309904
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0155632    0.0030169   0.0281094
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0079534   -0.0094244   0.0253312
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0002006   -0.0025711   0.0029723
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0068458    0.0021338   0.0115578


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2771289    0.0219223   0.4657453
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0582560   -0.0775707   0.1769619
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0035377   -0.0466232   0.0512945
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0868689    0.0243520   0.1453800
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.3361996   -0.0679646   0.5874105
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1317633   -0.0335189   0.2706132
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2771289    0.0219223   0.4657453
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0582560   -0.0775707   0.1769619
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0035377   -0.0466232   0.0512945
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0868689    0.0243520   0.1453800
