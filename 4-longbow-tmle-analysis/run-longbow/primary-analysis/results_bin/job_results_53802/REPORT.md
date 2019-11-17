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

**Intervention Variable:** predexfd6

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

agecat        studyid                    country                        predexfd6    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       81    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      139    233
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      179    210
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    210
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       11    219
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      190    219
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      210    225
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       91    271
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      179    271
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232    237
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6861   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2040   9436
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3378   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      262   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      912   4657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      105   4657
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0       82    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        3    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      144    233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1        4    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      180    210
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        0    210
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0       11    218
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      192    218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       15    218
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      208    225
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        5    225
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       92    271
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      179    271
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      231    236
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    236
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0       81    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        4    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      139    233
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        9    233
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      179    210
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1    210
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0       11    219
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      190    219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       18    219
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0       12    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      210    225
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        3    225
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       91    271
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        1    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      179    271
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        0    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0        3    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        0    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      232    237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2    237
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6861   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      410   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2040   9436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      125   9436
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3378   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      262   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      912   4657
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      105   4657


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
![](/tmp/b5a4741e-0eb5-41f3-882d-0111966111ee/bf782148-09d1-4a65-9f7f-64e3890faa68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b5a4741e-0eb5-41f3-882d-0111966111ee/bf782148-09d1-4a65-9f7f-64e3890faa68/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b5a4741e-0eb5-41f3-882d-0111966111ee/bf782148-09d1-4a65-9f7f-64e3890faa68/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b5a4741e-0eb5-41f3-882d-0111966111ee/bf782148-09d1-4a65-9f7f-64e3890faa68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0407758   0.0265075   0.0550440
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0644528   0.0514888   0.0774168
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1286656   0.0965894   0.1607418
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1645270   0.1042958   0.2247583
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0561965   0.0499903   0.0624027
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0587098   0.0489231   0.0684966
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0738228   0.0635814   0.0840642
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0923286   0.0735767   0.1110804
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0209511   0.0098225   0.0320796
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0357554   0.0255802   0.0459305
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0936979   0.0654773   0.1219184
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1470130   0.0863817   0.2076444
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0414174   0.0272057   0.0556290
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0646305   0.0516738   0.0775871
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1282929   0.0962292   0.1603566
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1586908   0.0985293   0.2188523
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0560516   0.0498518   0.0622515
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0592830   0.0495836   0.0689825
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0739517   0.0637094   0.0841940
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0950616   0.0758958   0.1142273


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
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.580665   1.0555069   2.367112
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.278718   0.8213578   1.990752
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.044724   0.8530059   1.279532
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.250679   0.9821277   1.592662
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.706611   0.9350299   3.114897
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.569012   0.9409561   2.616273
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.560468   1.0484533   2.322527
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.236941   0.7856289   1.947515
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.057651   0.8660397   1.291655
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.285455   1.0114087   1.633756


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0153828    0.0028022   0.0279634
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0078592   -0.0095254   0.0252438
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0005012   -0.0021982   0.0032007
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0049833    0.0002048   0.0097619
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0102339    0.0000865   0.0203814
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0148012   -0.0019658   0.0315683
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0147412    0.0021969   0.0272856
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0082319   -0.0091497   0.0256136
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0006461   -0.0020253   0.0033175
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0048544    0.0000700   0.0096389


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2739171    0.0180059   0.4631369
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0575662   -0.0783374   0.1763417
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0088407   -0.0400636   0.0554455
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0632354    0.0001690   0.1223237
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.3281683   -0.0737563   0.5796459
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1364181   -0.0298266   0.2758259
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.2624926    0.0082840   0.4515394
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0602963   -0.0756107   0.1790310
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0113962   -0.0370366   0.0575670
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0615996   -0.0015163   0.1207379
