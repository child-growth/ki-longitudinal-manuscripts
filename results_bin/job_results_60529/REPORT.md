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

agecat        studyid          country                        predexfd6    pers_wast   n_cell      n
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
0-24 months   JiVitA-3         BANGLADESH                     1                    0     6861   9436
0-24 months   JiVitA-3         BANGLADESH                     1                    1      410   9436
0-24 months   JiVitA-3         BANGLADESH                     0                    0     2040   9436
0-24 months   JiVitA-3         BANGLADESH                     0                    1      125   9436
0-24 months   JiVitA-4         BANGLADESH                     1                    0     3378   4657
0-24 months   JiVitA-4         BANGLADESH                     1                    1      262   4657
0-24 months   JiVitA-4         BANGLADESH                     0                    0      912   4657
0-24 months   JiVitA-4         BANGLADESH                     0                    1      105   4657
0-24 months   Keneba           GAMBIA                         1                    0      709   2119
0-24 months   Keneba           GAMBIA                         1                    1       30   2119
0-24 months   Keneba           GAMBIA                         0                    0     1291   2119
0-24 months   Keneba           GAMBIA                         0                    1       89   2119
0-24 months   LCNI-5           MALAWI                         1                    0       42    240
0-24 months   LCNI-5           MALAWI                         1                    1        0    240
0-24 months   LCNI-5           MALAWI                         0                    0      195    240
0-24 months   LCNI-5           MALAWI                         0                    1        3    240
0-24 months   MAL-ED           BANGLADESH                     1                    0       81    233
0-24 months   MAL-ED           BANGLADESH                     1                    1        4    233
0-24 months   MAL-ED           BANGLADESH                     0                    0      139    233
0-24 months   MAL-ED           BANGLADESH                     0                    1        9    233
0-24 months   MAL-ED           BRAZIL                         1                    0       29    210
0-24 months   MAL-ED           BRAZIL                         1                    1        1    210
0-24 months   MAL-ED           BRAZIL                         0                    0      179    210
0-24 months   MAL-ED           BRAZIL                         0                    1        1    210
0-24 months   MAL-ED           INDIA                          1                    0       11    219
0-24 months   MAL-ED           INDIA                          1                    1        0    219
0-24 months   MAL-ED           INDIA                          0                    0      190    219
0-24 months   MAL-ED           INDIA                          0                    1       18    219
0-24 months   MAL-ED           NEPAL                          1                    0       12    225
0-24 months   MAL-ED           NEPAL                          1                    1        0    225
0-24 months   MAL-ED           NEPAL                          0                    0      210    225
0-24 months   MAL-ED           NEPAL                          0                    1        3    225
0-24 months   MAL-ED           PERU                           1                    0       91    271
0-24 months   MAL-ED           PERU                           1                    1        1    271
0-24 months   MAL-ED           PERU                           0                    0      179    271
0-24 months   MAL-ED           PERU                           0                    1        0    271
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0        3    237
0-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    237
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0      232    237
0-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    237
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
0-6 months    MAL-ED           BANGLADESH                     1                    0       82    233
0-6 months    MAL-ED           BANGLADESH                     1                    1        3    233
0-6 months    MAL-ED           BANGLADESH                     0                    0      144    233
0-6 months    MAL-ED           BANGLADESH                     0                    1        4    233
0-6 months    MAL-ED           BRAZIL                         1                    0       29    210
0-6 months    MAL-ED           BRAZIL                         1                    1        1    210
0-6 months    MAL-ED           BRAZIL                         0                    0      180    210
0-6 months    MAL-ED           BRAZIL                         0                    1        0    210
0-6 months    MAL-ED           INDIA                          1                    0       11    218
0-6 months    MAL-ED           INDIA                          1                    1        0    218
0-6 months    MAL-ED           INDIA                          0                    0      192    218
0-6 months    MAL-ED           INDIA                          0                    1       15    218
0-6 months    MAL-ED           NEPAL                          1                    0       12    225
0-6 months    MAL-ED           NEPAL                          1                    1        0    225
0-6 months    MAL-ED           NEPAL                          0                    0      208    225
0-6 months    MAL-ED           NEPAL                          0                    1        5    225
0-6 months    MAL-ED           PERU                           1                    0       92    271
0-6 months    MAL-ED           PERU                           1                    1        0    271
0-6 months    MAL-ED           PERU                           0                    0      179    271
0-6 months    MAL-ED           PERU                           0                    1        0    271
0-6 months    MAL-ED           SOUTH AFRICA                   1                    0        3    236
0-6 months    MAL-ED           SOUTH AFRICA                   1                    1        0    236
0-6 months    MAL-ED           SOUTH AFRICA                   0                    0      231    236
0-6 months    MAL-ED           SOUTH AFRICA                   0                    1        2    236
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
6-24 months   JiVitA-3         BANGLADESH                     1                    0     6861   9436
6-24 months   JiVitA-3         BANGLADESH                     1                    1      410   9436
6-24 months   JiVitA-3         BANGLADESH                     0                    0     2040   9436
6-24 months   JiVitA-3         BANGLADESH                     0                    1      125   9436
6-24 months   JiVitA-4         BANGLADESH                     1                    0     3378   4657
6-24 months   JiVitA-4         BANGLADESH                     1                    1      262   4657
6-24 months   JiVitA-4         BANGLADESH                     0                    0      912   4657
6-24 months   JiVitA-4         BANGLADESH                     0                    1      105   4657
6-24 months   Keneba           GAMBIA                         1                    0      709   2119
6-24 months   Keneba           GAMBIA                         1                    1       30   2119
6-24 months   Keneba           GAMBIA                         0                    0     1291   2119
6-24 months   Keneba           GAMBIA                         0                    1       89   2119
6-24 months   LCNI-5           MALAWI                         1                    0       42    240
6-24 months   LCNI-5           MALAWI                         1                    1        0    240
6-24 months   LCNI-5           MALAWI                         0                    0      195    240
6-24 months   LCNI-5           MALAWI                         0                    1        3    240
6-24 months   MAL-ED           BANGLADESH                     1                    0       81    233
6-24 months   MAL-ED           BANGLADESH                     1                    1        4    233
6-24 months   MAL-ED           BANGLADESH                     0                    0      139    233
6-24 months   MAL-ED           BANGLADESH                     0                    1        9    233
6-24 months   MAL-ED           BRAZIL                         1                    0       29    210
6-24 months   MAL-ED           BRAZIL                         1                    1        1    210
6-24 months   MAL-ED           BRAZIL                         0                    0      179    210
6-24 months   MAL-ED           BRAZIL                         0                    1        1    210
6-24 months   MAL-ED           INDIA                          1                    0       11    219
6-24 months   MAL-ED           INDIA                          1                    1        0    219
6-24 months   MAL-ED           INDIA                          0                    0      190    219
6-24 months   MAL-ED           INDIA                          0                    1       18    219
6-24 months   MAL-ED           NEPAL                          1                    0       12    225
6-24 months   MAL-ED           NEPAL                          1                    1        0    225
6-24 months   MAL-ED           NEPAL                          0                    0      210    225
6-24 months   MAL-ED           NEPAL                          0                    1        3    225
6-24 months   MAL-ED           PERU                           1                    0       91    271
6-24 months   MAL-ED           PERU                           1                    1        1    271
6-24 months   MAL-ED           PERU                           0                    0      179    271
6-24 months   MAL-ED           PERU                           0                    1        0    271
6-24 months   MAL-ED           SOUTH AFRICA                   1                    0        3    237
6-24 months   MAL-ED           SOUTH AFRICA                   1                    1        0    237
6-24 months   MAL-ED           SOUTH AFRICA                   0                    0      232    237
6-24 months   MAL-ED           SOUTH AFRICA                   0                    1        2    237
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1    235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0    235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      234    235
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
![](/tmp/c3987bed-8392-462e-b017-6b7d778a707a/396ac82b-6fd5-4d33-a951-19c7c8e8166e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3987bed-8392-462e-b017-6b7d778a707a/396ac82b-6fd5-4d33-a951-19c7c8e8166e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3987bed-8392-462e-b017-6b7d778a707a/396ac82b-6fd5-4d33-a951-19c7c8e8166e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3987bed-8392-462e-b017-6b7d778a707a/396ac82b-6fd5-4d33-a951-19c7c8e8166e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1286091   0.0964849   0.1607333
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1597251   0.0995045   0.2199457
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0563549   0.0500762   0.0626337
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0578729   0.0480376   0.0677082
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0742589   0.0640302   0.0844877
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0929725   0.0733381   0.1126068
0-24 months   Keneba      GAMBIA       1                    NA                0.0410597   0.0268232   0.0552962
0-24 months   Keneba      GAMBIA       0                    NA                0.0645071   0.0515466   0.0774677
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0942322   0.0659570   0.1225074
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1505171   0.0896317   0.2114025
0-6 months    Keneba      GAMBIA       1                    NA                0.0207546   0.0095810   0.0319282
0-6 months    Keneba      GAMBIA       0                    NA                0.0356941   0.0255247   0.0458634
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1287179   0.0965227   0.1609131
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1583766   0.0964468   0.2203064
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0563977   0.0501133   0.0626822
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0578508   0.0479907   0.0677108
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0745220   0.0643268   0.0847172
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0913497   0.0719605   0.1107389
6-24 months   Keneba      GAMBIA       1                    NA                0.0407420   0.0264908   0.0549933
6-24 months   Keneba      GAMBIA       0                    NA                0.0644342   0.0514713   0.0773971


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
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.241942   0.7899572   1.952536
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.026936   0.8334716   1.265307
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.252004   0.9786499   1.601710
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.571058   1.0522598   2.345642
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.597300   0.9649392   2.644071
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.719812   0.9360659   3.159772
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.230416   0.7730268   1.958437
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.025764   0.8319300   1.264760
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.225809   0.9582459   1.568082
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.581516   1.0563193   2.367838


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0079157   -0.0095275   0.0253588
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0003428   -0.0024019   0.0030875
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0045472   -0.0001702   0.0092645
0-24 months   Keneba      GAMBIA       1                    NA                0.0150989    0.0025445   0.0276533
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0142669   -0.0024920   0.0310258
0-6 months    Keneba      GAMBIA       1                    NA                0.0104304    0.0002496   0.0206112
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0078069   -0.0097037   0.0253175
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0003000   -0.0024567   0.0030567
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0042841   -0.0003858   0.0089540
6-24 months   Keneba      GAMBIA       1                    NA                0.0154165    0.0028512   0.0279818


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0579798   -0.0784362   0.1771399
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0060462   -0.0436606   0.0533856
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0577007   -0.0044822   0.1160341
0-24 months   Keneba      GAMBIA       1                    NA                0.2688618    0.0139449   0.4578771
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1314932   -0.0346857   0.2709825
0-6 months    Keneba      GAMBIA       1                    NA                0.3344683   -0.0704889   0.5862335
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0571831   -0.0798196   0.1768036
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0052913   -0.0446244   0.0528219
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0543628   -0.0071124   0.1120854
6-24 months   Keneba      GAMBIA       1                    NA                0.2745178    0.0189747   0.4634955
