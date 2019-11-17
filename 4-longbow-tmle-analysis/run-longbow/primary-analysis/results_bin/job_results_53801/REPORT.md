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

agecat        studyid                    country                        exclfeed36    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       32    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      202    247
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       13    247
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       14    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      201    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2    217
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        8    238
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        1    238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      209    238
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       20    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      228    236
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        3    236
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        7    282
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0    282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0      274    282
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1    282
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      266    271
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    271
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9      9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0      9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-24 months   ki1000108-IRC              INDIA                          1                     0        0      4
0-24 months   ki1000108-IRC              INDIA                          1                     1        0      4
0-24 months   ki1000108-IRC              INDIA                          0                     0        3      4
0-24 months   ki1000108-IRC              INDIA                          0                     1        1      4
0-24 months   ki1000109-EE               PAKISTAN                       1                     0        4      9
0-24 months   ki1000109-EE               PAKISTAN                       1                     1        0      9
0-24 months   ki1000109-EE               PAKISTAN                       0                     0        5      9
0-24 months   ki1000109-EE               PAKISTAN                       0                     1        0      9
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136    166
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30    166
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      160    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      464    639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    639
0-24 months   ki1101329-Keneba           GAMBIA                         1                     0      572   1927
0-24 months   ki1101329-Keneba           GAMBIA                         1                     1       21   1927
0-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1250   1927
0-24 months   ki1101329-Keneba           GAMBIA                         0                     1       84   1927
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      369    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       54    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       90    528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15    528
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42    240
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195    240
0-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3    240
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5957   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      363   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1788   8221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      113   8221
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3231   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      251   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      908   4495
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      105   4495
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       31    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1        1    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0      209    247
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        6    247
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0       14    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0      202    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        1    217
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0        8    237
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1        1    237
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0      210    237
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1       18    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        4    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0      225    236
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1        6    236
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        7    282
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        0    282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0      275    282
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        0    282
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      265    270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        8      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        1      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-6 months    ki1000108-IRC              INDIA                          1                     0        0      4
0-6 months    ki1000108-IRC              INDIA                          1                     1        0      4
0-6 months    ki1000108-IRC              INDIA                          0                     0        4      4
0-6 months    ki1000108-IRC              INDIA                          0                     1        0      4
0-6 months    ki1000109-EE               PAKISTAN                       1                     0        4      9
0-6 months    ki1000109-EE               PAKISTAN                       1                     1        0      9
0-6 months    ki1000109-EE               PAKISTAN                       0                     0        5      9
0-6 months    ki1000109-EE               PAKISTAN                       0                     1        0      9
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      160    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1        1    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0      463    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    637
0-6 months    ki1101329-Keneba           GAMBIA                         1                     0      527   1793
0-6 months    ki1101329-Keneba           GAMBIA                         1                     1       12   1793
0-6 months    ki1101329-Keneba           GAMBIA                         0                     0     1210   1793
0-6 months    ki1101329-Keneba           GAMBIA                         0                     1       44   1793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0      380    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       37    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       86    520
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       17    520
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0       11     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1        2     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0        6     19
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0     19
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       32    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1        0    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0      202    247
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1       13    247
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0       14    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0      201    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        2    217
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0        8    238
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1        1    238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0      209    238
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1       20    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1        1    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0      228    236
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1        3    236
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        7    282
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        0    282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0      274    282
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1        1    282
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1        0    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0      266    271
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2    271
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0        9      9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1        0      9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0      9
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0      9
6-24 months   ki1000108-IRC              INDIA                          1                     0        0      4
6-24 months   ki1000108-IRC              INDIA                          1                     1        0      4
6-24 months   ki1000108-IRC              INDIA                          0                     0        3      4
6-24 months   ki1000108-IRC              INDIA                          0                     1        1      4
6-24 months   ki1000109-EE               PAKISTAN                       1                     0        4      9
6-24 months   ki1000109-EE               PAKISTAN                       1                     1        0      9
6-24 months   ki1000109-EE               PAKISTAN                       0                     0        5      9
6-24 months   ki1000109-EE               PAKISTAN                       0                     1        0      9
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     0        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                     1        0    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     0      136    166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                     1       30    166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      160    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1        2    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      464    639
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    639
6-24 months   ki1101329-Keneba           GAMBIA                         1                     0      572   1927
6-24 months   ki1101329-Keneba           GAMBIA                         1                     1       21   1927
6-24 months   ki1101329-Keneba           GAMBIA                         0                     0     1250   1927
6-24 months   ki1101329-Keneba           GAMBIA                         0                     1       84   1927
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0      369    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       54    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0       90    528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1       15    528
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       42    240
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        0    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     0      195    240
6-24 months   ki1148112-LCNI-5           MALAWI                         0                     1        3    240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     5957   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      363   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1788   8221
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      113   8221
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3231   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1      251   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      908   4495
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      105   4495


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
![](/tmp/fe6caf8f-5acb-45b8-be47-c741e75e7813/710e43f6-b994-4e77-a29a-42ddd0e55ec7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe6caf8f-5acb-45b8-be47-c741e75e7813/710e43f6-b994-4e77-a29a-42ddd0e55ec7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe6caf8f-5acb-45b8-be47-c741e75e7813/710e43f6-b994-4e77-a29a-42ddd0e55ec7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe6caf8f-5acb-45b8-be47-c741e75e7813/710e43f6-b994-4e77-a29a-42ddd0e55ec7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0353260   0.0205792   0.0500728
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0630181   0.0499718   0.0760644
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1273964   0.0955495   0.1592432
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1437836   0.0754478   0.2121193
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0568972   0.0501202   0.0636741
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0612686   0.0501132   0.0724241
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0745999   0.0641340   0.0850658
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0926145   0.0736712   0.1115578
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0226185   0.0099804   0.0352567
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.0348437   0.0247049   0.0449825
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0891196   0.0617121   0.1165271
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1628234   0.0902289   0.2354179
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0352583   0.0205352   0.0499814
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.0630585   0.0499978   0.0761193
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1275064   0.0955987   0.1594140
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1388033   0.0701405   0.2074661
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0569834   0.0501934   0.0637734
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0615476   0.0503766   0.0727186
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0742142   0.0637936   0.0846347
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0919353   0.0734766   0.1103941


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.0312326   0.0231789   0.0392862
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.783904   1.1192781   2.843183
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.128631   0.6593666   1.931867
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.076830   0.8646863   1.341022
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.241483   0.9743694   1.581823
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 1.540492   0.8203180   2.892921
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.827022   1.0626460   3.141225
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.788473   1.1217082   2.851575
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.088599   0.6250919   1.895798
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.080097   0.8670942   1.345425
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.238784   0.9756022   1.572963


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0191629    0.0055481   0.0327777
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0032854   -0.0115234   0.0180943
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0010033   -0.0020403   0.0040469
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0045992   -0.0003316   0.0095301
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.0086140   -0.0027943   0.0200223
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0147266   -0.0007489   0.0302021
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.0192305    0.0056234   0.0328377
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0031754   -0.0116600   0.0180109
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0009171   -0.0021487   0.0039829
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0049849    0.0000579   0.0099120


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3516845    0.0589932   0.5533369
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0251407   -0.0949383   0.1320509
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0173281   -0.0368757   0.0686983
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0580717   -0.0067098   0.1186845
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.2758027   -0.1880356   0.5585471
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1418115   -0.0167214   0.2756251
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.3529261    0.0605085   0.5543285
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0242991   -0.0960224   0.1314117
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0158393   -0.0387481   0.0675581
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0629417   -0.0017929   0.1234932
