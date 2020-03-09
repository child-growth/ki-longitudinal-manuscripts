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

agecat        studyid          country                        exclfeed6    pers_wast   n_cell      n
------------  ---------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0       19     19
0-24 months   CMC-V-BCS-2002   INDIA                          1                    1        0     19
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-24 months   CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-24 months   EE               PAKISTAN                       1                    0       42     48
0-24 months   EE               PAKISTAN                       1                    1        1     48
0-24 months   EE               PAKISTAN                       0                    0        5     48
0-24 months   EE               PAKISTAN                       0                    1        0     48
0-24 months   GMS-Nepal        NEPAL                          1                    0      366    564
0-24 months   GMS-Nepal        NEPAL                          1                    1       54    564
0-24 months   GMS-Nepal        NEPAL                          0                    0      121    564
0-24 months   GMS-Nepal        NEPAL                          0                    1       23    564
0-24 months   IRC              INDIA                          1                    0        0     14
0-24 months   IRC              INDIA                          1                    1        0     14
0-24 months   IRC              INDIA                          0                    0       12     14
0-24 months   IRC              INDIA                          0                    1        2     14
0-24 months   JiVitA-3         BANGLADESH                     1                    0     6847   9436
0-24 months   JiVitA-3         BANGLADESH                     1                    1      410   9436
0-24 months   JiVitA-3         BANGLADESH                     0                    0     2054   9436
0-24 months   JiVitA-3         BANGLADESH                     0                    1      125   9436
0-24 months   JiVitA-4         BANGLADESH                     1                    0     3366   4657
0-24 months   JiVitA-4         BANGLADESH                     1                    1      261   4657
0-24 months   JiVitA-4         BANGLADESH                     0                    0      924   4657
0-24 months   JiVitA-4         BANGLADESH                     0                    1      106   4657
0-24 months   Keneba           GAMBIA                         1                    0      709   2119
0-24 months   Keneba           GAMBIA                         1                    1       30   2119
0-24 months   Keneba           GAMBIA                         0                    0     1291   2119
0-24 months   Keneba           GAMBIA                         0                    1       89   2119
0-24 months   LCNI-5           MALAWI                         1                    0       42    240
0-24 months   LCNI-5           MALAWI                         1                    1        0    240
0-24 months   LCNI-5           MALAWI                         0                    0      195    240
0-24 months   LCNI-5           MALAWI                         0                    1        3    240
0-24 months   MAL-ED           BANGLADESH                     1                    0       32    233
0-24 months   MAL-ED           BANGLADESH                     1                    1        1    233
0-24 months   MAL-ED           BANGLADESH                     0                    0      188    233
0-24 months   MAL-ED           BANGLADESH                     0                    1       12    233
0-24 months   MAL-ED           BRAZIL                         1                    0       12    210
0-24 months   MAL-ED           BRAZIL                         1                    1        0    210
0-24 months   MAL-ED           BRAZIL                         0                    0      196    210
0-24 months   MAL-ED           BRAZIL                         0                    1        2    210
0-24 months   MAL-ED           INDIA                          1                    0        2    219
0-24 months   MAL-ED           INDIA                          1                    1        0    219
0-24 months   MAL-ED           INDIA                          0                    0      199    219
0-24 months   MAL-ED           INDIA                          0                    1       18    219
0-24 months   MAL-ED           NEPAL                          1                    0        5    225
0-24 months   MAL-ED           NEPAL                          1                    1        0    225
0-24 months   MAL-ED           NEPAL                          0                    0      217    225
0-24 months   MAL-ED           NEPAL                          0                    1        3    225
0-24 months   MAL-ED           PERU                           1                    0        5    271
0-24 months   MAL-ED           PERU                           1                    1        0    271
0-24 months   MAL-ED           PERU                           0                    0      265    271
0-24 months   MAL-ED           PERU                           0                    1        1    271
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        0    237
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    237
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0      235    237
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    237
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-24 months   PROVIDE          BANGLADESH                     1                    0      156    641
0-24 months   PROVIDE          BANGLADESH                     1                    1        2    641
0-24 months   PROVIDE          BANGLADESH                     0                    0      470    641
0-24 months   PROVIDE          BANGLADESH                     0                    1       13    641
0-24 months   SAS-CompFeed     INDIA                          1                    0      355    413
0-24 months   SAS-CompFeed     INDIA                          1                    1       40    413
0-24 months   SAS-CompFeed     INDIA                          0                    0       16    413
0-24 months   SAS-CompFeed     INDIA                          0                    1        2    413
0-24 months   SAS-FoodSuppl    INDIA                          1                    0        0    166
0-24 months   SAS-FoodSuppl    INDIA                          1                    1        0    166
0-24 months   SAS-FoodSuppl    INDIA                          0                    0      136    166
0-24 months   SAS-FoodSuppl    INDIA                          0                    1       30    166
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0       15     19
0-6 months    CMC-V-BCS-2002   INDIA                          1                    1        4     19
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0        0     19
0-6 months    CMC-V-BCS-2002   INDIA                          0                    1        0     19
0-6 months    EE               PAKISTAN                       1                    0       39     47
0-6 months    EE               PAKISTAN                       1                    1        3     47
0-6 months    EE               PAKISTAN                       0                    0        5     47
0-6 months    EE               PAKISTAN                       0                    1        0     47
0-6 months    GMS-Nepal        NEPAL                          1                    0      375    553
0-6 months    GMS-Nepal        NEPAL                          1                    1       39    553
0-6 months    GMS-Nepal        NEPAL                          0                    0      118    553
0-6 months    GMS-Nepal        NEPAL                          0                    1       21    553
0-6 months    IRC              INDIA                          1                    0        0     14
0-6 months    IRC              INDIA                          1                    1        0     14
0-6 months    IRC              INDIA                          0                    0       11     14
0-6 months    IRC              INDIA                          0                    1        3     14
0-6 months    JiVitA-3         BANGLADESH                     1                    0       18     26
0-6 months    JiVitA-3         BANGLADESH                     1                    1        2     26
0-6 months    JiVitA-3         BANGLADESH                     0                    0        6     26
0-6 months    JiVitA-3         BANGLADESH                     0                    1        0     26
0-6 months    Keneba           GAMBIA                         1                    0      615   1924
0-6 months    Keneba           GAMBIA                         1                    1       13   1924
0-6 months    Keneba           GAMBIA                         0                    0     1249   1924
0-6 months    Keneba           GAMBIA                         0                    1       47   1924
0-6 months    MAL-ED           BANGLADESH                     1                    0       32    233
0-6 months    MAL-ED           BANGLADESH                     1                    1        1    233
0-6 months    MAL-ED           BANGLADESH                     0                    0      194    233
0-6 months    MAL-ED           BANGLADESH                     0                    1        6    233
0-6 months    MAL-ED           BRAZIL                         1                    0       12    210
0-6 months    MAL-ED           BRAZIL                         1                    1        0    210
0-6 months    MAL-ED           BRAZIL                         0                    0      197    210
0-6 months    MAL-ED           BRAZIL                         0                    1        1    210
0-6 months    MAL-ED           INDIA                          1                    0        2    218
0-6 months    MAL-ED           INDIA                          1                    1        0    218
0-6 months    MAL-ED           INDIA                          0                    0      201    218
0-6 months    MAL-ED           INDIA                          0                    1       15    218
0-6 months    MAL-ED           NEPAL                          1                    0        5    225
0-6 months    MAL-ED           NEPAL                          1                    1        0    225
0-6 months    MAL-ED           NEPAL                          0                    0      215    225
0-6 months    MAL-ED           NEPAL                          0                    1        5    225
0-6 months    MAL-ED           PERU                           1                    0        5    271
0-6 months    MAL-ED           PERU                           1                    1        0    271
0-6 months    MAL-ED           PERU                           0                    0      266    271
0-6 months    MAL-ED           PERU                           0                    1        0    271
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        0    236
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        0    236
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      234    236
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1        2    236
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
0-6 months    PROVIDE          BANGLADESH                     1                    0      156    638
0-6 months    PROVIDE          BANGLADESH                     1                    1        1    638
0-6 months    PROVIDE          BANGLADESH                     0                    0      468    638
0-6 months    PROVIDE          BANGLADESH                     0                    1       13    638
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0       19     19
6-24 months   CMC-V-BCS-2002   INDIA                          1                    1        0     19
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0        0     19
6-24 months   CMC-V-BCS-2002   INDIA                          0                    1        0     19
6-24 months   EE               PAKISTAN                       1                    0       42     48
6-24 months   EE               PAKISTAN                       1                    1        1     48
6-24 months   EE               PAKISTAN                       0                    0        5     48
6-24 months   EE               PAKISTAN                       0                    1        0     48
6-24 months   GMS-Nepal        NEPAL                          1                    0      366    564
6-24 months   GMS-Nepal        NEPAL                          1                    1       54    564
6-24 months   GMS-Nepal        NEPAL                          0                    0      121    564
6-24 months   GMS-Nepal        NEPAL                          0                    1       23    564
6-24 months   IRC              INDIA                          1                    0        0     14
6-24 months   IRC              INDIA                          1                    1        0     14
6-24 months   IRC              INDIA                          0                    0       12     14
6-24 months   IRC              INDIA                          0                    1        2     14
6-24 months   JiVitA-3         BANGLADESH                     1                    0     6847   9436
6-24 months   JiVitA-3         BANGLADESH                     1                    1      410   9436
6-24 months   JiVitA-3         BANGLADESH                     0                    0     2054   9436
6-24 months   JiVitA-3         BANGLADESH                     0                    1      125   9436
6-24 months   JiVitA-4         BANGLADESH                     1                    0     3366   4657
6-24 months   JiVitA-4         BANGLADESH                     1                    1      261   4657
6-24 months   JiVitA-4         BANGLADESH                     0                    0      924   4657
6-24 months   JiVitA-4         BANGLADESH                     0                    1      106   4657
6-24 months   Keneba           GAMBIA                         1                    0      709   2119
6-24 months   Keneba           GAMBIA                         1                    1       30   2119
6-24 months   Keneba           GAMBIA                         0                    0     1291   2119
6-24 months   Keneba           GAMBIA                         0                    1       89   2119
6-24 months   LCNI-5           MALAWI                         1                    0       42    240
6-24 months   LCNI-5           MALAWI                         1                    1        0    240
6-24 months   LCNI-5           MALAWI                         0                    0      195    240
6-24 months   LCNI-5           MALAWI                         0                    1        3    240
6-24 months   MAL-ED           BANGLADESH                     1                    0       32    233
6-24 months   MAL-ED           BANGLADESH                     1                    1        1    233
6-24 months   MAL-ED           BANGLADESH                     0                    0      188    233
6-24 months   MAL-ED           BANGLADESH                     0                    1       12    233
6-24 months   MAL-ED           BRAZIL                         1                    0       12    210
6-24 months   MAL-ED           BRAZIL                         1                    1        0    210
6-24 months   MAL-ED           BRAZIL                         0                    0      196    210
6-24 months   MAL-ED           BRAZIL                         0                    1        2    210
6-24 months   MAL-ED           INDIA                          1                    0        2    219
6-24 months   MAL-ED           INDIA                          1                    1        0    219
6-24 months   MAL-ED           INDIA                          0                    0      199    219
6-24 months   MAL-ED           INDIA                          0                    1       18    219
6-24 months   MAL-ED           NEPAL                          1                    0        5    225
6-24 months   MAL-ED           NEPAL                          1                    1        0    225
6-24 months   MAL-ED           NEPAL                          0                    0      217    225
6-24 months   MAL-ED           NEPAL                          0                    1        3    225
6-24 months   MAL-ED           PERU                           1                    0        5    271
6-24 months   MAL-ED           PERU                           1                    1        0    271
6-24 months   MAL-ED           PERU                           0                    0      265    271
6-24 months   MAL-ED           PERU                           0                    1        1    271
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        0    237
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    237
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0      235    237
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    237
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0    235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      235    235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        0    235
6-24 months   PROVIDE          BANGLADESH                     1                    0      156    641
6-24 months   PROVIDE          BANGLADESH                     1                    1        2    641
6-24 months   PROVIDE          BANGLADESH                     0                    0      470    641
6-24 months   PROVIDE          BANGLADESH                     0                    1       13    641
6-24 months   SAS-CompFeed     INDIA                          1                    0      355    413
6-24 months   SAS-CompFeed     INDIA                          1                    1       40    413
6-24 months   SAS-CompFeed     INDIA                          0                    0       16    413
6-24 months   SAS-CompFeed     INDIA                          0                    1        2    413
6-24 months   SAS-FoodSuppl    INDIA                          1                    0        0    166
6-24 months   SAS-FoodSuppl    INDIA                          1                    1        0    166
6-24 months   SAS-FoodSuppl    INDIA                          0                    0      136    166
6-24 months   SAS-FoodSuppl    INDIA                          0                    1       30    166


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1dec2f54-8e02-4682-bca0-a6ad8ee32f66/8d2fa548-6fbc-4a09-9de5-539ed03c52d9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1dec2f54-8e02-4682-bca0-a6ad8ee32f66/8d2fa548-6fbc-4a09-9de5-539ed03c52d9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1dec2f54-8e02-4682-bca0-a6ad8ee32f66/8d2fa548-6fbc-4a09-9de5-539ed03c52d9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1dec2f54-8e02-4682-bca0-a6ad8ee32f66/8d2fa548-6fbc-4a09-9de5-539ed03c52d9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1287133   0.0965711   0.1608555
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1589045   0.0978584   0.2199506
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0565018   0.0502069   0.0627967
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0571250   0.0473175   0.0669325
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0744762   0.0642291   0.0847233
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0919963   0.0733407   0.1106519
0-24 months   Keneba      GAMBIA       1                    NA                0.0408474   0.0266219   0.0550729
0-24 months   Keneba      GAMBIA       0                    NA                0.0643562   0.0513892   0.0773232
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0945200   0.0663098   0.1227302
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1543919   0.0945162   0.2142676
0-6 months    Keneba      GAMBIA       1                    NA                0.0208539   0.0097021   0.0320058
0-6 months    Keneba      GAMBIA       0                    NA                0.0357449   0.0255733   0.0459165
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1284181   0.0963510   0.1604852
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1570408   0.0970271   0.2170544
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0565661   0.0502741   0.0628581
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0571050   0.0473180   0.0668919
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0746165   0.0643268   0.0849062
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0904476   0.0714428   0.1094523
6-24 months   Keneba      GAMBIA       1                    NA                0.0408721   0.0265874   0.0551568
6-24 months   Keneba      GAMBIA       0                    NA                0.0642508   0.0512889   0.0772128


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905
0-24 months   Keneba      GAMBIA       NA                   NA                0.0561586   0.0463537   0.0659635
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1084991   0.0825542   0.1344440
0-6 months    Keneba      GAMBIA       NA                   NA                0.0311850   0.0234163   0.0389538
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1365248   0.1081636   0.1648860
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0566978   0.0514863   0.0619092
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0788061   0.0697217   0.0878905
6-24 months   Keneba      GAMBIA       NA                   NA                0.0561586   0.0463537   0.0659635


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.234562   0.7805358   1.952688
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.011030   0.8191061   1.247922
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.235245   0.9730618   1.568070
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.575527   1.0535344   2.356149
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.633432   0.9999584   2.668211
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.714059   0.9360657   3.138666
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.222886   0.7744226   1.931053
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.009526   0.8182798   1.245470
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.212165   0.9482748   1.549492
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.571998   1.0501401   2.353190


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0078115   -0.0096411   0.0252642
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0001960   -0.0025705   0.0029624
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0043299   -0.0003990   0.0090589
0-24 months   Keneba      GAMBIA       1                    NA                0.0153112    0.0027601   0.0278622
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0139791   -0.0028168   0.0307750
0-6 months    Keneba      GAMBIA       1                    NA                0.0103311    0.0001691   0.0204931
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0081067   -0.0092905   0.0255039
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0001316   -0.0026279   0.0028912
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0041896   -0.0005849   0.0089641
6-24 months   Keneba      GAMBIA       1                    NA                0.0152865    0.0026975   0.0278754


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0572170   -0.0792799   0.1764510
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0034561   -0.0466078   0.0511252
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0549442   -0.0073730   0.1134064
0-24 months   Keneba      GAMBIA       1                    NA                0.2726414    0.0176562   0.4614406
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1288410   -0.0374763   0.2684961
0-6 months    Keneba      GAMBIA       1                    NA                0.3312838   -0.0720836   0.5828857
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0593790   -0.0766410   0.1782146
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0023219   -0.0475937   0.0498591
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0531631   -0.0097740   0.1121776
6-24 months   Keneba      GAMBIA       1                    NA                0.2722021    0.0161144   0.4616348
